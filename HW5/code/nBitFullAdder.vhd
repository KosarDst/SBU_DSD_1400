Library ieee;
USE ieee.std_logic_1164.all;

ENTITY nBitFullAdder IS 
	generic (N: INTEGER:= 4); 
	PORT(start,clk,nrst :IN STD_LOGIC;
		A,B:IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		cout,done:OUT STD_LOGIC;
		SUM:OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END nBitFullAdder;
	ARCHITECTURE adder_process OF nBitFullAdder IS
		signal TempCarry : std_logic := '0';
		signal i : integer range 0 to n-1 := 0;
	BEGIN
	PROCESS(nrst,clk)
		variable TempCarry : std_logic := '0';
	BEGIN
		if(start='1') then 
			if (nrst = '0') then
				SUM <= (others => '0');
				cout <= '0';
			elsif (rising_edge(clk)) then
				SUM(i) <= A(i) xor B(i) xor TempCarry;
				TempCarry := (A(i) and B(i)) or (A(i) and TempCarry) or (B(i) and TempCarry);
				if (i /= n -1) then
					i <= i + 1;
					done <= '0';
				else 
				        done <= '1';
					i <= 0;
					cout <= TempCarry;
				end if;
			end if;
		else   --start == 0
			i <= 0;
			cout <= '0';			
			TempCarry := '0';
		end if;
	END PROCESS;	
	--CONCURRENT	
END adder_process;