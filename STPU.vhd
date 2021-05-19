--ShutThePugUp
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.systolic_package.all;

entity STPU is
  port (
    clock : in std_logic;
    reset, hardReset : in std_logic;
    setUp, GO, stall : in std_logic;
    w_in : in unsigned (23 downto 0);
    a_in : in unsigned (23 downto 0);
    --a0_in, a1_in, a2_in : in unsigned (7 downto 0);
    done : out std_logic;
    row0, row1, row2 : out bus_width
  ) ;
end STPU;

architecture struc of STPU is
component URAM is --need 3
PORT(aclr		: IN STD_LOGIC  := '0';
	address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	clock		: IN STD_LOGIC  := '1';
	data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	rden		: IN STD_LOGIC  := '1';
	wren		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
end component;

component WRAM is -- 1
PORT(aclr		: IN STD_LOGIC  := '0';
	address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	clock		: IN STD_LOGIC  := '1';
	data		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
	rden		: IN STD_LOGIC  := '1';
	wren		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
end component;

component MMU is 
port (
    clock, reset, hardReset, ld, ld_w, stall : std_logic;
    a0, a1, a2 : in unsigned (7 downto 0);
    w0, w1, w2 : in unsigned (7 downto 0);
    y0, y1, y2 : out unsigned (7 downto 0)
  ) ;
end component;

component AU is 
port (
    clock, reset, hardReset, stall : in std_logic;
    y0, y1, y2 : in unsigned (7 downto 0);
    row0, row1, row2 : out bus_width;
    done : out std_logic;
    start : in std_logic
  ) ;
end component;

----------------------------------------------------------------------------------------
type workingStatus is (idle, settingUp, writing, loadingW, Computting, receving, done_receving);
-- idle when nothing is being done, setUp can break it
-- settingup when setUp is pressed, memory write and read to w.
-- computting when GO is pressed, feature matrix loads, MMU process the calculation
-- receving when a33 is pushed into the MMU, first result will show up
-- done receving when all rows are collectted. done
signal STPUstate : workingStatus;

type a_loading is (idle, step1, step2, step3, step4, step5, waitstage1, waitstage2, waitstage3);
--need to write an appendix for it
signal a_loading_state : a_loading;

type w_loading is (idle, col0, col1, col2, wait1, wait2,wait3);
--need to write an appendix for it
signal w_loading_state : w_loading;

type input_writing is (idle, 
                       write_to_RAMS_01, 
                       write_to_RAMS_10,
                       write_to_RAMS_11,
                       write_to_RAMS_00 );
signal input_write : input_writing;

    signal WrRAMs, RdRAMs : std_logic;
    signal addressA0, addressA1, addressA2, addressW0 : std_logic_vector (1 downto 0);
    signal a_load, w_load : std_logic; -- ld, ld_w
    signal pause : std_logic; -- stall
    signal last_a33_psuh : std_logic := '0';
    signal w0_in, w1_in, w2_in : unsigned (7 downto 0); --splitted w
    signal W_in_RAM : std_logic_vector (23 downto 0);
    signal w_out_untouched : std_logic_vector (23 downto 0); -- striagt from the WRAM
    -- input a into URAMs
    signal a0_in, a1_in, a2_in : std_logic_vector (7 downto 0); -- need to split the a_in
    -- output from URAMs
    signal a0_out, a1_out, a2_out : std_logic_vector (7 downto 0);
    signal a0_out_UN, a1_out_UN, a2_out_UN : unsigned (7 downto 0);
    signal w0_check, w1_check, w2_check : unsigned (7 downto 0);
    --------------------------------y0y1y2----------------------------
    signal MMU_out0, MMU_out1, MMU_out2 : unsigned (7 downto 0);
    signal done_receving_from_mmu : std_logic;
    signal writing_to_RAMs_done : std_logic := '0';
    signal loading_to_w_done : std_logic := '0';
    signal start_collect : std_logic := '0';
	 SIGNAL resetSoft : std_logic;
----------------------------------------------------------------------------------------
begin
    a0_in <= std_logic_vector(a_in(23 downto 16));
    a1_in <= std_logic_vector(a_in(15 downto 8));
    a2_in <= std_logic_vector(a_in(7 downto 0));

    a0_out_UN <= unsigned(a0_out);
    a1_out_UN <= unsigned(a1_out);
    a2_out_UN <= unsigned(a2_out);

    w0_in <= unsigned(w_out_untouched(23 downto 16));
    w1_in <= unsigned(w_out_untouched(15 downto 8));
    w2_in <= unsigned(w_out_untouched(7 downto 0));

    w0_check <= unsigned(w_in(23 downto 16));
    w1_check <= unsigned(w_in(15 downto 8));
    w2_check <= unsigned(w_in(7 downto 0));
    
	W_in_RAM <= std_logic_vector(w_in);
    pause <= stall;
    
    resetSoft <= reset OR hardReset; 
process (clock, setUp, GO, writing_to_RAMs_done, loading_to_w_done, last_a33_psuh, done_receving_from_mmu) is 
    begin
        if rising_edge (clock) then 
        STPUstate <= idle;
        input_write <= idle;
        a_loading_state <= idle;
        w_loading_state <= idle;
        
            case STPUstate is
                when idle =>
					 w_load <= '0';
					a_load <= '0';
					WrRAMs <= '0';
					RdRAMs <= '0';
                if setUp = '1' then 
                STPUstate <= writing;
                WrRAMs <= '1';
                else STPUstate <= idle;
                end if; 

                when writing =>
                input_write <= write_to_RAMS_01;
                if writing_to_RAMs_done = '1' then--when we have all the data written in RAMs
                w_loading_state <= col0;
                STPUstate <= loadingW;
                w_load <= '1';
                RdRAMs <= '1';
                WrRAMs <= '0';
                else STPUstate <= writing;
                end if;

                when loadingW =>
                WrRAMs <= '0';
                RdRAMs <= '1';
                w_load <= '1';
                if loading_to_w_done = '1' then
                a_load <= '1'; 
                STPUstate <= settingUp;
                RdRAMs <= '1';
				W_load <= '0';
                else STPUstate <= loadingW;
                end if;
                
                when settingUp => 
                RdRAMs <= '1';
                if GO = '1' then 
                STPUstate <= computting;
                a_load <= '1'; 
				w_load <= '0';
                a_loading_state <= idle;
                else STPUstate <= settingUp;
                end if;
                
                when computting =>
				if last_a33_psuh = '1' then
				STPUstate <= receving;
                start_collect <= '1';
                else STPUstate <= computting;
				end if;
					 
                when receving => 
				STPUstate <= receving;
                if done_receving_from_mmu = '1' then
                STPUstate <= done_receving;
                else null;
                end if;

                when done_receving =>
                done <= '1';
                STPUstate <= idle;
            end case;

            case input_write is --state when user's input is writing to the RAMs

                when idle => 
                addressA0 <= "01";
                addressA1 <= "01";
                addressA2 <= "01";
                addressW0 <= "01";
                input_write <= write_to_RAMS_01;

                when write_to_RAMS_01 =>
                addressA0 <= "10";
                addressA1 <= "10";
                addressA2 <= "10";
                addressW0 <= "10";
                input_write <= write_to_RAMS_10;

                when write_to_RAMS_10 =>
                addressA0 <= "11";
                addressA1 <= "11";
                addressA2 <= "11";
                addressW0 <= "11";
                input_write <= write_to_RAMS_11;

                when write_to_RAMS_11 =>
                addressA0 <= "00";
                addressA1 <= "00";
                addressA2 <= "00";
                addressW0 <= "00";
                input_write <= write_to_RAMS_00;

                when write_to_RAMS_00 =>
                WrRAMs <= '0';
                RdRAMs <= '1';
                writing_to_RAMs_done <= '1';
                input_write <= write_to_RAMS_00;
            end case;

            case w_loading_state is 
                when idle => 
                if w_load = '1' then
                addressW0 <= "01";
                w_loading_state <= col0;
                else  w_loading_state <= idle;
                end if;

                when col0 => 
                addressW0 <= "10";
                w_loading_state <= col1;

                when col1 => 
                addressW0 <= "11";
                w_loading_state <= col2;

                when col2 => 
                addressW0 <= "01";
                w_loading_state <= wait1;

                when wait1 =>
                w_loading_state <= wait2;

                when wait2 =>
                w_loading_state <= wait3;

                when wait3 =>
                loading_to_w_done <= '1';
                w_loading_state <= idle;

            end case;


            case a_loading_state is
                when idle => 
                if GO = '1' and a_load = '1' then
                    addressA0 <= "01"; --a11
                    addressA1 <= "00"; --0
                    addressA2 <= "00"; --0
                    a_loading_state <= step1;
                end if;

                when step1 =>
                addressA0 <= "10"; --a12
                addressA1 <= "01"; --0
                addressA2 <= "00"; --0
                a_loading_state <= step2;

                when step2 =>
                addressA0 <= "11"; --a13
                addressA1 <= "10"; --a21
                addressA2 <= "01"; --0
                a_loading_state <= step3;

                when step3 =>
                addressA0 <= "00"; 
                addressA1 <= "11"; --a22
                addressA2 <= "10"; --a31
                a_loading_state <= step4;

                when step4 =>
                addressA0 <= "00"; --00
                addressA1 <= "00"; --a23
                addressA2 <= "11"; --a32
                a_loading_state <= step5;

                when step5 =>
                addressA0 <= "00"; --00
                addressA1 <= "00"; --00
                addressA2 <= "00"; --00
                a_loading_state <= waitstage1;

                when waitstage1 => 
                a_loading_state <= waitstage2;

                when waitstage2 => 
                a_loading_state <= waitstage3;

                when waitstage3 => 
                last_a33_psuh <= '1';
                a_loading_state <= idle;

            end case;

        end if;

end process;

-----------------------------------------PORT MAP---------------------------------------
------------------------------------------RAMS------------------------------------------
WeightRAM : WRAM 
PORT MAP(aclr => hardReset, address => addressW0, clock => clock, data => W_in_RAM,
        rden => RdRAMs, wren => WrRAMs, q => w_out_untouched);

U0 : URAM
PORT MAP(aclr => resetSoft, address => addressA0, clock => clock, data => a0_in, 
        rden => RdRAMs, wren => WrRAMs, q => a0_out);

U1 : URAM
PORT MAP(aclr => resetSoft, address => addressA1, clock => clock, data => a1_in,
        rden => RdRAMs, wren => WrRAMs, q => a1_out);

U2 : URAM
PORT MAP(aclr => resetSoft, address => addressA2, clock => clock, data => a2_in,
        rden => RdRAMs, wren => WrRAMs, q => a2_out);
-------------------------------------------MMU-----------------------------------------
MatrixShut : MMU
PORT MAP(clock => clock, reset => resetSoft, hardReset => hardReset, ld => a_load,
        ld_w => w_load, stall => pause,
        a0 => a0_out_UN, a1 => a1_out_UN, a2 => a2_out_UN, 
        w0 => w0_in, w1 => w1_in, w2 => w2_in,
        y0 => MMU_out0, y1 => MMU_out1, y2 => MMU_out2);
-------------------------------------Activation Unit------------------------------------
ActiveAir : AU
PORT MAP(clock => clock, reset => resetSoft, hardReset => hardReset, stall => pause,
        y0 => MMU_out0, y1 => MMU_out1, y2 => MMU_out2,
        row0 => row0, row1 => row1, row2 => row2,
        done => done_receving_from_mmu, start => start_collect);
----------------------------------------------------------------------------------------
end struc ; --STPU