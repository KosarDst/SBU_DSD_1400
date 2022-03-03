LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Elevator IS 
		PORT( 	Come:IN std_logic_vector (3 downto 0);
			  CF:IN std_logic_vector (3 downto 0);
			  Switch:IN std_logic_vector (3 downto 0);
			  Clk:IN std_logic;
			  Nreset:IN std_logic;
			  Motor_down:OUT std_logic;
			  Motor_up:OUT std_logic;
			  Current_floor:OUT std_logic_vector (1 downto 0);
			  Move_state:OUT std_logic);
END Elevator;
ARCHITECTURE MoorMachine OF Elevator IS 
	TYPE state IS (s0, s1, s2, s3, s01, s10, s12, s21, s23, s32);
	SIGNAL current_state, next_state   : state;
	SIGNAL Mup,Mdown,Mstate :std_logic;
	SIGNAL Cfloor :std_logic_vector (1 downto 0);
BEGIN
    motor_up        <= Mup;
    motor_down      <= Mdown;
    current_floor   <= Cfloor(1 DOWNTO 0);
    move_state      <= Mstate;
com: PROCESS (Switch, CF, Come, current_state)
	BEGIN
	IF      current_state = s0 THEN
            IF (come(0)='1') OR (CF(0)='1') THEN
                next_state <= s0;
            ELSIF (come(1)='1') OR (CF(1)='1') OR (come(2)='1')OR (CF(2)='1') OR (come(3)='1') OR (CF(3)='1') THEN
                next_state <= s01;
            END IF;
				Mup  <= '0';
				Mdown  <= '0';
				Cfloor <= "00";
               			Mstate<= '0';
				
	ELSIF      current_state = s1 THEN
            IF (come(1)='1') OR (CF(1)='1') THEN
                next_state <= s1;
            ELSIF  (come(2)='1')OR (CF(2)='1') OR (come(3)='1') OR (CF(3)='1') THEN
                next_state <= s01;
			ELSIF ((come(1)='1') OR (CF(1)='1')) THEN
				next_state <= s10;
            END IF;
				Mup  <= '0';
				Mdown  <= '0';
				Cfloor <= "01";
               			Mstate<= '0';
               
				
	ELSIF      current_state = s2 THEN
            IF ((come(1)='1') OR (CF(1)='1')) THEN
                next_state <= s2;
            ELSIF  (come(3)='1' OR CF(3)='1')THEN
                next_state <= s12;
			ELSIF ((come(1)='1') OR (CF(1)='1') or (come(2)='1') OR (CF(2)='1'))THEN
				next_state <= s21;
            END IF;
				Mup  <= '0';
				Mdown  <= '0';
				Cfloor <= "10";--Current_floor <= "22";
               			Mstate<= '0';

	ELSIF     (current_state = s3) THEN
            IF (come(3)='1') OR (CF(3)='1') THEN
                next_state <= s3;
            ELSIF (come(0)='1') OR (CF(0)='1') OR (come(1)='1')OR (CF(1)='1') OR (come(2)='1') OR (CF(2)='1') THEN
                next_state <= s32;
            END IF;
				Mup  <= '0';
				Mdown  <= '0';
				Cfloor <= "11";--Current_floor <= "33";
               			Mstate<= '0';

   	ELSIF   current_state = s01 THEN 
            IF switch(1)='1'AND ((come(1)='1') OR (CF(1) = '1' ))THEN
                next_state <= s1;
			elsif((come(2)='1') OR (CF(2)='1') OR (come(3)='1')  OR (CF(3)='1'))THEN
				next_state <= S12;
            END IF;
				Mup  <= '0';
				Mdown  <= '1';
				Cfloor <= "01";
               	Mstate<= '1';--Move_state <= "01";

                		
	ELSIF   current_state = s12 THEN 
            IF (switch(2)='1'AND ((come(2)='1') OR (CF(2) = '1' )))THEN
                next_state <= s2;
			elsif(come(3)='1')or(CF(3)='1') THEN
				next_state <= S23;
            END IF;
				Mup  <= '0';
				Mdown  <= '1';
				Cfloor <= "10";--Current_floor <= "12";
               			Mstate<= '1';-- Move_state <= "01";
	ELSIF   current_state  = s23 THEN 
            IF switch(3)='1'AND ((come(3)='1') OR (CF(3) = '1' ))THEN
                next_state <= s3;
			END IF;
				Mup  <= '0';
				Mdown  <= '1';
				Cfloor <= "11";
               			Mstate<= '1';
	ELSIF   current_state = s32 THEN 
            IF switch(2)='1'AND ((come(2)='1') OR (CF(2) = '1' ))THEN
                next_state <= s2;
			elsif(come(0)='1')or(CF(0)='1')or(come(1)='1')or(CF(1)='1') THEN
				next_state <= S21;
			END IF;
				Mup  <= '1';
				Mdown  <= '0';
				Cfloor <= "10";
               			Mstate<= '1';--Move_state <= "10";
	ELSIF   current_state = s21 THEN 
            IF switch(1)='1'AND ((come(1)='1') OR (CF(1) = '1' ))THEN
                next_state <= s1;
			elsif(come(0)='1')or(CF(0)='1')or(come(1)='1')THEN
				next_state <= S10;
			END IF;
				Mup  <= '1';
				Mdown  <= '0';
				Cfloor <= "01";
               	Mstate<= '1';--Move_state <= "10";
				Current_floor <= "01";
	ELSIF   current_state = s10 THEN 
            IF switch(0)='1'AND ((come(0)='1') OR (CF(0) = '1' ))THEN
                next_state <= s0;
			END IF;
				Mup  <= '1';
				Mdown  <= '0';
				Cfloor <= "00";
               	Mstate<= '1';--Move_state <= "10";
	END IF;
	END process com;
	
 -- Sequential Part
    seq: PROCESS (nreset, clk)
    BEGIN
        IF nreset = '0' THEN    
           current_state <= s0;
        ELSIF clk='1' AND clk'EVENT THEN
            current_state <= next_state;
        END IF;
    END PROCESS seq;
END MoorMachine;