--ShutThePugUp
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.systolic_package.all;

entity tb_STPU is
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
  end tb_STPU;

  architecture test of tb_STPU is
  component STPU is
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
  end component;

      signal clocksig : std_logic := '1';
      constant period : time := 25 ns;
      signal resetsig, hardsig, stallsig : std_logic;
      signal setsig, gosig: std_logic;
      signal w, a : unsigned (23 downto 0);
  
  begin
    DUT : STPU
    port map(clock => clocksig, reset => resetsig, hardReset => hardsig,
    setUp => setsig, GO => gosig, stall => stallsig,
    w_in => w, a_in => a, done => done, row0 => row0, row1 => row1, row2 => row2);
    clocksig <= not clocksig after period;


    process is 
    begin 
        setsig <= '1';
		  stallsig <= '0';
		  gosig <= '0';
		  resetsig <= '0';
		  hardsig <= '0';
		  w <= "000000000000000000000000"; -- 147
        a <= "000000000000000000000000"; -- 121
		  wait for 50 ns;
		  
		  w <= "000000110000001000000010"; -- 222
        a <= "000000010000001000000001"; -- 121
		  wait for 60 ns; 

        w <= "000000100000001000000011"; -- 222
        a <= "000000100000010000000110"; -- 246
        wait for 50 ns;

        w <= "000000100000001000000010"; -- 222
        a <= "000001110000001000000101"; -- 725
        wait for 45 ns;

        w <= "000000000000000000000000"; -- 000
        a <= "000000000000000000000000"; -- 000
        wait for 50 ns;
		  
		  setsig <= '0';
		  wait for 60 ns;

		  wait for 180 ns;
		  
		  
        gosig <= '1';
        wait for 60 ns; 

        wait;
        end process;
  
  end test ; --tb_STPU