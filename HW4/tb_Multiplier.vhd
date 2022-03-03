LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
use ieee.std_logic_arith.all; 
ENTITY tb_Multiplier IS 
 generic (N: INTEGER:= 4); 
END tb_Multiplier; 
 
ARCHITECTURE test OF tb_Multiplier IS  
 COMPONENT Multiplier 
 generic (N: INTEGER:= 4);
 PORT( 
 A : IN std_logic_vector(N-1 DOWNTO 0); 
 B : IN std_logic_vector(N-1 DOWNTO 0); 
 output : OUT std_logic_vector(2*N-1 DOWNTO 0) 
 ); 
 END COMPONENT; 
 
 SIGNAL tb_A : std_logic_vector(N-1 DOWNTO 0) := (others => '0'); 
 SIGNAL tb_B : std_logic_vector(N-1 DOWNTO 0) := (others => '0'); 
 SIGNAL tb_output : std_logic_vector(2*N-1 DOWNTO 0); 
 
BEGIN 
	CUT: Multiplier GENERIC MAP(4) PORT MAP(A=>tb_A,B=>tb_B,output=>tb_output);
	tb_A <= X"F";--15
	tb_B <= X"F";--15
	
END test; 
