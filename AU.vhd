LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
package systolic_package is
CONSTANT N : INTEGER := 8;
TYPE bus_width IS ARRAY (0 to 2) OF UNSIGNED(N-1 DOWNTO 0);
end package systolic_package;
package body systolic_package is
--blank, include any implementations here, if necessary

end package body systolic_package;

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.systolic_package.all;

entity AU is
  port (
    clock, reset, hardReset, stall : in std_logic;
    y0, y1, y2 : in unsigned (7 downto 0);
    row0, row1, row2 : out bus_width;
    done : out std_logic;
	 start : in std_logic
  ) ;
end AU;

architecture structural of AU is
signal row0_arr : bus_width;
signal row1_arr : bus_width;
signal row2_arr : bus_width;
type dataMan is (a11_1, a12_2, a13_3, a23_2, a33_1);--states
signal dataWri : dataMan;
begin
    row0 <= row0_arr;
    row1 <= row1_arr;
    row2 <= row2_arr;
	 
	 process (clock, start) is -- step by step 
	    begin 
	        if rising_edge(clock) then
				if start = '1' then
					if reset = '0' then
					if hardreset = '0' then
                dataWri <= a11_1;
					 else null;
					 end if;
					 else null;
					 end if;
					 end if;

                case dataWri is
                    when a11_1=> 
                    row0_arr(0) <= y0;
                    dataWri <= a12_2;

                    when a12_2 =>
                    row0_arr(1) <= y0;
                    row1_arr(0) <= y1;
                    dataWri <= a13_3;

                    when a13_3 =>
                    row0_arr(2) <= y0;
                    row1_arr(1) <= y1;
                    row2_arr(0) <= y2;
                    dataWri <= a23_2;

                    when a23_2 => 
                    row1_arr(2) <= y1;
                    row2_arr(1) <= y2;
                    dataWri <= a33_1;

                    when a33_1 =>
                    row2_arr(2) <= y2;
						  if start = '1' then
                    done <= '1';
                    end if;
                    dataWri <= a11_1;
                end case;
	        end if;
	 end process;
	 
end structural ; -- structural