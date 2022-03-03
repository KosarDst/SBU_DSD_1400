LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ram IS 
GENERIC ( bits :INTEGER := 32; 
		  words :INTEGER := 64);
		PORT ( wr_ena :IN STD_LOGIC ;
				 addr :IN INTEGER RANGE 0 TO words-1; 
				 data_in :IN STD_LOGIC_VECTOR ( bits-1 DOWNTO 0 ) ;
				 data_out :OUT STD_LOGIC_VECTOR ( bits-1 DOWNTO 0 ));
END ram;
ARCHITECTURE ram OF ram IS
  TYPE vector_array IS ARRAY (0 TO words-1) OF STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
   SIGNAL memory : vector_array :=(OTHERS => (OTHERS => '0'));
  BEGIN
  PROCESS ( wr_ena )
  BEGIN 
  IF ( wr_ena = '1' )THEN 
		
			memory (addr) <= data_in; 
		
  END IF; 
  END PROCESS; 
  data_out <= memory(addr);
END ram ;