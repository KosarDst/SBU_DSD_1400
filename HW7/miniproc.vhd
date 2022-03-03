LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL; 
use IEEE.numeric_std.all;

ENTITY miniproc IS 
GENERIC ( bits :INTEGER := 32;words :INTEGER := 64);
    PORT (
        clk, nrst   : IN    std_logic;
        opcode      : IN    std_logic_vector(3 DOWNTO 0)
    );
END miniproc; 

ARCHITECTURE behavioral OF miniproc IS
    TYPE state IS (T0, T1, T2, T3,T4,T5);
component ram  
	GENERIC (bits :INTEGER:=32;words :INTEGER:=64);
		PORT ( wr_ena :IN STD_LOGIC;
			   addr :IN INTEGER RANGE 0 TO words-1;
			   data_in :IN STD_LOGIC_VECTOR (bits-1 DOWNTO 0);
			   data_out :OUT STD_LOGIC_VECTOR (bits-1 DOWNTO 0));
END component ram;
	SIGNAL cur_state, nCt_state : state;
	--Control signals
	SIGNAL a_ld 	: std_logic;
	SIGNAL b_ld 	: std_logic;
	SIGNAL C_ld 	: std_logic;
	SIGNAL D_ld 	: std_logic;
	SIGNAL acc_ld 	: std_logic;
	SIGNAL cbus : std_logic_vector(31 DOWNTO 0);
	SIGNAL sel 	: std_logic_vector(1 DOWNTO 0);
	SIGNAL func : std_logic_vector(2 DOWNTO 0);
	SIGNAL Z 	: std_logic_vector(31 DOWNTO 0);

	--Registers
	SIGNAL A 	: std_logic_vector(5 DOWNTO 0):="000001";
	SIGNAL B 	: std_logic_vector(31 DOWNTO 0):="00000000000000000000000000000001";
	SIGNAL C 	: std_logic_vector(31 DOWNTO 0):="00000000000000000000000000000001";
	SIGNAL D 	: std_logic_vector(31 DOWNTO 0):="00000000000000000000000000000001";
	SIGNAL ACC 	: std_logic_vector(31 DOWNTO 0):="00000000000000000000000000000001";
	
	--Ram's signal
	SIGNAL WE_s:STD_LOGIC;
	SIGNAL addres_s:INTEGER RANGE 0 TO words-1;
	SIGNAL datain_s :STD_LOGIC_VECTOR (bits-1 DOWNTO 0);
	SIGNAL dataout_s : STD_LOGIC_VECTOR (bits-1 DOWNTO 0);
	SIGNAL A_cast_int:INTEGER RANGE 0 TO words-1;
	SIGNAL D_cast_int:INTEGER RANGE 0 TO words-1;
	BEGIN
A_cast_int<=to_integer(ieee.NUMERIC_STD.UNSIGNED(A(5 downto 0)));
addres_s<=A_cast_int;

--BUS
	cbus <= B WHEN sel = "01" ELSE
			dataout_s WHEN sel="10" ELSE
			ACC WHEN sel="11";
			
			--ALU
	z <= 	C + D WHEN func = "000" ELSE
			C AND D WHEN func = "001" ELSE
			C XOR D WHEN func = "010" ELSE
			C - D WHEN func = "011" ELSE
			C WHEN func="100"ELSE
			std_logic_vector(shift_left(unsigned(D), to_integer(unsigned(C(4 DOWNTO 0))))) WHEN func="110"ELSE
			D WHEN func="111";
sram: ram PORT map(WE_s,addres_s,datain_s,dataout_s);--agr khorogi qalate moshkel az ine
    controlpath: PROCESS (cur_state, opcode)
    BEGIN
		CASE cur_state is
			WHEN T0 =>
				CASE opcode IS
					WHEN "0000" => func <= "100"; acc_ld <= '1'; nCt_state <= T0;
					WHEN "0001" => func <= "111"; acc_ld <= '1'; nCt_state <= T0;
					WHEN "0010" => func <= "000"; acc_ld <= '1'; nCt_state <= T0;
					WHEN "0011" => sel <= "01"; D_ld <= '1'; nCt_state <= T1;
					WHEN "0100" => sel <= "01"; D_ld <= '1'; nCt_state <= T1;
					WHEN "0101" => sel<= "10";C_ld<='1';WE_s<='0';nCt_state <= T1;
					WHEN "0110" => sel<="11";WE_s<='1';nCt_state<=T0;
					WHEN "0111" => sel <= "00";a_ld <= '1';nCt_state <= T1;
					WHEN "1000" => func <= "100";acc_ld <= '1';nCt_state <= T1;
					WHEN "1001" => sel <= "01";D_ld <= '1';nCt_state <= T1;
					WHEN OTHERS =>sel <= "01";D_ld <= '1';nCt_state <= T1;
				END CASE;
				
			WHEN T1 =>
				CASE opcode IS
					WHEN "0011"	=> func <= "001"; acc_ld <= '1'; nCt_state <= T1;
					WHEN "0100"	=> func <= "010"; acc_ld <= '1'; nCt_state <= T1;
					WHEN "0101"	=> func<="100";acc_ld<='1';nCt_state<=T0;
					WHEN "0111"	=> sel <= "10";D_ld <= '1';nCt_state <= T2;
					WHEN "1000" => sel <= "11";a_ld <= '1';nCt_state <= T2;
					WHEN "1001"	=> func <= "010";acc_ld <= '1';nCt_state <= T2;
					WHEN OTHERS =>func <= "110";acc_ld <= '1';nCt_state <= T2;
				END CASE;
				
			WHEN T2 =>
				CASE opcode IS
					WHEN "0111"	=> func <= "100";acc_ld <= '1';nCt_state <= T3;
					WHEN "1000" => sel <= "11";D_ld <= '1';nCt_state <= T3;
					WHEN "1001"	=> sel <= "11";WE_s <= '1';nCt_state <= T0;
					WHEN OTHERS =>sel <= "11";WE_s <= '1';nCt_state <= T3;
				END CASE;
			WHEN T3 =>
				CASE opcode IS
					WHEN "0111"	=>sel <= "11";a_ld <= '1';nCt_state <= T4;
					WHEN OTHERS =>sel <= "01"; a_ld <= '1'; nCt_state <= T4;
				END CASE;
			WHEN T4 =>
				CASE opcode IS
					WHEN "0111"	=>sel <= "11";C_ld <= '1';nCt_state <= T5;
					WHEN OTHERS =>sel <= "11";C_ld <= '1';nCt_state <= T5;
				END CASE;
			WHEN T5 =>
				CASE opcode IS
					WHEN "0111"	=> func <= "000";acc_ld<= '1';nCt_state <= T0;
					WHEN OTHERS => func <= "110";datain_s<=cbus;acc_ld <= '1';nCt_state <= T0;
				END CASE;
			WHEN OTHERS =>nCt_state <= T0;
		END CASE;
    END PROCESS controlpath;

    datapath: PROCESS (clk)
    BEGIN
        IF clk = '1' THEN
			IF nrst = '1' THEN
				cur_state <= T0;
			ELSE
				IF a_ld = '1' THEN
					A <= cbus(5 DOWNTO 0);
				END IF;
				IF b_ld = '1' THEN
					B <= cbus;
				END IF;
				IF C_ld = '1' THEN
					C <= cbus;
				END IF;
				IF D_ld = '1' THEN
					D <= cbus;
				END IF;
				IF acc_ld = '1' THEN
					ACC <= z;
				END IF;
				cur_state <= nCt_state;
			END IF;
        	END IF;
    END PROCESS datapath;
END ARCHITECTURE behavioral;