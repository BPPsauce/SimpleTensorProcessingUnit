LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY TB_URAM IS
	PORT
	(
		aclr		: IN STD_LOGIC  := '0';
		address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END TB_URAM;

architecture test of TB_URAM is
component URAM IS
PORT(aclr		: IN STD_LOGIC  := '0';
	address		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	clock		: IN STD_LOGIC  := '1';
	data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	rden		: IN STD_LOGIC  := '1';--always reading?
	wren		: IN STD_LOGIC ;
	q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
end component;
signal addressig : std_logic_vector(1 downto 0);
signal clocksig : std_logic := '1';
constant period : time := 13 ns;
signal datasig : std_logic_vector (7 downto 0);
signal wrisig, readsig : std_logic;
signal clear : std_logic;
begin
DUT: URAM
port map(aclr => clear, address => addressig, clock => clocksig, data => datasig,
        rden => readsig, wren => wrisig, q => q);
clocksig <= NOT clocksig after period; 

process is 
begin 

clear <= '0';
addressig <= "00";
readsig <= '0';
wrisig <= '0';
datasig <= "00010001";
wait for 80 ns;


addressig <= "00";--write to address 0
readsig <= '0';
wrisig <= '1';
datasig <= "00010001";
wait for 80 ns;

addressig <= "01";--write to address 1
readsig <= '0';
wrisig <= '1';
datasig <= "00010001";
wait for 80 ns;

addressig <= "10";--write to address 2
readsig <= '0';
wrisig <= '1';
datasig <= "11111111";
wait for 80 ns;

addressig <= "11";--write to address 3
readsig <= '0';
wrisig <= '1';
datasig <= "00001111";
wait for 80 ns;

addressig <= "00";--read from 0
readsig <= '1';
wrisig <= '0';
datasig <= "00000000";
wait for 80 ns;

addressig <= "10";--read from 2
readsig <= '1';
wrisig <= '0';
datasig <= "00000000";
wait for 80 ns;

addressig <= "11";--read from 3
readsig <= '1';
wrisig <= '1';
datasig <= "00010001";
wait for 80 ns;

addressig <= "01";
readsig <= '1';
wrisig <= '0';
datasig <= "00001000";
wait for 80 ns;

addressig <= "11";
readsig <= '1';
wrisig <= '0';
datasig <= "00001000";
wait for 80 ns;

addressig <= "11";
readsig <= '0';
wrisig <= '1';
datasig <= "00001000";
wait for 80 ns;

addressig <= "11";
readsig <= '0';
wrisig <= '0';
datasig <= "00001000";
wait for 80 ns;

addressig <= "11";
readsig <= '1';
wrisig <= '0';
datasig <= "11111111";
wait for 80 ns;


addressig <= "11";
readsig <= '1';
wrisig <= '1';
datasig <= "11111111";
wait for 60 ns;


addressig <= "11";
readsig <= '1';
wrisig <= '0';
datasig <= "10010110";
wait for 100 ns;

addressig <= "11";
readsig <= '0';
wrisig <= '1';
datasig <= "10010110";
wait for 60 ns;

addressig <= "10";
readsig <= '1';
wrisig <= '1';
datasig <= "10010110";
wait for 60 ns;


wait for 60 ns;

wait;
end process;
end test ; -- test