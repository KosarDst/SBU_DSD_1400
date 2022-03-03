-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "01/07/2022 09:34:32"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	rx : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	baud : IN std_logic_vector(7 DOWNTO 0);
	tx : BUFFER std_logic;
	data_ready : BUFFER std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END uart;

-- Design Ports Information
-- tx	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_ready	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[3]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[6]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[7]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_baud : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL ww_data_ready : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \baud[7]~input_o\ : std_logic;
SIGNAL \baud[6]~input_o\ : std_logic;
SIGNAL \baud[5]~input_o\ : std_logic;
SIGNAL \baud[4]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \baud[3]~input_o\ : std_logic;
SIGNAL \baud[2]~input_o\ : std_logic;
SIGNAL \baud[1]~input_o\ : std_logic;
SIGNAL \baud_counter~4_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \next_state~17_combout\ : std_logic;
SIGNAL \baud[0]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \bit_counter~0_combout\ : std_logic;
SIGNAL \bit_counter[1]~1_combout\ : std_logic;
SIGNAL \bit_counter~3_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \bit_counter~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \bit_counter[3]~2_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state.idle~0_combout\ : std_logic;
SIGNAL \next_state.idle~1_combout\ : std_logic;
SIGNAL \next_state.idle~q\ : std_logic;
SIGNAL \baud_counter[1]~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \next_state~14_combout\ : std_logic;
SIGNAL \baud_counter~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \next_state~15_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~16_combout\ : std_logic;
SIGNAL \next_state.get_num~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \baud_counter~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \baud_counter~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state~18_combout\ : std_logic;
SIGNAL \next_state.get_xor~q\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \next_state.send_res~0_combout\ : std_logic;
SIGNAL \next_state.send_res~1_combout\ : std_logic;
SIGNAL \next_state.send_res~q\ : std_logic;
SIGNAL \tx~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \baud_counter_s~4_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \res_flag~0_combout\ : std_logic;
SIGNAL \res_flag~q\ : std_logic;
SIGNAL \next_state_s~18_combout\ : std_logic;
SIGNAL \next_state_s.idle~q\ : std_logic;
SIGNAL \baud_counter_s[0]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \baud_counter_s~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \next_state_s~17_combout\ : std_logic;
SIGNAL \next_state_s.send_xor~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \next_state_s.wait_state~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_state_s.get_res~q\ : std_logic;
SIGNAL \baud_counter_s~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \bit_counter_s~4_combout\ : std_logic;
SIGNAL \bit_counter_s[2]~2_combout\ : std_logic;
SIGNAL \bit_counter_s~3_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \bit_counter_s~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bit_counter_s[3]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \baud_counter_s~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \next_state_s~19_combout\ : std_logic;
SIGNAL \next_state_s~20_combout\ : std_logic;
SIGNAL \next_state_s~21_combout\ : std_logic;
SIGNAL \next_state_s.send_Zero~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \next_state_s.send_num~q\ : std_logic;
SIGNAL \next_state_s~16_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \tx~3_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \tx~4_combout\ : std_logic;
SIGNAL \tx~5_combout\ : std_logic;
SIGNAL \tx~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tx~1_combout\ : std_logic;
SIGNAL \tx~6_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL baud_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL baud_counter_s : std_logic_vector(3 DOWNTO 0);
SIGNAL bit_counter_s : std_logic_vector(3 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_rx~input_o\ : std_logic;
SIGNAL \ALT_INV_nrst~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.idle~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~17_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~15_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state_s~20_combout\ : std_logic;
SIGNAL \ALT_INV_next_state_s~19_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL ALT_INV_bit_counter_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~14_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~13_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.send_res~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~12_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~11_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL ALT_INV_bit_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~10_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.get_num~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_tx~5_combout\ : std_logic;
SIGNAL \ALT_INV_tx~4_combout\ : std_logic;
SIGNAL \ALT_INV_tx~3_combout\ : std_logic;
SIGNAL \ALT_INV_tx~2_combout\ : std_logic;
SIGNAL \ALT_INV_next_state_s.send_Zero~q\ : std_logic;
SIGNAL \ALT_INV_next_state_s.idle~q\ : std_logic;
SIGNAL \ALT_INV_tx~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_next_state_s~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_baud_counter_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_tx~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_baud_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.send_res~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.get_xor~q\ : std_logic;
SIGNAL \ALT_INV_res_flag~q\ : std_logic;
SIGNAL \ALT_INV_next_state_s.wait_state~q\ : std_logic;
SIGNAL \ALT_INV_next_state_s.send_xor~q\ : std_logic;
SIGNAL \ALT_INV_next_state_s.get_res~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state_s.send_num~q\ : std_logic;
SIGNAL \ALT_INV_data_out[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_out[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx~reg0_q\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_start <= start;
ww_rx <= rx;
ww_data_in <= data_in;
ww_baud <= baud;
tx <= ww_tx;
data_ready <= ww_data_ready;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_rx~input_o\ <= NOT \rx~input_o\;
\ALT_INV_nrst~input_o\ <= NOT \nrst~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_baud[7]~input_o\ <= NOT \baud[7]~input_o\;
\ALT_INV_baud[6]~input_o\ <= NOT \baud[6]~input_o\;
\ALT_INV_baud[5]~input_o\ <= NOT \baud[5]~input_o\;
\ALT_INV_baud[4]~input_o\ <= NOT \baud[4]~input_o\;
\ALT_INV_baud[2]~input_o\ <= NOT \baud[2]~input_o\;
\ALT_INV_baud[3]~input_o\ <= NOT \baud[3]~input_o\;
\ALT_INV_baud[0]~input_o\ <= NOT \baud[0]~input_o\;
\ALT_INV_baud[1]~input_o\ <= NOT \baud[1]~input_o\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_next_state.idle~0_combout\ <= NOT \next_state.idle~0_combout\;
\ALT_INV_next_state~17_combout\ <= NOT \next_state~17_combout\;
\ALT_INV_Add3~1_combout\ <= NOT \Add3~1_combout\;
\ALT_INV_next_state~15_combout\ <= NOT \next_state~15_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
\ALT_INV_next_state_s~20_combout\ <= NOT \next_state_s~20_combout\;
\ALT_INV_next_state_s~19_combout\ <= NOT \next_state_s~19_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
ALT_INV_bit_counter_s(0) <= NOT bit_counter_s(0);
ALT_INV_bit_counter_s(1) <= NOT bit_counter_s(1);
ALT_INV_bit_counter_s(2) <= NOT bit_counter_s(2);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Add0~2_combout\ <= NOT \Add0~2_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Add2~1_combout\ <= NOT \Add2~1_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_next_state~14_combout\ <= NOT \next_state~14_combout\;
\ALT_INV_next_state~13_combout\ <= NOT \next_state~13_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_next_state.send_res~0_combout\ <= NOT \next_state.send_res~0_combout\;
\ALT_INV_next_state~12_combout\ <= NOT \next_state~12_combout\;
\ALT_INV_next_state~11_combout\ <= NOT \next_state~11_combout\;
\ALT_INV_next_state.idle~q\ <= NOT \next_state.idle~q\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_Decoder0~3_combout\ <= NOT \Decoder0~3_combout\;
\ALT_INV_Decoder0~2_combout\ <= NOT \Decoder0~2_combout\;
\ALT_INV_Decoder0~1_combout\ <= NOT \Decoder0~1_combout\;
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
ALT_INV_bit_counter(2) <= NOT bit_counter(2);
ALT_INV_bit_counter(1) <= NOT bit_counter(1);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_next_state~10_combout\ <= NOT \next_state~10_combout\;
\ALT_INV_next_state.get_num~q\ <= NOT \next_state.get_num~q\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_bit_counter(3) <= NOT bit_counter(3);
ALT_INV_bit_counter(0) <= NOT bit_counter(0);
\ALT_INV_tx~5_combout\ <= NOT \tx~5_combout\;
\ALT_INV_tx~4_combout\ <= NOT \tx~4_combout\;
\ALT_INV_tx~3_combout\ <= NOT \tx~3_combout\;
\ALT_INV_tx~2_combout\ <= NOT \tx~2_combout\;
\ALT_INV_next_state_s.send_Zero~q\ <= NOT \next_state_s.send_Zero~q\;
\ALT_INV_next_state_s.idle~q\ <= NOT \next_state_s.idle~q\;
\ALT_INV_tx~1_combout\ <= NOT \tx~1_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_next_state_s~16_combout\ <= NOT \next_state_s~16_combout\;
ALT_INV_bit_counter_s(3) <= NOT bit_counter_s(3);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_baud_counter_s(2) <= NOT baud_counter_s(2);
ALT_INV_baud_counter_s(3) <= NOT baud_counter_s(3);
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_baud_counter_s(0) <= NOT baud_counter_s(0);
ALT_INV_baud_counter_s(1) <= NOT baud_counter_s(1);
\ALT_INV_tx~0_combout\ <= NOT \tx~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_baud_counter(2) <= NOT baud_counter(2);
ALT_INV_baud_counter(3) <= NOT baud_counter(3);
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
ALT_INV_baud_counter(0) <= NOT baud_counter(0);
ALT_INV_baud_counter(1) <= NOT baud_counter(1);
\ALT_INV_next_state.send_res~q\ <= NOT \next_state.send_res~q\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_next_state.get_xor~q\ <= NOT \next_state.get_xor~q\;
\ALT_INV_res_flag~q\ <= NOT \res_flag~q\;
\ALT_INV_next_state_s.wait_state~q\ <= NOT \next_state_s.wait_state~q\;
\ALT_INV_next_state_s.send_xor~q\ <= NOT \next_state_s.send_xor~q\;
\ALT_INV_next_state_s.get_res~q\ <= NOT \next_state_s.get_res~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_next_state_s.send_num~q\ <= NOT \next_state_s.send_num~q\;
\ALT_INV_data_out[7]~reg0_q\ <= NOT \data_out[7]~reg0_q\;
\ALT_INV_data_out[6]~reg0_q\ <= NOT \data_out[6]~reg0_q\;
\ALT_INV_data_out[5]~reg0_q\ <= NOT \data_out[5]~reg0_q\;
\ALT_INV_data_out[4]~reg0_q\ <= NOT \data_out[4]~reg0_q\;
\ALT_INV_data_out[3]~reg0_q\ <= NOT \data_out[3]~reg0_q\;
\ALT_INV_data_out[2]~reg0_q\ <= NOT \data_out[2]~reg0_q\;
\ALT_INV_data_out[1]~reg0_q\ <= NOT \data_out[1]~reg0_q\;
\ALT_INV_data_out[0]~reg0_q\ <= NOT \data_out[0]~reg0_q\;
\ALT_INV_tx~reg0_q\ <= NOT \tx~reg0_q\;

-- Location: IOOBUF_X44_Y0_N53
\tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tx~reg0_q\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOOBUF_X68_Y12_N56
\data_ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_data_ready);

-- Location: IOOBUF_X36_Y0_N53
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X38_Y0_N53
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X36_Y0_N2
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X38_Y0_N2
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X38_Y0_N36
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X36_Y0_N19
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X36_Y0_N36
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X34_Y0_N2
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOIBUF_X15_Y61_N18
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N58
\nrst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: IOIBUF_X44_Y0_N35
\baud[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(7),
	o => \baud[7]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\baud[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(6),
	o => \baud[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\baud[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(5),
	o => \baud[5]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\baud[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(4),
	o => \baud[4]~input_o\);

-- Location: LABCELL_X41_Y2_N51
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\baud[5]~input_o\ & ( !\baud[4]~input_o\ & ( (!\baud[7]~input_o\ & !\baud[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[7]~input_o\,
	datac => \ALT_INV_baud[6]~input_o\,
	datae => \ALT_INV_baud[5]~input_o\,
	dataf => \ALT_INV_baud[4]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X42_Y0_N35
\baud[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(3),
	o => \baud[3]~input_o\);

-- Location: IOIBUF_X44_Y0_N18
\baud[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(2),
	o => \baud[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\baud[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(1),
	o => \baud[1]~input_o\);

-- Location: LABCELL_X40_Y3_N24
\baud_counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter~4_combout\ = ( !\next_state.get_num~q\ & ( (\nrst~input_o\ & ((!\next_state~13_combout\ & (\next_state~14_combout\ & (!baud_counter(1) $ (!baud_counter(0))))) # (\next_state~13_combout\ & (!baud_counter(1) $ (((!baud_counter(0)))))))) ) ) # 
-- ( \next_state.get_num~q\ & ( (\nrst~input_o\ & (\process_0~0_combout\ & (!baud_counter(1) $ (((!baud_counter(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100010001000000010000000100000010001000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_baud_counter(1),
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_next_state~14_combout\,
	datae => \ALT_INV_next_state.get_num~q\,
	dataf => ALT_INV_baud_counter(0),
	datag => \ALT_INV_next_state~13_combout\,
	combout => \baud_counter~4_combout\);

-- Location: IOIBUF_X40_Y0_N41
\rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LABCELL_X40_Y3_N39
\next_state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~17_combout\ = ( \next_state.idle~q\ & ( !\next_state.get_num~q\ ) ) # ( !\next_state.idle~q\ & ( (!\next_state.get_num~q\ & !\rx~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.get_num~q\,
	datad => \ALT_INV_rx~input_o\,
	dataf => \ALT_INV_next_state.idle~q\,
	combout => \next_state~17_combout\);

-- Location: IOIBUF_X40_Y0_N75
\baud[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(0),
	o => \baud[0]~input_o\);

-- Location: LABCELL_X40_Y3_N30
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( baud_counter(0) & ( (\baud[0]~input_o\ & (!\baud[1]~input_o\ $ (baud_counter(1)))) ) ) # ( !baud_counter(0) & ( (!\baud[0]~input_o\ & (!\baud[1]~input_o\ $ (baud_counter(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[0]~input_o\,
	datab => \ALT_INV_baud[1]~input_o\,
	datac => ALT_INV_baud_counter(1),
	dataf => ALT_INV_baud_counter(0),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X40_Y3_N21
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~2_combout\ & ( (\Equal1~0_combout\ & \Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X38_Y3_N9
\bit_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~0_combout\ = ( \Equal1~2_combout\ & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\nrst~input_o\ & !bit_counter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_nrst~input_o\,
	datad => ALT_INV_bit_counter(0),
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \bit_counter~0_combout\);

-- Location: LABCELL_X41_Y3_N3
\bit_counter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter[1]~1_combout\ = ( \next_state~10_combout\ ) # ( !\next_state~10_combout\ & ( !\nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_nrst~input_o\,
	dataf => \ALT_INV_next_state~10_combout\,
	combout => \bit_counter[1]~1_combout\);

-- Location: FF_X38_Y3_N11
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~0_combout\,
	ena => \bit_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LABCELL_X38_Y3_N42
\bit_counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~3_combout\ = ( !bit_counter(1) & ( bit_counter(0) & ( (\Equal1~1_combout\ & (\nrst~input_o\ & (\Equal1~2_combout\ & \Equal1~0_combout\))) ) ) ) # ( bit_counter(1) & ( !bit_counter(0) & ( (\Equal1~1_combout\ & (\nrst~input_o\ & 
-- (\Equal1~2_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => ALT_INV_bit_counter(1),
	dataf => ALT_INV_bit_counter(0),
	combout => \bit_counter~3_combout\);

-- Location: FF_X38_Y3_N44
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~3_combout\,
	ena => \bit_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LABCELL_X38_Y3_N39
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ( bit_counter(1) & ( !bit_counter(0) $ (!bit_counter(2)) ) ) # ( !bit_counter(1) & ( bit_counter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_counter(0),
	datad => ALT_INV_bit_counter(2),
	dataf => ALT_INV_bit_counter(1),
	combout => \Add3~1_combout\);

-- Location: LABCELL_X38_Y3_N36
\bit_counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~4_combout\ = ( \Equal1~2_combout\ & ( (\Equal1~1_combout\ & (\nrst~input_o\ & (\Add3~1_combout\ & \Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Add3~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \bit_counter~4_combout\);

-- Location: FF_X38_Y3_N38
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~4_combout\,
	ena => \bit_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LABCELL_X38_Y3_N15
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( bit_counter(1) & ( (bit_counter(0) & bit_counter(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_counter(0),
	datad => ALT_INV_bit_counter(2),
	dataf => ALT_INV_bit_counter(1),
	combout => \Add3~0_combout\);

-- Location: LABCELL_X38_Y3_N12
\bit_counter[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter[3]~2_combout\ = ( \Add3~0_combout\ & ( (\nrst~input_o\ & ((!\next_state~10_combout\ & ((bit_counter(3)))) # (\next_state~10_combout\ & (\Equal1~3_combout\ & !bit_counter(3))))) ) ) # ( !\Add3~0_combout\ & ( (\nrst~input_o\ & (bit_counter(3) & 
-- ((!\next_state~10_combout\) # (\Equal1~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000100000001001100000000000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_next_state~10_combout\,
	datad => ALT_INV_bit_counter(3),
	dataf => \ALT_INV_Add3~0_combout\,
	combout => \bit_counter[3]~2_combout\);

-- Location: FF_X38_Y3_N14
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LABCELL_X41_Y3_N6
\next_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = ( bit_counter(3) & ( \Equal1~0_combout\ & ( \next_state.get_num~q\ ) ) ) # ( !bit_counter(3) & ( \Equal1~0_combout\ & ( (\Equal1~1_combout\ & (!\LessThan2~0_combout\ & (\next_state.get_num~q\ & !\LessThan2~1_combout\))) ) ) ) # ( 
-- bit_counter(3) & ( !\Equal1~0_combout\ & ( \next_state.get_num~q\ ) ) ) # ( !bit_counter(3) & ( !\Equal1~0_combout\ & ( (\Equal1~1_combout\ & (\next_state.get_num~q\ & !\LessThan2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000011110000111100000100000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => \ALT_INV_next_state.get_num~q\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => ALT_INV_bit_counter(3),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \next_state~10_combout\);

-- Location: LABCELL_X40_Y3_N48
\next_state.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.idle~0_combout\ = ( \next_state~10_combout\ & ( (!\next_state.idle~q\ & \Equal1~3_combout\) ) ) # ( !\next_state~10_combout\ & ( !\next_state.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.idle~q\,
	datad => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_next_state~10_combout\,
	combout => \next_state.idle~0_combout\);

-- Location: LABCELL_X40_Y3_N51
\next_state.idle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.idle~1_combout\ = ( \next_state.idle~0_combout\ & ( (\nrst~input_o\ & (\next_state~17_combout\ & (!\next_state~14_combout\ & !\next_state~13_combout\))) ) ) # ( !\next_state.idle~0_combout\ & ( \nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nrst~input_o\,
	datab => \ALT_INV_next_state~17_combout\,
	datac => \ALT_INV_next_state~14_combout\,
	datad => \ALT_INV_next_state~13_combout\,
	dataf => \ALT_INV_next_state.idle~0_combout\,
	combout => \next_state.idle~1_combout\);

-- Location: FF_X40_Y3_N53
\next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.idle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.idle~q\);

-- Location: LABCELL_X41_Y3_N27
\baud_counter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter[1]~0_combout\ = ( \next_state.idle~q\ ) # ( !\next_state.idle~q\ & ( (!\rx~input_o\) # (!\nrst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rx~input_o\,
	datad => \ALT_INV_nrst~input_o\,
	dataf => \ALT_INV_next_state.idle~q\,
	combout => \baud_counter[1]~0_combout\);

-- Location: FF_X40_Y3_N26
\baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter~4_combout\,
	ena => \baud_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter(1));

-- Location: LABCELL_X40_Y3_N15
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( baud_counter(0) & ( (!baud_counter(1) & (!\baud[1]~input_o\ & !\baud[0]~input_o\)) # (baud_counter(1) & ((!\baud[1]~input_o\) # (!\baud[0]~input_o\))) ) ) # ( !baud_counter(0) & ( (baud_counter(1) & !\baud[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_baud_counter(1),
	datac => \ALT_INV_baud[1]~input_o\,
	datad => \ALT_INV_baud[0]~input_o\,
	dataf => ALT_INV_baud_counter(0),
	combout => \LessThan4~0_combout\);

-- Location: MLABCELL_X42_Y3_N27
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( baud_counter(3) & ( (!\baud[3]~input_o\) # ((!\baud[2]~input_o\ & baud_counter(2))) ) ) # ( !baud_counter(3) & ( (!\baud[2]~input_o\ & (!\baud[3]~input_o\ & baud_counter(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[2]~input_o\,
	datac => \ALT_INV_baud[3]~input_o\,
	datad => ALT_INV_baud_counter(2),
	dataf => ALT_INV_baud_counter(3),
	combout => \LessThan4~1_combout\);

-- Location: LABCELL_X41_Y3_N18
\next_state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~14_combout\ = ( \next_state.send_res~q\ & ( (!\Equal1~1_combout\) # ((!\LessThan4~1_combout\ & ((!\LessThan4~0_combout\) # (!\Equal1~0_combout\)))) ) ) # ( !\next_state.send_res~q\ & ( !\Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111110101010101111111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_LessThan4~1_combout\,
	dataf => \ALT_INV_next_state.send_res~q\,
	combout => \next_state~14_combout\);

-- Location: LABCELL_X41_Y3_N54
\baud_counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter~1_combout\ = ( !baud_counter(0) & ( \next_state.get_num~q\ & ( (\nrst~input_o\ & \process_0~0_combout\) ) ) ) # ( !baud_counter(0) & ( !\next_state.get_num~q\ & ( (\nrst~input_o\ & ((\next_state~13_combout\) # (\next_state~14_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state~14_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_next_state~13_combout\,
	datae => ALT_INV_baud_counter(0),
	dataf => \ALT_INV_next_state.get_num~q\,
	combout => \baud_counter~1_combout\);

-- Location: FF_X41_Y3_N56
\baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter~1_combout\,
	ena => \baud_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter(0));

-- Location: LABCELL_X41_Y3_N12
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( baud_counter(1) & ( (\baud[1]~input_o\ & (!baud_counter(0) & \baud[0]~input_o\)) ) ) # ( !baud_counter(1) & ( ((!baud_counter(0) & \baud[0]~input_o\)) # (\baud[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_baud[1]~input_o\,
	datac => ALT_INV_baud_counter(0),
	datad => \ALT_INV_baud[0]~input_o\,
	dataf => ALT_INV_baud_counter(1),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X40_Y3_N0
\next_state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~15_combout\ = ( \LessThan2~1_combout\ & ( \LessThan2~0_combout\ & ( \nrst~input_o\ ) ) ) # ( !\LessThan2~1_combout\ & ( \LessThan2~0_combout\ & ( (\nrst~input_o\ & ((!\Equal1~1_combout\) # ((!\next_state.get_xor~q\) # (\Equal1~0_combout\)))) ) 
-- ) ) # ( \LessThan2~1_combout\ & ( !\LessThan2~0_combout\ & ( \nrst~input_o\ ) ) ) # ( !\LessThan2~1_combout\ & ( !\LessThan2~0_combout\ & ( (\nrst~input_o\ & ((!\Equal1~1_combout\) # (!\next_state.get_xor~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001111111100000000111011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_next_state.get_xor~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_nrst~input_o\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \next_state~15_combout\);

-- Location: LABCELL_X40_Y3_N33
\next_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = ( !\next_state.idle~q\ & ( !\rx~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rx~input_o\,
	dataf => \ALT_INV_next_state.idle~q\,
	combout => \next_state~11_combout\);

-- Location: LABCELL_X41_Y3_N36
\next_state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = ( \Equal1~0_combout\ & ( \LessThan2~0_combout\ & ( !\next_state.send_res~q\ ) ) ) # ( !\Equal1~0_combout\ & ( \LessThan2~0_combout\ & ( (!\next_state.send_res~q\ & (((!\Equal1~1_combout\) # (!\next_state~11_combout\)) # 
-- (\LessThan2~1_combout\))) ) ) ) # ( \Equal1~0_combout\ & ( !\LessThan2~0_combout\ & ( (!\next_state.send_res~q\ & (((!\Equal1~1_combout\) # (!\next_state~11_combout\)) # (\LessThan2~1_combout\))) ) ) ) # ( !\Equal1~0_combout\ & ( !\LessThan2~0_combout\ & 
-- ( (!\next_state.send_res~q\ & (((!\Equal1~1_combout\) # (!\next_state~11_combout\)) # (\LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010001010101010101000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state.send_res~q\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_next_state~11_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \next_state~12_combout\);

-- Location: LABCELL_X41_Y3_N42
\next_state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~16_combout\ = ( \next_state.get_num~q\ & ( \Equal1~3_combout\ & ( \next_state~15_combout\ ) ) ) # ( !\next_state.get_num~q\ & ( \Equal1~3_combout\ & ( (!\tx~0_combout\ & (\next_state~15_combout\ & !\next_state~12_combout\)) ) ) ) # ( 
-- \next_state.get_num~q\ & ( !\Equal1~3_combout\ & ( (\next_state~15_combout\ & !\next_state~10_combout\) ) ) ) # ( !\next_state.get_num~q\ & ( !\Equal1~3_combout\ & ( (!\tx~0_combout\ & (\next_state~15_combout\ & (!\next_state~12_combout\ & 
-- !\next_state~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100110000000000100000001000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx~0_combout\,
	datab => \ALT_INV_next_state~15_combout\,
	datac => \ALT_INV_next_state~12_combout\,
	datad => \ALT_INV_next_state~10_combout\,
	datae => \ALT_INV_next_state.get_num~q\,
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \next_state~16_combout\);

-- Location: FF_X41_Y3_N44
\next_state.get_num\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.get_num~q\);

-- Location: LABCELL_X38_Y3_N54
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( baud_counter(0) & ( !baud_counter(3) $ (((!baud_counter(1)) # (!baud_counter(2)))) ) ) # ( !baud_counter(0) & ( baud_counter(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_baud_counter(1),
	datac => ALT_INV_baud_counter(3),
	datad => ALT_INV_baud_counter(2),
	dataf => ALT_INV_baud_counter(0),
	combout => \Add2~0_combout\);

-- Location: LABCELL_X41_Y3_N30
\baud_counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter~2_combout\ = ( \nrst~input_o\ & ( \Add2~0_combout\ & ( (!\next_state.get_num~q\ & (((\next_state~13_combout\) # (\next_state~14_combout\)))) # (\next_state.get_num~q\ & (\process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_next_state.get_num~q\,
	datac => \ALT_INV_next_state~14_combout\,
	datad => \ALT_INV_next_state~13_combout\,
	datae => \ALT_INV_nrst~input_o\,
	dataf => \ALT_INV_Add2~0_combout\,
	combout => \baud_counter~2_combout\);

-- Location: FF_X41_Y3_N32
\baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter~2_combout\,
	ena => \baud_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter(3));

-- Location: LABCELL_X41_Y3_N15
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( baud_counter(3) & ( (!baud_counter(2) & (\baud[3]~input_o\ & \baud[2]~input_o\)) ) ) # ( !baud_counter(3) & ( ((!baud_counter(2) & \baud[2]~input_o\)) # (\baud[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_baud_counter(2),
	datac => \ALT_INV_baud[3]~input_o\,
	datad => \ALT_INV_baud[2]~input_o\,
	dataf => ALT_INV_baud_counter(3),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X41_Y3_N0
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \LessThan2~0_combout\ & ( (!bit_counter(3) & ((!\Equal1~1_combout\) # ((\Equal1~0_combout\) # (\LessThan2~1_combout\)))) ) ) # ( !\LessThan2~0_combout\ & ( (!bit_counter(3) & ((!\Equal1~1_combout\) # (\LessThan2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000111100001011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => ALT_INV_bit_counter(3),
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X40_Y3_N12
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( baud_counter(0) & ( !baud_counter(1) $ (!baud_counter(2)) ) ) # ( !baud_counter(0) & ( baud_counter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_baud_counter(1),
	datac => ALT_INV_baud_counter(2),
	dataf => ALT_INV_baud_counter(0),
	combout => \Add2~1_combout\);

-- Location: LABCELL_X41_Y3_N33
\baud_counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter~3_combout\ = ( \Add2~1_combout\ & ( \nrst~input_o\ & ( (!\next_state.get_num~q\ & (((\next_state~14_combout\) # (\next_state~13_combout\)))) # (\next_state.get_num~q\ & (\process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_next_state.get_num~q\,
	datac => \ALT_INV_next_state~13_combout\,
	datad => \ALT_INV_next_state~14_combout\,
	datae => \ALT_INV_Add2~1_combout\,
	dataf => \ALT_INV_nrst~input_o\,
	combout => \baud_counter~3_combout\);

-- Location: FF_X41_Y3_N35
\baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter~3_combout\,
	ena => \baud_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter(2));

-- Location: LABCELL_X41_Y3_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( baud_counter(3) & ( (\baud[3]~input_o\ & (!baud_counter(2) $ (\baud[2]~input_o\))) ) ) # ( !baud_counter(3) & ( (!\baud[3]~input_o\ & (!baud_counter(2) $ (\baud[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_baud_counter(2),
	datac => \ALT_INV_baud[3]~input_o\,
	datad => \ALT_INV_baud[2]~input_o\,
	dataf => ALT_INV_baud_counter(3),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\next_state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~13_combout\ = ( \LessThan2~0_combout\ & ( (!\next_state.send_res~q\ & ((\LessThan2~1_combout\) # (\Equal1~0_combout\))) ) ) # ( !\LessThan2~0_combout\ & ( (\LessThan2~1_combout\ & !\next_state.send_res~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_next_state.send_res~q\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \next_state~13_combout\);

-- Location: LABCELL_X40_Y3_N6
\next_state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~18_combout\ = ( \next_state.get_xor~q\ & ( \next_state~10_combout\ & ( (((!\Equal1~3_combout\) # (!\next_state~17_combout\)) # (\next_state~14_combout\)) # (\next_state~13_combout\) ) ) ) # ( !\next_state.get_xor~q\ & ( \next_state~10_combout\ 
-- & ( !\Equal1~3_combout\ ) ) ) # ( \next_state.get_xor~q\ & ( !\next_state~10_combout\ & ( ((!\next_state~17_combout\) # (\next_state~14_combout\)) # (\next_state~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111011111110000111100001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state~13_combout\,
	datab => \ALT_INV_next_state~14_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_next_state~17_combout\,
	datae => \ALT_INV_next_state.get_xor~q\,
	dataf => \ALT_INV_next_state~10_combout\,
	combout => \next_state~18_combout\);

-- Location: FF_X40_Y3_N8
\next_state.get_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state~18_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.get_xor~q\);

-- Location: LABCELL_X41_Y3_N21
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !\LessThan2~1_combout\ & ( (\Equal1~1_combout\ & ((!\LessThan2~0_combout\) # (!\Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X41_Y3_N24
\next_state.send_res~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.send_res~0_combout\ = ( \next_state.send_res~q\ & ( (!\next_state~12_combout\ & (\tx~0_combout\ & ((!\next_state~10_combout\) # (\Equal1~3_combout\)))) # (\next_state~12_combout\ & ((!\next_state~10_combout\) # ((\Equal1~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000101110011110100010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state~12_combout\,
	datab => \ALT_INV_next_state~10_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_tx~0_combout\,
	dataf => \ALT_INV_next_state.send_res~q\,
	combout => \next_state.send_res~0_combout\);

-- Location: LABCELL_X41_Y3_N48
\next_state.send_res~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.send_res~1_combout\ = ( \next_state.send_res~0_combout\ & ( \nrst~input_o\ ) ) # ( !\next_state.send_res~0_combout\ & ( (\nrst~input_o\ & (\next_state.get_xor~q\ & \LessThan2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_next_state.get_xor~q\,
	datad => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_next_state.send_res~0_combout\,
	combout => \next_state.send_res~1_combout\);

-- Location: FF_X41_Y3_N50
\next_state.send_res\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.send_res~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.send_res~q\);

-- Location: MLABCELL_X42_Y3_N0
\tx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~0_combout\ = ( \LessThan4~0_combout\ & ( (\next_state.send_res~q\ & ((!\Equal1~1_combout\) # ((!\Equal1~0_combout\ & !\LessThan4~1_combout\)))) ) ) # ( !\LessThan4~0_combout\ & ( (\next_state.send_res~q\ & ((!\Equal1~1_combout\) # 
-- (!\LessThan4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state.send_res~q\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_LessThan4~1_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \tx~0_combout\);

-- Location: LABCELL_X43_Y3_N24
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( baud_counter_s(2) & ( (!baud_counter_s(1)) # (!baud_counter_s(0)) ) ) # ( !baud_counter_s(2) & ( (baud_counter_s(1) & baud_counter_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_baud_counter_s(1),
	datad => ALT_INV_baud_counter_s(0),
	dataf => ALT_INV_baud_counter_s(2),
	combout => \Add0~2_combout\);

-- Location: LABCELL_X43_Y3_N54
\baud_counter_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter_s~4_combout\ = ( \next_state_s.get_res~q\ & ( \LessThan0~2_combout\ & ( (\Add0~2_combout\ & \nrst~input_o\) ) ) ) # ( \next_state_s.get_res~q\ & ( !\LessThan0~2_combout\ & ( (\Add0~2_combout\ & \nrst~input_o\) ) ) ) # ( 
-- !\next_state_s.get_res~q\ & ( !\LessThan0~2_combout\ & ( (\Add0~2_combout\ & (\nrst~input_o\ & ((!bit_counter_s(3)) # (!\next_state_s.send_num~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_counter_s(3),
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => \ALT_INV_Add0~2_combout\,
	datad => \ALT_INV_nrst~input_o\,
	datae => \ALT_INV_next_state_s.get_res~q\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \baud_counter_s~4_combout\);

-- Location: IOIBUF_X48_Y0_N41
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X45_Y3_N57
\res_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \res_flag~0_combout\ = ( \LessThan0~2_combout\ & ( (!\next_state_s.get_res~q\ & \res_flag~q\) ) ) # ( !\LessThan0~2_combout\ & ( ((!\rx~input_o\ & \next_state_s.get_res~q\)) # (\res_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datac => \ALT_INV_next_state_s.get_res~q\,
	datad => \ALT_INV_res_flag~q\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \res_flag~0_combout\);

-- Location: FF_X45_Y3_N59
res_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \res_flag~0_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \res_flag~q\);

-- Location: LABCELL_X45_Y3_N18
\next_state_s~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~18_combout\ = ( \next_state_s.idle~q\ & ( \res_flag~q\ & ( \nrst~input_o\ ) ) ) # ( !\next_state_s.idle~q\ & ( \res_flag~q\ & ( (\nrst~input_o\ & \start~input_o\) ) ) ) # ( \next_state_s.idle~q\ & ( !\res_flag~q\ & ( (\nrst~input_o\ & 
-- ((!\LessThan0~2_combout\) # (!\next_state_s.get_res~q\))) ) ) ) # ( !\next_state_s.idle~q\ & ( !\res_flag~q\ & ( (\nrst~input_o\ & (\start~input_o\ & ((!\LessThan0~2_combout\) # (!\next_state_s.get_res~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000010101010101000000010001000100010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nrst~input_o\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_next_state_s.get_res~q\,
	datae => \ALT_INV_next_state_s.idle~q\,
	dataf => \ALT_INV_res_flag~q\,
	combout => \next_state_s~18_combout\);

-- Location: FF_X45_Y3_N20
\next_state_s.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state_s~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.idle~q\);

-- Location: MLABCELL_X42_Y3_N45
\baud_counter_s[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter_s[0]~1_combout\ = ( \next_state_s.idle~q\ & ( (!\LessThan0~2_combout\) # ((!\nrst~input_o\) # (!\next_state_s.get_res~q\)) ) ) # ( !\next_state_s.idle~q\ & ( !\nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_nrst~input_o\,
	datad => \ALT_INV_next_state_s.get_res~q\,
	dataf => \ALT_INV_next_state_s.idle~q\,
	combout => \baud_counter_s[0]~1_combout\);

-- Location: FF_X42_Y3_N8
\baud_counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \baud_counter_s~4_combout\,
	sload => VCC,
	ena => \baud_counter_s[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter_s(2));

-- Location: LABCELL_X45_Y3_N54
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( baud_counter_s(0) & ( !baud_counter_s(3) $ (((!baud_counter_s(1)) # (!baud_counter_s(2)))) ) ) # ( !baud_counter_s(0) & ( baud_counter_s(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_baud_counter_s(3),
	datac => ALT_INV_baud_counter_s(1),
	datad => ALT_INV_baud_counter_s(2),
	dataf => ALT_INV_baud_counter_s(0),
	combout => \Add0~1_combout\);

-- Location: MLABCELL_X42_Y3_N15
\baud_counter_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter_s~3_combout\ = ( \Add0~1_combout\ & ( \nrst~input_o\ & ( ((!\LessThan0~2_combout\ & ((!\next_state_s.send_num~q\) # (!bit_counter_s(3))))) # (\next_state_s.get_res~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => \ALT_INV_next_state_s.get_res~q\,
	datad => ALT_INV_bit_counter_s(3),
	datae => \ALT_INV_Add0~1_combout\,
	dataf => \ALT_INV_nrst~input_o\,
	combout => \baud_counter_s~3_combout\);

-- Location: FF_X42_Y3_N17
\baud_counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter_s~3_combout\,
	ena => \baud_counter_s[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter_s(3));

-- Location: MLABCELL_X42_Y3_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( baud_counter_s(2) & ( (\baud[2]~input_o\ & (!baud_counter_s(3) $ (\baud[3]~input_o\))) ) ) # ( !baud_counter_s(2) & ( (!\baud[2]~input_o\ & (!baud_counter_s(3) $ (\baud[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_baud_counter_s(3),
	datac => \ALT_INV_baud[3]~input_o\,
	datad => \ALT_INV_baud[2]~input_o\,
	dataf => ALT_INV_baud_counter_s(2),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X42_Y3_N24
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( baud_counter_s(3) & ( (\baud[2]~input_o\ & (!baud_counter_s(2) & \baud[3]~input_o\)) ) ) # ( !baud_counter_s(3) & ( ((\baud[2]~input_o\ & !baud_counter_s(2))) # (\baud[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[2]~input_o\,
	datab => ALT_INV_baud_counter_s(2),
	datac => \ALT_INV_baud[3]~input_o\,
	dataf => ALT_INV_baud_counter_s(3),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X43_Y3_N45
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & \Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X43_Y3_N27
\next_state_s~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~17_combout\ = ( bit_counter_s(3) & ( (!\LessThan0~2_combout\ & (((\next_state_s.send_num~q\ & !\Equal0~2_combout\)) # (\next_state_s.send_xor~q\))) # (\LessThan0~2_combout\ & (\next_state_s.send_num~q\ & (!\Equal0~2_combout\))) ) ) # ( 
-- !bit_counter_s(3) & ( (!\LessThan0~2_combout\ & (((\next_state_s.send_xor~q\)))) # (\LessThan0~2_combout\ & (\next_state_s.send_num~q\ & (!\Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000110000101110100011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_next_state_s.send_xor~q\,
	dataf => ALT_INV_bit_counter_s(3),
	combout => \next_state_s~17_combout\);

-- Location: FF_X43_Y3_N29
\next_state_s.send_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state_s~17_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.send_xor~q\);

-- Location: LABCELL_X43_Y3_N39
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \next_state_s.wait_state~q\ & ( \next_state_s.send_xor~q\ ) ) # ( !\next_state_s.wait_state~q\ & ( \next_state_s.send_xor~q\ & ( (!\LessThan0~1_combout\ & (\Equal1~1_combout\ & ((!\Equal0~0_combout\) # (!\LessThan0~0_combout\)))) 
-- ) ) ) # ( \next_state_s.wait_state~q\ & ( !\next_state_s.send_xor~q\ & ( ((!\Equal1~1_combout\) # ((\Equal0~0_combout\ & \LessThan0~0_combout\))) # (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001111100000000111000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_next_state_s.wait_state~q\,
	dataf => \ALT_INV_next_state_s.send_xor~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X43_Y3_N41
\next_state_s.wait_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.wait_state~q\);

-- Location: LABCELL_X43_Y3_N36
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \next_state_s.get_res~q\ & ( \next_state_s.wait_state~q\ ) ) # ( !\next_state_s.get_res~q\ & ( \next_state_s.wait_state~q\ & ( (\Equal1~1_combout\ & (!\LessThan0~1_combout\ & ((!\Equal0~0_combout\) # (!\LessThan0~0_combout\)))) ) 
-- ) ) # ( \next_state_s.get_res~q\ & ( !\next_state_s.wait_state~q\ & ( (!\Equal1~1_combout\) # (((\Equal0~0_combout\ & \LessThan0~0_combout\)) # (\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100011111111100001110000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_next_state_s.get_res~q\,
	dataf => \ALT_INV_next_state_s.wait_state~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X43_Y3_N38
\next_state_s.get_res\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.get_res~q\);

-- Location: MLABCELL_X42_Y3_N18
\baud_counter_s~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter_s~2_combout\ = ( !baud_counter_s(0) & ( \nrst~input_o\ & ( ((!\LessThan0~2_combout\ & ((!bit_counter_s(3)) # (!\next_state_s.send_num~q\)))) # (\next_state_s.get_res~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011101100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_counter_s(3),
	datab => \ALT_INV_next_state_s.get_res~q\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_next_state_s.send_num~q\,
	datae => ALT_INV_baud_counter_s(0),
	dataf => \ALT_INV_nrst~input_o\,
	combout => \baud_counter_s~2_combout\);

-- Location: FF_X42_Y3_N20
\baud_counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter_s~2_combout\,
	ena => \baud_counter_s[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter_s(0));

-- Location: LABCELL_X43_Y3_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( baud_counter_s(1) & ( (\baud[1]~input_o\ & (!\baud[0]~input_o\ $ (baud_counter_s(0)))) ) ) # ( !baud_counter_s(1) & ( (!\baud[1]~input_o\ & (!\baud[0]~input_o\ $ (baud_counter_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_baud[0]~input_o\,
	datac => \ALT_INV_baud[1]~input_o\,
	datad => ALT_INV_baud_counter_s(0),
	dataf => ALT_INV_baud_counter_s(1),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X40_Y3_N36
\bit_counter_s~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter_s~4_combout\ = ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & (\nrst~input_o\ & (\Equal1~1_combout\ & !bit_counter_s(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => ALT_INV_bit_counter_s(0),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \bit_counter_s~4_combout\);

-- Location: LABCELL_X40_Y3_N57
\bit_counter_s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter_s[2]~2_combout\ = ( \LessThan0~2_combout\ & ( (!\nrst~input_o\) # (\next_state_s.send_num~q\) ) ) # ( !\LessThan0~2_combout\ & ( (!\nrst~input_o\) # ((bit_counter_s(3) & \next_state_s.send_num~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nrst~input_o\,
	datac => ALT_INV_bit_counter_s(3),
	datad => \ALT_INV_next_state_s.send_num~q\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \bit_counter_s[2]~2_combout\);

-- Location: FF_X40_Y3_N38
\bit_counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter_s~4_combout\,
	ena => \bit_counter_s[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter_s(0));

-- Location: LABCELL_X40_Y3_N42
\bit_counter_s~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter_s~3_combout\ = ( !bit_counter_s(1) & ( bit_counter_s(0) & ( (\Equal1~1_combout\ & (\nrst~input_o\ & (\Equal0~1_combout\ & \Equal0~0_combout\))) ) ) ) # ( bit_counter_s(1) & ( !bit_counter_s(0) & ( (\Equal1~1_combout\ & (\nrst~input_o\ & 
-- (\Equal0~1_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_bit_counter_s(1),
	dataf => ALT_INV_bit_counter_s(0),
	combout => \bit_counter_s~3_combout\);

-- Location: FF_X40_Y3_N44
\bit_counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter_s~3_combout\,
	ena => \bit_counter_s[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter_s(1));

-- Location: LABCELL_X38_Y3_N6
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( bit_counter_s(2) & ( (!bit_counter_s(1)) # (!bit_counter_s(0)) ) ) # ( !bit_counter_s(2) & ( (bit_counter_s(1) & bit_counter_s(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_counter_s(1),
	datad => ALT_INV_bit_counter_s(0),
	dataf => ALT_INV_bit_counter_s(2),
	combout => \Add1~1_combout\);

-- Location: LABCELL_X40_Y3_N54
\bit_counter_s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter_s~1_combout\ = ( \Add1~1_combout\ & ( (\Equal0~1_combout\ & (\nrst~input_o\ & (\Equal0~0_combout\ & \Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \bit_counter_s~1_combout\);

-- Location: FF_X40_Y3_N56
\bit_counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter_s~1_combout\,
	ena => \bit_counter_s[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter_s(2));

-- Location: MLABCELL_X42_Y3_N57
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( bit_counter_s(0) & ( (bit_counter_s(2) & bit_counter_s(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_counter_s(2),
	datad => ALT_INV_bit_counter_s(1),
	dataf => ALT_INV_bit_counter_s(0),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X43_Y3_N6
\bit_counter_s[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter_s[3]~0_combout\ = ( bit_counter_s(3) & ( \next_state_s.send_num~q\ & ( (\nrst~input_o\ & (!\Add1~0_combout\ & \Equal0~2_combout\)) ) ) ) # ( !bit_counter_s(3) & ( \next_state_s.send_num~q\ & ( (\LessThan0~2_combout\ & (\nrst~input_o\ & 
-- (\Add1~0_combout\ & \Equal0~2_combout\))) ) ) ) # ( bit_counter_s(3) & ( !\next_state_s.send_num~q\ & ( \nrst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000010000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => ALT_INV_bit_counter_s(3),
	dataf => \ALT_INV_next_state_s.send_num~q\,
	combout => \bit_counter_s[3]~0_combout\);

-- Location: FF_X43_Y3_N8
\bit_counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter_s[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter_s(3));

-- Location: LABCELL_X45_Y3_N27
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( !baud_counter_s(1) & ( baud_counter_s(0) ) ) # ( baud_counter_s(1) & ( !baud_counter_s(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_baud_counter_s(1),
	dataf => ALT_INV_baud_counter_s(0),
	combout => \Add0~0_combout\);

-- Location: MLABCELL_X42_Y3_N12
\baud_counter_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baud_counter_s~0_combout\ = ( \Add0~0_combout\ & ( \nrst~input_o\ & ( ((!\LessThan0~2_combout\ & ((!\next_state_s.send_num~q\) # (!bit_counter_s(3))))) # (\next_state_s.get_res~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => ALT_INV_bit_counter_s(3),
	datad => \ALT_INV_next_state_s.get_res~q\,
	datae => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_nrst~input_o\,
	combout => \baud_counter_s~0_combout\);

-- Location: FF_X42_Y3_N14
\baud_counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \baud_counter_s~0_combout\,
	ena => \baud_counter_s[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_counter_s(1));

-- Location: MLABCELL_X42_Y3_N39
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( baud_counter_s(0) & ( (\baud[1]~input_o\ & !baud_counter_s(1)) ) ) # ( !baud_counter_s(0) & ( (!\baud[1]~input_o\ & (!baud_counter_s(1) & \baud[0]~input_o\)) # (\baud[1]~input_o\ & ((!baud_counter_s(1)) # (\baud[0]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[1]~input_o\,
	datac => ALT_INV_baud_counter_s(1),
	datad => \ALT_INV_baud[0]~input_o\,
	dataf => ALT_INV_baud_counter_s(0),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X42_Y3_N3
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\LessThan0~1_combout\ & ( (\Equal1~1_combout\ & ((!\LessThan0~0_combout\) # (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X45_Y3_N36
\next_state_s~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~19_combout\ = ( \start~input_o\ & ( !\next_state_s.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_next_state_s.idle~q\,
	combout => \next_state_s~19_combout\);

-- Location: LABCELL_X43_Y3_N3
\next_state_s~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~20_combout\ = ( !\next_state_s~19_combout\ & ( \LessThan0~1_combout\ & ( !\next_state_s.send_Zero~q\ ) ) ) # ( !\next_state_s~19_combout\ & ( !\LessThan0~1_combout\ & ( (!\next_state_s.send_Zero~q\) # ((\Equal1~1_combout\ & 
-- ((!\LessThan0~0_combout\) # (!\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110100000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_next_state_s.send_Zero~q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_next_state_s~19_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \next_state_s~20_combout\);

-- Location: LABCELL_X43_Y3_N12
\next_state_s~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~21_combout\ = ( \Equal0~2_combout\ & ( \next_state_s.send_num~q\ & ( (\nrst~input_o\ & !\next_state_s~20_combout\) ) ) ) # ( !\Equal0~2_combout\ & ( \next_state_s.send_num~q\ & ( (!\LessThan0~2_combout\ & (\nrst~input_o\ & 
-- (!\next_state_s~20_combout\ & !bit_counter_s(3)))) ) ) ) # ( \Equal0~2_combout\ & ( !\next_state_s.send_num~q\ & ( (\nrst~input_o\ & !\next_state_s~20_combout\) ) ) ) # ( !\Equal0~2_combout\ & ( !\next_state_s.send_num~q\ & ( (\nrst~input_o\ & 
-- !\next_state_s~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000100000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_nrst~input_o\,
	datac => \ALT_INV_next_state_s~20_combout\,
	datad => ALT_INV_bit_counter_s(3),
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_next_state_s.send_num~q\,
	combout => \next_state_s~21_combout\);

-- Location: FF_X43_Y3_N14
\next_state_s.send_Zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state_s~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.send_Zero~q\);

-- Location: LABCELL_X43_Y3_N51
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \res_flag~q\ & ( (!\next_state_s.send_Zero~q\ & !\next_state_s.get_res~q\) ) ) # ( !\res_flag~q\ & ( !\next_state_s.send_Zero~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state_s.send_Zero~q\,
	datad => \ALT_INV_next_state_s.get_res~q\,
	dataf => \ALT_INV_res_flag~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X43_Y3_N42
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( bit_counter_s(3) & ( (!\Selector2~0_combout\ & (((\Equal0~2_combout\ & \next_state_s.send_num~q\)) # (\LessThan0~2_combout\))) # (\Selector2~0_combout\ & (\Equal0~2_combout\ & ((\next_state_s.send_num~q\)))) ) ) # ( 
-- !bit_counter_s(3) & ( (!\LessThan0~2_combout\ & (((\next_state_s.send_num~q\)))) # (\LessThan0~2_combout\ & ((!\Selector2~0_combout\) # ((\Equal0~2_combout\ & \next_state_s.send_num~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111011000010101111101100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector2~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_next_state_s.send_num~q\,
	dataf => ALT_INV_bit_counter_s(3),
	combout => \Selector2~1_combout\);

-- Location: FF_X43_Y3_N44
\next_state_s.send_num\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~1_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_s.send_num~q\);

-- Location: LABCELL_X43_Y3_N30
\next_state_s~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state_s~16_combout\ = ( bit_counter_s(3) & ( \LessThan0~1_combout\ & ( \next_state_s.send_num~q\ ) ) ) # ( bit_counter_s(3) & ( !\LessThan0~1_combout\ & ( \next_state_s.send_num~q\ ) ) ) # ( !bit_counter_s(3) & ( !\LessThan0~1_combout\ & ( 
-- (\Equal1~1_combout\ & (\next_state_s.send_num~q\ & ((!\Equal0~0_combout\) # (!\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => ALT_INV_bit_counter_s(3),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \next_state_s~16_combout\);

-- Location: IOIBUF_X42_Y0_N18
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LABCELL_X45_Y3_N30
\tx~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~3_combout\ = ( \data_in[0]~input_o\ & ( \data_in[3]~input_o\ & ( !\data_in[1]~input_o\ $ (!\data_in[2]~input_o\) ) ) ) # ( !\data_in[0]~input_o\ & ( \data_in[3]~input_o\ & ( !\data_in[1]~input_o\ $ (\data_in[2]~input_o\) ) ) ) # ( \data_in[0]~input_o\ 
-- & ( !\data_in[3]~input_o\ & ( !\data_in[1]~input_o\ $ (\data_in[2]~input_o\) ) ) ) # ( !\data_in[0]~input_o\ & ( !\data_in[3]~input_o\ & ( !\data_in[1]~input_o\ $ (!\data_in[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[1]~input_o\,
	datac => \ALT_INV_data_in[2]~input_o\,
	datae => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_data_in[3]~input_o\,
	combout => \tx~3_combout\);

-- Location: IOIBUF_X46_Y0_N18
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: MLABCELL_X42_Y3_N54
\tx~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~4_combout\ = ( \data_in[6]~input_o\ & ( !\data_in[4]~input_o\ $ (!\data_in[5]~input_o\ $ (!\tx~3_combout\ $ (\data_in[7]~input_o\))) ) ) # ( !\data_in[6]~input_o\ & ( !\data_in[4]~input_o\ $ (!\data_in[5]~input_o\ $ (!\tx~3_combout\ $ 
-- (!\data_in[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[4]~input_o\,
	datab => \ALT_INV_data_in[5]~input_o\,
	datac => \ALT_INV_tx~3_combout\,
	datad => \ALT_INV_data_in[7]~input_o\,
	dataf => \ALT_INV_data_in[6]~input_o\,
	combout => \tx~4_combout\);

-- Location: MLABCELL_X42_Y3_N48
\tx~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~5_combout\ = ( !\tx~0_combout\ & ( \next_state_s.send_xor~q\ & ( (!\LessThan0~2_combout\ & (\tx~4_combout\)) # (\LessThan0~2_combout\ & (((\next_state_s.get_res~q\ & !\res_flag~q\)))) ) ) ) # ( !\tx~0_combout\ & ( !\next_state_s.send_xor~q\ & ( 
-- (\next_state_s.get_res~q\ & (\LessThan0~2_combout\ & !\res_flag~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000001010011010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx~4_combout\,
	datab => \ALT_INV_next_state_s.get_res~q\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_res_flag~q\,
	datae => \ALT_INV_tx~0_combout\,
	dataf => \ALT_INV_next_state_s.send_xor~q\,
	combout => \tx~5_combout\);

-- Location: MLABCELL_X42_Y3_N9
\tx~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~2_combout\ = ( !\LessThan0~2_combout\ & ( \next_state_s.send_Zero~q\ & ( (\next_state_s.idle~q\ & (!\next_state_s.get_res~q\ & !\next_state_s.wait_state~q\)) ) ) ) # ( \LessThan0~2_combout\ & ( !\next_state_s.send_Zero~q\ & ( (\next_state_s.idle~q\ & 
-- (!\next_state_s.send_xor~q\ & (!\next_state_s.get_res~q\ & !\next_state_s.wait_state~q\))) ) ) ) # ( !\LessThan0~2_combout\ & ( !\next_state_s.send_Zero~q\ & ( (\next_state_s.idle~q\ & (!\next_state_s.get_res~q\ & !\next_state_s.wait_state~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010000000000000001010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state_s.idle~q\,
	datab => \ALT_INV_next_state_s.send_xor~q\,
	datac => \ALT_INV_next_state_s.get_res~q\,
	datad => \ALT_INV_next_state_s.wait_state~q\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_next_state_s.send_Zero~q\,
	combout => \tx~2_combout\);

-- Location: LABCELL_X45_Y3_N42
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !bit_counter_s(1) & ( ((!bit_counter_s(0) & (((\data_in[0]~input_o\ & !bit_counter_s(2))))) # (bit_counter_s(0) & (((bit_counter_s(2))) # (\data_in[1]~input_o\)))) ) ) # ( bit_counter_s(1) & ( ((!bit_counter_s(0) & 
-- (((\data_in[2]~input_o\ & !bit_counter_s(2))))) # (bit_counter_s(0) & (((bit_counter_s(2))) # (\data_in[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[3]~input_o\,
	datab => \ALT_INV_data_in[1]~input_o\,
	datac => \ALT_INV_data_in[2]~input_o\,
	datad => ALT_INV_bit_counter_s(0),
	datae => ALT_INV_bit_counter_s(1),
	dataf => ALT_INV_bit_counter_s(2),
	datag => \ALT_INV_data_in[0]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X43_Y3_N18
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !bit_counter_s(1) & ( (!bit_counter_s(2) & ((((\Mux0~4_combout\))))) # (bit_counter_s(2) & (((!\Mux0~4_combout\ & ((\data_in[4]~input_o\))) # (\Mux0~4_combout\ & (\data_in[5]~input_o\))))) ) ) # ( bit_counter_s(1) & ( 
-- ((!bit_counter_s(2) & (((\Mux0~4_combout\)))) # (bit_counter_s(2) & ((!\Mux0~4_combout\ & (\data_in[6]~input_o\)) # (\Mux0~4_combout\ & ((\data_in[7]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[5]~input_o\,
	datab => ALT_INV_bit_counter_s(2),
	datac => \ALT_INV_data_in[6]~input_o\,
	datad => \ALT_INV_data_in[7]~input_o\,
	datae => ALT_INV_bit_counter_s(1),
	dataf => \ALT_INV_Mux0~4_combout\,
	datag => \ALT_INV_data_in[4]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X42_Y3_N42
\tx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~1_combout\ = ( \Mux0~0_combout\ & ( (!\LessThan0~2_combout\ & (\next_state_s.send_num~q\ & (!bit_counter_s(3) & !\tx~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_next_state_s.send_num~q\,
	datac => ALT_INV_bit_counter_s(3),
	datad => \ALT_INV_tx~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \tx~1_combout\);

-- Location: MLABCELL_X42_Y3_N30
\tx~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx~6_combout\ = ( \tx~reg0_q\ & ( \tx~1_combout\ ) ) # ( !\tx~reg0_q\ & ( \tx~1_combout\ ) ) # ( \tx~reg0_q\ & ( !\tx~1_combout\ & ( ((!\tx~0_combout\ & ((!\tx~2_combout\) # (\next_state_s~16_combout\)))) # (\tx~5_combout\) ) ) ) # ( !\tx~reg0_q\ & ( 
-- !\tx~1_combout\ & ( \tx~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011110010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx~0_combout\,
	datab => \ALT_INV_next_state_s~16_combout\,
	datac => \ALT_INV_tx~5_combout\,
	datad => \ALT_INV_tx~2_combout\,
	datae => \ALT_INV_tx~reg0_q\,
	dataf => \ALT_INV_tx~1_combout\,
	combout => \tx~6_combout\);

-- Location: FF_X42_Y3_N31
\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \tx~6_combout\,
	asdata => VCC,
	sload => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

-- Location: LABCELL_X38_Y3_N57
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( !bit_counter(1) & ( !bit_counter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(2),
	dataf => ALT_INV_bit_counter(1),
	combout => \Decoder0~0_combout\);

-- Location: LABCELL_X38_Y3_N51
\data_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = ( \data_out[0]~reg0_q\ & ( \Decoder0~0_combout\ & ( (((!\next_state~10_combout\) # (!\Equal1~3_combout\)) # (bit_counter(0))) # (\rx~input_o\) ) ) ) # ( !\data_out[0]~reg0_q\ & ( \Decoder0~0_combout\ & ( (\rx~input_o\ & 
-- (!bit_counter(0) & (\next_state~10_combout\ & \Equal1~3_combout\))) ) ) ) # ( \data_out[0]~reg0_q\ & ( !\Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => ALT_INV_bit_counter(0),
	datac => \ALT_INV_next_state~10_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_data_out[0]~reg0_q\,
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \data_out~0_combout\);

-- Location: FF_X38_Y3_N52
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~0_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LABCELL_X38_Y3_N21
\data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = ( \data_out[1]~reg0_q\ & ( \Decoder0~0_combout\ & ( ((!\next_state~10_combout\) # ((!bit_counter(0)) # (!\Equal1~3_combout\))) # (\rx~input_o\) ) ) ) # ( !\data_out[1]~reg0_q\ & ( \Decoder0~0_combout\ & ( (\rx~input_o\ & 
-- (\next_state~10_combout\ & (bit_counter(0) & \Equal1~3_combout\))) ) ) ) # ( \data_out[1]~reg0_q\ & ( !\Decoder0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \ALT_INV_next_state~10_combout\,
	datac => ALT_INV_bit_counter(0),
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_data_out[1]~reg0_q\,
	dataf => \ALT_INV_Decoder0~0_combout\,
	combout => \data_out~1_combout\);

-- Location: FF_X38_Y3_N22
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~1_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N24
\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = ( !bit_counter(2) & ( bit_counter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_counter(1),
	datae => ALT_INV_bit_counter(2),
	combout => \Decoder0~1_combout\);

-- Location: LABCELL_X38_Y3_N48
\data_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = ( \data_out[2]~reg0_q\ & ( \Decoder0~1_combout\ & ( (((!\Equal1~3_combout\) # (!\next_state~10_combout\)) # (bit_counter(0))) # (\rx~input_o\) ) ) ) # ( !\data_out[2]~reg0_q\ & ( \Decoder0~1_combout\ & ( (\rx~input_o\ & 
-- (!bit_counter(0) & (\Equal1~3_combout\ & \next_state~10_combout\))) ) ) ) # ( \data_out[2]~reg0_q\ & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => ALT_INV_bit_counter(0),
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_next_state~10_combout\,
	datae => \ALT_INV_data_out[2]~reg0_q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \data_out~2_combout\);

-- Location: FF_X38_Y3_N50
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~2_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LABCELL_X38_Y3_N18
\data_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = ( \data_out[3]~reg0_q\ & ( \Decoder0~1_combout\ & ( ((!\next_state~10_combout\) # ((!\Equal1~3_combout\) # (!bit_counter(0)))) # (\rx~input_o\) ) ) ) # ( !\data_out[3]~reg0_q\ & ( \Decoder0~1_combout\ & ( (\rx~input_o\ & 
-- (\next_state~10_combout\ & (\Equal1~3_combout\ & bit_counter(0)))) ) ) ) # ( \data_out[3]~reg0_q\ & ( !\Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => \ALT_INV_next_state~10_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => ALT_INV_bit_counter(0),
	datae => \ALT_INV_data_out[3]~reg0_q\,
	dataf => \ALT_INV_Decoder0~1_combout\,
	combout => \data_out~3_combout\);

-- Location: FF_X38_Y3_N19
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~3_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: LABCELL_X38_Y3_N24
\Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ( !bit_counter(0) & ( (\Equal1~3_combout\ & \next_state~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_next_state~10_combout\,
	dataf => ALT_INV_bit_counter(0),
	combout => \Decoder0~2_combout\);

-- Location: LABCELL_X38_Y3_N3
\data_out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = ( \Decoder0~2_combout\ & ( (!bit_counter(2) & (((\data_out[4]~reg0_q\)))) # (bit_counter(2) & ((!bit_counter(1) & (\rx~input_o\)) # (bit_counter(1) & ((\data_out[4]~reg0_q\))))) ) ) # ( !\Decoder0~2_combout\ & ( \data_out[4]~reg0_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_counter(2),
	datab => ALT_INV_bit_counter(1),
	datac => \ALT_INV_rx~input_o\,
	datad => \ALT_INV_data_out[4]~reg0_q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \data_out~4_combout\);

-- Location: FF_X38_Y3_N4
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~4_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: LABCELL_X38_Y3_N33
\Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = ( \next_state~10_combout\ & ( (bit_counter(0) & \Equal1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_counter(0),
	datad => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_next_state~10_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LABCELL_X38_Y3_N0
\data_out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = ( \Decoder0~3_combout\ & ( (!bit_counter(2) & (((\data_out[5]~reg0_q\)))) # (bit_counter(2) & ((!bit_counter(1) & (\rx~input_o\)) # (bit_counter(1) & ((\data_out[5]~reg0_q\))))) ) ) # ( !\Decoder0~3_combout\ & ( \data_out[5]~reg0_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_counter(2),
	datab => ALT_INV_bit_counter(1),
	datac => \ALT_INV_rx~input_o\,
	datad => \ALT_INV_data_out[5]~reg0_q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \data_out~5_combout\);

-- Location: FF_X38_Y3_N2
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~5_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: LABCELL_X38_Y3_N30
\data_out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = ( \Decoder0~2_combout\ & ( (!bit_counter(1) & (((\data_out[6]~reg0_q\)))) # (bit_counter(1) & ((!bit_counter(2) & ((\data_out[6]~reg0_q\))) # (bit_counter(2) & (\rx~input_o\)))) ) ) # ( !\Decoder0~2_combout\ & ( \data_out[6]~reg0_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111010000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx~input_o\,
	datab => ALT_INV_bit_counter(1),
	datac => ALT_INV_bit_counter(2),
	datad => \ALT_INV_data_out[6]~reg0_q\,
	dataf => \ALT_INV_Decoder0~2_combout\,
	combout => \data_out~6_combout\);

-- Location: FF_X38_Y3_N32
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~6_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: LABCELL_X38_Y3_N27
\data_out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = ( \Decoder0~3_combout\ & ( (!bit_counter(2) & (((\data_out[7]~reg0_q\)))) # (bit_counter(2) & ((!bit_counter(1) & ((\data_out[7]~reg0_q\))) # (bit_counter(1) & (\rx~input_o\)))) ) ) # ( !\Decoder0~3_combout\ & ( \data_out[7]~reg0_q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_counter(2),
	datab => \ALT_INV_rx~input_o\,
	datac => ALT_INV_bit_counter(1),
	datad => \ALT_INV_data_out[7]~reg0_q\,
	dataf => \ALT_INV_Decoder0~3_combout\,
	combout => \data_out~7_combout\);

-- Location: FF_X38_Y3_N28
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \data_out~7_combout\,
	sclr => \ALT_INV_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: LABCELL_X23_Y30_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


