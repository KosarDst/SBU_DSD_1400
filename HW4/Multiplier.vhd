library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

ENTITY Multiplier is 
 generic (N: INTEGER:= 4); 
PORT (A,B: in std_logic_vector (N-1 DOWNTO 0); 
 OUTPUT: out std_logic_vector (2*N-1 DOWNTO 0)); 
END Multiplier; 
architecture dataflow of Multiplier is 
 component Fulladder 
 PORT( cin, x, y : in std_logic;
		s, cout : out std_logic); 
 END component; 
 type arrays is array (natural range <>, natural range <>) of std_logic; 
 SIGNAL and_of_bits: arrays(N DOWNTO 0, N-1 DOWNTO 0); --and 
 SIGNAL sum_of_Fulladder: arrays(N-1 DOWNTO 0, N-1 DOWNTO 0); --sum of Fulladder
 SIGNAL Carry_of_Fulladder: arrays(N-1 DOWNTO 0, N-2 DOWNTO 0); -- Carry of Fulladder
 
begin 
 gi: for i in 0 to N-1 GENERATE  
	gj: for j in 0 to N-1 GENERATE 
		 and_of_bits(i,j) <= A(i) and B(j); 
		 fa: if i /= N-1 and j /= N-1 GENERATE 
			fij: Fulladder PORT map (cin => Carry_of_Fulladder(i,j), x => sum_of_Fulladder(i,j+1) , y => and_of_bits(i+1,j), s => sum_of_Fulladder(i+1,j), cout => Carry_of_Fulladder(i+1,j)); 
		 END GENERATE;
		 fb: if i = 0 GENERATE 
			sum_of_Fulladder(i,j) <= and_of_bits(i,j); 
		END GENERATE; 
	END GENERATE; 
 END GENERATE; 
 and_of_bits(N,0) <= '0'; 
 glj: for j in 0 to N-2 GENERATE 
		Carry_of_Fulladder(0,j) <= '0'; 
		sum_of_Fulladder(j+1,N-1) <= and_of_bits(j+1,N-1);
		OUTPUT(j+1) <= sum_of_Fulladder(j+1,0); 
		flj: Fulladder PORT map (cin => Carry_of_Fulladder(N-1,j), x => sum_of_Fulladder(N-1,j+1), y => and_of_bits(N,j), s => OUTPUT(N+j), cout => and_of_bits(N,j+1)); 
 END GENERATE; 
 
 OUTPUT(0) <= and_of_bits(0,0); 
 OUTPUT(2*N-1) <= and_of_bits(N,N-1); 
END dataflow; 