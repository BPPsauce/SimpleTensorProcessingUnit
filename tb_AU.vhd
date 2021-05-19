LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.systolic_package.all;

entity tb_AU is
    port (
      clock, reset, hardReset, stall : in std_logic;
    y0, y1, y2 : in unsigned (7 downto 0);
    row0, row1, row2 : out bus_width;
    done : out std_logic;
	 start : in std_logic
  ) ;
  end tb_AU;

  architecture test of tb_AU is
  component AU is 
  port (
      clock, reset, hardReset, stall : in std_logic;
    y0, y1, y2 : in unsigned (7 downto 0);
    row0, row1, row2 : out bus_width;
    done : out std_logic;
	 start : in std_logic
    ) ;
    end component;

      signal clocksig : std_logic := '1';
      constant period : time := 15 ns;
      signal resetsig, hardsig, stallsig : std_logic;
      signal y0sig, y1sig, y2sig : unsigned (7 downto 0);
		signal startsig : std_logic;
  
  begin
    DUT: AU
    port map(clock => clocksig, reset => resetsig, hardReset => hardsig,
            stall => stallsig, y0 => y0sig, y1 => y1sig, y2 => y2sig,
            row0 => row0, row1 => row1, row2 => row2, done => done, start => startsig);
            clocksig <= not clocksig after period;

        process is 
        begin
				startsig <= '1';
            y0sig <= "00000000";
            y1sig <= "00000000";
            y2sig <= "00000000";
            wait for 25 ns;

            y0sig <= "00000001";
            y1sig <= "00000100";
            y2sig <= "00000010";
            wait for 25 ns;

            y0sig <= "00000110";
            y1sig <= "00000011";
            y2sig <= "00011000";
            wait for 25 ns;

            y0sig <= "00000011";
            y1sig <= "00000110";
            y2sig <= "00011000";
            wait for 25 ns;

            y0sig <= "00000010";
            y1sig <= "00000100";
            y2sig <= "00010000";
            wait for 25 ns;

            wait;
            end process;
  
  end test ; --tb_AU