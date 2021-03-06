LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE work.miniproc_pack.ALL;
ENTITY miniproc_tb IS  
END miniproc_tb;
ARCHITECTURE behavioral OF miniproc_tb IS
	COMPONENT miniproc IS 
		PORT (
			clk, nrst   : IN    std_logic;
			opcode      : IN    std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT; 
	SIGNAL opcode_t 	: std_logic_vector(3 DOWNTO 0);
	SIGNAL clk_t 		: std_logic := '1';
	SIGNAL nrst_t 		: std_logic:='0';
	SIGNAL Period:TIME :=30 ns;
BEGIN
	clk_t <= NOT clk_t AFTER 5 ns;
	read_test_vector_from_file(nrst_t,
					opcode_t,
					Period);			
	cut: miniproc PORT MAP (clk_t, nrst_t, opcode_t);
END behavioral;
