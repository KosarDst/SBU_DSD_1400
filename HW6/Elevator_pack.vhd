LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

PACKAGE Elevator_pack IS
	PROCEDURE read_test_vector_from_file(SIGNAL come:OUT  std_logic_vector(3 DOWNTO 0);
										 SIGNAL cf:OUT  std_logic_vector(3 DOWNTO 0);
										 SIGNAL switch:OUT std_logic_vector(3 DOWNTO 0);
										 SIGNAL pri:IN TIME;
										 SIGNAL nreset:OUT   std_logic);
END PACKAGE Elevator_pack;

PACKAGE BODY Elevator_pack IS  
    PROCEDURE read_test_vector_from_file(SIGNAL come:OUT  std_logic_vector(3 DOWNTO 0);
										 SIGNAL cf:OUT  std_logic_vector(3 DOWNTO 0);
										 SIGNAL switch:OUT std_logic_vector(3 DOWNTO 0);
										 SIGNAL pri:IN TIME;
										 SIGNAL nreset:OUT   std_logic)IS
        TYPE myfile IS FILE OF character;
        FILE fp : myfile; -- FILE POINTER
        VARIABLE c : character;
        VARIABLE current_time : TIME := 3 ns;
        VARIABLE line_number : integer := 1;
	BEGIN
	FILE_OPEN(fp, "C:\modeltech64_10.6d\examples\work\input.txt", READ_MODE);
		WHILE ( NOT ENDFILE(fp) ) LOOP
		--read come
		FOR i IN 0 TO 3 LOOP
                READ(fp, c);           
                IF c = '0' THEN
                    come(3-i) <= TRANSPORT '0' AFTER current_time;
                ELSE
                    come(3-i) <= TRANSPORT '1' AFTER current_time;
                END IF;
            END LOOP;
			
		READ(fp, c);--read a space in file
	
			--read cf
			FOR i IN 0 TO 3 LOOP
                READ(fp, c);            
                IF c = '0' THEN
                    cf(3-i) <= TRANSPORT '0' AFTER current_time;
                ELSE
                    cf(3-i) <= TRANSPORT '1' AFTER current_time;
                END IF;
            END LOOP;
			
		READ(fp, c);--read a space in file	
		
		--read switch
		FOR i IN 0 TO 3 LOOP
                READ(fp, c);            
                IF c = '0' THEN
                    switch(3-i) <= TRANSPORT '0' AFTER current_time;
                ELSE
                    switch(3-i) <= TRANSPORT '1' AFTER current_time;
                END IF;
            END LOOP;
			
		READ(fp, c);--read a space in file	
		
			--read not reset
			IF c = '0' THEN
                nreset <= TRANSPORT '0' AFTER current_time;
            ELSE
                nreset <= TRANSPORT '1' AFTER current_time;
            END IF;
	-- Read carriage return
        READ(fp, c);
        -- Read line feed
     	READ(fp, c);
		current_time := current_time + pri;
        line_number := line_number + 1;
		END loop;
		FILE_CLOSE(fp);
		END read_test_vector_from_file;
		END PACKAGE BODY Elevator_pack;
		