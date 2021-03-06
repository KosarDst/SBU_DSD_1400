library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity TB_nBitFullAdder is
end entity TB_nBitFullAdder;
architecture arch of TB_nBitFullAdder is

    component nBitFullAdder is
        generic(n : natural := 4);
        PORT(start,clk,nrst :IN STD_LOGIC;
		A,B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		cout,done : OUT STD_LOGIC;
		sum : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
    end component;

    signal clk, nrst, start, cout, done : std_logic;
    signal A, B , sum : std_logic_vector(3 downto 0);
    constant clk_period : time := 10 ns;
begin
    n_bit_AdderComp : nBitFullAdder
        generic map(n => 4)
        port map(start => start, clk => clk, nrst => nrst, A => A, B => B, cout => cout, done => done, SUM => SUM);
		
		

    clk_proc : process is
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process clk_proc;

    --sum_test : process is
    testing_process : process is 
	begin
        A <= "0101";
        B <= "1010";
        nrst <= '1';
        start <= '1';
	wait for 4*clk_period;
	assert ((SUM = "1100") and (cout = '0') and (done = '1')) ;
	A <= "1001";
        B <= "1111";
        nrst <= '1';
        start <= '1';
		wait for 4*clk_period;
		assert ((SUM = "1001") and (cout = '1') and (done = '1')) ;
    end process;    

end architecture arch;

