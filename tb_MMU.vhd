LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity tb_MMU is
    port (
        clock, reset, hardReset, ld, ld_w, stall : std_logic;
        a0, a1, a2 : in unsigned (7 downto 0);
        w0, w1, w2 : in unsigned (7 downto 0);
        y0, y1, y2 : out unsigned (7 downto 0)
      ) ;
end tb_MMU;

architecture test of tb_MMU is
component MMU is
        port (
          clock, reset, hardReset, ld, ld_w, stall : std_logic;
          a0, a1, a2 : in unsigned (7 downto 0);
          w0, w1, w2 : in unsigned (7 downto 0);
          y0, y1, y2 : out unsigned (7 downto 0)
        ) ;
end component;

    signal ldsig, ld_wsig : std_logic;
    signal a0sig, a1sig, a2sig : unsigned (7 downto 0);
    signal w0sig, w1sig, w2sig : unsigned (7 downto 0);
    signal clocksig : std_logic := '1';
    constant period : time := 15 ns;
    signal stallsig, resetsig, ld_sig, HRsig : std_logic;
    
    begin 
    DUT : MMU
    port map(clock => clocksig, reset => resetsig, hardReset => HRsig,
            ld => ldsig, ld_w => ld_wsig, stall => stallsig, a0 => a0sig, a1 => a1sig, a2 => a2sig,
            w0 => w0sig, w1 => w1sig, w2 => w2sig);
    clocksig <= not clocksig after period;

    process is
        begin
				resetsig <= '1';
				HRsig <= '1';
				stallsig <= '0';
				ldsig <= '0';
				ld_wsig <= '0';
				
				a0sig <= "00000000";--
            a1sig <= "00000000";--
            a2sig <= "00000000";--
				w0sig <= "00000000";
            w1sig <= "00000000";
            w2sig <= "00000000";
				
				wait for 25 ns;
				resetsig <= '0';
				HRsig <= '0';
				ld_wsig <= '1';
				wait for 3 ns;
				
				w0sig <= "00000010";
            w1sig <= "00000010";
            w2sig <= "00000010";
				wait for 45 ns;
				
				w0sig <= "00000010";
            w1sig <= "00000010";
            w2sig <= "00000010";
				wait for 30 ns;
				
				w0sig <= "00000010";
            w1sig <= "00000010";
            w2sig <= "00000010";
				
--				w0sig <= "00000001";
--            w1sig <= "00000100";
--            w2sig <= "00000111";
--				wait for 45 ns;
--				
--				w0sig <= "00000010";
--            w1sig <= "00000101";
--            w2sig <= "00001000";
--				wait for 30 ns;
--				
--				w0sig <= "00000011";
--            w1sig <= "00000110";
--            w2sig <= "00001001";
				
				wait for 30 ns;
				ld_wsig <= '0';
				wait for 30 ns;
				ldsig <= '1';
				wait for 5 ns;
				----------------preloading stage
--				wait for 20 ns;
--				a0sig <= "00000001";--a11 1
--            a1sig <= "00000001";--0 2
--            a2sig <= "00000001";--0 1
--            wait for 20 ns;
--				a0sig <= "00000001";--b11
--            a1sig <= "00000010";--a23
--            a2sig <= "00000111";--a32
--            wait for 20 ns;
--
--            a0sig <= "00000010";--b12
--            a1sig <= "00000100";--b21
--            a2sig <= "00000010";--a33
--            wait for 20 ns;
--
--            a0sig <= "00001101";--b13
--            a1sig <= "00000110";--b22
--            a2sig <= "00100101";--b31
--            wait for 20 ns;
--				
            a0sig <= "00000001";--a11 1
            a1sig <= "00000000";--0 2
            a2sig <= "00000000";--0 1
            
            wait for 28 ns;
				
				
            a0sig <= "00000010";--a12 2
            a1sig <= "00000010";--a21 4
            a2sig <= "00000000";--0 6
            
            wait for 28 ns;

            a0sig <= "00000001";--a13
            a1sig <= "00000100";--a22
            a2sig <= "00000111";--a31
				
            wait for 28 ns;
				
				------------------------------
				a0sig <= "00000000";--b11
            a1sig <= "00000110";--a23
            a2sig <= "00000010";--a32
            wait for 28 ns;
				
				
            a0sig <= "00000000";--b12
            a1sig <= "00000000";--b21
            a2sig <= "00000101";--a33
            wait for 28 ns;
				
				
            a0sig <= "00000000";--b13
            a1sig <= "00000000";--b22
            a2sig <= "00000000";--b31
            wait for 180 ns;
				ldsig <= '0';
--------------------------------------------
				
--				a0sig <= "00000001";--b11
--            a1sig <= "00000010";--a23
--            a2sig <= "00000111";--a32
--            wait for 25 ns;
--
--            a0sig <= "00000010";--b12
--            a1sig <= "00000100";--b21
--            a2sig <= "00000010";--a33
--            wait for 25 ns;
--
--            a0sig <= "00001101";--b13
--            a1sig <= "00000110";--b22
--            a2sig <= "00100101";--b31
--            wait for 25 ns;


            wait for 120 ns;
            wait;
            end process;

end test ; -- tb_MMU