-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/13/2026 12:03:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_module IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END top_module;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_final|u_clk|clk_1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_final|u_clk|Add0~4_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~16_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~26_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~40_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~43\ : std_logic;
SIGNAL \u_final|u_clk|Add0~44_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~45\ : std_logic;
SIGNAL \u_final|u_clk|Add0~46_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~47\ : std_logic;
SIGNAL \u_final|u_clk|Add0~48_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~49\ : std_logic;
SIGNAL \u_final|u_clk|Add0~50_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~0_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~5_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~0_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~1_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~3_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~8_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \u_final|u_clk|Add0~1\ : std_logic;
SIGNAL \u_final|u_clk|Add0~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \u_final|u_clk|Add0~3\ : std_logic;
SIGNAL \u_final|u_clk|Add0~5\ : std_logic;
SIGNAL \u_final|u_clk|Add0~7\ : std_logic;
SIGNAL \u_final|u_clk|Add0~8_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~9\ : std_logic;
SIGNAL \u_final|u_clk|Add0~10_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~6_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~6_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~0_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~7_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~11\ : std_logic;
SIGNAL \u_final|u_clk|Add0~12_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~11_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~13\ : std_logic;
SIGNAL \u_final|u_clk|Add0~14_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~15\ : std_logic;
SIGNAL \u_final|u_clk|Add0~17\ : std_logic;
SIGNAL \u_final|u_clk|Add0~18_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~19\ : std_logic;
SIGNAL \u_final|u_clk|Add0~21\ : std_logic;
SIGNAL \u_final|u_clk|Add0~22_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~10_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~23\ : std_logic;
SIGNAL \u_final|u_clk|Add0~24_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~9_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~25\ : std_logic;
SIGNAL \u_final|u_clk|Add0~27\ : std_logic;
SIGNAL \u_final|u_clk|Add0~28_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~7_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~29\ : std_logic;
SIGNAL \u_final|u_clk|Add0~30_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~31\ : std_logic;
SIGNAL \u_final|u_clk|Add0~33\ : std_logic;
SIGNAL \u_final|u_clk|Add0~34_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~35\ : std_logic;
SIGNAL \u_final|u_clk|Add0~36_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~5_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~37\ : std_logic;
SIGNAL \u_final|u_clk|Add0~38_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~4_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~39\ : std_logic;
SIGNAL \u_final|u_clk|Add0~41\ : std_logic;
SIGNAL \u_final|u_clk|Add0~42_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~2_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~1_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~32_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt~6_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~2_combout\ : std_logic;
SIGNAL \u_final|u_clk|Add0~20_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~3_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~4_combout\ : std_logic;
SIGNAL \u_final|u_clk|Equal0~8_combout\ : std_logic;
SIGNAL \u_final|u_clk|clk_1hz~0_combout\ : std_logic;
SIGNAL \u_final|u_clk|clk_1hz~feeder_combout\ : std_logic;
SIGNAL \u_final|u_clk|clk_1hz~q\ : std_logic;
SIGNAL \u_final|u_clk|clk_1hz~clkctrl_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state2~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state3~1_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state5~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state5~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state2~1_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state2~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state7~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state6~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state1~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state1~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \u_final|u_lab1|Equal0~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state0~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state0~1_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state3~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state3~2_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state3~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state0~2_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state0~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state6~1_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state6~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state4~0_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state4~q\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state7~1_combout\ : std_logic;
SIGNAL \u_final|u_lab1|n_state.state7~2_combout\ : std_logic;
SIGNAL \u_final|u_lab1|state.state7~q\ : std_logic;
SIGNAL \u_final|u_hex|WideOr1~0_combout\ : std_logic;
SIGNAL \u_final|u_hex|Decoder0~0_combout\ : std_logic;
SIGNAL \u_final|u_hex|WideOr2~combout\ : std_logic;
SIGNAL \u_final|u_hex|WideOr0~0_combout\ : std_logic;
SIGNAL \u_final|u_clk|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_final|u_hex|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \u_final|u_hex|ALT_INV_WideOr2~combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\u_final|u_clk|clk_1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_final|u_clk|clk_1hz~q\);
\u_final|u_hex|ALT_INV_WideOr0~0_combout\ <= NOT \u_final|u_hex|WideOr0~0_combout\;
\u_final|u_hex|ALT_INV_WideOr2~combout\ <= NOT \u_final|u_hex|WideOr2~combout\;

-- Location: LCCOMB_X102_Y42_N10
\u_final|u_clk|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~4_combout\ = (\u_final|u_clk|cnt\(2) & (\u_final|u_clk|Add0~3\ $ (GND))) # (!\u_final|u_clk|cnt\(2) & (!\u_final|u_clk|Add0~3\ & VCC))
-- \u_final|u_clk|Add0~5\ = CARRY((\u_final|u_clk|cnt\(2) & !\u_final|u_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(2),
	datad => VCC,
	cin => \u_final|u_clk|Add0~3\,
	combout => \u_final|u_clk|Add0~4_combout\,
	cout => \u_final|u_clk|Add0~5\);

-- Location: LCCOMB_X102_Y42_N22
\u_final|u_clk|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~16_combout\ = (\u_final|u_clk|cnt\(8) & (\u_final|u_clk|Add0~15\ $ (GND))) # (!\u_final|u_clk|cnt\(8) & (!\u_final|u_clk|Add0~15\ & VCC))
-- \u_final|u_clk|Add0~17\ = CARRY((\u_final|u_clk|cnt\(8) & !\u_final|u_clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(8),
	datad => VCC,
	cin => \u_final|u_clk|Add0~15\,
	combout => \u_final|u_clk|Add0~16_combout\,
	cout => \u_final|u_clk|Add0~17\);

-- Location: LCCOMB_X102_Y41_N0
\u_final|u_clk|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~26_combout\ = (\u_final|u_clk|cnt\(13) & (!\u_final|u_clk|Add0~25\)) # (!\u_final|u_clk|cnt\(13) & ((\u_final|u_clk|Add0~25\) # (GND)))
-- \u_final|u_clk|Add0~27\ = CARRY((!\u_final|u_clk|Add0~25\) # (!\u_final|u_clk|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(13),
	datad => VCC,
	cin => \u_final|u_clk|Add0~25\,
	combout => \u_final|u_clk|Add0~26_combout\,
	cout => \u_final|u_clk|Add0~27\);

-- Location: LCCOMB_X102_Y41_N14
\u_final|u_clk|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~40_combout\ = (\u_final|u_clk|cnt\(20) & (\u_final|u_clk|Add0~39\ $ (GND))) # (!\u_final|u_clk|cnt\(20) & (!\u_final|u_clk|Add0~39\ & VCC))
-- \u_final|u_clk|Add0~41\ = CARRY((\u_final|u_clk|cnt\(20) & !\u_final|u_clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(20),
	datad => VCC,
	cin => \u_final|u_clk|Add0~39\,
	combout => \u_final|u_clk|Add0~40_combout\,
	cout => \u_final|u_clk|Add0~41\);

-- Location: LCCOMB_X102_Y41_N16
\u_final|u_clk|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~42_combout\ = (\u_final|u_clk|cnt\(21) & (!\u_final|u_clk|Add0~41\)) # (!\u_final|u_clk|cnt\(21) & ((\u_final|u_clk|Add0~41\) # (GND)))
-- \u_final|u_clk|Add0~43\ = CARRY((!\u_final|u_clk|Add0~41\) # (!\u_final|u_clk|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(21),
	datad => VCC,
	cin => \u_final|u_clk|Add0~41\,
	combout => \u_final|u_clk|Add0~42_combout\,
	cout => \u_final|u_clk|Add0~43\);

-- Location: LCCOMB_X102_Y41_N18
\u_final|u_clk|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~44_combout\ = (\u_final|u_clk|cnt\(22) & (\u_final|u_clk|Add0~43\ $ (GND))) # (!\u_final|u_clk|cnt\(22) & (!\u_final|u_clk|Add0~43\ & VCC))
-- \u_final|u_clk|Add0~45\ = CARRY((\u_final|u_clk|cnt\(22) & !\u_final|u_clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(22),
	datad => VCC,
	cin => \u_final|u_clk|Add0~43\,
	combout => \u_final|u_clk|Add0~44_combout\,
	cout => \u_final|u_clk|Add0~45\);

-- Location: LCCOMB_X102_Y41_N20
\u_final|u_clk|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~46_combout\ = (\u_final|u_clk|cnt\(23) & (!\u_final|u_clk|Add0~45\)) # (!\u_final|u_clk|cnt\(23) & ((\u_final|u_clk|Add0~45\) # (GND)))
-- \u_final|u_clk|Add0~47\ = CARRY((!\u_final|u_clk|Add0~45\) # (!\u_final|u_clk|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(23),
	datad => VCC,
	cin => \u_final|u_clk|Add0~45\,
	combout => \u_final|u_clk|Add0~46_combout\,
	cout => \u_final|u_clk|Add0~47\);

-- Location: LCCOMB_X102_Y41_N22
\u_final|u_clk|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~48_combout\ = (\u_final|u_clk|cnt\(24) & (\u_final|u_clk|Add0~47\ $ (GND))) # (!\u_final|u_clk|cnt\(24) & (!\u_final|u_clk|Add0~47\ & VCC))
-- \u_final|u_clk|Add0~49\ = CARRY((\u_final|u_clk|cnt\(24) & !\u_final|u_clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(24),
	datad => VCC,
	cin => \u_final|u_clk|Add0~47\,
	combout => \u_final|u_clk|Add0~48_combout\,
	cout => \u_final|u_clk|Add0~49\);

-- Location: LCCOMB_X102_Y41_N24
\u_final|u_clk|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~50_combout\ = \u_final|u_clk|Add0~49\ $ (\u_final|u_clk|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_final|u_clk|cnt\(25),
	cin => \u_final|u_clk|Add0~49\,
	combout => \u_final|u_clk|Add0~50_combout\);

-- Location: FF_X103_Y41_N9
\u_final|u_clk|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(24));

-- Location: FF_X103_Y41_N11
\u_final|u_clk|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(22));

-- Location: FF_X102_Y41_N25
\u_final|u_clk|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~50_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(25));

-- Location: FF_X102_Y41_N21
\u_final|u_clk|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~46_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(23));

-- Location: LCCOMB_X103_Y41_N22
\u_final|u_clk|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~0_combout\ = (\u_final|u_clk|cnt\(22) & (!\u_final|u_clk|cnt\(25) & (\u_final|u_clk|cnt\(24) & !\u_final|u_clk|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(22),
	datab => \u_final|u_clk|cnt\(25),
	datac => \u_final|u_clk|cnt\(24),
	datad => \u_final|u_clk|cnt\(23),
	combout => \u_final|u_clk|Equal0~0_combout\);

-- Location: FF_X103_Y41_N7
\u_final|u_clk|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(20));

-- Location: FF_X103_Y41_N31
\u_final|u_clk|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(13));

-- Location: FF_X102_Y42_N23
\u_final|u_clk|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(8));

-- Location: LCCOMB_X102_Y42_N2
\u_final|u_clk|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~5_combout\ = (!\u_final|u_clk|cnt\(8) & (!\u_final|u_clk|cnt\(7) & (!\u_final|u_clk|cnt\(6) & !\u_final|u_clk|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(8),
	datab => \u_final|u_clk|cnt\(7),
	datac => \u_final|u_clk|cnt\(6),
	datad => \u_final|u_clk|cnt\(9),
	combout => \u_final|u_clk|Equal0~5_combout\);

-- Location: FF_X102_Y42_N11
\u_final|u_clk|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(2));

-- Location: LCCOMB_X103_Y41_N8
\u_final|u_clk|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~0_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~48_combout\,
	combout => \u_final|u_clk|cnt~0_combout\);

-- Location: LCCOMB_X103_Y41_N10
\u_final|u_clk|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~1_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~44_combout\,
	combout => \u_final|u_clk|cnt~1_combout\);

-- Location: LCCOMB_X103_Y41_N6
\u_final|u_clk|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~3_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~40_combout\,
	combout => \u_final|u_clk|cnt~3_combout\);

-- Location: LCCOMB_X103_Y41_N30
\u_final|u_clk|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~8_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~26_combout\,
	combout => \u_final|u_clk|cnt~8_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_final|u_lab1|state.state2~q\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_final|u_hex|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_final|u_hex|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_final|u_hex|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_final|u_hex|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: LCCOMB_X102_Y42_N6
\u_final|u_clk|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~0_combout\ = \u_final|u_clk|cnt\(0) $ (VCC)
-- \u_final|u_clk|Add0~1\ = CARRY(\u_final|u_clk|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(0),
	datad => VCC,
	combout => \u_final|u_clk|Add0~0_combout\,
	cout => \u_final|u_clk|Add0~1\);

-- Location: LCCOMB_X102_Y42_N8
\u_final|u_clk|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~2_combout\ = (\u_final|u_clk|cnt\(1) & (!\u_final|u_clk|Add0~1\)) # (!\u_final|u_clk|cnt\(1) & ((\u_final|u_clk|Add0~1\) # (GND)))
-- \u_final|u_clk|Add0~3\ = CARRY((!\u_final|u_clk|Add0~1\) # (!\u_final|u_clk|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(1),
	datad => VCC,
	cin => \u_final|u_clk|Add0~1\,
	combout => \u_final|u_clk|Add0~2_combout\,
	cout => \u_final|u_clk|Add0~3\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X102_Y42_N9
\u_final|u_clk|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(1));

-- Location: LCCOMB_X102_Y42_N12
\u_final|u_clk|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~6_combout\ = (\u_final|u_clk|cnt\(3) & (!\u_final|u_clk|Add0~5\)) # (!\u_final|u_clk|cnt\(3) & ((\u_final|u_clk|Add0~5\) # (GND)))
-- \u_final|u_clk|Add0~7\ = CARRY((!\u_final|u_clk|Add0~5\) # (!\u_final|u_clk|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(3),
	datad => VCC,
	cin => \u_final|u_clk|Add0~5\,
	combout => \u_final|u_clk|Add0~6_combout\,
	cout => \u_final|u_clk|Add0~7\);

-- Location: LCCOMB_X102_Y42_N14
\u_final|u_clk|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~8_combout\ = (\u_final|u_clk|cnt\(4) & (\u_final|u_clk|Add0~7\ $ (GND))) # (!\u_final|u_clk|cnt\(4) & (!\u_final|u_clk|Add0~7\ & VCC))
-- \u_final|u_clk|Add0~9\ = CARRY((\u_final|u_clk|cnt\(4) & !\u_final|u_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(4),
	datad => VCC,
	cin => \u_final|u_clk|Add0~7\,
	combout => \u_final|u_clk|Add0~8_combout\,
	cout => \u_final|u_clk|Add0~9\);

-- Location: FF_X102_Y42_N15
\u_final|u_clk|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(4));

-- Location: LCCOMB_X102_Y42_N16
\u_final|u_clk|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~10_combout\ = (\u_final|u_clk|cnt\(5) & (!\u_final|u_clk|Add0~9\)) # (!\u_final|u_clk|cnt\(5) & ((\u_final|u_clk|Add0~9\) # (GND)))
-- \u_final|u_clk|Add0~11\ = CARRY((!\u_final|u_clk|Add0~9\) # (!\u_final|u_clk|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(5),
	datad => VCC,
	cin => \u_final|u_clk|Add0~9\,
	combout => \u_final|u_clk|Add0~10_combout\,
	cout => \u_final|u_clk|Add0~11\);

-- Location: FF_X102_Y42_N17
\u_final|u_clk|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(5));

-- Location: FF_X102_Y42_N13
\u_final|u_clk|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(3));

-- Location: LCCOMB_X102_Y42_N0
\u_final|u_clk|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~6_combout\ = (\u_final|u_clk|cnt\(2) & (\u_final|u_clk|cnt\(5) & (\u_final|u_clk|cnt\(4) & \u_final|u_clk|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(2),
	datab => \u_final|u_clk|cnt\(5),
	datac => \u_final|u_clk|cnt\(4),
	datad => \u_final|u_clk|cnt\(3),
	combout => \u_final|u_clk|Equal0~6_combout\);

-- Location: FF_X102_Y42_N7
\u_final|u_clk|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(0));

-- Location: LCCOMB_X103_Y42_N24
\u_final|u_clk|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~7_combout\ = (\u_final|u_clk|cnt\(0) & \u_final|u_clk|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|cnt\(0),
	datad => \u_final|u_clk|cnt\(1),
	combout => \u_final|u_clk|Equal0~7_combout\);

-- Location: LCCOMB_X102_Y42_N18
\u_final|u_clk|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~12_combout\ = (\u_final|u_clk|cnt\(6) & (\u_final|u_clk|Add0~11\ $ (GND))) # (!\u_final|u_clk|cnt\(6) & (!\u_final|u_clk|Add0~11\ & VCC))
-- \u_final|u_clk|Add0~13\ = CARRY((\u_final|u_clk|cnt\(6) & !\u_final|u_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(6),
	datad => VCC,
	cin => \u_final|u_clk|Add0~11\,
	combout => \u_final|u_clk|Add0~12_combout\,
	cout => \u_final|u_clk|Add0~13\);

-- Location: LCCOMB_X102_Y42_N4
\u_final|u_clk|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~11_combout\ = (\u_final|u_clk|Add0~12_combout\ & !\u_final|u_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|Add0~12_combout\,
	datad => \u_final|u_clk|Equal0~8_combout\,
	combout => \u_final|u_clk|cnt~11_combout\);

-- Location: FF_X102_Y42_N5
\u_final|u_clk|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~11_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(6));

-- Location: LCCOMB_X102_Y42_N20
\u_final|u_clk|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~14_combout\ = (\u_final|u_clk|cnt\(7) & (!\u_final|u_clk|Add0~13\)) # (!\u_final|u_clk|cnt\(7) & ((\u_final|u_clk|Add0~13\) # (GND)))
-- \u_final|u_clk|Add0~15\ = CARRY((!\u_final|u_clk|Add0~13\) # (!\u_final|u_clk|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(7),
	datad => VCC,
	cin => \u_final|u_clk|Add0~13\,
	combout => \u_final|u_clk|Add0~14_combout\,
	cout => \u_final|u_clk|Add0~15\);

-- Location: FF_X102_Y42_N21
\u_final|u_clk|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(7));

-- Location: LCCOMB_X102_Y42_N24
\u_final|u_clk|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~18_combout\ = (\u_final|u_clk|cnt\(9) & (!\u_final|u_clk|Add0~17\)) # (!\u_final|u_clk|cnt\(9) & ((\u_final|u_clk|Add0~17\) # (GND)))
-- \u_final|u_clk|Add0~19\ = CARRY((!\u_final|u_clk|Add0~17\) # (!\u_final|u_clk|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(9),
	datad => VCC,
	cin => \u_final|u_clk|Add0~17\,
	combout => \u_final|u_clk|Add0~18_combout\,
	cout => \u_final|u_clk|Add0~19\);

-- Location: FF_X102_Y42_N25
\u_final|u_clk|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~18_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(9));

-- Location: LCCOMB_X102_Y42_N26
\u_final|u_clk|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~20_combout\ = (\u_final|u_clk|cnt\(10) & (\u_final|u_clk|Add0~19\ $ (GND))) # (!\u_final|u_clk|cnt\(10) & (!\u_final|u_clk|Add0~19\ & VCC))
-- \u_final|u_clk|Add0~21\ = CARRY((\u_final|u_clk|cnt\(10) & !\u_final|u_clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(10),
	datad => VCC,
	cin => \u_final|u_clk|Add0~19\,
	combout => \u_final|u_clk|Add0~20_combout\,
	cout => \u_final|u_clk|Add0~21\);

-- Location: LCCOMB_X102_Y42_N28
\u_final|u_clk|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~22_combout\ = (\u_final|u_clk|cnt\(11) & (!\u_final|u_clk|Add0~21\)) # (!\u_final|u_clk|cnt\(11) & ((\u_final|u_clk|Add0~21\) # (GND)))
-- \u_final|u_clk|Add0~23\ = CARRY((!\u_final|u_clk|Add0~21\) # (!\u_final|u_clk|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(11),
	datad => VCC,
	cin => \u_final|u_clk|Add0~21\,
	combout => \u_final|u_clk|Add0~22_combout\,
	cout => \u_final|u_clk|Add0~23\);

-- Location: LCCOMB_X103_Y41_N0
\u_final|u_clk|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~10_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~22_combout\,
	combout => \u_final|u_clk|cnt~10_combout\);

-- Location: FF_X103_Y41_N1
\u_final|u_clk|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(11));

-- Location: LCCOMB_X102_Y42_N30
\u_final|u_clk|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~24_combout\ = (\u_final|u_clk|cnt\(12) & (\u_final|u_clk|Add0~23\ $ (GND))) # (!\u_final|u_clk|cnt\(12) & (!\u_final|u_clk|Add0~23\ & VCC))
-- \u_final|u_clk|Add0~25\ = CARRY((\u_final|u_clk|cnt\(12) & !\u_final|u_clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(12),
	datad => VCC,
	cin => \u_final|u_clk|Add0~23\,
	combout => \u_final|u_clk|Add0~24_combout\,
	cout => \u_final|u_clk|Add0~25\);

-- Location: LCCOMB_X103_Y41_N12
\u_final|u_clk|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~9_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~24_combout\,
	combout => \u_final|u_clk|cnt~9_combout\);

-- Location: FF_X103_Y41_N13
\u_final|u_clk|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(12));

-- Location: LCCOMB_X102_Y41_N2
\u_final|u_clk|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~28_combout\ = (\u_final|u_clk|cnt\(14) & (\u_final|u_clk|Add0~27\ $ (GND))) # (!\u_final|u_clk|cnt\(14) & (!\u_final|u_clk|Add0~27\ & VCC))
-- \u_final|u_clk|Add0~29\ = CARRY((\u_final|u_clk|cnt\(14) & !\u_final|u_clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(14),
	datad => VCC,
	cin => \u_final|u_clk|Add0~27\,
	combout => \u_final|u_clk|Add0~28_combout\,
	cout => \u_final|u_clk|Add0~29\);

-- Location: LCCOMB_X103_Y41_N2
\u_final|u_clk|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~7_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~28_combout\,
	combout => \u_final|u_clk|cnt~7_combout\);

-- Location: FF_X103_Y41_N3
\u_final|u_clk|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(14));

-- Location: LCCOMB_X102_Y41_N4
\u_final|u_clk|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~30_combout\ = (\u_final|u_clk|cnt\(15) & (!\u_final|u_clk|Add0~29\)) # (!\u_final|u_clk|cnt\(15) & ((\u_final|u_clk|Add0~29\) # (GND)))
-- \u_final|u_clk|Add0~31\ = CARRY((!\u_final|u_clk|Add0~29\) # (!\u_final|u_clk|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(15),
	datad => VCC,
	cin => \u_final|u_clk|Add0~29\,
	combout => \u_final|u_clk|Add0~30_combout\,
	cout => \u_final|u_clk|Add0~31\);

-- Location: FF_X102_Y41_N5
\u_final|u_clk|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~30_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(15));

-- Location: LCCOMB_X102_Y41_N6
\u_final|u_clk|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~32_combout\ = (\u_final|u_clk|cnt\(16) & (\u_final|u_clk|Add0~31\ $ (GND))) # (!\u_final|u_clk|cnt\(16) & (!\u_final|u_clk|Add0~31\ & VCC))
-- \u_final|u_clk|Add0~33\ = CARRY((\u_final|u_clk|cnt\(16) & !\u_final|u_clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(16),
	datad => VCC,
	cin => \u_final|u_clk|Add0~31\,
	combout => \u_final|u_clk|Add0~32_combout\,
	cout => \u_final|u_clk|Add0~33\);

-- Location: LCCOMB_X102_Y41_N8
\u_final|u_clk|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~34_combout\ = (\u_final|u_clk|cnt\(17) & (!\u_final|u_clk|Add0~33\)) # (!\u_final|u_clk|cnt\(17) & ((\u_final|u_clk|Add0~33\) # (GND)))
-- \u_final|u_clk|Add0~35\ = CARRY((!\u_final|u_clk|Add0~33\) # (!\u_final|u_clk|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(17),
	datad => VCC,
	cin => \u_final|u_clk|Add0~33\,
	combout => \u_final|u_clk|Add0~34_combout\,
	cout => \u_final|u_clk|Add0~35\);

-- Location: FF_X102_Y41_N9
\u_final|u_clk|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~34_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(17));

-- Location: LCCOMB_X102_Y41_N10
\u_final|u_clk|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~36_combout\ = (\u_final|u_clk|cnt\(18) & (\u_final|u_clk|Add0~35\ $ (GND))) # (!\u_final|u_clk|cnt\(18) & (!\u_final|u_clk|Add0~35\ & VCC))
-- \u_final|u_clk|Add0~37\ = CARRY((\u_final|u_clk|cnt\(18) & !\u_final|u_clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|cnt\(18),
	datad => VCC,
	cin => \u_final|u_clk|Add0~35\,
	combout => \u_final|u_clk|Add0~36_combout\,
	cout => \u_final|u_clk|Add0~37\);

-- Location: LCCOMB_X102_Y41_N28
\u_final|u_clk|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~5_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~36_combout\,
	combout => \u_final|u_clk|cnt~5_combout\);

-- Location: FF_X102_Y41_N29
\u_final|u_clk|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(18));

-- Location: LCCOMB_X102_Y41_N12
\u_final|u_clk|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Add0~38_combout\ = (\u_final|u_clk|cnt\(19) & (!\u_final|u_clk|Add0~37\)) # (!\u_final|u_clk|cnt\(19) & ((\u_final|u_clk|Add0~37\) # (GND)))
-- \u_final|u_clk|Add0~39\ = CARRY((!\u_final|u_clk|Add0~37\) # (!\u_final|u_clk|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(19),
	datad => VCC,
	cin => \u_final|u_clk|Add0~37\,
	combout => \u_final|u_clk|Add0~38_combout\,
	cout => \u_final|u_clk|Add0~39\);

-- Location: LCCOMB_X103_Y41_N20
\u_final|u_clk|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~4_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~38_combout\,
	combout => \u_final|u_clk|cnt~4_combout\);

-- Location: FF_X103_Y41_N21
\u_final|u_clk|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(19));

-- Location: LCCOMB_X102_Y41_N30
\u_final|u_clk|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~2_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~42_combout\,
	combout => \u_final|u_clk|cnt~2_combout\);

-- Location: FF_X102_Y41_N31
\u_final|u_clk|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(21));

-- Location: LCCOMB_X103_Y41_N14
\u_final|u_clk|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~1_combout\ = (\u_final|u_clk|cnt\(20) & (\u_final|u_clk|cnt\(19) & (\u_final|u_clk|cnt\(21) & \u_final|u_clk|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(20),
	datab => \u_final|u_clk|cnt\(19),
	datac => \u_final|u_clk|cnt\(21),
	datad => \u_final|u_clk|cnt\(18),
	combout => \u_final|u_clk|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y41_N26
\u_final|u_clk|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|cnt~6_combout\ = (!\u_final|u_clk|Equal0~8_combout\ & \u_final|u_clk|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|Add0~32_combout\,
	combout => \u_final|u_clk|cnt~6_combout\);

-- Location: FF_X102_Y41_N27
\u_final|u_clk|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|cnt~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(16));

-- Location: LCCOMB_X103_Y41_N26
\u_final|u_clk|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~2_combout\ = (!\u_final|u_clk|cnt\(17) & (\u_final|u_clk|cnt\(14) & (!\u_final|u_clk|cnt\(15) & \u_final|u_clk|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(17),
	datab => \u_final|u_clk|cnt\(14),
	datac => \u_final|u_clk|cnt\(15),
	datad => \u_final|u_clk|cnt\(16),
	combout => \u_final|u_clk|Equal0~2_combout\);

-- Location: FF_X102_Y42_N27
\u_final|u_clk|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|Add0~20_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|cnt\(10));

-- Location: LCCOMB_X103_Y41_N28
\u_final|u_clk|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~3_combout\ = (\u_final|u_clk|cnt\(13) & (\u_final|u_clk|cnt\(12) & (!\u_final|u_clk|cnt\(10) & \u_final|u_clk|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|cnt\(13),
	datab => \u_final|u_clk|cnt\(12),
	datac => \u_final|u_clk|cnt\(10),
	datad => \u_final|u_clk|cnt\(11),
	combout => \u_final|u_clk|Equal0~3_combout\);

-- Location: LCCOMB_X103_Y41_N16
\u_final|u_clk|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~4_combout\ = (\u_final|u_clk|Equal0~0_combout\ & (\u_final|u_clk|Equal0~1_combout\ & (\u_final|u_clk|Equal0~2_combout\ & \u_final|u_clk|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|Equal0~0_combout\,
	datab => \u_final|u_clk|Equal0~1_combout\,
	datac => \u_final|u_clk|Equal0~2_combout\,
	datad => \u_final|u_clk|Equal0~3_combout\,
	combout => \u_final|u_clk|Equal0~4_combout\);

-- Location: LCCOMB_X103_Y41_N4
\u_final|u_clk|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|Equal0~8_combout\ = (\u_final|u_clk|Equal0~5_combout\ & (\u_final|u_clk|Equal0~6_combout\ & (\u_final|u_clk|Equal0~7_combout\ & \u_final|u_clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_clk|Equal0~5_combout\,
	datab => \u_final|u_clk|Equal0~6_combout\,
	datac => \u_final|u_clk|Equal0~7_combout\,
	datad => \u_final|u_clk|Equal0~4_combout\,
	combout => \u_final|u_clk|Equal0~8_combout\);

-- Location: LCCOMB_X103_Y41_N24
\u_final|u_clk|clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|clk_1hz~0_combout\ = \u_final|u_clk|Equal0~8_combout\ $ (\u_final|u_clk|clk_1hz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_final|u_clk|Equal0~8_combout\,
	datad => \u_final|u_clk|clk_1hz~q\,
	combout => \u_final|u_clk|clk_1hz~0_combout\);

-- Location: LCCOMB_X103_Y41_N18
\u_final|u_clk|clk_1hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_clk|clk_1hz~feeder_combout\ = \u_final|u_clk|clk_1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_clk|clk_1hz~0_combout\,
	combout => \u_final|u_clk|clk_1hz~feeder_combout\);

-- Location: FF_X103_Y41_N19
\u_final|u_clk|clk_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_final|u_clk|clk_1hz~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_clk|clk_1hz~q\);

-- Location: CLKCTRL_G6
\u_final|u_clk|clk_1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_final|u_clk|clk_1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_final|u_clk|clk_1hz~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N18
\u_final|u_lab1|n_state.state2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state2~0_combout\ = (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state2~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y17_N22
\u_final|u_lab1|n_state.state3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state3~1_combout\ = (\SW[6]~input_o\ & (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \u_final|u_lab1|n_state.state3~1_combout\);

-- Location: LCCOMB_X114_Y17_N16
\u_final|u_lab1|n_state.state5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state5~0_combout\ = (\SW[4]~input_o\ & (!\SW[5]~input_o\ & (\u_final|u_lab1|n_state.state3~1_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \u_final|u_lab1|n_state.state3~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state5~0_combout\);

-- Location: FF_X114_Y17_N17
\u_final|u_lab1|state.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state5~q\);

-- Location: LCCOMB_X114_Y17_N20
\u_final|u_lab1|n_state.state2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state2~1_combout\ = (\SW[6]~input_o\ & (\u_final|u_lab1|n_state.state2~0_combout\)) # (!\SW[6]~input_o\ & ((\u_final|u_lab1|state.state5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \u_final|u_lab1|n_state.state2~0_combout\,
	datad => \u_final|u_lab1|state.state5~q\,
	combout => \u_final|u_lab1|n_state.state2~1_combout\);

-- Location: FF_X114_Y17_N21
\u_final|u_lab1|state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state2~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state2~q\);

-- Location: LCCOMB_X114_Y17_N8
\u_final|u_lab1|n_state.state7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state7~0_combout\ = (\SW[6]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \u_final|u_lab1|n_state.state7~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\u_final|u_lab1|n_state.state6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state6~0_combout\ = (\u_final|u_lab1|n_state.state3~1_combout\ & (\SW[5]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_lab1|n_state.state3~1_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state6~0_combout\);

-- Location: LCCOMB_X114_Y17_N4
\u_final|u_lab1|n_state.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state1~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & (\u_final|u_lab1|n_state.state3~1_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \u_final|u_lab1|n_state.state3~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state1~0_combout\);

-- Location: FF_X114_Y17_N5
\u_final|u_lab1|state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state1~q\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y18_N28
\u_final|u_lab1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|Equal0~0_combout\ = (\SW[5]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \u_final|u_lab1|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\u_final|u_lab1|n_state.state0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state0~0_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((!\u_final|u_lab1|Equal0~0_combout\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \u_final|u_lab1|Equal0~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state0~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\u_final|u_lab1|n_state.state0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state0~1_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \u_final|u_lab1|n_state.state0~1_combout\);

-- Location: LCCOMB_X114_Y17_N24
\u_final|u_lab1|n_state.state3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state3~0_combout\ = (!\SW[6]~input_o\ & \u_final|u_lab1|state.state7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \u_final|u_lab1|state.state7~q\,
	combout => \u_final|u_lab1|n_state.state3~0_combout\);

-- Location: LCCOMB_X114_Y17_N6
\u_final|u_lab1|n_state.state3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state3~2_combout\ = (\u_final|u_lab1|n_state.state3~0_combout\) # ((\u_final|u_lab1|n_state.state3~1_combout\ & (!\SW[0]~input_o\ & \u_final|u_lab1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_lab1|n_state.state3~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \u_final|u_lab1|Equal0~0_combout\,
	datad => \u_final|u_lab1|n_state.state3~0_combout\,
	combout => \u_final|u_lab1|n_state.state3~2_combout\);

-- Location: FF_X114_Y17_N7
\u_final|u_lab1|state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state3~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state3~q\);

-- Location: LCCOMB_X114_Y17_N28
\u_final|u_lab1|n_state.state0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state0~2_combout\ = (\SW[6]~input_o\ & (!\u_final|u_lab1|n_state.state0~0_combout\ & (!\u_final|u_lab1|n_state.state0~1_combout\))) # (!\SW[6]~input_o\ & (((!\u_final|u_lab1|state.state3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \u_final|u_lab1|n_state.state0~0_combout\,
	datac => \u_final|u_lab1|n_state.state0~1_combout\,
	datad => \u_final|u_lab1|state.state3~q\,
	combout => \u_final|u_lab1|n_state.state0~2_combout\);

-- Location: FF_X114_Y17_N29
\u_final|u_lab1|state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state0~q\);

-- Location: LCCOMB_X114_Y17_N10
\u_final|u_lab1|n_state.state6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state6~1_combout\ = (\u_final|u_lab1|n_state.state6~0_combout\) # ((!\SW[6]~input_o\ & ((\u_final|u_lab1|state.state1~q\) # (!\u_final|u_lab1|state.state0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \u_final|u_lab1|n_state.state6~0_combout\,
	datac => \u_final|u_lab1|state.state1~q\,
	datad => \u_final|u_lab1|state.state0~q\,
	combout => \u_final|u_lab1|n_state.state6~1_combout\);

-- Location: FF_X114_Y17_N11
\u_final|u_lab1|state.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state6~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state6~q\);

-- Location: LCCOMB_X114_Y17_N26
\u_final|u_lab1|n_state.state4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state4~0_combout\ = (\SW[6]~input_o\ & (!\SW[3]~input_o\ & (\u_final|u_lab1|n_state.state7~0_combout\))) # (!\SW[6]~input_o\ & ((\u_final|u_lab1|state.state6~q\) # ((!\SW[3]~input_o\ & \u_final|u_lab1|n_state.state7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \u_final|u_lab1|n_state.state7~0_combout\,
	datad => \u_final|u_lab1|state.state6~q\,
	combout => \u_final|u_lab1|n_state.state4~0_combout\);

-- Location: FF_X114_Y17_N27
\u_final|u_lab1|state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state4~q\);

-- Location: LCCOMB_X114_Y17_N2
\u_final|u_lab1|n_state.state7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state7~1_combout\ = (!\SW[6]~input_o\ & ((\u_final|u_lab1|state.state4~q\) # (\u_final|u_lab1|state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \u_final|u_lab1|state.state4~q\,
	datad => \u_final|u_lab1|state.state2~q\,
	combout => \u_final|u_lab1|n_state.state7~1_combout\);

-- Location: LCCOMB_X114_Y17_N12
\u_final|u_lab1|n_state.state7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_lab1|n_state.state7~2_combout\ = (\u_final|u_lab1|n_state.state7~1_combout\) # ((\SW[3]~input_o\ & \u_final|u_lab1|n_state.state7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \u_final|u_lab1|n_state.state7~0_combout\,
	datad => \u_final|u_lab1|n_state.state7~1_combout\,
	combout => \u_final|u_lab1|n_state.state7~2_combout\);

-- Location: FF_X114_Y17_N13
\u_final|u_lab1|state.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_final|u_clk|clk_1hz~clkctrl_outclk\,
	d => \u_final|u_lab1|n_state.state7~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_final|u_lab1|state.state7~q\);

-- Location: LCCOMB_X114_Y37_N4
\u_final|u_hex|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_hex|WideOr1~0_combout\ = (!\u_final|u_lab1|state.state4~q\ & (!\u_final|u_lab1|state.state2~q\ & !\u_final|u_lab1|state.state7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_lab1|state.state4~q\,
	datab => \u_final|u_lab1|state.state2~q\,
	datac => \u_final|u_lab1|state.state7~q\,
	combout => \u_final|u_hex|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y37_N6
\u_final|u_hex|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_hex|Decoder0~0_combout\ = (\u_final|u_hex|WideOr1~0_combout\ & ((\u_final|u_lab1|state.state3~q\) # (!\u_final|u_lab1|state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_final|u_hex|WideOr1~0_combout\,
	datac => \u_final|u_lab1|state.state0~q\,
	datad => \u_final|u_lab1|state.state3~q\,
	combout => \u_final|u_hex|Decoder0~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\u_final|u_hex|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_hex|WideOr2~combout\ = (\u_final|u_lab1|state.state7~q\) # ((\u_final|u_hex|Decoder0~0_combout\) # ((\u_final|u_lab1|state.state4~q\ & !\u_final|u_lab1|state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_lab1|state.state4~q\,
	datab => \u_final|u_lab1|state.state2~q\,
	datac => \u_final|u_lab1|state.state7~q\,
	datad => \u_final|u_hex|Decoder0~0_combout\,
	combout => \u_final|u_hex|WideOr2~combout\);

-- Location: LCCOMB_X114_Y37_N2
\u_final|u_hex|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_final|u_hex|WideOr0~0_combout\ = ((\u_final|u_lab1|state.state2~q\) # (\u_final|u_lab1|state.state7~q\)) # (!\u_final|u_lab1|state.state4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_final|u_lab1|state.state4~q\,
	datab => \u_final|u_lab1|state.state2~q\,
	datac => \u_final|u_lab1|state.state7~q\,
	combout => \u_final|u_hex|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


