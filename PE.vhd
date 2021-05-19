LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity MAC is
  port (weight, a_in, part_in : in unsigned(7 downto 0);
        partial_sum : out unsigned (7 downto 0)
		  );
end MAC;

architecture behavioral of MAC is

signal mult_outsig16 : unsigned(15 downto 0);
signal partial_16 : unsigned (15 downto 0);
signal mult_outsig8 : unsigned (7 downto 0);
signal partial_8 : unsigned (7 downto 0);


begin
   partial_16 <= to_unsigned((to_integer(a_in) * to_integer(weight)) + to_integer(part_in), 16);
	
	process(partial_16) is 	
		BEGIN
			if to_integer(partial_16) < 225 then
				partial_8 <= partial_16 (7 downto 0);
			else partial_8 <= "11111111";				
			end if;
end process;

partial_sum <= partial_8;
end behavioral ; -- behavioral
----------------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY D_FF IS
PORT(D : IN UNSIGNED(7 DOWNTO 0);
	reset, clock, ld: In STD_LOGIC;
	Q : OUT UNSIGNED(7 DOWNTO 0));
END D_FF;

ARCHITECTURE Behavioral of D_FF IS
BEGIN
process(clock, reset)
BEGIN 
if reset = '1' then 
	Q <= "00000000";
elsif (rising_edge(clock))then
    if(ld = '1') then
        Q<= D;
	END if;
END if;
END process;
END Behavioral;
-------------------D flip flop---------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.all;

entity PE is
  port (a_in, w_in, part_in : in unsigned(7 downto 0);
        clock, reset, hardReset, ld, ld_w : in std_logic;
        partialSum, a_out : out unsigned(7 downto 0)
  ) ;
end PE;

architecture structral of PE is

component D_FF 
PORT(D : IN UNSIGNED(7 DOWNTO 0);
	reset, clock, ld: In STD_LOGIC;
    Q : OUT UNSIGNED(7 DOWNTO 0));
end component;

component MAC is
     port (weight, a_in, part_in : in unsigned(7 downto 0);
				partial_sum : out unsigned (7 downto 0)
				) ;
end component;
  
signal wRegOut, multiOut, macOut : unsigned (7 downto 0);
signal resetSig : std_logic;

begin
    resetSig <= reset OR hardReset;

Wreg : D_ff
PORT MAP(D => w_in, reset => hardReset, clock => clock, ld => ld_w, Q => wRegOut);
--reset to hardreset to erase everything
--only hard reset to erase w values 

BigMAC : MAC 
PORT MAP( weight => wRegOut, a_in => a_in, part_in => part_in, partial_sum => macOut);
-- mac component

A : D_ff
PORT MAP(D => a_in, reset => resetSig, clock => clock, ld => ld, Q => a_out);

Y : D_ff
PORT MAP(D => macOut, reset => resetSig, clock => clock, ld => ld, Q => partialSum);

end structral ; -- structral