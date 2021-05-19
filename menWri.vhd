LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity menWri is
  port (
    clock, wren : in std_logic;
    address : out std_logic_vector(1 downto 0)
  ) ;
end menWri;

architecture stru of menWri is

    type dataWritoRAMs is (idle, add_01, add_10, add_11, add_00);
    signal dataWriting : dataWritoRAMs;

begin

    process (clock, wren) is 
        begin
				if wren = '0' then
                    dataWriting <= idle;
              
						  
            else if rising_edge(clock) then
                    dataWriting <= add_01;

                    case dataWriting is
								when idle =>
								if wren = '1' then
								dataWriting <= add_01;
								else null;
								end if; 
								
                        when add_01 =>
                        address <= "10";
                        dataWriting <= add_10;

                        when add_10 =>
                        address <= "11";
                        dataWriting <= add_11;

                        when add_11 =>
                        address <= "00";
                        dataWriting <= add_00;

                        when add_00 =>
                        address <= "01";
								dataWriting <= idle;
                    end case;
						  end if;
                end if;
            end process;

end stru ; --menWri