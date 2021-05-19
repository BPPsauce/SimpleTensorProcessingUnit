LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity MMU is
  port (
    clock, reset, hardReset, ld, ld_w, stall : std_logic;
    a0, a1, a2 : in unsigned (7 downto 0);
    w0, w1, w2 : in unsigned (7 downto 0);
    y0, y1, y2 : out unsigned (7 downto 0)
  ) ;
end MMU;

architecture arch of MMU is
component PE is 
    port (a_in, w_in, part_in : in unsigned(7 downto 0);
          clock, reset, hardReset, ld, ld_w : in std_logic;
          partialSum, a_out : out unsigned(7 downto 0)
    ) ;
end component;

    type t_state is (idle, col0, col1, col2);
    signal state : t_state;
    signal PS1 ,PS2, PS3, PS4, PS5, PS6, PS7, PS8, PS9 :unsigned(7 downto 0);
    signal aout1, aout2, aout3, aout4, aout5, aout6, aout7, aout8, aout9: unsigned(7 downto 0);
    signal w11, w12, w13, w21, w22, w23, w31, w32, w33 :unsigned(7 downto 0);
	 signal pi1, pi2, pi3 : unsigned(7 downto 0);
	 begin

        process(clock,hardReset) is 
        begin 
		  if hardReset = '1' then 
					 w11 <= "00000000";
                w12 <= "00000000";
                w13 <= "00000000";
					 w21 <= "00000000";
                w22 <= "00000000";
                w23 <= "00000000";
					 w31 <= "00000000";
                w32 <= "00000000";
                w33 <= "00000000";
					 
        elsif rising_edge(clock) then
            state <= idle;

            case state is
                when idle =>
                if ld_w = '1' then
					 w11 <= w0;
                w12 <= w1;
                w13 <= w2; 
                state <= col0;
                else null;
                end if;
					 
                when col0 =>
                w21 <= w0;
                w22 <= w1;
                w23 <= w2;
                state <= col1;
					 
                when col1 =>
					 w31 <= w0;
                w32 <= w1;
                w33 <= w2;
					 state <= col2;
               
                when col2 => 
                state <= idle;
            end case;
        end if;
        end process;
		  

PE1: PE -- (1 1)
PORT MAP(a_in => a0, w_in => w11, part_in => pi1,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS1, a_out => aout1);

PE2: PE -- (1 2)
PORT MAP(a_in => aout1, w_in => w21, part_in => pi2,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS2, a_out => aout2);

PE3: PE -- (1 3)
PORT MAP(a_in => aout2, w_in => w31, part_in => pi3,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS3, a_out => aout3);
------------------------------------------------------------------
PE4: PE -- (2 1)
PORT MAP(a_in => a1, w_in => w12, part_in => PS1,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS4, a_out => aout4);

PE5: PE -- (2 2)
PORT MAP(a_in => aout4, w_in => w22, part_in => PS2,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS5, a_out => aout5);

PE6: PE -- (2 3)
PORT MAP(a_in => aout5, w_in => w32, part_in => PS3,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS6, a_out => aout6);
--------------------------------------------------------------------
PE7: PE -- (3 1)
PORT MAP(a_in => a2, w_in => w13, part_in => PS4,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS7, a_out => aout7);

PE8: PE -- (3 2)
PORT MAP(a_in => aout7, w_in => w23, part_in => PS5,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS8, a_out => aout8);

PE9: PE -- (3 3)
PORT MAP(a_in => aout8, w_in => w33, part_in => PS6,
        clock => clock, reset => reset, hardReset => hardReset,
        ld => ld, ld_w => ld_w, partialSum => PS9, a_out => aout9);
----------------------------------------------------------------------
 y0 <= PS7; 
 y1 <= PS8;
 y2 <= PS9;
 pi1 <= "00000000"; 
 pi2 <= "00000000";
 pi3 <= "00000000";
 

end arch ; -- arch