ENTITY UART_TB IS END UART_TB;
LIBRARY ieee;
USE  ieee.std_logic_1164.all;

ARCHITECTURE Test OF UART_TB IS 
    COMPONENT UART IS 
        PORT(
            nrst            : IN std_logic;
            clk             : IN std_logic;
            start           : IN std_logic;
            rx              : IN std_logic;
            data_in         : IN std_logic_vector(7 DOWNTO 0);
            baud   	        : IN std_logic_vector(7 DOWNTO 0);
            tx  	        : OUT std_logic;
            data_ready      : BUFFER std_logic;
            data_out        : BUFFER std_logic_vector(7 DOWNTO 0)
        );
    END COMPONENT;
    SIGNAL start_t1, rx_t1, nrst_t: std_logic;
    SIGNAL clk_t                    : std_logic:= '1';
    SIGNAL data_in_t1, baud_t   	: std_logic_vector(7 DOWNTO 0);
    SIGNAL data_ready_t1, tx_t_1  	: std_logic;
    SIGNAL data_out_t1        	    : std_logic_vector(7 DOWNTO 0);
    SIGNAL start_t2, rx_t2        : std_logic;
    SIGNAL data_in_t2              : std_logic_vector(7 DOWNTO 0);
    SIGNAL data_ready_t2, tx_t2  	: std_logic;
    SIGNAL data_out_t2        	    : std_logic_vector(7 DOWNTO 0);
BEGIN 
    clk_t <= NOT clk_t AFTER 5 ns;
    ins1: UART 
        PORT MAP (
            start => start_t1,
            rx => rx_t1,
            clk => clk_t,
            nrst => nrst_t,
            data_in => data_in_t1,
            baud => baud_t,
            data_ready => data_ready_t1,
            tx => tx_t_1,
            data_out => data_out_t1
        );
	ins2: UART 
        PORT MAP (
            start => start_t2,
            rx => rx_t2,
            clk => clk_t,
            nrst => nrst_t,
            data_in => data_in_t2,
            baud => baud_t,
            data_ready => data_ready_t2,
            tx => tx_t2,
            data_out => data_out_t2
        );
    rx_t1 <= tx_t2;
    rx_t2 <= tx_t_1;

    nrst_t <= '0', '1' AFTER 15 ns;
    start_t1 <= '0', '1' AFTER 25 ns, '0' AFTER 35 ns;
    start_t2 <= '0';
    data_in_t1 <= (OTHERS => '0'), "10101010" AFTER 15 ns;
	data_in_t2 <= (OTHERS => '0'), "10101010" AFTER 15 ns;
    baud_t <= (OTHERS => '0'), "00000010" AFTER 15 ns;
END Test;