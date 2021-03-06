LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
PACKAGE miniproc_pack IS
	PROCEDURE read_test_vector_from_file(SIGNAL nrst:OUT std_logic;
						SIGNAL opcode:OUT  std_logic_vector(3 DOWNTO 0);
										SIGNAL pri:IN TIME);
END PACKAGE miniproc_pack;

PACKAGE BODY miniproc_pack IS 
	PROCEDURE read_test_vector_from_file(
										SIGNAL nrst:OUT std_logic;
										SIGNAL opcode:OUT  std_logic_vector(3 DOWNTO 0);
										SIGNAL pri:IN TIME)IS
		        TYPE myfile IS FILE OF character;
        FILE fp : myfile;
        VARIABLE c : character;
        VARIABLE current_time : TIME := 0 ns;
        VARIABLE line_number : integer := 1;
    BEGIN
    
        FILE_OPEN(fp, "C:\Users\kosrd\Desktop\DataPath_DSD_7th/in.txt", READ_MODE);

      
       WHILE ( NOT ENDFILE(fp) ) LOOP

            -- Read nrst
            READ(fp, c);
            IF c = '0' THEN
                nrst <= TRANSPORT '0' AFTER current_time;
            ELSE
                nrst <= TRANSPORT '1' AFTER current_time;
            END IF;
     
            READ(fp, c);

            -- Read opcode
            FOR i IN 0 TO 3 LOOP
            READ(fp, c);            
            IF c = '0' THEN
                opcode(3-i) <= TRANSPORT '0' AFTER current_time;
            ELSE
                opcode(3-i) <= TRANSPORT '1' AFTER current_time;
            END IF;
            END LOOP;
    
            -- Read carriage return
            READ(fp, c);
            -- Read line feed
            READ(fp, c);
            current_time := current_time + pri;
            line_number := line_number + 1;
       END LOOP;
	FILE_CLOSE(fp);
	END read_test_vector_from_file;
END PACKAGE BODY miniproc_pack;