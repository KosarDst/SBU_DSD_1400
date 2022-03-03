LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE work.Elevator_pack.ALL;

ENTITY Elevator_tb IS 
END Elevator_tb;

ARCHITECTURE Test of Elevator_tb IS
    COMPONENT Elevator 
        PORT(
			Come:IN std_logic_vector (3 downto 0);
			CF:IN std_logic_vector (3 downto 0);
			Switch:IN std_logic_vector (3 downto 0);
			Clk:IN std_logic;
            Nreset:IN std_logic;
            Motor_down:OUT std_logic;
            Motor_up:OUT std_logic;
            Current_floor:OUT std_logic_vector (1 downto 0);
            Move_state:OUT std_logic);
END COMPONENT;
	SIGNAL come_t           :   std_logic_vector(3 DOWNTO 0);
	SIGNAL cf_t             :   std_logic_vector(3 DOWNTO 0);
    SIGNAL switch_t         :   std_logic_vector(3 DOWNTO 0);
	SIGNAL clk_t            :   std_logic := '0';
    SIGNAL nreset_t         :   std_logic := '0';
	SIGNAL motor_down_t     :   std_logic;
    SIGNAL motor_up_t       :   std_logic;
    SIGNAL current_floor_t  :   std_logic_vector(1 DOWNTO 0);
    SIGNAL move_state_t     :   std_logic;
	SIGNAL Period:TIME :=10 ns;
BEGIN
	clk_t <= NOT clk_t AFTER 10 ns;
	read_test_vector_from_file(come_t,
								cf_t,
								switch_t,
								Period,
								nreset_t);
								
	CUT: Elevator PORT MAP (Come =>come_t ,
							CF=>cf_t,
							Switch=>switch_t,
							Clk=>clk_t,
							Nreset=>nreset_t,
							Motor_down=>motor_down_t,
							Motor_up=>motor_up_t,
							Current_floor=>current_floor_t,
							Move_state=>move_state_t );
END Test;
	