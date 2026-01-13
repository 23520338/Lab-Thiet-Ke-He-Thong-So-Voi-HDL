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

-- DATE "01/12/2026 20:58:21"

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

ENTITY 	MedianFilter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pixel_valid : IN std_logic;
	pixel_in : IN std_logic_vector(7 DOWNTO 0);
	pixel_out_valid : OUT std_logic;
	pixel_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END MedianFilter;

-- Design Ports Information
-- pixel_out_valid	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_out[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_valid	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_in[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MedianFilter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pixel_valid : std_logic;
SIGNAL ww_pixel_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pixel_out_valid : std_logic;
SIGNAL ww_pixel_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \p2[4]~4_combout\ : std_logic;
SIGNAL \p6[4]~4_combout\ : std_logic;
SIGNAL \y_wr[8]~30\ : std_logic;
SIGNAL \y_wr[9]~31_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sorter|b1~6_combout\ : std_logic;
SIGNAL \sorter|b0~2_combout\ : std_logic;
SIGNAL \sorter|a0~3_combout\ : std_logic;
SIGNAL \sorter|a0~5_combout\ : std_logic;
SIGNAL \sorter|a1~14_combout\ : std_logic;
SIGNAL \sorter|a0[5]~11_combout\ : std_logic;
SIGNAL \sorter|b0[1]~15_combout\ : std_logic;
SIGNAL \sorter|c1~0_combout\ : std_logic;
SIGNAL \sorter|c1~8_combout\ : std_logic;
SIGNAL \sorter|c0~2_combout\ : std_logic;
SIGNAL \sorter|c0~3_combout\ : std_logic;
SIGNAL \sorter|c0[0]~8_combout\ : std_logic;
SIGNAL \sorter|c0[6]~10_combout\ : std_logic;
SIGNAL \sorter|d1~3_combout\ : std_logic;
SIGNAL \sorter|d1~4_combout\ : std_logic;
SIGNAL \sorter|d0~2_combout\ : std_logic;
SIGNAL \sorter|d1~11_combout\ : std_logic;
SIGNAL \sorter|d1~12_combout\ : std_logic;
SIGNAL \sorter|d0~6_combout\ : std_logic;
SIGNAL \sorter|d0~7_combout\ : std_logic;
SIGNAL \sorter|c1[0]~16_combout\ : std_logic;
SIGNAL \sorter|b1[4]~20_combout\ : std_logic;
SIGNAL \sorter|b1[2]~22_combout\ : std_logic;
SIGNAL \sorter|c1[1]~23_combout\ : std_logic;
SIGNAL \sorter|d1[1]~23_combout\ : std_logic;
SIGNAL \sorter|b2[3]~5_combout\ : std_logic;
SIGNAL \sorter|b2[2]~6_combout\ : std_logic;
SIGNAL \sorter|c2[0]~0_combout\ : std_logic;
SIGNAL \sorter|f1~3_combout\ : std_logic;
SIGNAL \sorter|c2[1]~7_combout\ : std_logic;
SIGNAL \sorter|f1~11_combout\ : std_logic;
SIGNAL \sorter|f0~6_combout\ : std_logic;
SIGNAL \sorter|m3~3_combout\ : std_logic;
SIGNAL \sorter|m1~5_combout\ : std_logic;
SIGNAL \sorter|m4~14_combout\ : std_logic;
SIGNAL \sorter|m4~15_combout\ : std_logic;
SIGNAL \sorter|m3~18_combout\ : std_logic;
SIGNAL \sorter|m3~20_combout\ : std_logic;
SIGNAL \sorter|m1~13_combout\ : std_logic;
SIGNAL \sorter|m1~14_combout\ : std_logic;
SIGNAL \sorter|m2~12_combout\ : std_logic;
SIGNAL \sorter|m0~13_combout\ : std_logic;
SIGNAL \sorter|m2~14_combout\ : std_logic;
SIGNAL \sorter|m0~15_combout\ : std_logic;
SIGNAL \sorter|m2~17_combout\ : std_logic;
SIGNAL \sorter|m1~18_combout\ : std_logic;
SIGNAL \pixel_out_valid~1_combout\ : std_logic;
SIGNAL \x_rd~4_combout\ : std_logic;
SIGNAL \p3~7_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \y_wr[9]~20_combout\ : std_logic;
SIGNAL \y_wr[9]~21_combout\ : std_logic;
SIGNAL \x_wr[9]~7_combout\ : std_logic;
SIGNAL \x_wr~10_combout\ : std_logic;
SIGNAL \line1~0_combout\ : std_logic;
SIGNAL \line1~1_combout\ : std_logic;
SIGNAL \line1~2_combout\ : std_logic;
SIGNAL \line1~3_combout\ : std_logic;
SIGNAL \line1~4_combout\ : std_logic;
SIGNAL \line0~2_combout\ : std_logic;
SIGNAL \line0~12_combout\ : std_logic;
SIGNAL \line1~16_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \w00[7]~feeder_combout\ : std_logic;
SIGNAL \w00[3]~feeder_combout\ : std_logic;
SIGNAL \w00[2]~feeder_combout\ : std_logic;
SIGNAL \w00[1]~feeder_combout\ : std_logic;
SIGNAL \w01[2]~feeder_combout\ : std_logic;
SIGNAL \w20[6]~feeder_combout\ : std_logic;
SIGNAL \w20[4]~feeder_combout\ : std_logic;
SIGNAL \w21[4]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \pixel_out_valid~output_o\ : std_logic;
SIGNAL \pixel_out[0]~output_o\ : std_logic;
SIGNAL \pixel_out[1]~output_o\ : std_logic;
SIGNAL \pixel_out[2]~output_o\ : std_logic;
SIGNAL \pixel_out[3]~output_o\ : std_logic;
SIGNAL \pixel_out[4]~output_o\ : std_logic;
SIGNAL \pixel_out[5]~output_o\ : std_logic;
SIGNAL \pixel_out[6]~output_o\ : std_logic;
SIGNAL \pixel_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \pixel_valid~input_o\ : std_logic;
SIGNAL \x_wr~12_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \x_wr~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \x_wr~11_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \x_wr~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \x_wr~13_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \x_wr~16_combout\ : std_logic;
SIGNAL \x_wr[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \x_wr~1_combout\ : std_logic;
SIGNAL \x_wr~3_combout\ : std_logic;
SIGNAL \x_wr~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \x_wr~0_combout\ : std_logic;
SIGNAL \x_wr~2_combout\ : std_logic;
SIGNAL \y_wr[0]~10_combout\ : std_logic;
SIGNAL \y_wr[9]~22_combout\ : std_logic;
SIGNAL \y_wr[0]~11\ : std_logic;
SIGNAL \y_wr[1]~13\ : std_logic;
SIGNAL \y_wr[2]~14_combout\ : std_logic;
SIGNAL \y_wr[1]~12_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \y_wr[2]~15\ : std_logic;
SIGNAL \y_wr[3]~17\ : std_logic;
SIGNAL \y_wr[4]~19\ : std_logic;
SIGNAL \y_wr[5]~23_combout\ : std_logic;
SIGNAL \y_wr[5]~24\ : std_logic;
SIGNAL \y_wr[6]~25_combout\ : std_logic;
SIGNAL \y_wr[6]~26\ : std_logic;
SIGNAL \y_wr[7]~27_combout\ : std_logic;
SIGNAL \y_wr[7]~28\ : std_logic;
SIGNAL \y_wr[8]~29_combout\ : std_logic;
SIGNAL \always1~3_combout\ : std_logic;
SIGNAL \y_wr[3]~16_combout\ : std_logic;
SIGNAL \always1~2_combout\ : std_logic;
SIGNAL \always1~4_combout\ : std_logic;
SIGNAL \y_wr[4]~18_combout\ : std_logic;
SIGNAL \always1~5_combout\ : std_logic;
SIGNAL \process_en~0_combout\ : std_logic;
SIGNAL \process_en~q\ : std_logic;
SIGNAL \pixel_out~9_combout\ : std_logic;
SIGNAL \x_rd~3_combout\ : std_logic;
SIGNAL \x_rd~8_combout\ : std_logic;
SIGNAL \x_rd~9_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \x_rd~5_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \x_rd~0_combout\ : std_logic;
SIGNAL \x_rd~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \x_rd~6_combout\ : std_logic;
SIGNAL \x_rd~7_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \x_rd~2_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \x_rd~10_combout\ : std_logic;
SIGNAL \x_rd~11_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \x_rd~12_combout\ : std_logic;
SIGNAL \x_rd~13_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \x_rd~14_combout\ : std_logic;
SIGNAL \x_rd~15_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \pixel_out_valid~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pixel_out_valid~reg0_q\ : std_logic;
SIGNAL \y_rd[0]~12\ : std_logic;
SIGNAL \y_rd[1]~13_combout\ : std_logic;
SIGNAL \y_rd[7]~26\ : std_logic;
SIGNAL \y_rd[8]~28\ : std_logic;
SIGNAL \y_rd[9]~29_combout\ : std_logic;
SIGNAL \y_rd[2]~15_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \y_rd[0]~11_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \y_rd[9]~10_combout\ : std_logic;
SIGNAL \y_rd[9]~31_combout\ : std_logic;
SIGNAL \y_rd[1]~14\ : std_logic;
SIGNAL \y_rd[2]~16\ : std_logic;
SIGNAL \y_rd[3]~18\ : std_logic;
SIGNAL \y_rd[4]~19_combout\ : std_logic;
SIGNAL \y_rd[4]~20\ : std_logic;
SIGNAL \y_rd[5]~21_combout\ : std_logic;
SIGNAL \y_rd[5]~22\ : std_logic;
SIGNAL \y_rd[6]~23_combout\ : std_logic;
SIGNAL \y_rd[6]~24\ : std_logic;
SIGNAL \y_rd[7]~25_combout\ : std_logic;
SIGNAL \y_rd[8]~27_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \y_rd[3]~17_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \pixel_in[0]~input_o\ : std_logic;
SIGNAL \line1_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \x_wr~14_combout\ : std_logic;
SIGNAL \x_wr~15_combout\ : std_logic;
SIGNAL \line0~14_combout\ : std_logic;
SIGNAL \line1~5_combout\ : std_logic;
SIGNAL \line1~6_combout\ : std_logic;
SIGNAL \p4[0]~0_combout\ : std_logic;
SIGNAL \p2[0]~0_combout\ : std_logic;
SIGNAL \w11[0]~feeder_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \line0~0_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \x_wr~8_combout\ : std_logic;
SIGNAL \x_wr~9_combout\ : std_logic;
SIGNAL \line0~1_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \line0_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \line0~3_combout\ : std_logic;
SIGNAL \line0~4_combout\ : std_logic;
SIGNAL \line0~5_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \pixel_in[1]~input_o\ : std_logic;
SIGNAL \pixel_in[2]~input_o\ : std_logic;
SIGNAL \pixel_in[3]~input_o\ : std_logic;
SIGNAL \pixel_in[4]~input_o\ : std_logic;
SIGNAL \pixel_in[5]~input_o\ : std_logic;
SIGNAL \pixel_in[6]~input_o\ : std_logic;
SIGNAL \pixel_in[7]~input_o\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \line1~20_combout\ : std_logic;
SIGNAL \line0~6_combout\ : std_logic;
SIGNAL \w00[0]~feeder_combout\ : std_logic;
SIGNAL \p0[0]~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \sorter|a1~0_combout\ : std_logic;
SIGNAL \line1~17_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \line1~14_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \line1~15_combout\ : std_logic;
SIGNAL \line1~18_combout\ : std_logic;
SIGNAL \line1~19_combout\ : std_logic;
SIGNAL \line1~21_combout\ : std_logic;
SIGNAL \line1~27_combout\ : std_logic;
SIGNAL \line1~26_combout\ : std_logic;
SIGNAL \line1_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \line1~25_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \line1~24_combout\ : std_logic;
SIGNAL \line1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \line1~23_combout\ : std_logic;
SIGNAL \line1~22_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \line0~7_combout\ : std_logic;
SIGNAL \p2[7]~7_combout\ : std_logic;
SIGNAL \w01[7]~feeder_combout\ : std_logic;
SIGNAL \p1~1_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \line0_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \line0~8_combout\ : std_logic;
SIGNAL \w01[6]~feeder_combout\ : std_logic;
SIGNAL \p1~2_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \line1~9_combout\ : std_logic;
SIGNAL \p1~3_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \line0_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \line0~10_combout\ : std_logic;
SIGNAL \w01[4]~feeder_combout\ : std_logic;
SIGNAL \w00[4]~feeder_combout\ : std_logic;
SIGNAL \p0[4]~4_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \line1~10_combout\ : std_logic;
SIGNAL \p1~4_combout\ : std_logic;
SIGNAL \line1_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \line1~11_combout\ : std_logic;
SIGNAL \w11[3]~feeder_combout\ : std_logic;
SIGNAL \p0[3]~3_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \line0_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \line0~11_combout\ : std_logic;
SIGNAL \p1~5_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \line1_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \line1~12_combout\ : std_logic;
SIGNAL \p1~6_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \line1~13_combout\ : std_logic;
SIGNAL \p0[1]~1_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \line0~13_combout\ : std_logic;
SIGNAL \w01[1]~feeder_combout\ : std_logic;
SIGNAL \p1~7_combout\ : std_logic;
SIGNAL \sorter|LessThan0~1_cout\ : std_logic;
SIGNAL \sorter|LessThan0~3_cout\ : std_logic;
SIGNAL \sorter|LessThan0~5_cout\ : std_logic;
SIGNAL \sorter|LessThan0~7_cout\ : std_logic;
SIGNAL \sorter|LessThan0~9_cout\ : std_logic;
SIGNAL \sorter|LessThan0~11_cout\ : std_logic;
SIGNAL \sorter|LessThan0~13_cout\ : std_logic;
SIGNAL \sorter|LessThan0~14_combout\ : std_logic;
SIGNAL \sorter|a1~1_combout\ : std_logic;
SIGNAL \w00[6]~feeder_combout\ : std_logic;
SIGNAL \p0[6]~6_combout\ : std_logic;
SIGNAL \sorter|a1~2_combout\ : std_logic;
SIGNAL \line0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \line0~9_combout\ : std_logic;
SIGNAL \p0[5]~5_combout\ : std_logic;
SIGNAL \sorter|a1~3_combout\ : std_logic;
SIGNAL \sorter|a1~4_combout\ : std_logic;
SIGNAL \p2[3]~3_combout\ : std_logic;
SIGNAL \p0[2]~2_combout\ : std_logic;
SIGNAL \sorter|a1~6_combout\ : std_logic;
SIGNAL \sorter|a1~7_combout\ : std_logic;
SIGNAL \sorter|LessThan1~1_cout\ : std_logic;
SIGNAL \sorter|LessThan1~3_cout\ : std_logic;
SIGNAL \sorter|LessThan1~5_cout\ : std_logic;
SIGNAL \sorter|LessThan1~7_cout\ : std_logic;
SIGNAL \sorter|LessThan1~9_cout\ : std_logic;
SIGNAL \sorter|LessThan1~11_cout\ : std_logic;
SIGNAL \sorter|LessThan1~13_cout\ : std_logic;
SIGNAL \sorter|LessThan1~14_combout\ : std_logic;
SIGNAL \sorter|a2[0]~0_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \line1~7_combout\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \line1_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \line1~8_combout\ : std_logic;
SIGNAL \w11[6]~feeder_combout\ : std_logic;
SIGNAL \p3~3_combout\ : std_logic;
SIGNAL \p3~5_combout\ : std_logic;
SIGNAL \p3~6_combout\ : std_logic;
SIGNAL \sorter|LessThan3~1_cout\ : std_logic;
SIGNAL \sorter|LessThan3~3_cout\ : std_logic;
SIGNAL \sorter|LessThan3~5_cout\ : std_logic;
SIGNAL \sorter|LessThan3~7_cout\ : std_logic;
SIGNAL \sorter|LessThan3~9_cout\ : std_logic;
SIGNAL \sorter|LessThan3~11_cout\ : std_logic;
SIGNAL \sorter|LessThan3~13_cout\ : std_logic;
SIGNAL \sorter|LessThan3~14_combout\ : std_logic;
SIGNAL \sorter|b1~1_combout\ : std_logic;
SIGNAL \p5~1_combout\ : std_logic;
SIGNAL \p5~2_combout\ : std_logic;
SIGNAL \p5~3_combout\ : std_logic;
SIGNAL \sorter|b1~4_combout\ : std_logic;
SIGNAL \p5~5_combout\ : std_logic;
SIGNAL \p5~6_combout\ : std_logic;
SIGNAL \p5~7_combout\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \sorter|b1~0_combout\ : std_logic;
SIGNAL \sorter|LessThan4~1_cout\ : std_logic;
SIGNAL \sorter|LessThan4~3_cout\ : std_logic;
SIGNAL \sorter|LessThan4~5_cout\ : std_logic;
SIGNAL \sorter|LessThan4~7_cout\ : std_logic;
SIGNAL \sorter|LessThan4~9_cout\ : std_logic;
SIGNAL \sorter|LessThan4~11_cout\ : std_logic;
SIGNAL \sorter|LessThan4~13_cout\ : std_logic;
SIGNAL \sorter|LessThan4~14_combout\ : std_logic;
SIGNAL \sorter|b2[7]~1_combout\ : std_logic;
SIGNAL \sorter|a2[7]~1_combout\ : std_logic;
SIGNAL \p2[6]~6_combout\ : std_logic;
SIGNAL \sorter|a2[6]~2_combout\ : std_logic;
SIGNAL \sorter|b1~3_combout\ : std_logic;
SIGNAL \sorter|b2[5]~3_combout\ : std_logic;
SIGNAL \p5~4_combout\ : std_logic;
SIGNAL \sorter|b2[4]~4_combout\ : std_logic;
SIGNAL \sorter|a1~5_combout\ : std_logic;
SIGNAL \sorter|a2[3]~5_combout\ : std_logic;
SIGNAL \p2[2]~2_combout\ : std_logic;
SIGNAL \sorter|a2[2]~6_combout\ : std_logic;
SIGNAL \p2[1]~1_combout\ : std_logic;
SIGNAL \sorter|a2[1]~7_combout\ : std_logic;
SIGNAL \p5~0_combout\ : std_logic;
SIGNAL \p5[0]~feeder_combout\ : std_logic;
SIGNAL \sorter|b2[0]~0_combout\ : std_logic;
SIGNAL \sorter|LessThan15~1_cout\ : std_logic;
SIGNAL \sorter|LessThan15~3_cout\ : std_logic;
SIGNAL \sorter|LessThan15~5_cout\ : std_logic;
SIGNAL \sorter|LessThan15~7_cout\ : std_logic;
SIGNAL \sorter|LessThan15~9_cout\ : std_logic;
SIGNAL \sorter|LessThan15~11_cout\ : std_logic;
SIGNAL \sorter|LessThan15~13_cout\ : std_logic;
SIGNAL \sorter|LessThan15~14_combout\ : std_logic;
SIGNAL \sorter|f1~0_combout\ : std_logic;
SIGNAL \w21[7]~feeder_combout\ : std_logic;
SIGNAL \p6[7]~7_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \p7~1_combout\ : std_logic;
SIGNAL \sorter|c1~1_combout\ : std_logic;
SIGNAL \p8[7]~7_combout\ : std_logic;
SIGNAL \p8[6]~6_combout\ : std_logic;
SIGNAL \w22[6]~feeder_combout\ : std_logic;
SIGNAL \w21[6]~feeder_combout\ : std_logic;
SIGNAL \p7~2_combout\ : std_logic;
SIGNAL \w20[5]~feeder_combout\ : std_logic;
SIGNAL \p6[5]~5_combout\ : std_logic;
SIGNAL \p7~3_combout\ : std_logic;
SIGNAL \p7~4_combout\ : std_logic;
SIGNAL \w22[3]~feeder_combout\ : std_logic;
SIGNAL \w21[3]~feeder_combout\ : std_logic;
SIGNAL \w20[3]~feeder_combout\ : std_logic;
SIGNAL \p6[3]~3_combout\ : std_logic;
SIGNAL \p7~5_combout\ : std_logic;
SIGNAL \w22[2]~feeder_combout\ : std_logic;
SIGNAL \w21[2]~feeder_combout\ : std_logic;
SIGNAL \p7~6_combout\ : std_logic;
SIGNAL \w20[1]~feeder_combout\ : std_logic;
SIGNAL \p6[1]~1_combout\ : std_logic;
SIGNAL \p7~7_combout\ : std_logic;
SIGNAL \w22[0]~feeder_combout\ : std_logic;
SIGNAL \w21[0]~feeder_combout\ : std_logic;
SIGNAL \p7~0_combout\ : std_logic;
SIGNAL \sorter|LessThan6~1_cout\ : std_logic;
SIGNAL \sorter|LessThan6~3_cout\ : std_logic;
SIGNAL \sorter|LessThan6~5_cout\ : std_logic;
SIGNAL \sorter|LessThan6~7_cout\ : std_logic;
SIGNAL \sorter|LessThan6~9_cout\ : std_logic;
SIGNAL \sorter|LessThan6~11_cout\ : std_logic;
SIGNAL \sorter|LessThan6~13_cout\ : std_logic;
SIGNAL \sorter|LessThan6~14_combout\ : std_logic;
SIGNAL \sorter|c1~3_combout\ : std_logic;
SIGNAL \sorter|c1~4_combout\ : std_logic;
SIGNAL \p8[3]~3_combout\ : std_logic;
SIGNAL \sorter|c1~6_combout\ : std_logic;
SIGNAL \p8[1]~1_combout\ : std_logic;
SIGNAL \p8[0]~0_combout\ : std_logic;
SIGNAL \sorter|LessThan7~1_cout\ : std_logic;
SIGNAL \sorter|LessThan7~3_cout\ : std_logic;
SIGNAL \sorter|LessThan7~5_cout\ : std_logic;
SIGNAL \sorter|LessThan7~7_cout\ : std_logic;
SIGNAL \sorter|LessThan7~9_cout\ : std_logic;
SIGNAL \sorter|LessThan7~11_cout\ : std_logic;
SIGNAL \sorter|LessThan7~13_cout\ : std_logic;
SIGNAL \sorter|LessThan7~14_combout\ : std_logic;
SIGNAL \sorter|c2[7]~1_combout\ : std_logic;
SIGNAL \sorter|f1~1_combout\ : std_logic;
SIGNAL \p3~2_combout\ : std_logic;
SIGNAL \sorter|b1~2_combout\ : std_logic;
SIGNAL \sorter|b2[6]~2_combout\ : std_logic;
SIGNAL \sorter|f1~2_combout\ : std_logic;
SIGNAL \p8[5]~5_combout\ : std_logic;
SIGNAL \p8[5]~feeder_combout\ : std_logic;
SIGNAL \sorter|c2[5]~3_combout\ : std_logic;
SIGNAL \p8[4]~4_combout\ : std_logic;
SIGNAL \sorter|c2[4]~4_combout\ : std_logic;
SIGNAL \sorter|f1~5_combout\ : std_logic;
SIGNAL \p8[2]~2_combout\ : std_logic;
SIGNAL \sorter|c2[2]~6_combout\ : std_logic;
SIGNAL \sorter|f1~7_combout\ : std_logic;
SIGNAL \sorter|LessThan16~1_cout\ : std_logic;
SIGNAL \sorter|LessThan16~3_cout\ : std_logic;
SIGNAL \sorter|LessThan16~5_cout\ : std_logic;
SIGNAL \sorter|LessThan16~7_cout\ : std_logic;
SIGNAL \sorter|LessThan16~9_cout\ : std_logic;
SIGNAL \sorter|LessThan16~11_cout\ : std_logic;
SIGNAL \sorter|LessThan16~13_cout\ : std_logic;
SIGNAL \sorter|LessThan16~14_combout\ : std_logic;
SIGNAL \sorter|f1~8_combout\ : std_logic;
SIGNAL \sorter|f1~9_combout\ : std_logic;
SIGNAL \sorter|f0~2_combout\ : std_logic;
SIGNAL \p2[5]~5_combout\ : std_logic;
SIGNAL \sorter|a2[5]~3_combout\ : std_logic;
SIGNAL \sorter|f0~3_combout\ : std_logic;
SIGNAL \sorter|a2[4]~4_combout\ : std_logic;
SIGNAL \sorter|f1~4_combout\ : std_logic;
SIGNAL \sorter|f1~12_combout\ : std_logic;
SIGNAL \sorter|f0~5_combout\ : std_logic;
SIGNAL \sorter|f1~6_combout\ : std_logic;
SIGNAL \sorter|f1~14_combout\ : std_logic;
SIGNAL \sorter|f1~15_combout\ : std_logic;
SIGNAL \sorter|f0~0_combout\ : std_logic;
SIGNAL \sorter|LessThan17~1_cout\ : std_logic;
SIGNAL \sorter|LessThan17~3_cout\ : std_logic;
SIGNAL \sorter|LessThan17~5_cout\ : std_logic;
SIGNAL \sorter|LessThan17~7_cout\ : std_logic;
SIGNAL \sorter|LessThan17~9_cout\ : std_logic;
SIGNAL \sorter|LessThan17~11_cout\ : std_logic;
SIGNAL \sorter|LessThan17~13_cout\ : std_logic;
SIGNAL \sorter|LessThan17~14_combout\ : std_logic;
SIGNAL \sorter|f1[0]~16_combout\ : std_logic;
SIGNAL \sorter|a1~9_combout\ : std_logic;
SIGNAL \sorter|a0~2_combout\ : std_logic;
SIGNAL \sorter|a1~11_combout\ : std_logic;
SIGNAL \sorter|a1~12_combout\ : std_logic;
SIGNAL \sorter|a1~13_combout\ : std_logic;
SIGNAL \sorter|a0~6_combout\ : std_logic;
SIGNAL \sorter|a0~7_combout\ : std_logic;
SIGNAL \sorter|a0~0_combout\ : std_logic;
SIGNAL \sorter|LessThan2~1_cout\ : std_logic;
SIGNAL \sorter|LessThan2~3_cout\ : std_logic;
SIGNAL \sorter|LessThan2~5_cout\ : std_logic;
SIGNAL \sorter|LessThan2~7_cout\ : std_logic;
SIGNAL \sorter|LessThan2~9_cout\ : std_logic;
SIGNAL \sorter|LessThan2~11_cout\ : std_logic;
SIGNAL \sorter|LessThan2~13_cout\ : std_logic;
SIGNAL \sorter|LessThan2~14_combout\ : std_logic;
SIGNAL \sorter|a1[7]~17_combout\ : std_logic;
SIGNAL \sorter|b0~1_combout\ : std_logic;
SIGNAL \sorter|b1~9_combout\ : std_logic;
SIGNAL \sorter|b1~10_combout\ : std_logic;
SIGNAL \sorter|b0~3_combout\ : std_logic;
SIGNAL \sorter|b1~12_combout\ : std_logic;
SIGNAL \sorter|b0~5_combout\ : std_logic;
SIGNAL \sorter|b0~6_combout\ : std_logic;
SIGNAL \sorter|b0~7_combout\ : std_logic;
SIGNAL \sorter|b0~0_combout\ : std_logic;
SIGNAL \sorter|LessThan5~1_cout\ : std_logic;
SIGNAL \sorter|LessThan5~3_cout\ : std_logic;
SIGNAL \sorter|LessThan5~5_cout\ : std_logic;
SIGNAL \sorter|LessThan5~7_cout\ : std_logic;
SIGNAL \sorter|LessThan5~9_cout\ : std_logic;
SIGNAL \sorter|LessThan5~11_cout\ : std_logic;
SIGNAL \sorter|LessThan5~13_cout\ : std_logic;
SIGNAL \sorter|LessThan5~14_combout\ : std_logic;
SIGNAL \sorter|b1[7]~17_combout\ : std_logic;
SIGNAL \sorter|b1[6]~18_combout\ : std_logic;
SIGNAL \sorter|b1~11_combout\ : std_logic;
SIGNAL \sorter|b1[5]~19_combout\ : std_logic;
SIGNAL \sorter|a0~4_combout\ : std_logic;
SIGNAL \sorter|a1[4]~20_combout\ : std_logic;
SIGNAL \sorter|a1[3]~21_combout\ : std_logic;
SIGNAL \sorter|a1[2]~22_combout\ : std_logic;
SIGNAL \sorter|a1~15_combout\ : std_logic;
SIGNAL \sorter|a1[1]~23_combout\ : std_logic;
SIGNAL \sorter|a1[0]~16_combout\ : std_logic;
SIGNAL \sorter|LessThan12~1_cout\ : std_logic;
SIGNAL \sorter|LessThan12~3_cout\ : std_logic;
SIGNAL \sorter|LessThan12~5_cout\ : std_logic;
SIGNAL \sorter|LessThan12~7_cout\ : std_logic;
SIGNAL \sorter|LessThan12~9_cout\ : std_logic;
SIGNAL \sorter|LessThan12~11_cout\ : std_logic;
SIGNAL \sorter|LessThan12~13_cout\ : std_logic;
SIGNAL \sorter|LessThan12~14_combout\ : std_logic;
SIGNAL \sorter|b1~8_combout\ : std_logic;
SIGNAL \sorter|b1[0]~16_combout\ : std_logic;
SIGNAL \sorter|e1~0_combout\ : std_logic;
SIGNAL \sorter|c0~1_combout\ : std_logic;
SIGNAL \sorter|c1~9_combout\ : std_logic;
SIGNAL \p6[6]~6_combout\ : std_logic;
SIGNAL \sorter|c1~2_combout\ : std_logic;
SIGNAL \sorter|c1~10_combout\ : std_logic;
SIGNAL \sorter|c1~11_combout\ : std_logic;
SIGNAL \sorter|c0~4_combout\ : std_logic;
SIGNAL \sorter|c1~5_combout\ : std_logic;
SIGNAL \sorter|c1~13_combout\ : std_logic;
SIGNAL \w20[2]~feeder_combout\ : std_logic;
SIGNAL \p6[2]~2_combout\ : std_logic;
SIGNAL \sorter|c0~6_combout\ : std_logic;
SIGNAL \sorter|c1~7_combout\ : std_logic;
SIGNAL \sorter|c1~15_combout\ : std_logic;
SIGNAL \w20[0]~feeder_combout\ : std_logic;
SIGNAL \p6[0]~0_combout\ : std_logic;
SIGNAL \sorter|c0~0_combout\ : std_logic;
SIGNAL \sorter|LessThan8~1_cout\ : std_logic;
SIGNAL \sorter|LessThan8~3_cout\ : std_logic;
SIGNAL \sorter|LessThan8~5_cout\ : std_logic;
SIGNAL \sorter|LessThan8~7_cout\ : std_logic;
SIGNAL \sorter|LessThan8~9_cout\ : std_logic;
SIGNAL \sorter|LessThan8~11_cout\ : std_logic;
SIGNAL \sorter|LessThan8~13_cout\ : std_logic;
SIGNAL \sorter|LessThan8~14_combout\ : std_logic;
SIGNAL \sorter|c1[7]~17_combout\ : std_logic;
SIGNAL \sorter|e1~1_combout\ : std_logic;
SIGNAL \sorter|c1[6]~18_combout\ : std_logic;
SIGNAL \sorter|e1~3_combout\ : std_logic;
SIGNAL \sorter|e1~4_combout\ : std_logic;
SIGNAL \sorter|c0~5_combout\ : std_logic;
SIGNAL \sorter|c1[3]~21_combout\ : std_logic;
SIGNAL \sorter|e1~6_combout\ : std_logic;
SIGNAL \sorter|b1~7_combout\ : std_logic;
SIGNAL \sorter|b1~15_combout\ : std_logic;
SIGNAL \sorter|b1[1]~23_combout\ : std_logic;
SIGNAL \sorter|e1~7_combout\ : std_logic;
SIGNAL \sorter|LessThan13~1_cout\ : std_logic;
SIGNAL \sorter|LessThan13~3_cout\ : std_logic;
SIGNAL \sorter|LessThan13~5_cout\ : std_logic;
SIGNAL \sorter|LessThan13~7_cout\ : std_logic;
SIGNAL \sorter|LessThan13~9_cout\ : std_logic;
SIGNAL \sorter|LessThan13~11_cout\ : std_logic;
SIGNAL \sorter|LessThan13~13_cout\ : std_logic;
SIGNAL \sorter|LessThan13~14_combout\ : std_logic;
SIGNAL \sorter|e2[0]~0_combout\ : std_logic;
SIGNAL \sorter|f0~1_combout\ : std_logic;
SIGNAL \sorter|f1[7]~17_combout\ : std_logic;
SIGNAL \sorter|a1~10_combout\ : std_logic;
SIGNAL \sorter|a1[6]~18_combout\ : std_logic;
SIGNAL \sorter|e1~2_combout\ : std_logic;
SIGNAL \sorter|e2[6]~2_combout\ : std_logic;
SIGNAL \sorter|f1[5]~19_combout\ : std_logic;
SIGNAL \sorter|c1~12_combout\ : std_logic;
SIGNAL \sorter|c1[4]~20_combout\ : std_logic;
SIGNAL \sorter|e2[4]~4_combout\ : std_logic;
SIGNAL \sorter|c2[3]~5_combout\ : std_logic;
SIGNAL \sorter|f1~13_combout\ : std_logic;
SIGNAL \sorter|f1[3]~21_combout\ : std_logic;
SIGNAL \sorter|c1~14_combout\ : std_logic;
SIGNAL \sorter|c1[2]~22_combout\ : std_logic;
SIGNAL \sorter|e2[2]~6_combout\ : std_logic;
SIGNAL \sorter|e2[1]~7_combout\ : std_logic;
SIGNAL \sorter|LessThan19~1_cout\ : std_logic;
SIGNAL \sorter|LessThan19~3_cout\ : std_logic;
SIGNAL \sorter|LessThan19~5_cout\ : std_logic;
SIGNAL \sorter|LessThan19~7_cout\ : std_logic;
SIGNAL \sorter|LessThan19~9_cout\ : std_logic;
SIGNAL \sorter|LessThan19~11_cout\ : std_logic;
SIGNAL \sorter|LessThan19~13_cout\ : std_logic;
SIGNAL \sorter|LessThan19~14_combout\ : std_logic;
SIGNAL \sorter|m3~0_combout\ : std_logic;
SIGNAL \sorter|e1~9_combout\ : std_logic;
SIGNAL \sorter|e0~1_combout\ : std_logic;
SIGNAL \sorter|e0~2_combout\ : std_logic;
SIGNAL \sorter|c1[5]~19_combout\ : std_logic;
SIGNAL \sorter|e1~11_combout\ : std_logic;
SIGNAL \sorter|e1~12_combout\ : std_logic;
SIGNAL \sorter|b1~5_combout\ : std_logic;
SIGNAL \sorter|b1~13_combout\ : std_logic;
SIGNAL \sorter|b1[3]~21_combout\ : std_logic;
SIGNAL \sorter|e0~5_combout\ : std_logic;
SIGNAL \sorter|e0~6_combout\ : std_logic;
SIGNAL \sorter|e1~15_combout\ : std_logic;
SIGNAL \sorter|e1~8_combout\ : std_logic;
SIGNAL \sorter|LessThan14~1_cout\ : std_logic;
SIGNAL \sorter|LessThan14~3_cout\ : std_logic;
SIGNAL \sorter|LessThan14~5_cout\ : std_logic;
SIGNAL \sorter|LessThan14~7_cout\ : std_logic;
SIGNAL \sorter|LessThan14~9_cout\ : std_logic;
SIGNAL \sorter|LessThan14~11_cout\ : std_logic;
SIGNAL \sorter|LessThan14~13_cout\ : std_logic;
SIGNAL \sorter|LessThan14~14_combout\ : std_logic;
SIGNAL \sorter|e1[7]~17_combout\ : std_logic;
SIGNAL \sorter|c2[6]~2_combout\ : std_logic;
SIGNAL \sorter|f1~10_combout\ : std_logic;
SIGNAL \sorter|f1[6]~18_combout\ : std_logic;
SIGNAL \sorter|m4~2_combout\ : std_logic;
SIGNAL \sorter|e1[5]~19_combout\ : std_logic;
SIGNAL \sorter|f0~4_combout\ : std_logic;
SIGNAL \sorter|f1[4]~20_combout\ : std_logic;
SIGNAL \sorter|m4~4_combout\ : std_logic;
SIGNAL \sorter|e1~5_combout\ : std_logic;
SIGNAL \sorter|e2[3]~5_combout\ : std_logic;
SIGNAL \sorter|m4~5_combout\ : std_logic;
SIGNAL \sorter|e1[2]~22_combout\ : std_logic;
SIGNAL \sorter|e0~7_combout\ : std_logic;
SIGNAL \sorter|e1[1]~23_combout\ : std_logic;
SIGNAL \sorter|m4~0_combout\ : std_logic;
SIGNAL \sorter|LessThan20~1_cout\ : std_logic;
SIGNAL \sorter|LessThan20~3_cout\ : std_logic;
SIGNAL \sorter|LessThan20~5_cout\ : std_logic;
SIGNAL \sorter|LessThan20~7_cout\ : std_logic;
SIGNAL \sorter|LessThan20~9_cout\ : std_logic;
SIGNAL \sorter|LessThan20~11_cout\ : std_logic;
SIGNAL \sorter|LessThan20~13_cout\ : std_logic;
SIGNAL \sorter|LessThan20~14_combout\ : std_logic;
SIGNAL \sorter|e2[7]~1_combout\ : std_logic;
SIGNAL \sorter|m4~1_combout\ : std_logic;
SIGNAL \sorter|m2~1_combout\ : std_logic;
SIGNAL \sorter|e1[6]~18_combout\ : std_logic;
SIGNAL \sorter|m2~2_combout\ : std_logic;
SIGNAL \sorter|m2~3_combout\ : std_logic;
SIGNAL \sorter|e0~4_combout\ : std_logic;
SIGNAL \sorter|e1[4]~20_combout\ : std_logic;
SIGNAL \sorter|m2~4_combout\ : std_logic;
SIGNAL \sorter|m3~5_combout\ : std_logic;
SIGNAL \sorter|f1[2]~22_combout\ : std_logic;
SIGNAL \sorter|m3~6_combout\ : std_logic;
SIGNAL \sorter|m3~7_combout\ : std_logic;
SIGNAL \sorter|LessThan21~1_cout\ : std_logic;
SIGNAL \sorter|LessThan21~3_cout\ : std_logic;
SIGNAL \sorter|LessThan21~5_cout\ : std_logic;
SIGNAL \sorter|LessThan21~7_cout\ : std_logic;
SIGNAL \sorter|LessThan21~9_cout\ : std_logic;
SIGNAL \sorter|LessThan21~11_cout\ : std_logic;
SIGNAL \sorter|LessThan21~13_cout\ : std_logic;
SIGNAL \sorter|LessThan21~14_combout\ : std_logic;
SIGNAL \sorter|e0~0_combout\ : std_logic;
SIGNAL \sorter|e1[0]~16_combout\ : std_logic;
SIGNAL \sorter|m2~0_combout\ : std_logic;
SIGNAL \sorter|m3~8_combout\ : std_logic;
SIGNAL \sorter|m3~9_combout\ : std_logic;
SIGNAL \sorter|m3~2_combout\ : std_logic;
SIGNAL \sorter|m3~10_combout\ : std_logic;
SIGNAL \sorter|a1[5]~19_combout\ : std_logic;
SIGNAL \sorter|e0~3_combout\ : std_logic;
SIGNAL \sorter|e0[5]~11_combout\ : std_logic;
SIGNAL \sorter|e0[7]~9_combout\ : std_logic;
SIGNAL \sorter|e1~10_combout\ : std_logic;
SIGNAL \sorter|e0[6]~10_combout\ : std_logic;
SIGNAL \sorter|e0[4]~12_combout\ : std_logic;
SIGNAL \sorter|a0[3]~13_combout\ : std_logic;
SIGNAL \sorter|b0[3]~13_combout\ : std_logic;
SIGNAL \sorter|b0[7]~9_combout\ : std_logic;
SIGNAL \sorter|b0[6]~10_combout\ : std_logic;
SIGNAL \sorter|b0[5]~11_combout\ : std_logic;
SIGNAL \p3~4_combout\ : std_logic;
SIGNAL \sorter|b0~4_combout\ : std_logic;
SIGNAL \sorter|b0[4]~12_combout\ : std_logic;
SIGNAL \sorter|b1~14_combout\ : std_logic;
SIGNAL \sorter|b0[2]~14_combout\ : std_logic;
SIGNAL \sorter|a0[1]~15_combout\ : std_logic;
SIGNAL \sorter|b0[0]~8_combout\ : std_logic;
SIGNAL \sorter|LessThan9~1_cout\ : std_logic;
SIGNAL \sorter|LessThan9~3_cout\ : std_logic;
SIGNAL \sorter|LessThan9~5_cout\ : std_logic;
SIGNAL \sorter|LessThan9~7_cout\ : std_logic;
SIGNAL \sorter|LessThan9~9_cout\ : std_logic;
SIGNAL \sorter|LessThan9~11_cout\ : std_logic;
SIGNAL \sorter|LessThan9~13_cout\ : std_logic;
SIGNAL \sorter|LessThan9~14_combout\ : std_logic;
SIGNAL \sorter|d0~5_combout\ : std_logic;
SIGNAL \sorter|d0~1_combout\ : std_logic;
SIGNAL \p0[7]~7_combout\ : std_logic;
SIGNAL \sorter|a0~1_combout\ : std_logic;
SIGNAL \sorter|a0[7]~9_combout\ : std_logic;
SIGNAL \sorter|d1~1_combout\ : std_logic;
SIGNAL \sorter|c0[7]~9_combout\ : std_logic;
SIGNAL \sorter|a0[6]~10_combout\ : std_logic;
SIGNAL \sorter|d1~2_combout\ : std_logic;
SIGNAL \sorter|c0[5]~11_combout\ : std_logic;
SIGNAL \sorter|c0[4]~12_combout\ : std_logic;
SIGNAL \sorter|d1~5_combout\ : std_logic;
SIGNAL \sorter|c0[2]~14_combout\ : std_logic;
SIGNAL \sorter|d1~7_combout\ : std_logic;
SIGNAL \sorter|a1~8_combout\ : std_logic;
SIGNAL \sorter|a0[0]~8_combout\ : std_logic;
SIGNAL \sorter|d1~0_combout\ : std_logic;
SIGNAL \sorter|LessThan10~1_cout\ : std_logic;
SIGNAL \sorter|LessThan10~3_cout\ : std_logic;
SIGNAL \sorter|LessThan10~5_cout\ : std_logic;
SIGNAL \sorter|LessThan10~7_cout\ : std_logic;
SIGNAL \sorter|LessThan10~9_cout\ : std_logic;
SIGNAL \sorter|LessThan10~11_cout\ : std_logic;
SIGNAL \sorter|LessThan10~13_cout\ : std_logic;
SIGNAL \sorter|LessThan10~14_combout\ : std_logic;
SIGNAL \sorter|d1~9_combout\ : std_logic;
SIGNAL \sorter|d1~10_combout\ : std_logic;
SIGNAL \sorter|d0~3_combout\ : std_logic;
SIGNAL \sorter|a0[4]~12_combout\ : std_logic;
SIGNAL \sorter|d0~4_combout\ : std_logic;
SIGNAL \sorter|a0[2]~14_combout\ : std_logic;
SIGNAL \sorter|d1~6_combout\ : std_logic;
SIGNAL \sorter|d1~14_combout\ : std_logic;
SIGNAL \sorter|c0~7_combout\ : std_logic;
SIGNAL \sorter|c0[1]~15_combout\ : std_logic;
SIGNAL \sorter|d1~15_combout\ : std_logic;
SIGNAL \sorter|d1~8_combout\ : std_logic;
SIGNAL \sorter|LessThan11~1_cout\ : std_logic;
SIGNAL \sorter|LessThan11~3_cout\ : std_logic;
SIGNAL \sorter|LessThan11~5_cout\ : std_logic;
SIGNAL \sorter|LessThan11~7_cout\ : std_logic;
SIGNAL \sorter|LessThan11~9_cout\ : std_logic;
SIGNAL \sorter|LessThan11~11_cout\ : std_logic;
SIGNAL \sorter|LessThan11~13_cout\ : std_logic;
SIGNAL \sorter|LessThan11~14_combout\ : std_logic;
SIGNAL \sorter|c0[3]~13_combout\ : std_logic;
SIGNAL \sorter|d1~13_combout\ : std_logic;
SIGNAL \sorter|d1[3]~21_combout\ : std_logic;
SIGNAL \sorter|e1~14_combout\ : std_logic;
SIGNAL \sorter|e0[2]~14_combout\ : std_logic;
SIGNAL \sorter|e0[1]~15_combout\ : std_logic;
SIGNAL \sorter|d0~0_combout\ : std_logic;
SIGNAL \sorter|d1[0]~16_combout\ : std_logic;
SIGNAL \sorter|LessThan18~1_cout\ : std_logic;
SIGNAL \sorter|LessThan18~3_cout\ : std_logic;
SIGNAL \sorter|LessThan18~5_cout\ : std_logic;
SIGNAL \sorter|LessThan18~7_cout\ : std_logic;
SIGNAL \sorter|LessThan18~9_cout\ : std_logic;
SIGNAL \sorter|LessThan18~11_cout\ : std_logic;
SIGNAL \sorter|LessThan18~13_cout\ : std_logic;
SIGNAL \sorter|LessThan18~14_combout\ : std_logic;
SIGNAL \sorter|m0~3_combout\ : std_logic;
SIGNAL \sorter|m3~4_combout\ : std_logic;
SIGNAL \sorter|m3~12_combout\ : std_logic;
SIGNAL \sorter|e1~13_combout\ : std_logic;
SIGNAL \sorter|e0[3]~13_combout\ : std_logic;
SIGNAL \sorter|m0~5_combout\ : std_logic;
SIGNAL \sorter|m4~6_combout\ : std_logic;
SIGNAL \sorter|m2~6_combout\ : std_logic;
SIGNAL \sorter|m3~14_combout\ : std_logic;
SIGNAL \sorter|b2[1]~7_combout\ : std_logic;
SIGNAL \sorter|f0~7_combout\ : std_logic;
SIGNAL \sorter|f1[1]~23_combout\ : std_logic;
SIGNAL \sorter|m4~7_combout\ : std_logic;
SIGNAL \sorter|m2~7_combout\ : std_logic;
SIGNAL \sorter|m3~15_combout\ : std_logic;
SIGNAL \sorter|e0[0]~8_combout\ : std_logic;
SIGNAL \sorter|m0~0_combout\ : std_logic;
SIGNAL \sorter|LessThan23~1_cout\ : std_logic;
SIGNAL \sorter|LessThan23~3_cout\ : std_logic;
SIGNAL \sorter|LessThan23~5_cout\ : std_logic;
SIGNAL \sorter|LessThan23~7_cout\ : std_logic;
SIGNAL \sorter|LessThan23~9_cout\ : std_logic;
SIGNAL \sorter|LessThan23~11_cout\ : std_logic;
SIGNAL \sorter|LessThan23~13_cout\ : std_logic;
SIGNAL \sorter|LessThan23~14_combout\ : std_logic;
SIGNAL \sorter|m0~8_combout\ : std_logic;
SIGNAL \sorter|m2~8_combout\ : std_logic;
SIGNAL \sorter|m3~1_combout\ : std_logic;
SIGNAL \sorter|m2~9_combout\ : std_logic;
SIGNAL \sorter|m0~1_combout\ : std_logic;
SIGNAL \sorter|m0~9_combout\ : std_logic;
SIGNAL \sorter|m2~10_combout\ : std_logic;
SIGNAL \sorter|m2~11_combout\ : std_logic;
SIGNAL \sorter|d1[4]~20_combout\ : std_logic;
SIGNAL \sorter|m0~4_combout\ : std_logic;
SIGNAL \sorter|m0~12_combout\ : std_logic;
SIGNAL \sorter|m2~5_combout\ : std_logic;
SIGNAL \sorter|m2~13_combout\ : std_logic;
SIGNAL \sorter|d1[2]~22_combout\ : std_logic;
SIGNAL \sorter|m0~6_combout\ : std_logic;
SIGNAL \sorter|m0~14_combout\ : std_logic;
SIGNAL \sorter|m2~15_combout\ : std_logic;
SIGNAL \sorter|LessThan24~1_cout\ : std_logic;
SIGNAL \sorter|LessThan24~3_cout\ : std_logic;
SIGNAL \sorter|LessThan24~5_cout\ : std_logic;
SIGNAL \sorter|LessThan24~7_cout\ : std_logic;
SIGNAL \sorter|LessThan24~9_cout\ : std_logic;
SIGNAL \sorter|LessThan24~11_cout\ : std_logic;
SIGNAL \sorter|LessThan24~13_cout\ : std_logic;
SIGNAL \sorter|LessThan24~14_combout\ : std_logic;
SIGNAL \sorter|m2~16_combout\ : std_logic;
SIGNAL \sorter|m3~16_combout\ : std_logic;
SIGNAL \sorter|m1~0_combout\ : std_logic;
SIGNAL \sorter|m4~8_combout\ : std_logic;
SIGNAL \sorter|d1[7]~17_combout\ : std_logic;
SIGNAL \sorter|m1~1_combout\ : std_logic;
SIGNAL \sorter|m4~9_combout\ : std_logic;
SIGNAL \sorter|m4~10_combout\ : std_logic;
SIGNAL \sorter|d1[5]~19_combout\ : std_logic;
SIGNAL \sorter|m1~3_combout\ : std_logic;
SIGNAL \sorter|m4~12_combout\ : std_logic;
SIGNAL \sorter|e1[3]~21_combout\ : std_logic;
SIGNAL \sorter|m4~13_combout\ : std_logic;
SIGNAL \sorter|m1~6_combout\ : std_logic;
SIGNAL \sorter|m1~7_combout\ : std_logic;
SIGNAL \sorter|LessThan22~1_cout\ : std_logic;
SIGNAL \sorter|LessThan22~3_cout\ : std_logic;
SIGNAL \sorter|LessThan22~5_cout\ : std_logic;
SIGNAL \sorter|LessThan22~7_cout\ : std_logic;
SIGNAL \sorter|LessThan22~9_cout\ : std_logic;
SIGNAL \sorter|LessThan22~11_cout\ : std_logic;
SIGNAL \sorter|LessThan22~13_cout\ : std_logic;
SIGNAL \sorter|LessThan22~14_combout\ : std_logic;
SIGNAL \sorter|m1~8_combout\ : std_logic;
SIGNAL \sorter|m1~9_combout\ : std_logic;
SIGNAL \sorter|m3~17_combout\ : std_logic;
SIGNAL \sorter|d1[6]~18_combout\ : std_logic;
SIGNAL \sorter|m1~2_combout\ : std_logic;
SIGNAL \sorter|m1~10_combout\ : std_logic;
SIGNAL \sorter|e2[5]~3_combout\ : std_logic;
SIGNAL \sorter|m4~3_combout\ : std_logic;
SIGNAL \sorter|m4~11_combout\ : std_logic;
SIGNAL \sorter|m1~11_combout\ : std_logic;
SIGNAL \sorter|m1~4_combout\ : std_logic;
SIGNAL \sorter|m1~12_combout\ : std_logic;
SIGNAL \sorter|m3~13_combout\ : std_logic;
SIGNAL \sorter|m3~21_combout\ : std_logic;
SIGNAL \sorter|m3~22_combout\ : std_logic;
SIGNAL \sorter|m1~15_combout\ : std_logic;
SIGNAL \sorter|LessThan25~1_cout\ : std_logic;
SIGNAL \sorter|LessThan25~3_cout\ : std_logic;
SIGNAL \sorter|LessThan25~5_cout\ : std_logic;
SIGNAL \sorter|LessThan25~7_cout\ : std_logic;
SIGNAL \sorter|LessThan25~9_cout\ : std_logic;
SIGNAL \sorter|LessThan25~11_cout\ : std_logic;
SIGNAL \sorter|LessThan25~13_cout\ : std_logic;
SIGNAL \sorter|LessThan25~14_combout\ : std_logic;
SIGNAL \sorter|m1~16_combout\ : std_logic;
SIGNAL \sorter|m1~17_combout\ : std_logic;
SIGNAL \sorter|m0~2_combout\ : std_logic;
SIGNAL \sorter|m0~10_combout\ : std_logic;
SIGNAL \sorter|m2~18_combout\ : std_logic;
SIGNAL \sorter|m3~11_combout\ : std_logic;
SIGNAL \sorter|m3~19_combout\ : std_logic;
SIGNAL \sorter|m1~19_combout\ : std_logic;
SIGNAL \sorter|m1~20_combout\ : std_logic;
SIGNAL \sorter|m2~21_combout\ : std_logic;
SIGNAL \sorter|m1~22_combout\ : std_logic;
SIGNAL \sorter|m2~23_combout\ : std_logic;
SIGNAL \sorter|LessThan26~1_cout\ : std_logic;
SIGNAL \sorter|LessThan26~3_cout\ : std_logic;
SIGNAL \sorter|LessThan26~5_cout\ : std_logic;
SIGNAL \sorter|LessThan26~7_cout\ : std_logic;
SIGNAL \sorter|LessThan26~9_cout\ : std_logic;
SIGNAL \sorter|LessThan26~11_cout\ : std_logic;
SIGNAL \sorter|LessThan26~13_cout\ : std_logic;
SIGNAL \sorter|LessThan26~14_combout\ : std_logic;
SIGNAL \pixel_out~0_combout\ : std_logic;
SIGNAL \pixel_out~1_combout\ : std_logic;
SIGNAL \pixel_out[0]~reg0_q\ : std_logic;
SIGNAL \sorter|m0~7_combout\ : std_logic;
SIGNAL \sorter|m3~23_combout\ : std_logic;
SIGNAL \sorter|m1~23_combout\ : std_logic;
SIGNAL \pixel_out~2_combout\ : std_logic;
SIGNAL \pixel_out[1]~reg0_q\ : std_logic;
SIGNAL \sorter|m2~22_combout\ : std_logic;
SIGNAL \pixel_out~3_combout\ : std_logic;
SIGNAL \pixel_out[2]~reg0_q\ : std_logic;
SIGNAL \sorter|m1~21_combout\ : std_logic;
SIGNAL \pixel_out~4_combout\ : std_logic;
SIGNAL \pixel_out[3]~reg0_q\ : std_logic;
SIGNAL \sorter|m2~20_combout\ : std_logic;
SIGNAL \pixel_out~5_combout\ : std_logic;
SIGNAL \pixel_out[4]~reg0_q\ : std_logic;
SIGNAL \sorter|m0~11_combout\ : std_logic;
SIGNAL \sorter|m2~19_combout\ : std_logic;
SIGNAL \pixel_out~6_combout\ : std_logic;
SIGNAL \pixel_out[5]~reg0_q\ : std_logic;
SIGNAL \pixel_out~7_combout\ : std_logic;
SIGNAL \pixel_out[6]~reg0_q\ : std_logic;
SIGNAL \pixel_out~8_combout\ : std_logic;
SIGNAL \pixel_out[7]~reg0_q\ : std_logic;
SIGNAL x_rd : std_logic_vector(9 DOWNTO 0);
SIGNAL w02 : std_logic_vector(7 DOWNTO 0);
SIGNAL p1 : std_logic_vector(7 DOWNTO 0);
SIGNAL w22 : std_logic_vector(7 DOWNTO 0);
SIGNAL w01 : std_logic_vector(7 DOWNTO 0);
SIGNAL y_rd : std_logic_vector(9 DOWNTO 0);
SIGNAL line1_rtl_1_bypass : std_logic_vector(0 TO 26);
SIGNAL p0 : std_logic_vector(7 DOWNTO 0);
SIGNAL p5 : std_logic_vector(7 DOWNTO 0);
SIGNAL w21 : std_logic_vector(7 DOWNTO 0);
SIGNAL w20 : std_logic_vector(7 DOWNTO 0);
SIGNAL p2 : std_logic_vector(7 DOWNTO 0);
SIGNAL p7 : std_logic_vector(7 DOWNTO 0);
SIGNAL line1_rtl_0_bypass : std_logic_vector(0 TO 26);
SIGNAL w11 : std_logic_vector(7 DOWNTO 0);
SIGNAL p6 : std_logic_vector(7 DOWNTO 0);
SIGNAL line0_rtl_0_bypass : std_logic_vector(0 TO 26);
SIGNAL p3 : std_logic_vector(7 DOWNTO 0);
SIGNAL w00 : std_logic_vector(7 DOWNTO 0);
SIGNAL p4 : std_logic_vector(7 DOWNTO 0);
SIGNAL x_wr : std_logic_vector(9 DOWNTO 0);
SIGNAL w12 : std_logic_vector(7 DOWNTO 0);
SIGNAL p8 : std_logic_vector(7 DOWNTO 0);
SIGNAL y_wr : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_pixel_valid~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_pixel_valid <= pixel_valid;
ww_pixel_in <= pixel_in;
pixel_out_valid <= ww_pixel_out_valid;
pixel_out <= ww_pixel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \pixel_in[7]~input_o\ & \pixel_in[6]~input_o\ & \pixel_in[5]~input_o\ & \pixel_in[4]~input_o\ & \pixel_in[3]~input_o\ & \pixel_in[2]~input_o\ & \pixel_in[1]~input_o\ & 
\pixel_in[0]~input_o\ & \line1~21_combout\ & \line1~22_combout\ & \line1~23_combout\ & \line1~24_combout\ & \line1~25_combout\ & \line1~26_combout\ & \line1~27_combout\ & \line1~20_combout\);

\line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (x_wr(8) & x_wr(7) & x_wr(6) & x_wr(5) & x_wr(4) & x_wr(3) & x_wr(2) & x_wr(1) & x_wr(0));

\line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\x_rd~15_combout\ & \x_rd~13_combout\ & \x_rd~3_combout\ & \x_rd~11_combout\ & \x_rd~2_combout\ & \x_rd~9_combout\ & \x_rd~7_combout\ & \x_rd~1_combout\ & \x_rd~5_combout\);

\line0_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\line0_rtl_0|auto_generated|ram_block1a1\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\line0_rtl_0|auto_generated|ram_block1a2\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\line0_rtl_0|auto_generated|ram_block1a3\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\line0_rtl_0|auto_generated|ram_block1a4\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\line0_rtl_0|auto_generated|ram_block1a5\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\line0_rtl_0|auto_generated|ram_block1a6\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\line0_rtl_0|auto_generated|ram_block1a7\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\line1_rtl_1|auto_generated|ram_block1a0\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\line1_rtl_1|auto_generated|ram_block1a1\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\line1_rtl_1|auto_generated|ram_block1a2\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\line1_rtl_1|auto_generated|ram_block1a3\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\line1_rtl_1|auto_generated|ram_block1a4\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\line1_rtl_1|auto_generated|ram_block1a5\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\line1_rtl_1|auto_generated|ram_block1a6\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\line1_rtl_1|auto_generated|ram_block1a7\ <= \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \pixel_in[7]~input_o\ & \pixel_in[6]~input_o\ & \pixel_in[5]~input_o\ & \pixel_in[4]~input_o\ & \pixel_in[3]~input_o\ & 
\pixel_in[2]~input_o\ & \pixel_in[1]~input_o\ & \pixel_in[0]~input_o\);

\line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (x_wr(8) & x_wr(7) & x_wr(6) & x_wr(5) & x_wr(4) & x_wr(3) & x_wr(2) & x_wr(1) & x_wr(0));

\line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\x_wr~15_combout\ & \x_wr~13_combout\ & \x_wr~6_combout\ & \x_wr~11_combout\ & \x_wr~5_combout\ & \x_wr~9_combout\ & \x_wr~2_combout\ & \x_wr~4_combout\ & \x_wr~16_combout\);

\line1_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\line1_rtl_0|auto_generated|ram_block1a1\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\line1_rtl_0|auto_generated|ram_block1a2\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\line1_rtl_0|auto_generated|ram_block1a3\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\line1_rtl_0|auto_generated|ram_block1a4\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\line1_rtl_0|auto_generated|ram_block1a5\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\line1_rtl_0|auto_generated|ram_block1a6\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\line1_rtl_0|auto_generated|ram_block1a7\ <= \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pixel_valid~input_o\ <= NOT \pixel_valid~input_o\;

-- Location: FF_X83_Y54_N5
\x_rd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_rd~4_combout\,
	sclr => \ALT_INV_pixel_valid~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(9));

-- Location: FF_X79_Y55_N17
\p2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[4]~4_combout\,
	asdata => \p1~4_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(4));

-- Location: FF_X76_Y52_N31
\p6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[4]~4_combout\,
	asdata => \p7~4_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(4));

-- Location: FF_X80_Y54_N23
\y_wr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[9]~31_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(9));

-- Location: FF_X81_Y52_N29
\x_wr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	sclr => \rst~input_o\,
	ena => \x_wr[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(9));

-- Location: LCCOMB_X82_Y54_N16
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (x_rd(3) & (!\Add3~5\)) # (!x_rd(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!x_rd(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X82_Y54_N22
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (x_rd(6) & (\Add3~11\ $ (GND))) # (!x_rd(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((x_rd(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X82_Y54_N26
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (x_rd(8) & (\Add3~15\ $ (GND))) # (!x_rd(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((x_rd(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X82_Y54_N28
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add3~17\ $ (x_rd(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_rd(9),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X79_Y55_N16
\p2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[4]~4_combout\ = (\Equal2~1_combout\ & ((w12(4)))) # (!\Equal2~1_combout\ & (w02(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => w02(4),
	datad => w12(4),
	combout => \p2[4]~4_combout\);

-- Location: LCCOMB_X76_Y52_N30
\p6[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[4]~4_combout\ = (\Equal3~1_combout\ & (p4(4))) # (!\Equal3~1_combout\ & ((w20(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(4),
	datab => w20(4),
	datad => \Equal3~1_combout\,
	combout => \p6[4]~4_combout\);

-- Location: LCCOMB_X80_Y54_N20
\y_wr[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[8]~29_combout\ = (y_wr(8) & (\y_wr[7]~28\ $ (GND))) # (!y_wr(8) & (!\y_wr[7]~28\ & VCC))
-- \y_wr[8]~30\ = CARRY((y_wr(8) & !\y_wr[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_wr(8),
	datad => VCC,
	cin => \y_wr[7]~28\,
	combout => \y_wr[8]~29_combout\,
	cout => \y_wr[8]~30\);

-- Location: LCCOMB_X80_Y54_N22
\y_wr[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[9]~31_combout\ = y_wr(9) $ (\y_wr[8]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(9),
	cin => \y_wr[8]~30\,
	combout => \y_wr[9]~31_combout\);

-- Location: LCCOMB_X81_Y52_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = x_wr(0) $ (VCC)
-- \Add1~1\ = CARRY(x_wr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X81_Y52_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (x_wr(1) & (!\Add1~1\)) # (!x_wr(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!x_wr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_wr(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X81_Y52_N26
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (x_wr(8) & (\Add1~15\ $ (GND))) # (!x_wr(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((x_wr(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_wr(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X81_Y52_N28
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (x_wr(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x_wr(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: M9K_X78_Y53_N0
\line0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line0_rtl_0|altsyncram_0tg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 430,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 430,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~14_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line0_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \line0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \line0_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line0_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y52_N0
\line1_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:line1_rtl_0|altsyncram_0tg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 430,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 430,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \line0~14_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \line1_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \line1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \line1_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \line1_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X82_Y54_N2
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!x_rd(9) & (!x_rd(6) & (!x_rd(1) & !x_rd(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(9),
	datab => x_rd(6),
	datac => x_rd(1),
	datad => x_rd(4),
	combout => \Equal4~0_combout\);

-- Location: FF_X77_Y54_N31
\p3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p3~7_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(1));

-- Location: LCCOMB_X76_Y54_N26
\sorter|b1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~6_combout\ = (\sorter|LessThan3~14_combout\ & ((p3(2)))) # (!\sorter|LessThan3~14_combout\ & (p4(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan3~14_combout\,
	datab => p4(2),
	datad => p3(2),
	combout => \sorter|b1~6_combout\);

-- Location: LCCOMB_X77_Y54_N12
\sorter|b0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~2_combout\ = (\sorter|LessThan3~14_combout\ & ((p4(6)))) # (!\sorter|LessThan3~14_combout\ & (p3(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(6),
	datab => p4(6),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~2_combout\);

-- Location: LCCOMB_X73_Y56_N30
\sorter|a0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~3_combout\ = (\sorter|LessThan0~14_combout\ & (p1(5))) # (!\sorter|LessThan0~14_combout\ & ((p0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p1(5),
	datac => p0(5),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~3_combout\);

-- Location: LCCOMB_X72_Y54_N6
\sorter|a0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~5_combout\ = (\sorter|LessThan0~14_combout\ & (p1(3))) # (!\sorter|LessThan0~14_combout\ & ((p0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p1(3),
	datac => \sorter|LessThan0~14_combout\,
	datad => p0(3),
	combout => \sorter|a0~5_combout\);

-- Location: LCCOMB_X73_Y55_N10
\sorter|a1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~14_combout\ = (\sorter|LessThan1~14_combout\ & ((p2(2)))) # (!\sorter|LessThan1~14_combout\ & (\sorter|a1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~6_combout\,
	datac => \sorter|LessThan1~14_combout\,
	datad => p2(2),
	combout => \sorter|a1~14_combout\);

-- Location: LCCOMB_X73_Y56_N6
\sorter|a0[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[5]~11_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~11_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~3_combout\,
	datac => \sorter|a1~11_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a0[5]~11_combout\);

-- Location: LCCOMB_X76_Y56_N30
\sorter|b0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[1]~15_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~15_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~7_combout\,
	datac => \sorter|LessThan5~14_combout\,
	datad => \sorter|b1~15_combout\,
	combout => \sorter|b0[1]~15_combout\);

-- Location: FF_X75_Y52_N7
\p7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~3_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(5));

-- Location: LCCOMB_X74_Y52_N20
\sorter|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~0_combout\ = (\sorter|LessThan6~14_combout\ & ((p6(0)))) # (!\sorter|LessThan6~14_combout\ & (p7(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p7(0),
	datac => p6(0),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c1~0_combout\);

-- Location: LCCOMB_X70_Y52_N20
\sorter|c1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~8_combout\ = (\sorter|LessThan7~14_combout\ & (p8(0))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(0),
	datac => \sorter|c1~0_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~8_combout\);

-- Location: LCCOMB_X75_Y52_N28
\sorter|c0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~2_combout\ = (\sorter|LessThan6~14_combout\ & ((p7(6)))) # (!\sorter|LessThan6~14_combout\ & (p6(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p6(6),
	datab => p7(6),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c0~2_combout\);

-- Location: LCCOMB_X75_Y52_N8
\sorter|c0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~3_combout\ = (\sorter|LessThan6~14_combout\ & (p7(5))) # (!\sorter|LessThan6~14_combout\ & ((p6(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p7(5),
	datab => p6(5),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c0~3_combout\);

-- Location: LCCOMB_X73_Y56_N10
\sorter|c0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[0]~8_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~8_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~0_combout\,
	datac => \sorter|c1~8_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[0]~8_combout\);

-- Location: LCCOMB_X73_Y52_N30
\sorter|c0[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[6]~10_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~10_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~2_combout\,
	datac => \sorter|c1~10_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[6]~10_combout\);

-- Location: LCCOMB_X74_Y56_N6
\sorter|d1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~3_combout\ = (\sorter|LessThan9~14_combout\ & (\sorter|a0[5]~11_combout\)) # (!\sorter|LessThan9~14_combout\ & ((\sorter|b0[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[5]~11_combout\,
	datac => \sorter|b0[5]~11_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~3_combout\);

-- Location: LCCOMB_X73_Y56_N2
\sorter|d1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~4_combout\ = (\sorter|LessThan9~14_combout\ & (\sorter|a0[4]~12_combout\)) # (!\sorter|LessThan9~14_combout\ & ((\sorter|b0[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[4]~12_combout\,
	datac => \sorter|b0[4]~12_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~4_combout\);

-- Location: LCCOMB_X75_Y56_N4
\sorter|d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~2_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[6]~10_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan9~14_combout\,
	datac => \sorter|a0[6]~10_combout\,
	datad => \sorter|b0[6]~10_combout\,
	combout => \sorter|d0~2_combout\);

-- Location: LCCOMB_X74_Y56_N14
\sorter|d1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~11_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[5]~11_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0[5]~11_combout\,
	datac => \sorter|LessThan10~14_combout\,
	datad => \sorter|d1~3_combout\,
	combout => \sorter|d1~11_combout\);

-- Location: LCCOMB_X73_Y56_N28
\sorter|d1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~12_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[4]~12_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[4]~12_combout\,
	datac => \sorter|LessThan10~14_combout\,
	datad => \sorter|d1~4_combout\,
	combout => \sorter|d1~12_combout\);

-- Location: LCCOMB_X75_Y56_N26
\sorter|d0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~6_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[2]~14_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[2]~14_combout\,
	datac => \sorter|LessThan9~14_combout\,
	datad => \sorter|b0[2]~14_combout\,
	combout => \sorter|d0~6_combout\);

-- Location: LCCOMB_X76_Y56_N26
\sorter|d0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~7_combout\ = (\sorter|LessThan9~14_combout\ & (\sorter|b0[1]~15_combout\)) # (!\sorter|LessThan9~14_combout\ & ((\sorter|a0[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0[1]~15_combout\,
	datab => \sorter|a0[1]~15_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~7_combout\);

-- Location: LCCOMB_X70_Y52_N12
\sorter|c1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[0]~16_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c0~0_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~8_combout\,
	datac => \sorter|c0~0_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[0]~16_combout\);

-- Location: LCCOMB_X75_Y54_N6
\sorter|b1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[4]~20_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~4_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~4_combout\,
	datac => \sorter|b1~12_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[4]~20_combout\);

-- Location: LCCOMB_X75_Y54_N4
\sorter|b1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[2]~22_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b0~6_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~14_combout\,
	datac => \sorter|b0~6_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[2]~22_combout\);

-- Location: LCCOMB_X72_Y55_N6
\sorter|c1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[1]~23_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c0~7_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~7_combout\,
	datac => \sorter|c1~15_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[1]~23_combout\);

-- Location: LCCOMB_X69_Y56_N26
\sorter|d1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[1]~23_combout\ = (\sorter|LessThan11~14_combout\ & ((\sorter|d0~7_combout\))) # (!\sorter|LessThan11~14_combout\ & (\sorter|d1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~15_combout\,
	datac => \sorter|d0~7_combout\,
	datad => \sorter|LessThan11~14_combout\,
	combout => \sorter|d1[1]~23_combout\);

-- Location: LCCOMB_X73_Y53_N12
\sorter|b2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[3]~5_combout\ = (\sorter|LessThan4~14_combout\ & ((\sorter|b1~5_combout\))) # (!\sorter|LessThan4~14_combout\ & (p5(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p5(3),
	datac => \sorter|b1~5_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[3]~5_combout\);

-- Location: LCCOMB_X76_Y56_N28
\sorter|b2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[2]~6_combout\ = (\sorter|LessThan4~14_combout\ & (\sorter|b1~6_combout\)) # (!\sorter|LessThan4~14_combout\ & ((p5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~6_combout\,
	datac => p5(2),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[2]~6_combout\);

-- Location: LCCOMB_X74_Y52_N24
\sorter|c2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[0]~0_combout\ = (\sorter|LessThan7~14_combout\ & (\sorter|c1~0_combout\)) # (!\sorter|LessThan7~14_combout\ & ((p8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~0_combout\,
	datac => p8(0),
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[0]~0_combout\);

-- Location: LCCOMB_X75_Y53_N10
\sorter|f1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~3_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[5]~3_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[5]~3_combout\,
	datac => \sorter|a2[5]~3_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~3_combout\);

-- Location: LCCOMB_X70_Y52_N0
\sorter|c2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[1]~7_combout\ = (\sorter|LessThan7~14_combout\ & (\sorter|c1~7_combout\)) # (!\sorter|LessThan7~14_combout\ & ((p8(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~7_combout\,
	datac => p8(1),
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[1]~7_combout\);

-- Location: LCCOMB_X75_Y53_N4
\sorter|f1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~11_combout\ = (\sorter|LessThan16~14_combout\ & ((\sorter|c2[5]~3_combout\))) # (!\sorter|LessThan16~14_combout\ & (\sorter|f1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~3_combout\,
	datab => \sorter|c2[5]~3_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~11_combout\);

-- Location: LCCOMB_X76_Y56_N2
\sorter|f0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~6_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[2]~6_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[2]~6_combout\,
	datac => \sorter|a2[2]~6_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f0~6_combout\);

-- Location: LCCOMB_X67_Y53_N26
\sorter|m3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~3_combout\ = (\sorter|LessThan19~14_combout\ & ((\sorter|e2[5]~3_combout\))) # (!\sorter|LessThan19~14_combout\ & (\sorter|f1[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[5]~19_combout\,
	datac => \sorter|LessThan19~14_combout\,
	datad => \sorter|e2[5]~3_combout\,
	combout => \sorter|m3~3_combout\);

-- Location: LCCOMB_X68_Y55_N10
\sorter|m1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~5_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|e0[3]~13_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|d1[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0[3]~13_combout\,
	datac => \sorter|d1[3]~21_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m1~5_combout\);

-- Location: LCCOMB_X69_Y55_N26
\sorter|m4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~14_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|e1[2]~22_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|m4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1[2]~22_combout\,
	datac => \sorter|m4~6_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m4~14_combout\);

-- Location: LCCOMB_X70_Y53_N2
\sorter|m4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~15_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|e1[1]~23_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|m4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[1]~23_combout\,
	datac => \sorter|m4~7_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m4~15_combout\);

-- Location: LCCOMB_X67_Y55_N26
\sorter|m3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~18_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~2_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~2_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~10_combout\,
	combout => \sorter|m3~18_combout\);

-- Location: LCCOMB_X67_Y54_N26
\sorter|m3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~20_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~4_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~4_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~12_combout\,
	combout => \sorter|m3~20_combout\);

-- Location: LCCOMB_X68_Y55_N4
\sorter|m1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~13_combout\ = (\sorter|LessThan22~14_combout\ & ((\sorter|m4~13_combout\))) # (!\sorter|LessThan22~14_combout\ & (\sorter|m1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~5_combout\,
	datac => \sorter|m4~13_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~13_combout\);

-- Location: LCCOMB_X69_Y55_N24
\sorter|m1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~14_combout\ = (\sorter|LessThan22~14_combout\ & ((\sorter|m4~14_combout\))) # (!\sorter|LessThan22~14_combout\ & (\sorter|m1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~6_combout\,
	datac => \sorter|m4~14_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~14_combout\);

-- Location: LCCOMB_X67_Y53_N20
\sorter|m2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~12_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m3~4_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~4_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m3~4_combout\,
	combout => \sorter|m2~12_combout\);

-- Location: LCCOMB_X67_Y54_N20
\sorter|m0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~13_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~13_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~5_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~13_combout\,
	combout => \sorter|m0~13_combout\);

-- Location: LCCOMB_X65_Y53_N16
\sorter|m2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~14_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~6_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~6_combout\,
	datac => \sorter|m2~6_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m2~14_combout\);

-- Location: LCCOMB_X67_Y54_N22
\sorter|m0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~15_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~15_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~7_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~15_combout\,
	combout => \sorter|m0~15_combout\);

-- Location: LCCOMB_X66_Y53_N22
\sorter|m2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~17_combout\ = (\sorter|LessThan24~14_combout\ & ((\sorter|m0~9_combout\))) # (!\sorter|LessThan24~14_combout\ & (\sorter|m2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m2~9_combout\,
	datac => \sorter|m0~9_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~17_combout\);

-- Location: LCCOMB_X67_Y55_N30
\sorter|m1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~18_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~18_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~10_combout\,
	datac => \sorter|m3~18_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~18_combout\);

-- Location: LCCOMB_X81_Y54_N26
\pixel_out_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out_valid~1_combout\ = (!\y_rd[9]~10_combout\) # (!\Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => \y_rd[9]~10_combout\,
	combout => \pixel_out_valid~1_combout\);

-- Location: LCCOMB_X83_Y54_N4
\x_rd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~4_combout\ = (!\rst~input_o\ & \Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add3~18_combout\,
	combout => \x_rd~4_combout\);

-- Location: LCCOMB_X77_Y55_N18
\p3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~7_combout\ = (\Equal4~2_combout\ & ((w11(1)))) # (!\Equal4~2_combout\ & (p4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => p4(1),
	datad => w11(1),
	combout => \p3~7_combout\);

-- Location: FF_X76_Y55_N27
\w00[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[7]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(7));

-- Location: FF_X76_Y55_N31
\w00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[3]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(3));

-- Location: FF_X77_Y55_N3
\w01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w01[2]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(2));

-- Location: FF_X76_Y55_N23
\w00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[2]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(2));

-- Location: FF_X79_Y55_N21
\w00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[1]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(1));

-- Location: FF_X77_Y55_N17
\w02[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~12_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(2));

-- Location: LCCOMB_X81_Y55_N2
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (y_rd(0) & (y_rd(5) & (y_rd(9) & y_rd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(0),
	datab => y_rd(5),
	datac => y_rd(9),
	datad => y_rd(3),
	combout => \Equal3~0_combout\);

-- Location: FF_X69_Y52_N9
\w20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(6));

-- Location: FF_X77_Y52_N7
\w21[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[4]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(4));

-- Location: FF_X76_Y52_N3
\w20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[4]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(4));

-- Location: FF_X77_Y55_N19
\w22[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[4]~input_o\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(4));

-- Location: LCCOMB_X80_Y54_N0
\y_wr[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[9]~20_combout\ = (y_wr(5) & ((y_wr(4)) # ((!\always1~0_combout\ & y_wr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(4),
	datab => \always1~0_combout\,
	datac => y_wr(5),
	datad => y_wr(3),
	combout => \y_wr[9]~20_combout\);

-- Location: LCCOMB_X80_Y54_N2
\y_wr[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[9]~21_combout\ = (y_wr(9) & ((\y_wr[9]~20_combout\) # (!\always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~3_combout\,
	datab => \y_wr[9]~20_combout\,
	datac => y_wr(9),
	combout => \y_wr[9]~21_combout\);

-- Location: LCCOMB_X80_Y52_N26
\x_wr[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr[9]~7_combout\ = (\rst~input_o\) # (\pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \pixel_valid~input_o\,
	combout => \x_wr[9]~7_combout\);

-- Location: LCCOMB_X80_Y52_N20
\x_wr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~10_combout\ = (!\pixel_valid~input_o\ & x_wr(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_valid~input_o\,
	datad => x_wr(5),
	combout => \x_wr~10_combout\);

-- Location: FF_X83_Y52_N5
\line1_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(1));

-- Location: FF_X82_Y52_N13
\line1_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(3));

-- Location: FF_X82_Y52_N11
\line1_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(4));

-- Location: FF_X82_Y52_N17
\line1_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_rd~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(2));

-- Location: LCCOMB_X82_Y52_N10
\line1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~0_combout\ = (line1_rtl_1_bypass(1) & (line1_rtl_1_bypass(2) & (line1_rtl_1_bypass(4) $ (!line1_rtl_1_bypass(3))))) # (!line1_rtl_1_bypass(1) & (!line1_rtl_1_bypass(2) & (line1_rtl_1_bypass(4) $ (!line1_rtl_1_bypass(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_1_bypass(1),
	datab => line1_rtl_1_bypass(2),
	datac => line1_rtl_1_bypass(4),
	datad => line1_rtl_1_bypass(3),
	combout => \line1~0_combout\);

-- Location: FF_X82_Y53_N13
\line1_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(5));

-- Location: FF_X82_Y53_N19
\line1_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(7));

-- Location: FF_X82_Y53_N5
\line1_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(8));

-- Location: FF_X82_Y53_N23
\line1_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(6));

-- Location: LCCOMB_X82_Y53_N4
\line1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~1_combout\ = (line1_rtl_1_bypass(6) & (line1_rtl_1_bypass(5) & (line1_rtl_1_bypass(7) $ (!line1_rtl_1_bypass(8))))) # (!line1_rtl_1_bypass(6) & (!line1_rtl_1_bypass(5) & (line1_rtl_1_bypass(7) $ (!line1_rtl_1_bypass(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_1_bypass(6),
	datab => line1_rtl_1_bypass(7),
	datac => line1_rtl_1_bypass(8),
	datad => line1_rtl_1_bypass(5),
	combout => \line1~1_combout\);

-- Location: FF_X80_Y53_N15
\line1_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(9));

-- Location: FF_X80_Y53_N25
\line1_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(11));

-- Location: FF_X81_Y53_N21
\line1_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(12));

-- Location: FF_X81_Y53_N19
\line1_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(10));

-- Location: LCCOMB_X81_Y53_N20
\line1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~2_combout\ = (line1_rtl_1_bypass(9) & (line1_rtl_1_bypass(10) & (line1_rtl_1_bypass(11) $ (!line1_rtl_1_bypass(12))))) # (!line1_rtl_1_bypass(9) & (!line1_rtl_1_bypass(10) & (line1_rtl_1_bypass(11) $ (!line1_rtl_1_bypass(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_1_bypass(9),
	datab => line1_rtl_1_bypass(11),
	datac => line1_rtl_1_bypass(12),
	datad => line1_rtl_1_bypass(10),
	combout => \line1~2_combout\);

-- Location: FF_X81_Y53_N17
\line1_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(13));

-- Location: FF_X81_Y53_N3
\line1_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(15));

-- Location: FF_X80_Y53_N3
\line1_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(16));

-- Location: FF_X81_Y53_N9
\line1_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(14));

-- Location: LCCOMB_X81_Y53_N8
\line1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~3_combout\ = (line1_rtl_1_bypass(16) & (line1_rtl_1_bypass(15) & (line1_rtl_1_bypass(13) $ (!line1_rtl_1_bypass(14))))) # (!line1_rtl_1_bypass(16) & (!line1_rtl_1_bypass(15) & (line1_rtl_1_bypass(13) $ (!line1_rtl_1_bypass(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_1_bypass(16),
	datab => line1_rtl_1_bypass(13),
	datac => line1_rtl_1_bypass(14),
	datad => line1_rtl_1_bypass(15),
	combout => \line1~3_combout\);

-- Location: LCCOMB_X81_Y53_N30
\line1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~4_combout\ = (\line1~0_combout\ & (\line1~2_combout\ & (\line1~3_combout\ & \line1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~0_combout\,
	datab => \line1~2_combout\,
	datac => \line1~3_combout\,
	datad => \line1~1_combout\,
	combout => \line1~4_combout\);

-- Location: FF_X69_Y52_N11
\line1_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(25));

-- Location: FF_X82_Y52_N21
\line0_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(2));

-- Location: FF_X81_Y53_N15
\line0_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(6));

-- Location: FF_X81_Y53_N13
\line0_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(9));

-- Location: FF_X80_Y53_N7
\line0_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(11));

-- Location: FF_X81_Y53_N23
\line0_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(12));

-- Location: FF_X81_Y53_N1
\line0_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(10));

-- Location: LCCOMB_X81_Y53_N12
\line0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~2_combout\ = (line0_rtl_0_bypass(12) & (line0_rtl_0_bypass(11) & (line0_rtl_0_bypass(9) $ (!line0_rtl_0_bypass(10))))) # (!line0_rtl_0_bypass(12) & (!line0_rtl_0_bypass(11) & (line0_rtl_0_bypass(9) $ (!line0_rtl_0_bypass(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(12),
	datab => line0_rtl_0_bypass(11),
	datac => line0_rtl_0_bypass(9),
	datad => line0_rtl_0_bypass(10),
	combout => \line0~2_combout\);

-- Location: FF_X81_Y53_N11
\line0_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(16));

-- Location: FF_X80_Y53_N13
\line0_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(17));

-- Location: FF_X77_Y55_N15
\line0_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(21));

-- Location: LCCOMB_X77_Y55_N16
\line0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~12_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(21)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0_rtl_0|auto_generated|ram_block1a2\,
	datac => line0_rtl_0_bypass(21),
	datad => \line0~5_combout\,
	combout => \line0~12_combout\);

-- Location: FF_X82_Y52_N23
\line1_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(3));

-- Location: FF_X79_Y52_N23
\line1_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(7));

-- Location: FF_X80_Y52_N25
\line1_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(9));

-- Location: FF_X79_Y52_N7
\line1_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(11));

-- Location: FF_X79_Y52_N31
\line1_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(12));

-- Location: FF_X79_Y52_N9
\line1_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(10));

-- Location: LCCOMB_X79_Y52_N30
\line1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~16_combout\ = (line1_rtl_0_bypass(11) & (line1_rtl_0_bypass(12) & (line1_rtl_0_bypass(10) $ (!line1_rtl_0_bypass(9))))) # (!line1_rtl_0_bypass(11) & (!line1_rtl_0_bypass(12) & (line1_rtl_0_bypass(10) $ (!line1_rtl_0_bypass(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(11),
	datab => line1_rtl_0_bypass(10),
	datac => line1_rtl_0_bypass(12),
	datad => line1_rtl_0_bypass(9),
	combout => \line1~16_combout\);

-- Location: FF_X80_Y52_N31
\line1_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(15));

-- Location: FF_X79_Y52_N13
\line1_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(18));

-- Location: LCCOMB_X82_Y53_N12
\line1_rtl_1_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[5]~feeder_combout\ = x_wr(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(2),
	combout => \line1_rtl_1_bypass[5]~feeder_combout\);

-- Location: LCCOMB_X80_Y53_N14
\line1_rtl_1_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[9]~feeder_combout\ = x_wr(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(4),
	combout => \line1_rtl_1_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X81_Y53_N16
\line1_rtl_1_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[13]~feeder_combout\ = x_wr(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(6),
	combout => \line1_rtl_1_bypass[13]~feeder_combout\);

-- Location: LCCOMB_X79_Y52_N22
\line1_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[7]~feeder_combout\ = x_wr(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(3),
	combout => \line1_rtl_0_bypass[7]~feeder_combout\);

-- Location: LCCOMB_X79_Y52_N6
\line1_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[11]~feeder_combout\ = x_wr(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(5),
	combout => \line1_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCCOMB_X81_Y53_N2
\line1_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[15]~feeder_combout\ = x_wr(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(7),
	combout => \line1_rtl_1_bypass[15]~feeder_combout\);

-- Location: LCCOMB_X80_Y53_N12
\line0_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[17]~feeder_combout\ = x_wr(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(8),
	combout => \line0_rtl_0_bypass[17]~feeder_combout\);

-- Location: LCCOMB_X81_Y53_N14
\line0_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[6]~feeder_combout\ = \x_rd~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_rd~7_combout\,
	combout => \line0_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X82_Y53_N22
\line1_rtl_1_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[6]~feeder_combout\ = \x_rd~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_rd~7_combout\,
	combout => \line1_rtl_1_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X81_Y53_N10
\line0_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[16]~feeder_combout\ = \x_rd~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_rd~13_combout\,
	combout => \line0_rtl_0_bypass[16]~feeder_combout\);

-- Location: LCCOMB_X76_Y55_N26
\w00[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[7]~feeder_combout\ = w01(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w01(7),
	combout => \w00[7]~feeder_combout\);

-- Location: LCCOMB_X76_Y55_N30
\w00[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[3]~feeder_combout\ = w01(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w01(3),
	combout => \w00[3]~feeder_combout\);

-- Location: LCCOMB_X76_Y55_N22
\w00[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[2]~feeder_combout\ = w01(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w01(2),
	combout => \w00[2]~feeder_combout\);

-- Location: LCCOMB_X79_Y55_N20
\w00[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[1]~feeder_combout\ = w01(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w01(1),
	combout => \w00[1]~feeder_combout\);

-- Location: LCCOMB_X77_Y55_N2
\w01[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w01[2]~feeder_combout\ = w02(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w02(2),
	combout => \w01[2]~feeder_combout\);

-- Location: LCCOMB_X69_Y52_N8
\w20[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[6]~feeder_combout\ = w21(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(6),
	combout => \w20[6]~feeder_combout\);

-- Location: LCCOMB_X76_Y52_N2
\w20[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[4]~feeder_combout\ = w21(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(4),
	combout => \w20[4]~feeder_combout\);

-- Location: LCCOMB_X77_Y52_N6
\w21[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[4]~feeder_combout\ = w22(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w22(4),
	combout => \w21[4]~feeder_combout\);

-- Location: LCCOMB_X79_Y52_N8
\line1_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[10]~feeder_combout\ = \x_wr~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_wr~5_combout\,
	combout => \line1_rtl_0_bypass[10]~feeder_combout\);

-- Location: LCCOMB_X77_Y55_N14
\line0_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[21]~feeder_combout\ = \line1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line1~26_combout\,
	combout => \line0_rtl_0_bypass[21]~feeder_combout\);

-- Location: LCCOMB_X69_Y52_N10
\line1_rtl_1_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[25]~feeder_combout\ = \pixel_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[6]~input_o\,
	combout => \line1_rtl_1_bypass[25]~feeder_combout\);

-- Location: IOOBUF_X115_Y54_N16
\pixel_out_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out_valid~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out_valid~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\pixel_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\pixel_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\pixel_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\pixel_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\pixel_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\pixel_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\pixel_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\pixel_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_out[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y73_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\pixel_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_valid,
	o => \pixel_valid~input_o\);

-- Location: LCCOMB_X80_Y52_N30
\x_wr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~12_combout\ = (x_wr(7) & !\pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_wr(7),
	datad => \pixel_valid~input_o\,
	combout => \x_wr~12_combout\);

-- Location: LCCOMB_X81_Y52_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (x_wr(2) & (\Add1~3\ $ (GND))) # (!x_wr(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((x_wr(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X81_Y52_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (x_wr(3) & (!\Add1~5\)) # (!x_wr(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!x_wr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X81_Y52_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (x_wr(4) & (\Add1~7\ $ (GND))) # (!x_wr(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((x_wr(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_wr(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X81_Y52_N8
\x_wr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~5_combout\ = (!\rst~input_o\ & ((\pixel_valid~input_o\ & ((\Add1~8_combout\))) # (!\pixel_valid~input_o\ & (x_wr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_valid~input_o\,
	datab => \rst~input_o\,
	datac => x_wr(4),
	datad => \Add1~8_combout\,
	combout => \x_wr~5_combout\);

-- Location: FF_X81_Y52_N9
\x_wr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_wr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(4));

-- Location: LCCOMB_X81_Y52_N20
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (x_wr(5) & (!\Add1~9\)) # (!x_wr(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!x_wr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_wr(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X81_Y52_N2
\x_wr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~11_combout\ = (!\rst~input_o\ & ((\x_wr~10_combout\) # ((\x_wr~1_combout\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_wr~10_combout\,
	datab => \rst~input_o\,
	datac => \x_wr~1_combout\,
	datad => \Add1~10_combout\,
	combout => \x_wr~11_combout\);

-- Location: FF_X81_Y52_N3
\x_wr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_wr~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(5));

-- Location: LCCOMB_X81_Y52_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (x_wr(6) & (\Add1~11\ $ (GND))) # (!x_wr(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((x_wr(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_wr(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X80_Y52_N22
\x_wr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~6_combout\ = (!\rst~input_o\ & ((\pixel_valid~input_o\ & (\Add1~12_combout\)) # (!\pixel_valid~input_o\ & ((x_wr(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_valid~input_o\,
	datab => \Add1~12_combout\,
	datac => x_wr(6),
	datad => \rst~input_o\,
	combout => \x_wr~6_combout\);

-- Location: FF_X80_Y52_N5
\x_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(6));

-- Location: LCCOMB_X81_Y52_N24
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (x_wr(7) & (!\Add1~13\)) # (!x_wr(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!x_wr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X80_Y52_N12
\x_wr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~13_combout\ = (!\rst~input_o\ & ((\x_wr~12_combout\) # ((\x_wr~1_combout\ & \Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_wr~1_combout\,
	datab => \x_wr~12_combout\,
	datac => \Add1~14_combout\,
	datad => \rst~input_o\,
	combout => \x_wr~13_combout\);

-- Location: FF_X80_Y52_N27
\x_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(7));

-- Location: LCCOMB_X80_Y52_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!x_wr(9) & (!x_wr(6) & (!x_wr(4) & !x_wr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(9),
	datab => x_wr(6),
	datac => x_wr(4),
	datad => x_wr(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X82_Y52_N8
\x_wr~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~16_combout\ = (!\rst~input_o\ & ((\pixel_valid~input_o\ & (\Add1~0_combout\)) # (!\pixel_valid~input_o\ & ((x_wr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \pixel_valid~input_o\,
	datac => \rst~input_o\,
	datad => x_wr(0),
	combout => \x_wr~16_combout\);

-- Location: LCCOMB_X82_Y52_N6
\x_wr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr[0]~feeder_combout\ = \x_wr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_wr~16_combout\,
	combout => \x_wr[0]~feeder_combout\);

-- Location: FF_X82_Y52_N7
\x_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_wr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(0));

-- Location: LCCOMB_X81_Y52_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (x_wr(3) & (x_wr(5) & (x_wr(2) & x_wr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(3),
	datab => x_wr(5),
	datac => x_wr(2),
	datad => x_wr(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X80_Y52_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (x_wr(8) & (x_wr(7) & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(8),
	datab => x_wr(7),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X80_Y52_N16
\x_wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~1_combout\ = (\pixel_valid~input_o\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_valid~input_o\,
	datad => \Equal0~2_combout\,
	combout => \x_wr~1_combout\);

-- Location: LCCOMB_X82_Y52_N20
\x_wr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~3_combout\ = (x_wr(1) & !\pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(1),
	datad => \pixel_valid~input_o\,
	combout => \x_wr~3_combout\);

-- Location: LCCOMB_X82_Y52_N30
\x_wr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~4_combout\ = (!\rst~input_o\ & ((\x_wr~3_combout\) # ((\Add1~2_combout\ & \x_wr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \x_wr~1_combout\,
	datac => \rst~input_o\,
	datad => \x_wr~3_combout\,
	combout => \x_wr~4_combout\);

-- Location: FF_X82_Y52_N31
\x_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_wr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(1));

-- Location: LCCOMB_X81_Y52_N6
\x_wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~0_combout\ = (x_wr(2) & !\pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(2),
	datac => \pixel_valid~input_o\,
	combout => \x_wr~0_combout\);

-- Location: LCCOMB_X81_Y52_N0
\x_wr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~2_combout\ = (!\rst~input_o\ & ((\x_wr~0_combout\) # ((\x_wr~1_combout\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_wr~1_combout\,
	datab => \rst~input_o\,
	datac => \Add1~4_combout\,
	datad => \x_wr~0_combout\,
	combout => \x_wr~2_combout\);

-- Location: FF_X79_Y52_N29
\x_wr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(2));

-- Location: LCCOMB_X80_Y54_N4
\y_wr[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[0]~10_combout\ = y_wr(0) $ (VCC)
-- \y_wr[0]~11\ = CARRY(y_wr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_wr(0),
	datad => VCC,
	combout => \y_wr[0]~10_combout\,
	cout => \y_wr[0]~11\);

-- Location: LCCOMB_X80_Y52_N18
\y_wr[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[9]~22_combout\ = (\rst~input_o\) # ((!\y_wr[9]~21_combout\ & (\pixel_valid~input_o\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_wr[9]~21_combout\,
	datab => \rst~input_o\,
	datac => \pixel_valid~input_o\,
	datad => \Equal0~2_combout\,
	combout => \y_wr[9]~22_combout\);

-- Location: FF_X80_Y54_N5
\y_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[0]~10_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(0));

-- Location: LCCOMB_X80_Y54_N6
\y_wr[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[1]~12_combout\ = (y_wr(1) & (!\y_wr[0]~11\)) # (!y_wr(1) & ((\y_wr[0]~11\) # (GND)))
-- \y_wr[1]~13\ = CARRY((!\y_wr[0]~11\) # (!y_wr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(1),
	datad => VCC,
	cin => \y_wr[0]~11\,
	combout => \y_wr[1]~12_combout\,
	cout => \y_wr[1]~13\);

-- Location: LCCOMB_X80_Y54_N8
\y_wr[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[2]~14_combout\ = (y_wr(2) & (\y_wr[1]~13\ $ (GND))) # (!y_wr(2) & (!\y_wr[1]~13\ & VCC))
-- \y_wr[2]~15\ = CARRY((y_wr(2) & !\y_wr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_wr(2),
	datad => VCC,
	cin => \y_wr[1]~13\,
	combout => \y_wr[2]~14_combout\,
	cout => \y_wr[2]~15\);

-- Location: FF_X80_Y54_N9
\y_wr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[2]~14_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(2));

-- Location: FF_X80_Y54_N7
\y_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[1]~12_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(1));

-- Location: LCCOMB_X80_Y54_N28
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (!y_wr(2) & (!y_wr(0) & !y_wr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_wr(2),
	datac => y_wr(0),
	datad => y_wr(1),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X80_Y53_N20
\always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = ((x_wr(2)) # (!\always1~0_combout\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => x_wr(2),
	datad => \always1~0_combout\,
	combout => \always1~1_combout\);

-- Location: LCCOMB_X80_Y54_N10
\y_wr[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[3]~16_combout\ = (y_wr(3) & (!\y_wr[2]~15\)) # (!y_wr(3) & ((\y_wr[2]~15\) # (GND)))
-- \y_wr[3]~17\ = CARRY((!\y_wr[2]~15\) # (!y_wr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(3),
	datad => VCC,
	cin => \y_wr[2]~15\,
	combout => \y_wr[3]~16_combout\,
	cout => \y_wr[3]~17\);

-- Location: LCCOMB_X80_Y54_N12
\y_wr[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[4]~18_combout\ = (y_wr(4) & (\y_wr[3]~17\ $ (GND))) # (!y_wr(4) & (!\y_wr[3]~17\ & VCC))
-- \y_wr[4]~19\ = CARRY((y_wr(4) & !\y_wr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(4),
	datad => VCC,
	cin => \y_wr[3]~17\,
	combout => \y_wr[4]~18_combout\,
	cout => \y_wr[4]~19\);

-- Location: LCCOMB_X80_Y54_N14
\y_wr[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[5]~23_combout\ = (y_wr(5) & (!\y_wr[4]~19\)) # (!y_wr(5) & ((\y_wr[4]~19\) # (GND)))
-- \y_wr[5]~24\ = CARRY((!\y_wr[4]~19\) # (!y_wr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_wr(5),
	datad => VCC,
	cin => \y_wr[4]~19\,
	combout => \y_wr[5]~23_combout\,
	cout => \y_wr[5]~24\);

-- Location: FF_X80_Y54_N15
\y_wr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[5]~23_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(5));

-- Location: LCCOMB_X80_Y54_N16
\y_wr[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[6]~25_combout\ = (y_wr(6) & (\y_wr[5]~24\ $ (GND))) # (!y_wr(6) & (!\y_wr[5]~24\ & VCC))
-- \y_wr[6]~26\ = CARRY((y_wr(6) & !\y_wr[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_wr(6),
	datad => VCC,
	cin => \y_wr[5]~24\,
	combout => \y_wr[6]~25_combout\,
	cout => \y_wr[6]~26\);

-- Location: FF_X80_Y54_N17
\y_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[6]~25_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(6));

-- Location: LCCOMB_X80_Y54_N18
\y_wr[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_wr[7]~27_combout\ = (y_wr(7) & (!\y_wr[6]~26\)) # (!y_wr(7) & ((\y_wr[6]~26\) # (GND)))
-- \y_wr[7]~28\ = CARRY((!\y_wr[6]~26\) # (!y_wr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_wr(7),
	datad => VCC,
	cin => \y_wr[6]~26\,
	combout => \y_wr[7]~27_combout\,
	cout => \y_wr[7]~28\);

-- Location: FF_X80_Y54_N19
\y_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[7]~27_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(7));

-- Location: FF_X80_Y54_N21
\y_wr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[8]~29_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(8));

-- Location: LCCOMB_X80_Y54_N30
\always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~3_combout\ = (!y_wr(7) & (!y_wr(8) & !y_wr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_wr(7),
	datac => y_wr(8),
	datad => y_wr(6),
	combout => \always1~3_combout\);

-- Location: FF_X80_Y54_N11
\y_wr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[3]~16_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(3));

-- Location: LCCOMB_X80_Y53_N18
\always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~2_combout\ = (x_wr(8)) # ((y_wr(3)) # ((x_wr(5)) # (x_wr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(8),
	datab => y_wr(3),
	datac => x_wr(5),
	datad => x_wr(7),
	combout => \always1~2_combout\);

-- Location: LCCOMB_X80_Y53_N0
\always1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~4_combout\ = (x_wr(3)) # ((\always1~1_combout\) # ((\always1~2_combout\) # (!\always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_wr(3),
	datab => \always1~1_combout\,
	datac => \always1~3_combout\,
	datad => \always1~2_combout\,
	combout => \always1~4_combout\);

-- Location: FF_X80_Y54_N13
\y_wr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_wr[4]~18_combout\,
	sclr => \rst~input_o\,
	ena => \y_wr[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_wr(4));

-- Location: LCCOMB_X80_Y54_N24
\always1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~5_combout\ = (y_wr(9)) # ((\always1~4_combout\) # ((y_wr(5)) # (y_wr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_wr(9),
	datab => \always1~4_combout\,
	datac => y_wr(5),
	datad => y_wr(4),
	combout => \always1~5_combout\);

-- Location: LCCOMB_X81_Y54_N30
\process_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_en~0_combout\ = (\process_en~q\ & (\pixel_out_valid~1_combout\)) # (!\process_en~q\ & ((\always1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_out_valid~1_combout\,
	datab => \always1~5_combout\,
	datac => \process_en~q\,
	combout => \process_en~0_combout\);

-- Location: FF_X81_Y54_N31
process_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_en~0_combout\,
	asdata => \process_en~q\,
	sclr => \rst~input_o\,
	sload => \ALT_INV_pixel_valid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_en~q\);

-- Location: LCCOMB_X80_Y52_N24
\pixel_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~9_combout\ = (\pixel_valid~input_o\ & \process_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_valid~input_o\,
	datad => \process_en~q\,
	combout => \pixel_out~9_combout\);

-- Location: LCCOMB_X82_Y54_N0
\x_rd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~3_combout\ = (!\rst~input_o\ & ((\pixel_out~9_combout\ & (\Add3~12_combout\)) # (!\pixel_out~9_combout\ & ((x_rd(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \rst~input_o\,
	datac => x_rd(6),
	datad => \pixel_out~9_combout\,
	combout => \x_rd~3_combout\);

-- Location: FF_X82_Y54_N1
\x_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_rd~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(6));

-- Location: LCCOMB_X81_Y54_N8
\x_rd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~8_combout\ = (\pixel_out~9_combout\ & (\Add3~6_combout\ & (!\Equal5~1_combout\))) # (!\pixel_out~9_combout\ & (((x_rd(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \pixel_out~9_combout\,
	datac => \Equal5~1_combout\,
	datad => x_rd(3),
	combout => \x_rd~8_combout\);

-- Location: LCCOMB_X81_Y54_N18
\x_rd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~9_combout\ = (\x_rd~8_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_rd~8_combout\,
	datac => \rst~input_o\,
	combout => \x_rd~9_combout\);

-- Location: FF_X82_Y54_N17
\x_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(3));

-- Location: LCCOMB_X82_Y54_N10
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = x_rd(0) $ (VCC)
-- \Add3~1\ = CARRY(x_rd(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_rd(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X82_Y52_N16
\x_rd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~5_combout\ = (!\rst~input_o\ & ((\pixel_out~9_combout\ & ((\Add3~0_combout\))) # (!\pixel_out~9_combout\ & (x_rd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(0),
	datab => \pixel_out~9_combout\,
	datac => \rst~input_o\,
	datad => \Add3~0_combout\,
	combout => \x_rd~5_combout\);

-- Location: FF_X82_Y52_N27
\x_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(0));

-- Location: LCCOMB_X82_Y54_N12
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (x_rd(1) & (!\Add3~1\)) # (!x_rd(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!x_rd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X82_Y52_N4
\x_rd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~0_combout\ = (\pixel_out~9_combout\ & (((!\Equal5~1_combout\ & \Add3~2_combout\)))) # (!\pixel_out~9_combout\ & (x_rd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(1),
	datab => \Equal5~1_combout\,
	datac => \Add3~2_combout\,
	datad => \pixel_out~9_combout\,
	combout => \x_rd~0_combout\);

-- Location: LCCOMB_X82_Y52_N26
\x_rd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~1_combout\ = (!\rst~input_o\ & \x_rd~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \x_rd~0_combout\,
	combout => \x_rd~1_combout\);

-- Location: FF_X82_Y52_N19
\x_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(1));

-- Location: LCCOMB_X82_Y54_N14
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (x_rd(2) & (\Add3~3\ $ (GND))) # (!x_rd(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((x_rd(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X81_Y54_N2
\x_rd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~6_combout\ = (\pixel_out~9_combout\ & (!\Equal5~1_combout\ & ((\Add3~4_combout\)))) # (!\pixel_out~9_combout\ & (((x_rd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => x_rd(2),
	datac => \Add3~4_combout\,
	datad => \pixel_out~9_combout\,
	combout => \x_rd~6_combout\);

-- Location: LCCOMB_X80_Y54_N26
\x_rd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~7_combout\ = (!\rst~input_o\ & \x_rd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \x_rd~6_combout\,
	combout => \x_rd~7_combout\);

-- Location: FF_X82_Y54_N15
\x_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(2));

-- Location: LCCOMB_X82_Y54_N18
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (x_rd(4) & (\Add3~7\ $ (GND))) # (!x_rd(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((x_rd(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X82_Y54_N30
\x_rd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~2_combout\ = (!\rst~input_o\ & ((\pixel_out~9_combout\ & ((\Add3~8_combout\))) # (!\pixel_out~9_combout\ & (x_rd(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_out~9_combout\,
	datab => x_rd(4),
	datac => \Add3~8_combout\,
	datad => \rst~input_o\,
	combout => \x_rd~2_combout\);

-- Location: FF_X82_Y54_N19
\x_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(4));

-- Location: LCCOMB_X82_Y54_N20
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (x_rd(5) & (!\Add3~9\)) # (!x_rd(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!x_rd(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X81_Y54_N12
\x_rd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~10_combout\ = (\pixel_out~9_combout\ & (!\Equal5~1_combout\ & (\Add3~10_combout\))) # (!\pixel_out~9_combout\ & (((x_rd(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \pixel_out~9_combout\,
	datac => \Add3~10_combout\,
	datad => x_rd(5),
	combout => \x_rd~10_combout\);

-- Location: LCCOMB_X81_Y54_N20
\x_rd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~11_combout\ = (!\rst~input_o\ & \x_rd~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \x_rd~10_combout\,
	combout => \x_rd~11_combout\);

-- Location: FF_X81_Y54_N21
\x_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_rd~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(5));

-- Location: LCCOMB_X82_Y54_N24
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (x_rd(7) & (!\Add3~13\)) # (!x_rd(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!x_rd(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_rd(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X81_Y54_N10
\x_rd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~12_combout\ = (\pixel_out~9_combout\ & (\Add3~14_combout\ & (!\Equal5~1_combout\))) # (!\pixel_out~9_combout\ & (((x_rd(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_out~9_combout\,
	datab => \Add3~14_combout\,
	datac => \Equal5~1_combout\,
	datad => x_rd(7),
	combout => \x_rd~12_combout\);

-- Location: LCCOMB_X81_Y54_N28
\x_rd~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~13_combout\ = (!\rst~input_o\ & \x_rd~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \x_rd~12_combout\,
	combout => \x_rd~13_combout\);

-- Location: FF_X82_Y54_N29
\x_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(7));

-- Location: LCCOMB_X81_Y54_N6
\x_rd~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~14_combout\ = (\pixel_out~9_combout\ & (((!\Equal5~1_combout\ & \Add3~16_combout\)))) # (!\pixel_out~9_combout\ & (x_rd(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(8),
	datab => \pixel_out~9_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add3~16_combout\,
	combout => \x_rd~14_combout\);

-- Location: LCCOMB_X81_Y54_N24
\x_rd~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_rd~15_combout\ = (!\rst~input_o\ & \x_rd~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \x_rd~14_combout\,
	combout => \x_rd~15_combout\);

-- Location: FF_X82_Y54_N25
\x_rd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_rd(8));

-- Location: LCCOMB_X82_Y54_N4
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (x_rd(2) & (x_rd(3) & (x_rd(0) & x_rd(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(2),
	datab => x_rd(3),
	datac => x_rd(0),
	datad => x_rd(5),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X81_Y54_N22
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal4~0_combout\ & (x_rd(7) & (x_rd(8) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => x_rd(7),
	datac => x_rd(8),
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X81_Y54_N4
\pixel_out_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out_valid~0_combout\ = (\process_en~q\ & (((!\Equal5~1_combout\)) # (!\y_rd[9]~10_combout\))) # (!\process_en~q\ & (((\pixel_out_valid~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_rd[9]~10_combout\,
	datab => \process_en~q\,
	datac => \pixel_out_valid~reg0_q\,
	datad => \Equal5~1_combout\,
	combout => \pixel_out_valid~0_combout\);

-- Location: LCCOMB_X82_Y54_N6
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X81_Y54_N5
\pixel_out_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out_valid~0_combout\,
	asdata => \~GND~combout\,
	sclr => \rst~input_o\,
	sload => \ALT_INV_pixel_valid~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out_valid~reg0_q\);

-- Location: LCCOMB_X81_Y55_N6
\y_rd[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[0]~11_combout\ = y_rd(0) $ (VCC)
-- \y_rd[0]~12\ = CARRY(y_rd(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(0),
	datad => VCC,
	combout => \y_rd[0]~11_combout\,
	cout => \y_rd[0]~12\);

-- Location: LCCOMB_X81_Y55_N8
\y_rd[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[1]~13_combout\ = (y_rd(1) & (!\y_rd[0]~12\)) # (!y_rd(1) & ((\y_rd[0]~12\) # (GND)))
-- \y_rd[1]~14\ = CARRY((!\y_rd[0]~12\) # (!y_rd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_rd(1),
	datad => VCC,
	cin => \y_rd[0]~12\,
	combout => \y_rd[1]~13_combout\,
	cout => \y_rd[1]~14\);

-- Location: LCCOMB_X81_Y55_N20
\y_rd[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[7]~25_combout\ = (y_rd(7) & (!\y_rd[6]~24\)) # (!y_rd(7) & ((\y_rd[6]~24\) # (GND)))
-- \y_rd[7]~26\ = CARRY((!\y_rd[6]~24\) # (!y_rd(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_rd(7),
	datad => VCC,
	cin => \y_rd[6]~24\,
	combout => \y_rd[7]~25_combout\,
	cout => \y_rd[7]~26\);

-- Location: LCCOMB_X81_Y55_N22
\y_rd[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[8]~27_combout\ = (y_rd(8) & (\y_rd[7]~26\ $ (GND))) # (!y_rd(8) & (!\y_rd[7]~26\ & VCC))
-- \y_rd[8]~28\ = CARRY((y_rd(8) & !\y_rd[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(8),
	datad => VCC,
	cin => \y_rd[7]~26\,
	combout => \y_rd[8]~27_combout\,
	cout => \y_rd[8]~28\);

-- Location: LCCOMB_X81_Y55_N24
\y_rd[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[9]~29_combout\ = \y_rd[8]~28\ $ (y_rd(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => y_rd(9),
	cin => \y_rd[8]~28\,
	combout => \y_rd[9]~29_combout\);

-- Location: FF_X81_Y55_N25
\y_rd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[9]~29_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(9));

-- Location: LCCOMB_X81_Y55_N10
\y_rd[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[2]~15_combout\ = (y_rd(2) & (\y_rd[1]~14\ $ (GND))) # (!y_rd(2) & (!\y_rd[1]~14\ & VCC))
-- \y_rd[2]~16\ = CARRY((y_rd(2) & !\y_rd[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(2),
	datad => VCC,
	cin => \y_rd[1]~14\,
	combout => \y_rd[2]~15_combout\,
	cout => \y_rd[2]~16\);

-- Location: FF_X81_Y55_N11
\y_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[2]~15_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(2));

-- Location: LCCOMB_X81_Y55_N4
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!y_rd(1) & !y_rd(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_rd(1),
	datad => y_rd(2),
	combout => \LessThan3~0_combout\);

-- Location: FF_X81_Y55_N7
\y_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[0]~11_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(0));

-- Location: LCCOMB_X81_Y55_N26
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!y_rd(4) & (((\LessThan3~0_combout\ & !y_rd(0))) # (!y_rd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(3),
	datab => \LessThan3~0_combout\,
	datac => y_rd(4),
	datad => y_rd(0),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X81_Y55_N30
\y_rd[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[9]~10_combout\ = (y_rd(9) & (((!\LessThan3~1_combout\ & y_rd(5))) # (!\LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => y_rd(9),
	datac => \LessThan3~1_combout\,
	datad => y_rd(5),
	combout => \y_rd[9]~10_combout\);

-- Location: LCCOMB_X81_Y54_N0
\y_rd[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[9]~31_combout\ = (\rst~input_o\) # ((\Equal5~1_combout\ & (!\y_rd[9]~10_combout\ & \pixel_out~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Equal5~1_combout\,
	datac => \y_rd[9]~10_combout\,
	datad => \pixel_out~9_combout\,
	combout => \y_rd[9]~31_combout\);

-- Location: FF_X81_Y55_N9
\y_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[1]~13_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(1));

-- Location: LCCOMB_X81_Y55_N12
\y_rd[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[3]~17_combout\ = (y_rd(3) & (!\y_rd[2]~16\)) # (!y_rd(3) & ((\y_rd[2]~16\) # (GND)))
-- \y_rd[3]~18\ = CARRY((!\y_rd[2]~16\) # (!y_rd(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(3),
	datad => VCC,
	cin => \y_rd[2]~16\,
	combout => \y_rd[3]~17_combout\,
	cout => \y_rd[3]~18\);

-- Location: LCCOMB_X81_Y55_N14
\y_rd[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[4]~19_combout\ = (y_rd(4) & (\y_rd[3]~18\ $ (GND))) # (!y_rd(4) & (!\y_rd[3]~18\ & VCC))
-- \y_rd[4]~20\ = CARRY((y_rd(4) & !\y_rd[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_rd(4),
	datad => VCC,
	cin => \y_rd[3]~18\,
	combout => \y_rd[4]~19_combout\,
	cout => \y_rd[4]~20\);

-- Location: FF_X81_Y55_N15
\y_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[4]~19_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(4));

-- Location: LCCOMB_X81_Y55_N16
\y_rd[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[5]~21_combout\ = (y_rd(5) & (!\y_rd[4]~20\)) # (!y_rd(5) & ((\y_rd[4]~20\) # (GND)))
-- \y_rd[5]~22\ = CARRY((!\y_rd[4]~20\) # (!y_rd(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_rd(5),
	datad => VCC,
	cin => \y_rd[4]~20\,
	combout => \y_rd[5]~21_combout\,
	cout => \y_rd[5]~22\);

-- Location: FF_X81_Y55_N17
\y_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[5]~21_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(5));

-- Location: LCCOMB_X81_Y55_N18
\y_rd[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_rd[6]~23_combout\ = (y_rd(6) & (\y_rd[5]~22\ $ (GND))) # (!y_rd(6) & (!\y_rd[5]~22\ & VCC))
-- \y_rd[6]~24\ = CARRY((y_rd(6) & !\y_rd[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_rd(6),
	datad => VCC,
	cin => \y_rd[5]~22\,
	combout => \y_rd[6]~23_combout\,
	cout => \y_rd[6]~24\);

-- Location: FF_X81_Y55_N19
\y_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[6]~23_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(6));

-- Location: FF_X81_Y55_N21
\y_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[7]~25_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(7));

-- Location: FF_X81_Y55_N23
\y_rd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[8]~27_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(8));

-- Location: LCCOMB_X81_Y55_N0
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!y_rd(7) & (!y_rd(8) & !y_rd(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_rd(7),
	datac => y_rd(8),
	datad => y_rd(6),
	combout => \LessThan3~2_combout\);

-- Location: FF_X81_Y55_N13
\y_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_rd[3]~17_combout\,
	sclr => \rst~input_o\,
	ena => \y_rd[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_rd(3));

-- Location: LCCOMB_X81_Y55_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!y_rd(0) & (!y_rd(5) & (!y_rd(9) & !y_rd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_rd(0),
	datab => y_rd(5),
	datac => y_rd(9),
	datad => y_rd(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X80_Y55_N24
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\LessThan3~0_combout\ & (\LessThan3~2_combout\ & (!y_rd(4) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~2_combout\,
	datac => y_rd(4),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X74_Y73_N22
\pixel_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(0),
	o => \pixel_in[0]~input_o\);

-- Location: LCCOMB_X77_Y52_N8
\line1_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[19]~feeder_combout\ = \pixel_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[0]~input_o\,
	combout => \line1_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X77_Y52_N9
\line1_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(19));

-- Location: LCCOMB_X80_Y52_N4
\x_wr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~14_combout\ = (!\pixel_valid~input_o\ & x_wr(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_valid~input_o\,
	datad => x_wr(8),
	combout => \x_wr~14_combout\);

-- Location: LCCOMB_X80_Y52_N28
\x_wr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~15_combout\ = (!\rst~input_o\ & ((\x_wr~14_combout\) # ((\x_wr~1_combout\ & \Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_wr~1_combout\,
	datab => \Add1~16_combout\,
	datac => \x_wr~14_combout\,
	datad => \rst~input_o\,
	combout => \x_wr~15_combout\);

-- Location: FF_X79_Y52_N15
\x_wr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(8));

-- Location: FF_X80_Y52_N1
\line1_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(17));

-- Location: FF_X80_Y52_N9
\line1_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(18));

-- Location: LCCOMB_X80_Y52_N2
\line0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~14_combout\ = (!\rst~input_o\ & \pixel_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \pixel_valid~input_o\,
	combout => \line0~14_combout\);

-- Location: FF_X80_Y52_N3
\line1_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(0));

-- Location: LCCOMB_X80_Y52_N8
\line1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~5_combout\ = (\line1~4_combout\ & (line1_rtl_1_bypass(0) & (line1_rtl_1_bypass(17) $ (!line1_rtl_1_bypass(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~4_combout\,
	datab => line1_rtl_1_bypass(17),
	datac => line1_rtl_1_bypass(18),
	datad => line1_rtl_1_bypass(0),
	combout => \line1~5_combout\);

-- Location: LCCOMB_X77_Y52_N4
\line1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~6_combout\ = (\line1~5_combout\ & ((line1_rtl_1_bypass(19)))) # (!\line1~5_combout\ & (\line1_rtl_1|auto_generated|ram_block1a0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_1|auto_generated|ram_block1a0\,
	datac => line1_rtl_1_bypass(19),
	datad => \line1~5_combout\,
	combout => \line1~6_combout\);

-- Location: LCCOMB_X80_Y52_N0
\p4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p4[0]~0_combout\ = (\pixel_valid~input_o\ & (\process_en~q\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_valid~input_o\,
	datab => \process_en~q\,
	datad => \rst~input_o\,
	combout => \p4[0]~0_combout\);

-- Location: FF_X77_Y52_N5
\w12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~6_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(0));

-- Location: LCCOMB_X72_Y55_N28
\p2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[0]~0_combout\ = (\Equal2~1_combout\ & ((w12(0)))) # (!\Equal2~1_combout\ & (w02(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w02(0),
	datab => \Equal2~1_combout\,
	datad => w12(0),
	combout => \p2[0]~0_combout\);

-- Location: LCCOMB_X77_Y52_N30
\w11[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[0]~feeder_combout\ = w12(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w12(0),
	combout => \w11[0]~feeder_combout\);

-- Location: FF_X77_Y52_N31
\w11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w11[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(0));

-- Location: LCCOMB_X76_Y55_N18
\p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\Equal2~1_combout\ & ((w11(0)))) # (!\Equal2~1_combout\ & (w01(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w01(0),
	datac => \Equal2~1_combout\,
	datad => w11(0),
	combout => \p1~0_combout\);

-- Location: FF_X72_Y55_N29
\p2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[0]~0_combout\,
	asdata => \p1~0_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(0));

-- Location: LCCOMB_X80_Y53_N16
\line0_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[0]~feeder_combout\ = \line0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line0~14_combout\,
	combout => \line0_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X80_Y53_N17
\line0_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(0));

-- Location: FF_X80_Y53_N11
\line0_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(18));

-- Location: FF_X82_Y52_N15
\line0_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(3));

-- Location: FF_X82_Y52_N1
\line0_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(4));

-- Location: LCCOMB_X82_Y52_N24
\line0_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[1]~feeder_combout\ = x_wr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(0),
	combout => \line0_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X82_Y52_N25
\line0_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(1));

-- Location: LCCOMB_X82_Y52_N0
\line0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~0_combout\ = (line0_rtl_0_bypass(2) & (line0_rtl_0_bypass(1) & (line0_rtl_0_bypass(3) $ (!line0_rtl_0_bypass(4))))) # (!line0_rtl_0_bypass(2) & (!line0_rtl_0_bypass(1) & (line0_rtl_0_bypass(3) $ (!line0_rtl_0_bypass(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(2),
	datab => line0_rtl_0_bypass(3),
	datac => line0_rtl_0_bypass(4),
	datad => line0_rtl_0_bypass(1),
	combout => \line0~0_combout\);

-- Location: LCCOMB_X81_Y53_N4
\line0_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[8]~feeder_combout\ = \x_rd~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_rd~9_combout\,
	combout => \line0_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X81_Y53_N5
\line0_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(8));

-- Location: FF_X82_Y53_N9
\line0_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(5));

-- Location: LCCOMB_X82_Y52_N12
\x_wr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~8_combout\ = (!\pixel_valid~input_o\ & x_wr(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pixel_valid~input_o\,
	datad => x_wr(3),
	combout => \x_wr~8_combout\);

-- Location: LCCOMB_X81_Y52_N30
\x_wr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_wr~9_combout\ = (!\rst~input_o\ & ((\x_wr~8_combout\) # ((\x_wr~1_combout\ & \Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_wr~1_combout\,
	datab => \Add1~6_combout\,
	datac => \x_wr~8_combout\,
	datad => \rst~input_o\,
	combout => \x_wr~9_combout\);

-- Location: FF_X79_Y52_N1
\x_wr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_wr(3));

-- Location: FF_X82_Y53_N3
\line0_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(7));

-- Location: LCCOMB_X82_Y53_N8
\line0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~1_combout\ = (line0_rtl_0_bypass(6) & (line0_rtl_0_bypass(5) & (line0_rtl_0_bypass(8) $ (!line0_rtl_0_bypass(7))))) # (!line0_rtl_0_bypass(6) & (!line0_rtl_0_bypass(5) & (line0_rtl_0_bypass(8) $ (!line0_rtl_0_bypass(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(6),
	datab => line0_rtl_0_bypass(8),
	datac => line0_rtl_0_bypass(5),
	datad => line0_rtl_0_bypass(7),
	combout => \line0~1_combout\);

-- Location: LCCOMB_X81_Y53_N28
\line0_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[15]~feeder_combout\ = x_wr(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(7),
	combout => \line0_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X81_Y53_N29
\line0_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(15));

-- Location: FF_X81_Y53_N25
\line0_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_rd~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(14));

-- Location: LCCOMB_X81_Y53_N6
\line0_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[13]~feeder_combout\ = x_wr(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(6),
	combout => \line0_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X81_Y53_N7
\line0_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(13));

-- Location: LCCOMB_X81_Y53_N24
\line0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~3_combout\ = (line0_rtl_0_bypass(16) & (line0_rtl_0_bypass(15) & (line0_rtl_0_bypass(14) $ (!line0_rtl_0_bypass(13))))) # (!line0_rtl_0_bypass(16) & (!line0_rtl_0_bypass(15) & (line0_rtl_0_bypass(14) $ (!line0_rtl_0_bypass(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(16),
	datab => line0_rtl_0_bypass(15),
	datac => line0_rtl_0_bypass(14),
	datad => line0_rtl_0_bypass(13),
	combout => \line0~3_combout\);

-- Location: LCCOMB_X81_Y53_N26
\line0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~4_combout\ = (\line0~2_combout\ & (\line0~0_combout\ & (\line0~1_combout\ & \line0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~2_combout\,
	datab => \line0~0_combout\,
	datac => \line0~1_combout\,
	datad => \line0~3_combout\,
	combout => \line0~4_combout\);

-- Location: LCCOMB_X80_Y53_N10
\line0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~5_combout\ = (line0_rtl_0_bypass(0) & (\line0~4_combout\ & (line0_rtl_0_bypass(17) $ (!line0_rtl_0_bypass(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line0_rtl_0_bypass(17),
	datab => line0_rtl_0_bypass(0),
	datac => line0_rtl_0_bypass(18),
	datad => \line0~4_combout\,
	combout => \line0~5_combout\);

-- Location: LCCOMB_X77_Y52_N18
\line1_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[19]~feeder_combout\ = \pixel_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[0]~input_o\,
	combout => \line1_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X77_Y52_N19
\line1_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(19));

-- Location: IOIBUF_X79_Y73_N1
\pixel_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(1),
	o => \pixel_in[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\pixel_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(2),
	o => \pixel_in[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\pixel_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(3),
	o => \pixel_in[3]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\pixel_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(4),
	o => \pixel_in[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\pixel_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(5),
	o => \pixel_in[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\pixel_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(6),
	o => \pixel_in[6]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\pixel_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_in(7),
	o => \pixel_in[7]~input_o\);

-- Location: LCCOMB_X77_Y52_N20
\line1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~20_combout\ = (\line1~19_combout\ & (line1_rtl_0_bypass(19))) # (!\line1~19_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~19_combout\,
	datab => line1_rtl_0_bypass(19),
	datad => \line1_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \line1~20_combout\);

-- Location: FF_X77_Y53_N11
\line0_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line1~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(19));

-- Location: LCCOMB_X77_Y53_N20
\line0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~6_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(19)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \line0~5_combout\,
	datad => line0_rtl_0_bypass(19),
	combout => \line0~6_combout\);

-- Location: FF_X76_Y54_N27
\w02[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line0~6_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(0));

-- Location: FF_X76_Y54_N17
\w01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w02(0),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(0));

-- Location: LCCOMB_X76_Y55_N0
\w00[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[0]~feeder_combout\ = w01(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w01(0),
	combout => \w00[0]~feeder_combout\);

-- Location: FF_X76_Y55_N1
\w00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(0));

-- Location: LCCOMB_X76_Y55_N8
\p0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[0]~0_combout\ = (\Equal2~1_combout\ & (p4(0))) # (!\Equal2~1_combout\ & ((w00(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(0),
	datab => \Equal2~1_combout\,
	datad => w00(0),
	combout => \p0[0]~0_combout\);

-- Location: LCCOMB_X82_Y54_N8
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!x_rd(2) & (!x_rd(3) & (!x_rd(0) & !x_rd(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_rd(2),
	datab => x_rd(3),
	datac => x_rd(0),
	datad => x_rd(5),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X81_Y54_N14
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~0_combout\ & (\Equal4~1_combout\ & (!x_rd(8) & !x_rd(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~1_combout\,
	datac => x_rd(8),
	datad => x_rd(7),
	combout => \Equal4~2_combout\);

-- Location: FF_X76_Y55_N9
\p0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[0]~0_combout\,
	asdata => \p1~0_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(0));

-- Location: FF_X75_Y55_N13
\p1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~0_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(0));

-- Location: LCCOMB_X75_Y55_N14
\sorter|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~0_combout\ = (\sorter|LessThan0~14_combout\ & (p0(0))) # (!\sorter|LessThan0~14_combout\ & ((p1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan0~14_combout\,
	datab => p0(0),
	datad => p1(0),
	combout => \sorter|a1~0_combout\);

-- Location: FF_X79_Y52_N17
\line1_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(26));

-- Location: FF_X80_Y52_N21
\line1_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(13));

-- Location: FF_X80_Y52_N15
\line1_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(14));

-- Location: FF_X80_Y52_N17
\line1_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(16));

-- Location: LCCOMB_X80_Y52_N14
\line1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~17_combout\ = (line1_rtl_0_bypass(15) & (line1_rtl_0_bypass(16) & (line1_rtl_0_bypass(13) $ (!line1_rtl_0_bypass(14))))) # (!line1_rtl_0_bypass(15) & (!line1_rtl_0_bypass(16) & (line1_rtl_0_bypass(13) $ (!line1_rtl_0_bypass(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(15),
	datab => line1_rtl_0_bypass(13),
	datac => line1_rtl_0_bypass(14),
	datad => line1_rtl_0_bypass(16),
	combout => \line1~17_combout\);

-- Location: FF_X82_Y52_N9
\line1_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_wr~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(2));

-- Location: FF_X82_Y52_N3
\line1_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(4));

-- Location: LCCOMB_X82_Y52_N28
\line1_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[1]~feeder_combout\ = x_wr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(0),
	combout => \line1_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X82_Y52_N29
\line1_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(1));

-- Location: LCCOMB_X82_Y52_N2
\line1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~14_combout\ = (line1_rtl_0_bypass(3) & (line1_rtl_0_bypass(4) & (line1_rtl_0_bypass(2) $ (!line1_rtl_0_bypass(1))))) # (!line1_rtl_0_bypass(3) & (!line1_rtl_0_bypass(4) & (line1_rtl_0_bypass(2) $ (!line1_rtl_0_bypass(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(3),
	datab => line1_rtl_0_bypass(2),
	datac => line1_rtl_0_bypass(4),
	datad => line1_rtl_0_bypass(1),
	combout => \line1~14_combout\);

-- Location: FF_X79_Y52_N25
\line1_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(6));

-- Location: FF_X79_Y52_N27
\line1_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_wr~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(8));

-- Location: LCCOMB_X79_Y52_N2
\line1_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[5]~feeder_combout\ = x_wr(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => x_wr(2),
	combout => \line1_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X79_Y52_N3
\line1_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(5));

-- Location: LCCOMB_X79_Y52_N26
\line1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~15_combout\ = (line1_rtl_0_bypass(7) & (line1_rtl_0_bypass(8) & (line1_rtl_0_bypass(6) $ (!line1_rtl_0_bypass(5))))) # (!line1_rtl_0_bypass(7) & (!line1_rtl_0_bypass(8) & (line1_rtl_0_bypass(6) $ (!line1_rtl_0_bypass(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(7),
	datab => line1_rtl_0_bypass(6),
	datac => line1_rtl_0_bypass(8),
	datad => line1_rtl_0_bypass(5),
	combout => \line1~15_combout\);

-- Location: LCCOMB_X79_Y52_N18
\line1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~18_combout\ = (\line1~16_combout\ & (\line1~17_combout\ & (\line1~14_combout\ & \line1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~16_combout\,
	datab => \line1~17_combout\,
	datac => \line1~14_combout\,
	datad => \line1~15_combout\,
	combout => \line1~18_combout\);

-- Location: FF_X79_Y52_N11
\line1_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => x_wr(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(17));

-- Location: FF_X79_Y52_N21
\line1_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(0));

-- Location: LCCOMB_X79_Y52_N10
\line1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~19_combout\ = (\line1~18_combout\ & (line1_rtl_0_bypass(0) & (line1_rtl_0_bypass(18) $ (!line1_rtl_0_bypass(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_0_bypass(18),
	datab => \line1~18_combout\,
	datac => line1_rtl_0_bypass(17),
	datad => line1_rtl_0_bypass(0),
	combout => \line1~19_combout\);

-- Location: LCCOMB_X79_Y52_N16
\line1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~21_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(26)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_0|auto_generated|ram_block1a7\,
	datac => line1_rtl_0_bypass(26),
	datad => \line1~19_combout\,
	combout => \line1~21_combout\);

-- Location: FF_X77_Y55_N31
\line0_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line1~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(26));

-- Location: FF_X79_Y54_N31
\line1_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(20));

-- Location: LCCOMB_X79_Y54_N30
\line1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~27_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(20)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_0|auto_generated|ram_block1a1\,
	datac => line1_rtl_0_bypass(20),
	datad => \line1~19_combout\,
	combout => \line1~27_combout\);

-- Location: FF_X77_Y53_N13
\line1_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(21));

-- Location: LCCOMB_X77_Y52_N14
\line1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~26_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(21)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_0|auto_generated|ram_block1a2\,
	datab => line1_rtl_0_bypass(21),
	datad => \line1~19_combout\,
	combout => \line1~26_combout\);

-- Location: LCCOMB_X77_Y52_N26
\line1_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_0_bypass[22]~feeder_combout\ = \pixel_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[3]~input_o\,
	combout => \line1_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X77_Y52_N27
\line1_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(22));

-- Location: LCCOMB_X77_Y52_N0
\line1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~25_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(22)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_0|auto_generated|ram_block1a3\,
	datac => line1_rtl_0_bypass(22),
	datad => \line1~19_combout\,
	combout => \line1~25_combout\);

-- Location: FF_X79_Y53_N7
\line1_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(23));

-- Location: LCCOMB_X79_Y53_N6
\line1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~24_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(23)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1_rtl_0|auto_generated|ram_block1a4\,
	datac => line1_rtl_0_bypass(23),
	datad => \line1~19_combout\,
	combout => \line1~24_combout\);

-- Location: FF_X77_Y53_N29
\line1_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(24));

-- Location: LCCOMB_X77_Y53_N28
\line1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~23_combout\ = (\line1~19_combout\ & (line1_rtl_0_bypass(24))) # (!\line1~19_combout\ & ((\line1_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~19_combout\,
	datac => line1_rtl_0_bypass(24),
	datad => \line1_rtl_0|auto_generated|ram_block1a5\,
	combout => \line1~23_combout\);

-- Location: FF_X79_Y53_N13
\line1_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_0_bypass(25));

-- Location: LCCOMB_X79_Y53_N12
\line1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~22_combout\ = (\line1~19_combout\ & ((line1_rtl_0_bypass(25)))) # (!\line1~19_combout\ & (\line1_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1_rtl_0|auto_generated|ram_block1a6\,
	datac => line1_rtl_0_bypass(25),
	datad => \line1~19_combout\,
	combout => \line1~22_combout\);

-- Location: LCCOMB_X77_Y55_N20
\line0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~7_combout\ = (\line0~5_combout\ & (line0_rtl_0_bypass(26))) # (!\line0~5_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~5_combout\,
	datac => line0_rtl_0_bypass(26),
	datad => \line0_rtl_0|auto_generated|ram_block1a7\,
	combout => \line0~7_combout\);

-- Location: FF_X77_Y55_N21
\w02[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~7_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(7));

-- Location: LCCOMB_X74_Y55_N24
\p2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[7]~7_combout\ = (\Equal2~1_combout\ & (w12(7))) # (!\Equal2~1_combout\ & ((w02(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(7),
	datab => w02(7),
	datad => \Equal2~1_combout\,
	combout => \p2[7]~7_combout\);

-- Location: LCCOMB_X77_Y55_N24
\w01[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w01[7]~feeder_combout\ = w02(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w02(7),
	combout => \w01[7]~feeder_combout\);

-- Location: FF_X77_Y55_N25
\w01[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w01[7]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(7));

-- Location: LCCOMB_X77_Y55_N0
\p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~1_combout\ = (\Equal2~1_combout\ & (w11(7))) # (!\Equal2~1_combout\ & ((w01(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w11(7),
	datab => \Equal2~1_combout\,
	datad => w01(7),
	combout => \p1~1_combout\);

-- Location: FF_X74_Y55_N25
\p2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[7]~7_combout\,
	asdata => \p1~1_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(7));

-- Location: FF_X75_Y55_N3
\p1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~1_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(7));

-- Location: LCCOMB_X79_Y53_N4
\line0_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[25]~feeder_combout\ = \line1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line1~22_combout\,
	combout => \line0_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X79_Y53_N5
\line0_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(25));

-- Location: LCCOMB_X79_Y53_N20
\line0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~8_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(25)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line0_rtl_0|auto_generated|ram_block1a6\,
	datac => line0_rtl_0_bypass(25),
	datad => \line0~5_combout\,
	combout => \line0~8_combout\);

-- Location: FF_X79_Y53_N21
\w02[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~8_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(6));

-- Location: LCCOMB_X76_Y55_N16
\w01[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w01[6]~feeder_combout\ = w02(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w02(6),
	combout => \w01[6]~feeder_combout\);

-- Location: FF_X76_Y55_N17
\w01[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w01[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(6));

-- Location: LCCOMB_X77_Y55_N8
\p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~2_combout\ = (\Equal2~1_combout\ & (w11(6))) # (!\Equal2~1_combout\ & ((w01(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w11(6),
	datab => \Equal2~1_combout\,
	datad => w01(6),
	combout => \p1~2_combout\);

-- Location: FF_X75_Y55_N9
\p1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~2_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(6));

-- Location: FF_X77_Y53_N27
\line1_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(24));

-- Location: LCCOMB_X77_Y53_N8
\line1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~9_combout\ = (\line1~5_combout\ & ((line1_rtl_1_bypass(24)))) # (!\line1~5_combout\ & (\line1_rtl_1|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1_rtl_1|auto_generated|ram_block1a5\,
	datac => line1_rtl_1_bypass(24),
	datad => \line1~5_combout\,
	combout => \line1~9_combout\);

-- Location: FF_X77_Y53_N9
\w12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~9_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(5));

-- Location: FF_X77_Y53_N21
\w11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w12(5),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(5));

-- Location: LCCOMB_X77_Y53_N6
\p1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~3_combout\ = (\Equal2~1_combout\ & ((w11(5)))) # (!\Equal2~1_combout\ & (w01(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w01(5),
	datab => w11(5),
	datad => \Equal2~1_combout\,
	combout => \p1~3_combout\);

-- Location: FF_X75_Y55_N15
\p1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~3_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(5));

-- Location: LCCOMB_X79_Y53_N14
\line0_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[23]~feeder_combout\ = \line1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line1~24_combout\,
	combout => \line0_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X79_Y53_N15
\line0_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(23));

-- Location: LCCOMB_X79_Y53_N2
\line0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~10_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(23)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line0_rtl_0|auto_generated|ram_block1a4\,
	datac => line0_rtl_0_bypass(23),
	datad => \line0~5_combout\,
	combout => \line0~10_combout\);

-- Location: FF_X79_Y53_N3
\w02[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~10_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(4));

-- Location: LCCOMB_X79_Y55_N18
\w01[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w01[4]~feeder_combout\ = w02(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w02(4),
	combout => \w01[4]~feeder_combout\);

-- Location: FF_X79_Y55_N19
\w01[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w01[4]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(4));

-- Location: LCCOMB_X79_Y55_N14
\w00[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[4]~feeder_combout\ = w01(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w01(4),
	combout => \w00[4]~feeder_combout\);

-- Location: FF_X79_Y55_N15
\w00[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[4]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(4));

-- Location: LCCOMB_X76_Y55_N14
\p0[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[4]~4_combout\ = (\Equal2~1_combout\ & (p4(4))) # (!\Equal2~1_combout\ & ((w00(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(4),
	datab => \Equal2~1_combout\,
	datad => w00(4),
	combout => \p0[4]~4_combout\);

-- Location: FF_X77_Y55_N9
\line1_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(23));

-- Location: LCCOMB_X77_Y55_N6
\line1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~10_combout\ = (\line1~5_combout\ & (line1_rtl_1_bypass(23))) # (!\line1~5_combout\ & ((\line1_rtl_1|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~5_combout\,
	datac => line1_rtl_1_bypass(23),
	datad => \line1_rtl_1|auto_generated|ram_block1a4\,
	combout => \line1~10_combout\);

-- Location: FF_X77_Y55_N7
\w12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~10_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(4));

-- Location: FF_X77_Y53_N17
\w11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w12(4),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(4));

-- Location: LCCOMB_X79_Y55_N0
\p1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~4_combout\ = (\Equal2~1_combout\ & ((w11(4)))) # (!\Equal2~1_combout\ & (w01(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => w01(4),
	datad => w11(4),
	combout => \p1~4_combout\);

-- Location: FF_X76_Y55_N15
\p0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[4]~4_combout\,
	asdata => \p1~4_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(4));

-- Location: LCCOMB_X79_Y54_N8
\line1_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[22]~feeder_combout\ = \pixel_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[3]~input_o\,
	combout => \line1_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X79_Y54_N9
\line1_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(22));

-- Location: LCCOMB_X79_Y54_N20
\line1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~11_combout\ = (\line1~5_combout\ & (line1_rtl_1_bypass(22))) # (!\line1~5_combout\ & ((\line1_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~5_combout\,
	datac => line1_rtl_1_bypass(22),
	datad => \line1_rtl_1|auto_generated|ram_block1a3\,
	combout => \line1~11_combout\);

-- Location: FF_X79_Y54_N21
\w12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~11_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(3));

-- Location: LCCOMB_X73_Y53_N26
\w11[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[3]~feeder_combout\ = w12(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w12(3),
	combout => \w11[3]~feeder_combout\);

-- Location: FF_X73_Y53_N27
\w11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w11[3]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(3));

-- Location: FF_X77_Y54_N17
\p4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(3),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(3));

-- Location: LCCOMB_X76_Y55_N12
\p0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[3]~3_combout\ = (\Equal2~1_combout\ & ((p4(3)))) # (!\Equal2~1_combout\ & (w00(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w00(3),
	datab => \Equal2~1_combout\,
	datad => p4(3),
	combout => \p0[3]~3_combout\);

-- Location: LCCOMB_X77_Y55_N4
\line0_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0_rtl_0_bypass[22]~feeder_combout\ = \line1~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \line1~25_combout\,
	combout => \line0_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X77_Y55_N5
\line0_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(22));

-- Location: LCCOMB_X77_Y55_N10
\line0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~11_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(22)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line0~5_combout\,
	datab => \line0_rtl_0|auto_generated|ram_block1a3\,
	datac => line0_rtl_0_bypass(22),
	combout => \line0~11_combout\);

-- Location: FF_X77_Y55_N11
\w02[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~11_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(3));

-- Location: FF_X77_Y55_N1
\w01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w02(3),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(3));

-- Location: LCCOMB_X76_Y55_N24
\p1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~5_combout\ = (\Equal2~1_combout\ & ((w11(3)))) # (!\Equal2~1_combout\ & (w01(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => w01(3),
	datad => w11(3),
	combout => \p1~5_combout\);

-- Location: FF_X76_Y55_N13
\p0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[3]~3_combout\,
	asdata => \p1~5_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(3));

-- Location: LCCOMB_X69_Y52_N12
\line1_rtl_1_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1_rtl_1_bypass[21]~feeder_combout\ = \pixel_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[2]~input_o\,
	combout => \line1_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X69_Y52_N13
\line1_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(21));

-- Location: LCCOMB_X70_Y52_N30
\line1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~12_combout\ = (\line1~5_combout\ & ((line1_rtl_1_bypass(21)))) # (!\line1~5_combout\ & (\line1_rtl_1|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~5_combout\,
	datac => \line1_rtl_1|auto_generated|ram_block1a2\,
	datad => line1_rtl_1_bypass(21),
	combout => \line1~12_combout\);

-- Location: FF_X70_Y52_N31
\w12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~12_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(2));

-- Location: FF_X75_Y52_N21
\w11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w12(2),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(2));

-- Location: LCCOMB_X76_Y55_N20
\p1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~6_combout\ = (\Equal2~1_combout\ & ((w11(2)))) # (!\Equal2~1_combout\ & (w01(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w01(2),
	datac => \Equal2~1_combout\,
	datad => w11(2),
	combout => \p1~6_combout\);

-- Location: FF_X75_Y55_N1
\p1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~6_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(2));

-- Location: FF_X79_Y54_N27
\line1_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(20));

-- Location: LCCOMB_X79_Y54_N22
\line1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~13_combout\ = (\line1~5_combout\ & (line1_rtl_1_bypass(20))) # (!\line1~5_combout\ & ((\line1_rtl_1|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~5_combout\,
	datac => line1_rtl_1_bypass(20),
	datad => \line1_rtl_1|auto_generated|ram_block1a1\,
	combout => \line1~13_combout\);

-- Location: FF_X79_Y54_N23
\w12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~13_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(1));

-- Location: FF_X79_Y54_N19
\w11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w12(1),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(1));

-- Location: FF_X77_Y54_N29
\p4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(1),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(1));

-- Location: LCCOMB_X76_Y55_N28
\p0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[1]~1_combout\ = (\Equal2~1_combout\ & ((p4(1)))) # (!\Equal2~1_combout\ & (w00(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w00(1),
	datab => \Equal2~1_combout\,
	datad => p4(1),
	combout => \p0[1]~1_combout\);

-- Location: FF_X79_Y54_N1
\line0_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line1~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(20));

-- Location: LCCOMB_X79_Y55_N26
\line0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~13_combout\ = (\line0~5_combout\ & ((line0_rtl_0_bypass(20)))) # (!\line0~5_combout\ & (\line0_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line0_rtl_0|auto_generated|ram_block1a1\,
	datac => \line0~5_combout\,
	datad => line0_rtl_0_bypass(20),
	combout => \line0~13_combout\);

-- Location: FF_X79_Y55_N27
\w02[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~13_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(1));

-- Location: LCCOMB_X79_Y55_N24
\w01[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w01[1]~feeder_combout\ = w02(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w02(1),
	combout => \w01[1]~feeder_combout\);

-- Location: FF_X79_Y55_N25
\w01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w01[1]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(1));

-- Location: LCCOMB_X79_Y55_N22
\p1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~7_combout\ = (\Equal2~1_combout\ & (w11(1))) # (!\Equal2~1_combout\ & ((w01(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w11(1),
	datac => \Equal2~1_combout\,
	datad => w01(1),
	combout => \p1~7_combout\);

-- Location: FF_X76_Y55_N29
\p0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[1]~1_combout\,
	asdata => \p1~7_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(1));

-- Location: LCCOMB_X75_Y55_N16
\sorter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~1_cout\ = CARRY((!p1(0) & p0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p1(0),
	datab => p0(0),
	datad => VCC,
	cout => \sorter|LessThan0~1_cout\);

-- Location: LCCOMB_X75_Y55_N18
\sorter|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~3_cout\ = CARRY((p1(1) & ((!\sorter|LessThan0~1_cout\) # (!p0(1)))) # (!p1(1) & (!p0(1) & !\sorter|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p1(1),
	datab => p0(1),
	datad => VCC,
	cin => \sorter|LessThan0~1_cout\,
	cout => \sorter|LessThan0~3_cout\);

-- Location: LCCOMB_X75_Y55_N20
\sorter|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~5_cout\ = CARRY((p0(2) & ((!\sorter|LessThan0~3_cout\) # (!p1(2)))) # (!p0(2) & (!p1(2) & !\sorter|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p0(2),
	datab => p1(2),
	datad => VCC,
	cin => \sorter|LessThan0~3_cout\,
	cout => \sorter|LessThan0~5_cout\);

-- Location: LCCOMB_X75_Y55_N22
\sorter|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~7_cout\ = CARRY((p1(3) & ((!\sorter|LessThan0~5_cout\) # (!p0(3)))) # (!p1(3) & (!p0(3) & !\sorter|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p1(3),
	datab => p0(3),
	datad => VCC,
	cin => \sorter|LessThan0~5_cout\,
	cout => \sorter|LessThan0~7_cout\);

-- Location: LCCOMB_X75_Y55_N24
\sorter|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~9_cout\ = CARRY((p1(4) & (p0(4) & !\sorter|LessThan0~7_cout\)) # (!p1(4) & ((p0(4)) # (!\sorter|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p1(4),
	datab => p0(4),
	datad => VCC,
	cin => \sorter|LessThan0~7_cout\,
	cout => \sorter|LessThan0~9_cout\);

-- Location: LCCOMB_X75_Y55_N26
\sorter|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~11_cout\ = CARRY((p0(5) & (p1(5) & !\sorter|LessThan0~9_cout\)) # (!p0(5) & ((p1(5)) # (!\sorter|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p0(5),
	datab => p1(5),
	datad => VCC,
	cin => \sorter|LessThan0~9_cout\,
	cout => \sorter|LessThan0~11_cout\);

-- Location: LCCOMB_X75_Y55_N28
\sorter|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~13_cout\ = CARRY((p0(6) & ((!\sorter|LessThan0~11_cout\) # (!p1(6)))) # (!p0(6) & (!p1(6) & !\sorter|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p0(6),
	datab => p1(6),
	datad => VCC,
	cin => \sorter|LessThan0~11_cout\,
	cout => \sorter|LessThan0~13_cout\);

-- Location: LCCOMB_X75_Y55_N30
\sorter|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan0~14_combout\ = (p0(7) & ((\sorter|LessThan0~13_cout\) # (!p1(7)))) # (!p0(7) & (\sorter|LessThan0~13_cout\ & !p1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p0(7),
	datad => p1(7),
	cin => \sorter|LessThan0~13_cout\,
	combout => \sorter|LessThan0~14_combout\);

-- Location: LCCOMB_X75_Y55_N4
\sorter|a1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~1_combout\ = (\sorter|LessThan0~14_combout\ & (p0(7))) # (!\sorter|LessThan0~14_combout\ & ((p1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p0(7),
	datab => \sorter|LessThan0~14_combout\,
	datad => p1(7),
	combout => \sorter|a1~1_combout\);

-- Location: LCCOMB_X76_Y55_N2
\w00[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w00[6]~feeder_combout\ = w01(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w01(6),
	combout => \w00[6]~feeder_combout\);

-- Location: FF_X76_Y55_N3
\w00[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w00[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(6));

-- Location: LCCOMB_X76_Y55_N4
\p0[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[6]~6_combout\ = (\Equal2~1_combout\ & (p4(6))) # (!\Equal2~1_combout\ & ((w00(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(6),
	datab => \Equal2~1_combout\,
	datad => w00(6),
	combout => \p0[6]~6_combout\);

-- Location: FF_X76_Y55_N5
\p0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[6]~6_combout\,
	asdata => \p1~2_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(6));

-- Location: LCCOMB_X74_Y55_N16
\sorter|a1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~2_combout\ = (\sorter|LessThan0~14_combout\ & (p0(6))) # (!\sorter|LessThan0~14_combout\ & ((p1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p0(6),
	datac => \sorter|LessThan0~14_combout\,
	datad => p1(6),
	combout => \sorter|a1~2_combout\);

-- Location: FF_X77_Y54_N7
\p4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(5),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(5));

-- Location: FF_X77_Y53_N15
\line0_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \line1~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line0_rtl_0_bypass(24));

-- Location: LCCOMB_X77_Y53_N4
\line0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \line0~9_combout\ = (\line0~5_combout\ & (line0_rtl_0_bypass(24))) # (!\line0~5_combout\ & ((\line0_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line0~5_combout\,
	datac => line0_rtl_0_bypass(24),
	datad => \line0_rtl_0|auto_generated|ram_block1a5\,
	combout => \line0~9_combout\);

-- Location: FF_X77_Y53_N5
\w02[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line0~9_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w02(5));

-- Location: FF_X77_Y53_N31
\w01[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w02(5),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w01(5));

-- Location: FF_X77_Y53_N3
\w00[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w01(5),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w00(5));

-- Location: LCCOMB_X73_Y56_N8
\p0[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[5]~5_combout\ = (\Equal2~1_combout\ & (p4(5))) # (!\Equal2~1_combout\ & ((w00(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => p4(5),
	datad => w00(5),
	combout => \p0[5]~5_combout\);

-- Location: FF_X73_Y56_N9
\p0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[5]~5_combout\,
	asdata => \p1~3_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(5));

-- Location: LCCOMB_X74_Y55_N18
\sorter|a1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~3_combout\ = (\sorter|LessThan0~14_combout\ & (p0(5))) # (!\sorter|LessThan0~14_combout\ & ((p1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p0(5),
	datac => \sorter|LessThan0~14_combout\,
	datad => p1(5),
	combout => \sorter|a1~3_combout\);

-- Location: LCCOMB_X74_Y55_N28
\sorter|a1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~4_combout\ = (\sorter|LessThan0~14_combout\ & ((p0(4)))) # (!\sorter|LessThan0~14_combout\ & (p1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p1(4),
	datac => \sorter|LessThan0~14_combout\,
	datad => p0(4),
	combout => \sorter|a1~4_combout\);

-- Location: LCCOMB_X73_Y53_N14
\p2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[3]~3_combout\ = (\Equal2~1_combout\ & ((w12(3)))) # (!\Equal2~1_combout\ & (w02(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w02(3),
	datab => w12(3),
	datad => \Equal2~1_combout\,
	combout => \p2[3]~3_combout\);

-- Location: FF_X73_Y53_N15
\p2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[3]~3_combout\,
	asdata => \p1~5_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(3));

-- Location: FF_X77_Y54_N11
\p4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(2),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(2));

-- Location: LCCOMB_X76_Y55_N10
\p0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[2]~2_combout\ = (\Equal2~1_combout\ & ((p4(2)))) # (!\Equal2~1_combout\ & (w00(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w00(2),
	datab => \Equal2~1_combout\,
	datad => p4(2),
	combout => \p0[2]~2_combout\);

-- Location: FF_X76_Y55_N11
\p0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[2]~2_combout\,
	asdata => \p1~6_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(2));

-- Location: LCCOMB_X75_Y55_N0
\sorter|a1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~6_combout\ = (\sorter|LessThan0~14_combout\ & (p0(2))) # (!\sorter|LessThan0~14_combout\ & ((p1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan0~14_combout\,
	datab => p0(2),
	datac => p1(2),
	combout => \sorter|a1~6_combout\);

-- Location: FF_X75_Y55_N7
\p1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~7_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(1));

-- Location: LCCOMB_X72_Y55_N0
\sorter|a1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~7_combout\ = (\sorter|LessThan0~14_combout\ & (p0(1))) # (!\sorter|LessThan0~14_combout\ & ((p1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p0(1),
	datac => p1(1),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a1~7_combout\);

-- Location: LCCOMB_X74_Y55_N0
\sorter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~1_cout\ = CARRY((!p2(0) & \sorter|a1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(0),
	datab => \sorter|a1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan1~1_cout\);

-- Location: LCCOMB_X74_Y55_N2
\sorter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~3_cout\ = CARRY((p2(1) & ((!\sorter|LessThan1~1_cout\) # (!\sorter|a1~7_combout\))) # (!p2(1) & (!\sorter|a1~7_combout\ & !\sorter|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(1),
	datab => \sorter|a1~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan1~1_cout\,
	cout => \sorter|LessThan1~3_cout\);

-- Location: LCCOMB_X74_Y55_N4
\sorter|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~5_cout\ = CARRY((p2(2) & (\sorter|a1~6_combout\ & !\sorter|LessThan1~3_cout\)) # (!p2(2) & ((\sorter|a1~6_combout\) # (!\sorter|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(2),
	datab => \sorter|a1~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan1~3_cout\,
	cout => \sorter|LessThan1~5_cout\);

-- Location: LCCOMB_X74_Y55_N6
\sorter|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~7_cout\ = CARRY((\sorter|a1~5_combout\ & (p2(3) & !\sorter|LessThan1~5_cout\)) # (!\sorter|a1~5_combout\ & ((p2(3)) # (!\sorter|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~5_combout\,
	datab => p2(3),
	datad => VCC,
	cin => \sorter|LessThan1~5_cout\,
	cout => \sorter|LessThan1~7_cout\);

-- Location: LCCOMB_X74_Y55_N8
\sorter|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~9_cout\ = CARRY((p2(4) & (\sorter|a1~4_combout\ & !\sorter|LessThan1~7_cout\)) # (!p2(4) & ((\sorter|a1~4_combout\) # (!\sorter|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(4),
	datab => \sorter|a1~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan1~7_cout\,
	cout => \sorter|LessThan1~9_cout\);

-- Location: LCCOMB_X74_Y55_N10
\sorter|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~11_cout\ = CARRY((p2(5) & ((!\sorter|LessThan1~9_cout\) # (!\sorter|a1~3_combout\))) # (!p2(5) & (!\sorter|a1~3_combout\ & !\sorter|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(5),
	datab => \sorter|a1~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan1~9_cout\,
	cout => \sorter|LessThan1~11_cout\);

-- Location: LCCOMB_X74_Y55_N12
\sorter|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~13_cout\ = CARRY((p2(6) & (\sorter|a1~2_combout\ & !\sorter|LessThan1~11_cout\)) # (!p2(6) & ((\sorter|a1~2_combout\) # (!\sorter|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p2(6),
	datab => \sorter|a1~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan1~11_cout\,
	cout => \sorter|LessThan1~13_cout\);

-- Location: LCCOMB_X74_Y55_N14
\sorter|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan1~14_combout\ = (p2(7) & (\sorter|LessThan1~13_cout\ & \sorter|a1~1_combout\)) # (!p2(7) & ((\sorter|LessThan1~13_cout\) # (\sorter|a1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p2(7),
	datad => \sorter|a1~1_combout\,
	cin => \sorter|LessThan1~13_cout\,
	combout => \sorter|LessThan1~14_combout\);

-- Location: LCCOMB_X72_Y55_N18
\sorter|a2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[0]~0_combout\ = (\sorter|LessThan1~14_combout\ & ((\sorter|a1~0_combout\))) # (!\sorter|LessThan1~14_combout\ & (p2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p2(0),
	datac => \sorter|a1~0_combout\,
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[0]~0_combout\);

-- Location: FF_X77_Y55_N27
\line1_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => line1_rtl_1_bypass(26));

-- Location: LCCOMB_X77_Y55_N12
\line1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~7_combout\ = (\line1~5_combout\ & (line1_rtl_1_bypass(26))) # (!\line1~5_combout\ & ((\line1_rtl_1|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~5_combout\,
	datac => line1_rtl_1_bypass(26),
	datad => \line1_rtl_1|auto_generated|ram_block1a7\,
	combout => \line1~7_combout\);

-- Location: FF_X77_Y55_N13
\w12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~7_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(7));

-- Location: FF_X79_Y54_N17
\w11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w12(7),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(7));

-- Location: FF_X77_Y54_N15
\p4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(7),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(7));

-- Location: LCCOMB_X77_Y55_N28
\p3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\Equal4~2_combout\ & ((w11(7)))) # (!\Equal4~2_combout\ & (p4(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => p4(7),
	datad => w11(7),
	combout => \p3~1_combout\);

-- Location: FF_X77_Y54_N1
\p3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p3~1_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(7));

-- Location: LCCOMB_X69_Y52_N16
\line1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \line1~8_combout\ = (\line1~5_combout\ & (line1_rtl_1_bypass(25))) # (!\line1~5_combout\ & ((\line1_rtl_1|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_rtl_1_bypass(25),
	datab => \line1~5_combout\,
	datac => \line1_rtl_1|auto_generated|ram_block1a6\,
	combout => \line1~8_combout\);

-- Location: FF_X69_Y52_N17
\w12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \line1~8_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(6));

-- Location: LCCOMB_X69_Y52_N26
\w11[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[6]~feeder_combout\ = w12(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w12(6),
	combout => \w11[6]~feeder_combout\);

-- Location: FF_X69_Y52_N27
\w11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w11[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(6));

-- Location: FF_X77_Y54_N3
\p4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(6),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(6));

-- Location: LCCOMB_X76_Y52_N0
\p3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~3_combout\ = (\Equal4~2_combout\ & ((w11(5)))) # (!\Equal4~2_combout\ & (p4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p4(5),
	datac => w11(5),
	datad => \Equal4~2_combout\,
	combout => \p3~3_combout\);

-- Location: FF_X77_Y54_N13
\p3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p3~3_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(5));

-- Location: FF_X77_Y54_N19
\p4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(4),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(4));

-- Location: LCCOMB_X77_Y55_N30
\p3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~5_combout\ = (\Equal4~2_combout\ & ((w11(3)))) # (!\Equal4~2_combout\ & (p4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(3),
	datab => w11(3),
	datad => \Equal4~2_combout\,
	combout => \p3~5_combout\);

-- Location: FF_X77_Y54_N21
\p3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p3~5_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(3));

-- Location: LCCOMB_X77_Y53_N0
\p3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~6_combout\ = (\Equal4~2_combout\ & (w11(2))) # (!\Equal4~2_combout\ & ((p4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w11(2),
	datac => \Equal4~2_combout\,
	datad => p4(2),
	combout => \p3~6_combout\);

-- Location: FF_X77_Y53_N1
\p3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p3~6_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(2));

-- Location: FF_X77_Y54_N9
\p4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w11(0),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p4(0));

-- Location: LCCOMB_X77_Y54_N16
\sorter|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~1_cout\ = CARRY((p3(0) & !p4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p3(0),
	datab => p4(0),
	datad => VCC,
	cout => \sorter|LessThan3~1_cout\);

-- Location: LCCOMB_X77_Y54_N18
\sorter|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~3_cout\ = CARRY((p3(1) & (p4(1) & !\sorter|LessThan3~1_cout\)) # (!p3(1) & ((p4(1)) # (!\sorter|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p3(1),
	datab => p4(1),
	datad => VCC,
	cin => \sorter|LessThan3~1_cout\,
	cout => \sorter|LessThan3~3_cout\);

-- Location: LCCOMB_X77_Y54_N20
\sorter|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~5_cout\ = CARRY((p4(2) & (p3(2) & !\sorter|LessThan3~3_cout\)) # (!p4(2) & ((p3(2)) # (!\sorter|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p4(2),
	datab => p3(2),
	datad => VCC,
	cin => \sorter|LessThan3~3_cout\,
	cout => \sorter|LessThan3~5_cout\);

-- Location: LCCOMB_X77_Y54_N22
\sorter|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~7_cout\ = CARRY((p4(3) & ((!\sorter|LessThan3~5_cout\) # (!p3(3)))) # (!p4(3) & (!p3(3) & !\sorter|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p4(3),
	datab => p3(3),
	datad => VCC,
	cin => \sorter|LessThan3~5_cout\,
	cout => \sorter|LessThan3~7_cout\);

-- Location: LCCOMB_X77_Y54_N24
\sorter|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~9_cout\ = CARRY((p3(4) & ((!\sorter|LessThan3~7_cout\) # (!p4(4)))) # (!p3(4) & (!p4(4) & !\sorter|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p3(4),
	datab => p4(4),
	datad => VCC,
	cin => \sorter|LessThan3~7_cout\,
	cout => \sorter|LessThan3~9_cout\);

-- Location: LCCOMB_X77_Y54_N26
\sorter|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~11_cout\ = CARRY((p4(5) & ((!\sorter|LessThan3~9_cout\) # (!p3(5)))) # (!p4(5) & (!p3(5) & !\sorter|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p4(5),
	datab => p3(5),
	datad => VCC,
	cin => \sorter|LessThan3~9_cout\,
	cout => \sorter|LessThan3~11_cout\);

-- Location: LCCOMB_X77_Y54_N28
\sorter|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~13_cout\ = CARRY((p3(6) & ((!\sorter|LessThan3~11_cout\) # (!p4(6)))) # (!p3(6) & (!p4(6) & !\sorter|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p3(6),
	datab => p4(6),
	datad => VCC,
	cin => \sorter|LessThan3~11_cout\,
	cout => \sorter|LessThan3~13_cout\);

-- Location: LCCOMB_X77_Y54_N30
\sorter|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan3~14_combout\ = (p4(7) & (\sorter|LessThan3~13_cout\ & p3(7))) # (!p4(7) & ((\sorter|LessThan3~13_cout\) # (p3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p4(7),
	datad => p3(7),
	cin => \sorter|LessThan3~13_cout\,
	combout => \sorter|LessThan3~14_combout\);

-- Location: LCCOMB_X77_Y54_N10
\sorter|b1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~1_combout\ = (\sorter|LessThan3~14_combout\ & ((p3(7)))) # (!\sorter|LessThan3~14_combout\ & (p4(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(7),
	datab => p3(7),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b1~1_combout\);

-- Location: LCCOMB_X79_Y54_N12
\p5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~1_combout\ = (\Equal5~1_combout\ & ((w11(7)))) # (!\Equal5~1_combout\ & (w12(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => w12(7),
	datad => w11(7),
	combout => \p5~1_combout\);

-- Location: FF_X76_Y54_N25
\p5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p5~1_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(7));

-- Location: LCCOMB_X69_Y52_N6
\p5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~2_combout\ = (\Equal5~1_combout\ & (w11(6))) # (!\Equal5~1_combout\ & ((w12(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => w11(6),
	datad => w12(6),
	combout => \p5~2_combout\);

-- Location: FF_X76_Y54_N3
\p5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p5~2_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(6));

-- Location: LCCOMB_X77_Y53_N12
\p5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~3_combout\ = (\Equal5~1_combout\ & (w11(5))) # (!\Equal5~1_combout\ & ((w12(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w11(5),
	datab => w12(5),
	datad => \Equal5~1_combout\,
	combout => \p5~3_combout\);

-- Location: FF_X75_Y54_N29
\p5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p5~3_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(5));

-- Location: LCCOMB_X77_Y54_N8
\sorter|b1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~4_combout\ = (\sorter|LessThan3~14_combout\ & (p3(4))) # (!\sorter|LessThan3~14_combout\ & ((p4(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(4),
	datab => p4(4),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b1~4_combout\);

-- Location: LCCOMB_X73_Y53_N30
\p5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~5_combout\ = (\Equal5~1_combout\ & (w11(3))) # (!\Equal5~1_combout\ & ((w12(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w11(3),
	datab => w12(3),
	datac => \Equal5~1_combout\,
	combout => \p5~5_combout\);

-- Location: FF_X73_Y53_N31
\p5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p5~5_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(3));

-- Location: LCCOMB_X77_Y53_N10
\p5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~6_combout\ = (\Equal5~1_combout\ & ((w11(2)))) # (!\Equal5~1_combout\ & (w12(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(2),
	datab => \Equal5~1_combout\,
	datad => w11(2),
	combout => \p5~6_combout\);

-- Location: FF_X76_Y56_N27
\p5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p5~6_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(2));

-- Location: LCCOMB_X77_Y53_N24
\p5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~7_combout\ = (\Equal5~1_combout\ & ((w11(1)))) # (!\Equal5~1_combout\ & (w12(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w12(1),
	datac => w11(1),
	datad => \Equal5~1_combout\,
	combout => \p5~7_combout\);

-- Location: FF_X77_Y53_N25
\p5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p5~7_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(1));

-- Location: LCCOMB_X76_Y56_N18
\p3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~0_combout\ = (\Equal4~2_combout\ & ((w11(0)))) # (!\Equal4~2_combout\ & (p4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p4(0),
	datac => w11(0),
	datad => \Equal4~2_combout\,
	combout => \p3~0_combout\);

-- Location: FF_X76_Y56_N19
\p3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p3~0_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(0));

-- Location: LCCOMB_X76_Y56_N16
\sorter|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~0_combout\ = (\sorter|LessThan3~14_combout\ & (p3(0))) # (!\sorter|LessThan3~14_combout\ & ((p4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p3(0),
	datac => \sorter|LessThan3~14_combout\,
	datad => p4(0),
	combout => \sorter|b1~0_combout\);

-- Location: LCCOMB_X76_Y54_N4
\sorter|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~1_cout\ = CARRY((!p5(0) & \sorter|b1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p5(0),
	datab => \sorter|b1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan4~1_cout\);

-- Location: LCCOMB_X76_Y54_N6
\sorter|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~3_cout\ = CARRY((\sorter|b1~7_combout\ & (p5(1) & !\sorter|LessThan4~1_cout\)) # (!\sorter|b1~7_combout\ & ((p5(1)) # (!\sorter|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~7_combout\,
	datab => p5(1),
	datad => VCC,
	cin => \sorter|LessThan4~1_cout\,
	cout => \sorter|LessThan4~3_cout\);

-- Location: LCCOMB_X76_Y54_N8
\sorter|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~5_cout\ = CARRY((\sorter|b1~6_combout\ & ((!\sorter|LessThan4~3_cout\) # (!p5(2)))) # (!\sorter|b1~6_combout\ & (!p5(2) & !\sorter|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~6_combout\,
	datab => p5(2),
	datad => VCC,
	cin => \sorter|LessThan4~3_cout\,
	cout => \sorter|LessThan4~5_cout\);

-- Location: LCCOMB_X76_Y54_N10
\sorter|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~7_cout\ = CARRY((\sorter|b1~5_combout\ & (p5(3) & !\sorter|LessThan4~5_cout\)) # (!\sorter|b1~5_combout\ & ((p5(3)) # (!\sorter|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~5_combout\,
	datab => p5(3),
	datad => VCC,
	cin => \sorter|LessThan4~5_cout\,
	cout => \sorter|LessThan4~7_cout\);

-- Location: LCCOMB_X76_Y54_N12
\sorter|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~9_cout\ = CARRY((p5(4) & (\sorter|b1~4_combout\ & !\sorter|LessThan4~7_cout\)) # (!p5(4) & ((\sorter|b1~4_combout\) # (!\sorter|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p5(4),
	datab => \sorter|b1~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan4~7_cout\,
	cout => \sorter|LessThan4~9_cout\);

-- Location: LCCOMB_X76_Y54_N14
\sorter|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~11_cout\ = CARRY((\sorter|b1~3_combout\ & (p5(5) & !\sorter|LessThan4~9_cout\)) # (!\sorter|b1~3_combout\ & ((p5(5)) # (!\sorter|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~3_combout\,
	datab => p5(5),
	datad => VCC,
	cin => \sorter|LessThan4~9_cout\,
	cout => \sorter|LessThan4~11_cout\);

-- Location: LCCOMB_X76_Y54_N16
\sorter|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~13_cout\ = CARRY((\sorter|b1~2_combout\ & ((!\sorter|LessThan4~11_cout\) # (!p5(6)))) # (!\sorter|b1~2_combout\ & (!p5(6) & !\sorter|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~2_combout\,
	datab => p5(6),
	datad => VCC,
	cin => \sorter|LessThan4~11_cout\,
	cout => \sorter|LessThan4~13_cout\);

-- Location: LCCOMB_X76_Y54_N18
\sorter|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan4~14_combout\ = (\sorter|b1~1_combout\ & ((\sorter|LessThan4~13_cout\) # (!p5(7)))) # (!\sorter|b1~1_combout\ & (\sorter|LessThan4~13_cout\ & !p5(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1~1_combout\,
	datad => p5(7),
	cin => \sorter|LessThan4~13_cout\,
	combout => \sorter|LessThan4~14_combout\);

-- Location: LCCOMB_X76_Y54_N0
\sorter|b2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[7]~1_combout\ = (\sorter|LessThan4~14_combout\ & (\sorter|b1~1_combout\)) # (!\sorter|LessThan4~14_combout\ & ((p5(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1~1_combout\,
	datac => p5(7),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[7]~1_combout\);

-- Location: LCCOMB_X76_Y53_N0
\sorter|a2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[7]~1_combout\ = (\sorter|LessThan1~14_combout\ & (\sorter|a1~1_combout\)) # (!\sorter|LessThan1~14_combout\ & ((p2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~1_combout\,
	datac => p2(7),
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[7]~1_combout\);

-- Location: LCCOMB_X74_Y55_N30
\p2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[6]~6_combout\ = (\Equal2~1_combout\ & (w12(6))) # (!\Equal2~1_combout\ & ((w02(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(6),
	datab => w02(6),
	datad => \Equal2~1_combout\,
	combout => \p2[6]~6_combout\);

-- Location: FF_X74_Y55_N31
\p2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[6]~6_combout\,
	asdata => \p1~2_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(6));

-- Location: LCCOMB_X76_Y53_N2
\sorter|a2[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[6]~2_combout\ = (\sorter|LessThan1~14_combout\ & ((\sorter|a1~2_combout\))) # (!\sorter|LessThan1~14_combout\ & (p2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p2(6),
	datac => \sorter|a1~2_combout\,
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[6]~2_combout\);

-- Location: LCCOMB_X77_Y54_N6
\sorter|b1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~3_combout\ = (\sorter|LessThan3~14_combout\ & (p3(5))) # (!\sorter|LessThan3~14_combout\ & ((p4(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(5),
	datac => p4(5),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b1~3_combout\);

-- Location: LCCOMB_X77_Y53_N16
\sorter|b2[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[5]~3_combout\ = (\sorter|LessThan4~14_combout\ & ((\sorter|b1~3_combout\))) # (!\sorter|LessThan4~14_combout\ & (p5(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p5(5),
	datab => \sorter|LessThan4~14_combout\,
	datad => \sorter|b1~3_combout\,
	combout => \sorter|b2[5]~3_combout\);

-- Location: LCCOMB_X79_Y54_N10
\p5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~4_combout\ = (\Equal5~1_combout\ & ((w11(4)))) # (!\Equal5~1_combout\ & (w12(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => w12(4),
	datad => w11(4),
	combout => \p5~4_combout\);

-- Location: FF_X76_Y54_N23
\p5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p5~4_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(4));

-- Location: LCCOMB_X76_Y54_N24
\sorter|b2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[4]~4_combout\ = (\sorter|LessThan4~14_combout\ & (\sorter|b1~4_combout\)) # (!\sorter|LessThan4~14_combout\ & ((p5(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~4_combout\,
	datab => p5(4),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[4]~4_combout\);

-- Location: FF_X75_Y55_N11
\p1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~5_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(3));

-- Location: LCCOMB_X75_Y55_N6
\sorter|a1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~5_combout\ = (\sorter|LessThan0~14_combout\ & (p0(3))) # (!\sorter|LessThan0~14_combout\ & ((p1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan0~14_combout\,
	datab => p0(3),
	datad => p1(3),
	combout => \sorter|a1~5_combout\);

-- Location: LCCOMB_X73_Y53_N18
\sorter|a2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[3]~5_combout\ = (\sorter|LessThan1~14_combout\ & ((\sorter|a1~5_combout\))) # (!\sorter|LessThan1~14_combout\ & (p2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p2(3),
	datac => \sorter|a1~5_combout\,
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[3]~5_combout\);

-- Location: LCCOMB_X73_Y53_N20
\p2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[2]~2_combout\ = (\Equal2~1_combout\ & ((w12(2)))) # (!\Equal2~1_combout\ & (w02(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w02(2),
	datab => \Equal2~1_combout\,
	datad => w12(2),
	combout => \p2[2]~2_combout\);

-- Location: FF_X73_Y53_N21
\p2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[2]~2_combout\,
	asdata => \p1~6_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(2));

-- Location: LCCOMB_X76_Y53_N28
\sorter|a2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[2]~6_combout\ = (\sorter|LessThan1~14_combout\ & (\sorter|a1~6_combout\)) # (!\sorter|LessThan1~14_combout\ & ((p2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~6_combout\,
	datac => p2(2),
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[2]~6_combout\);

-- Location: LCCOMB_X72_Y55_N26
\p2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[1]~1_combout\ = (\Equal2~1_combout\ & ((w12(1)))) # (!\Equal2~1_combout\ & (w02(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w02(1),
	datab => \Equal2~1_combout\,
	datad => w12(1),
	combout => \p2[1]~1_combout\);

-- Location: FF_X72_Y55_N27
\p2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[1]~1_combout\,
	asdata => \p1~7_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(1));

-- Location: LCCOMB_X72_Y55_N20
\sorter|a2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[1]~7_combout\ = (\sorter|LessThan1~14_combout\ & (\sorter|a1~7_combout\)) # (!\sorter|LessThan1~14_combout\ & ((p2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~7_combout\,
	datac => p2(1),
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a2[1]~7_combout\);

-- Location: LCCOMB_X77_Y52_N2
\p5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5~0_combout\ = (\Equal5~1_combout\ & ((w11(0)))) # (!\Equal5~1_combout\ & (w12(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w12(0),
	datac => w11(0),
	datad => \Equal5~1_combout\,
	combout => \p5~0_combout\);

-- Location: LCCOMB_X76_Y56_N4
\p5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \p5[0]~feeder_combout\ = \p5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p5~0_combout\,
	combout => \p5[0]~feeder_combout\);

-- Location: FF_X76_Y56_N5
\p5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p5[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p5(0));

-- Location: LCCOMB_X76_Y56_N6
\sorter|b2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[0]~0_combout\ = (\sorter|LessThan4~14_combout\ & (\sorter|b1~0_combout\)) # (!\sorter|LessThan4~14_combout\ & ((p5(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1~0_combout\,
	datac => p5(0),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[0]~0_combout\);

-- Location: LCCOMB_X76_Y53_N8
\sorter|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~1_cout\ = CARRY((\sorter|a2[0]~0_combout\ & !\sorter|b2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a2[0]~0_combout\,
	datab => \sorter|b2[0]~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan15~1_cout\);

-- Location: LCCOMB_X76_Y53_N10
\sorter|LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~3_cout\ = CARRY((\sorter|b2[1]~7_combout\ & ((!\sorter|LessThan15~1_cout\) # (!\sorter|a2[1]~7_combout\))) # (!\sorter|b2[1]~7_combout\ & (!\sorter|a2[1]~7_combout\ & !\sorter|LessThan15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[1]~7_combout\,
	datab => \sorter|a2[1]~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~1_cout\,
	cout => \sorter|LessThan15~3_cout\);

-- Location: LCCOMB_X76_Y53_N12
\sorter|LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~5_cout\ = CARRY((\sorter|b2[2]~6_combout\ & (\sorter|a2[2]~6_combout\ & !\sorter|LessThan15~3_cout\)) # (!\sorter|b2[2]~6_combout\ & ((\sorter|a2[2]~6_combout\) # (!\sorter|LessThan15~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[2]~6_combout\,
	datab => \sorter|a2[2]~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~3_cout\,
	cout => \sorter|LessThan15~5_cout\);

-- Location: LCCOMB_X76_Y53_N14
\sorter|LessThan15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~7_cout\ = CARRY((\sorter|b2[3]~5_combout\ & ((!\sorter|LessThan15~5_cout\) # (!\sorter|a2[3]~5_combout\))) # (!\sorter|b2[3]~5_combout\ & (!\sorter|a2[3]~5_combout\ & !\sorter|LessThan15~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[3]~5_combout\,
	datab => \sorter|a2[3]~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~5_cout\,
	cout => \sorter|LessThan15~7_cout\);

-- Location: LCCOMB_X76_Y53_N16
\sorter|LessThan15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~9_cout\ = CARRY((\sorter|a2[4]~4_combout\ & ((!\sorter|LessThan15~7_cout\) # (!\sorter|b2[4]~4_combout\))) # (!\sorter|a2[4]~4_combout\ & (!\sorter|b2[4]~4_combout\ & !\sorter|LessThan15~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a2[4]~4_combout\,
	datab => \sorter|b2[4]~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~7_cout\,
	cout => \sorter|LessThan15~9_cout\);

-- Location: LCCOMB_X76_Y53_N18
\sorter|LessThan15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~11_cout\ = CARRY((\sorter|a2[5]~3_combout\ & (\sorter|b2[5]~3_combout\ & !\sorter|LessThan15~9_cout\)) # (!\sorter|a2[5]~3_combout\ & ((\sorter|b2[5]~3_combout\) # (!\sorter|LessThan15~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a2[5]~3_combout\,
	datab => \sorter|b2[5]~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~9_cout\,
	cout => \sorter|LessThan15~11_cout\);

-- Location: LCCOMB_X76_Y53_N20
\sorter|LessThan15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~13_cout\ = CARRY((\sorter|b2[6]~2_combout\ & (\sorter|a2[6]~2_combout\ & !\sorter|LessThan15~11_cout\)) # (!\sorter|b2[6]~2_combout\ & ((\sorter|a2[6]~2_combout\) # (!\sorter|LessThan15~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[6]~2_combout\,
	datab => \sorter|a2[6]~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan15~11_cout\,
	cout => \sorter|LessThan15~13_cout\);

-- Location: LCCOMB_X76_Y53_N22
\sorter|LessThan15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan15~14_combout\ = (\sorter|b2[7]~1_combout\ & (\sorter|LessThan15~13_cout\ & \sorter|a2[7]~1_combout\)) # (!\sorter|b2[7]~1_combout\ & ((\sorter|LessThan15~13_cout\) # (\sorter|a2[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[7]~1_combout\,
	datad => \sorter|a2[7]~1_combout\,
	cin => \sorter|LessThan15~13_cout\,
	combout => \sorter|LessThan15~14_combout\);

-- Location: LCCOMB_X76_Y56_N0
\sorter|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~0_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[0]~0_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[0]~0_combout\,
	datac => \sorter|a2[0]~0_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~0_combout\);

-- Location: FF_X79_Y52_N5
\w22[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[7]~input_o\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(7));

-- Location: LCCOMB_X77_Y52_N28
\w21[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[7]~feeder_combout\ = w22(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w22(7),
	combout => \w21[7]~feeder_combout\);

-- Location: FF_X77_Y52_N29
\w21[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[7]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(7));

-- Location: FF_X75_Y52_N17
\w20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w21(7),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(7));

-- Location: LCCOMB_X74_Y52_N30
\p6[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[7]~7_combout\ = (\Equal3~1_combout\ & (p4(7))) # (!\Equal3~1_combout\ & ((w20(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => p4(7),
	datad => w20(7),
	combout => \p6[7]~7_combout\);

-- Location: LCCOMB_X80_Y55_N18
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal3~0_combout\ & (\LessThan3~2_combout\ & (!y_rd(4) & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \LessThan3~2_combout\,
	datac => y_rd(4),
	datad => \LessThan3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X76_Y52_N14
\p7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~1_combout\ = (\Equal3~1_combout\ & ((w11(7)))) # (!\Equal3~1_combout\ & (w21(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w21(7),
	datac => \Equal3~1_combout\,
	datad => w11(7),
	combout => \p7~1_combout\);

-- Location: FF_X74_Y52_N31
\p6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[7]~7_combout\,
	asdata => \p7~1_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(7));

-- Location: FF_X75_Y52_N31
\p7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~1_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(7));

-- Location: LCCOMB_X73_Y52_N20
\sorter|c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~1_combout\ = (\sorter|LessThan6~14_combout\ & (p6(7))) # (!\sorter|LessThan6~14_combout\ & ((p7(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan6~14_combout\,
	datac => p6(7),
	datad => p7(7),
	combout => \sorter|c1~1_combout\);

-- Location: LCCOMB_X77_Y52_N16
\p8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[7]~7_combout\ = (\Equal3~1_combout\ & ((w12(7)))) # (!\Equal3~1_combout\ & (w22(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w22(7),
	datab => w12(7),
	datad => \Equal3~1_combout\,
	combout => \p8[7]~7_combout\);

-- Location: FF_X77_Y52_N17
\p8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[7]~7_combout\,
	asdata => \p7~1_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(7));

-- Location: LCCOMB_X69_Y52_N20
\p8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[6]~6_combout\ = (\Equal3~1_combout\ & ((w12(6)))) # (!\Equal3~1_combout\ & (w22(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w22(6),
	datab => \Equal3~1_combout\,
	datad => w12(6),
	combout => \p8[6]~6_combout\);

-- Location: LCCOMB_X69_Y52_N2
\w22[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[6]~feeder_combout\ = \pixel_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[6]~input_o\,
	combout => \w22[6]~feeder_combout\);

-- Location: FF_X69_Y52_N3
\w22[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w22[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(6));

-- Location: LCCOMB_X69_Y52_N0
\w21[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[6]~feeder_combout\ = w22(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w22(6),
	combout => \w21[6]~feeder_combout\);

-- Location: FF_X69_Y52_N1
\w21[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[6]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(6));

-- Location: LCCOMB_X69_Y52_N14
\p7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~2_combout\ = (\Equal3~1_combout\ & (w11(6))) # (!\Equal3~1_combout\ & ((w21(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => w11(6),
	datad => w21(6),
	combout => \p7~2_combout\);

-- Location: FF_X69_Y52_N21
\p8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[6]~6_combout\,
	asdata => \p7~2_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(6));

-- Location: FF_X77_Y53_N23
\w22[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[5]~input_o\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(5));

-- Location: FF_X77_Y53_N7
\w21[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w22(5),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(5));

-- Location: LCCOMB_X76_Y52_N22
\w20[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[5]~feeder_combout\ = w21(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(5),
	combout => \w20[5]~feeder_combout\);

-- Location: FF_X76_Y52_N23
\w20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[5]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(5));

-- Location: LCCOMB_X76_Y52_N16
\p6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[5]~5_combout\ = (\Equal3~1_combout\ & ((p4(5)))) # (!\Equal3~1_combout\ & (w20(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => w20(5),
	datad => p4(5),
	combout => \p6[5]~5_combout\);

-- Location: LCCOMB_X76_Y52_N8
\p7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~3_combout\ = (\Equal3~1_combout\ & (w11(5))) # (!\Equal3~1_combout\ & ((w21(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datac => w11(5),
	datad => w21(5),
	combout => \p7~3_combout\);

-- Location: FF_X76_Y52_N17
\p6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[5]~5_combout\,
	asdata => \p7~3_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(5));

-- Location: FF_X75_Y52_N9
\p7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~2_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(6));

-- Location: LCCOMB_X76_Y52_N28
\p7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~4_combout\ = (\Equal3~1_combout\ & ((w11(4)))) # (!\Equal3~1_combout\ & (w21(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w21(4),
	datab => w11(4),
	datac => \Equal3~1_combout\,
	combout => \p7~4_combout\);

-- Location: FF_X75_Y52_N5
\p7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~4_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(4));

-- Location: LCCOMB_X77_Y52_N10
\w22[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[3]~feeder_combout\ = \pixel_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[3]~input_o\,
	combout => \w22[3]~feeder_combout\);

-- Location: FF_X77_Y52_N11
\w22[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w22[3]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(3));

-- Location: LCCOMB_X77_Y52_N24
\w21[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[3]~feeder_combout\ = w22(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w22(3),
	combout => \w21[3]~feeder_combout\);

-- Location: FF_X77_Y52_N25
\w21[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[3]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(3));

-- Location: LCCOMB_X76_Y52_N6
\w20[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[3]~feeder_combout\ = w21(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(3),
	combout => \w20[3]~feeder_combout\);

-- Location: FF_X76_Y52_N7
\w20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[3]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(3));

-- Location: LCCOMB_X76_Y52_N12
\p6[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[3]~3_combout\ = (\Equal3~1_combout\ & (p4(3))) # (!\Equal3~1_combout\ & ((w20(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => p4(3),
	datad => w20(3),
	combout => \p6[3]~3_combout\);

-- Location: LCCOMB_X76_Y52_N4
\p7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~5_combout\ = (\Equal3~1_combout\ & (w11(3))) # (!\Equal3~1_combout\ & ((w21(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w11(3),
	datac => \Equal3~1_combout\,
	datad => w21(3),
	combout => \p7~5_combout\);

-- Location: FF_X76_Y52_N13
\p6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[3]~3_combout\,
	asdata => \p7~5_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(3));

-- Location: LCCOMB_X69_Y52_N24
\w22[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[2]~feeder_combout\ = \pixel_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_in[2]~input_o\,
	combout => \w22[2]~feeder_combout\);

-- Location: FF_X69_Y52_N25
\w22[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w22[2]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(2));

-- Location: LCCOMB_X70_Y52_N18
\w21[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[2]~feeder_combout\ = w22(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w22(2),
	combout => \w21[2]~feeder_combout\);

-- Location: FF_X70_Y52_N19
\w21[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[2]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(2));

-- Location: LCCOMB_X74_Y52_N12
\p7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~6_combout\ = (\Equal3~1_combout\ & (w11(2))) # (!\Equal3~1_combout\ & ((w21(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => w11(2),
	datad => w21(2),
	combout => \p7~6_combout\);

-- Location: FF_X75_Y52_N1
\p7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~6_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(2));

-- Location: FF_X79_Y54_N15
\w22[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pixel_in[1]~input_o\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(1));

-- Location: FF_X79_Y54_N25
\w21[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => w22(1),
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(1));

-- Location: LCCOMB_X79_Y54_N28
\w20[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[1]~feeder_combout\ = w21(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(1),
	combout => \w20[1]~feeder_combout\);

-- Location: FF_X79_Y54_N29
\w20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[1]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(1));

-- Location: LCCOMB_X76_Y52_N18
\p6[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[1]~1_combout\ = (\Equal3~1_combout\ & (p4(1))) # (!\Equal3~1_combout\ & ((w20(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => p4(1),
	datad => w20(1),
	combout => \p6[1]~1_combout\);

-- Location: LCCOMB_X79_Y54_N6
\p7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~7_combout\ = (\Equal3~1_combout\ & ((w11(1)))) # (!\Equal3~1_combout\ & (w21(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w21(1),
	datac => \Equal3~1_combout\,
	datad => w11(1),
	combout => \p7~7_combout\);

-- Location: FF_X76_Y52_N19
\p6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[1]~1_combout\,
	asdata => \p7~7_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(1));

-- Location: LCCOMB_X74_Y52_N6
\w22[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[0]~feeder_combout\ = \pixel_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pixel_in[0]~input_o\,
	combout => \w22[0]~feeder_combout\);

-- Location: FF_X74_Y52_N7
\w22[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w22[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(0));

-- Location: LCCOMB_X74_Y52_N4
\w21[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[0]~feeder_combout\ = w22(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w22(0),
	combout => \w21[0]~feeder_combout\);

-- Location: FF_X74_Y52_N5
\w21[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w21[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(0));

-- Location: LCCOMB_X70_Y52_N8
\p7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p7~0_combout\ = (\Equal3~1_combout\ & (w11(0))) # (!\Equal3~1_combout\ & ((w21(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => w11(0),
	datad => w21(0),
	combout => \p7~0_combout\);

-- Location: FF_X75_Y52_N29
\p7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~0_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(0));

-- Location: LCCOMB_X75_Y52_N12
\sorter|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~1_cout\ = CARRY((p6(0) & !p7(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p6(0),
	datab => p7(0),
	datad => VCC,
	cout => \sorter|LessThan6~1_cout\);

-- Location: LCCOMB_X75_Y52_N14
\sorter|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~3_cout\ = CARRY((p7(1) & ((!\sorter|LessThan6~1_cout\) # (!p6(1)))) # (!p7(1) & (!p6(1) & !\sorter|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p7(1),
	datab => p6(1),
	datad => VCC,
	cin => \sorter|LessThan6~1_cout\,
	cout => \sorter|LessThan6~3_cout\);

-- Location: LCCOMB_X75_Y52_N16
\sorter|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~5_cout\ = CARRY((p6(2) & ((!\sorter|LessThan6~3_cout\) # (!p7(2)))) # (!p6(2) & (!p7(2) & !\sorter|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p6(2),
	datab => p7(2),
	datad => VCC,
	cin => \sorter|LessThan6~3_cout\,
	cout => \sorter|LessThan6~5_cout\);

-- Location: LCCOMB_X75_Y52_N18
\sorter|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~7_cout\ = CARRY((p7(3) & ((!\sorter|LessThan6~5_cout\) # (!p6(3)))) # (!p7(3) & (!p6(3) & !\sorter|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p7(3),
	datab => p6(3),
	datad => VCC,
	cin => \sorter|LessThan6~5_cout\,
	cout => \sorter|LessThan6~7_cout\);

-- Location: LCCOMB_X75_Y52_N20
\sorter|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~9_cout\ = CARRY((p6(4) & ((!\sorter|LessThan6~7_cout\) # (!p7(4)))) # (!p6(4) & (!p7(4) & !\sorter|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p6(4),
	datab => p7(4),
	datad => VCC,
	cin => \sorter|LessThan6~7_cout\,
	cout => \sorter|LessThan6~9_cout\);

-- Location: LCCOMB_X75_Y52_N22
\sorter|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~11_cout\ = CARRY((p7(5) & ((!\sorter|LessThan6~9_cout\) # (!p6(5)))) # (!p7(5) & (!p6(5) & !\sorter|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p7(5),
	datab => p6(5),
	datad => VCC,
	cin => \sorter|LessThan6~9_cout\,
	cout => \sorter|LessThan6~11_cout\);

-- Location: LCCOMB_X75_Y52_N24
\sorter|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~13_cout\ = CARRY((p6(6) & ((!\sorter|LessThan6~11_cout\) # (!p7(6)))) # (!p6(6) & (!p7(6) & !\sorter|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p6(6),
	datab => p7(6),
	datad => VCC,
	cin => \sorter|LessThan6~11_cout\,
	cout => \sorter|LessThan6~13_cout\);

-- Location: LCCOMB_X75_Y52_N26
\sorter|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan6~14_combout\ = (p7(7) & (\sorter|LessThan6~13_cout\ & p6(7))) # (!p7(7) & ((\sorter|LessThan6~13_cout\) # (p6(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p7(7),
	datad => p6(7),
	cin => \sorter|LessThan6~13_cout\,
	combout => \sorter|LessThan6~14_combout\);

-- Location: LCCOMB_X75_Y52_N4
\sorter|c1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~3_combout\ = (\sorter|LessThan6~14_combout\ & ((p6(5)))) # (!\sorter|LessThan6~14_combout\ & (p7(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p7(5),
	datab => p6(5),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c1~3_combout\);

-- Location: LCCOMB_X75_Y52_N0
\sorter|c1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~4_combout\ = (\sorter|LessThan6~14_combout\ & (p6(4))) # (!\sorter|LessThan6~14_combout\ & ((p7(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p6(4),
	datab => p7(4),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c1~4_combout\);

-- Location: LCCOMB_X77_Y52_N12
\p8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[3]~3_combout\ = (\Equal3~1_combout\ & (w12(3))) # (!\Equal3~1_combout\ & ((w22(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(3),
	datab => \Equal3~1_combout\,
	datad => w22(3),
	combout => \p8[3]~3_combout\);

-- Location: FF_X77_Y52_N13
\p8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[3]~3_combout\,
	asdata => \p7~5_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(3));

-- Location: LCCOMB_X75_Y52_N6
\sorter|c1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~6_combout\ = (\sorter|LessThan6~14_combout\ & (p6(2))) # (!\sorter|LessThan6~14_combout\ & ((p7(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p6(2),
	datab => p7(2),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c1~6_combout\);

-- Location: LCCOMB_X70_Y52_N14
\p8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[1]~1_combout\ = (\Equal3~1_combout\ & (w12(1))) # (!\Equal3~1_combout\ & ((w22(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(1),
	datab => w22(1),
	datad => \Equal3~1_combout\,
	combout => \p8[1]~1_combout\);

-- Location: FF_X70_Y52_N15
\p8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[1]~1_combout\,
	asdata => \p7~7_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(1));

-- Location: LCCOMB_X70_Y52_N28
\p8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[0]~0_combout\ = (\Equal3~1_combout\ & ((w12(0)))) # (!\Equal3~1_combout\ & (w22(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => w22(0),
	datad => w12(0),
	combout => \p8[0]~0_combout\);

-- Location: FF_X70_Y52_N29
\p8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[0]~0_combout\,
	asdata => \p7~0_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(0));

-- Location: LCCOMB_X73_Y52_N4
\sorter|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~1_cout\ = CARRY((\sorter|c1~0_combout\ & !p8(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~0_combout\,
	datab => p8(0),
	datad => VCC,
	cout => \sorter|LessThan7~1_cout\);

-- Location: LCCOMB_X73_Y52_N6
\sorter|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~3_cout\ = CARRY((\sorter|c1~7_combout\ & (p8(1) & !\sorter|LessThan7~1_cout\)) # (!\sorter|c1~7_combout\ & ((p8(1)) # (!\sorter|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~7_combout\,
	datab => p8(1),
	datad => VCC,
	cin => \sorter|LessThan7~1_cout\,
	cout => \sorter|LessThan7~3_cout\);

-- Location: LCCOMB_X73_Y52_N8
\sorter|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~5_cout\ = CARRY((p8(2) & (\sorter|c1~6_combout\ & !\sorter|LessThan7~3_cout\)) # (!p8(2) & ((\sorter|c1~6_combout\) # (!\sorter|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p8(2),
	datab => \sorter|c1~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan7~3_cout\,
	cout => \sorter|LessThan7~5_cout\);

-- Location: LCCOMB_X73_Y52_N10
\sorter|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~7_cout\ = CARRY((\sorter|c1~5_combout\ & (p8(3) & !\sorter|LessThan7~5_cout\)) # (!\sorter|c1~5_combout\ & ((p8(3)) # (!\sorter|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~5_combout\,
	datab => p8(3),
	datad => VCC,
	cin => \sorter|LessThan7~5_cout\,
	cout => \sorter|LessThan7~7_cout\);

-- Location: LCCOMB_X73_Y52_N12
\sorter|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~9_cout\ = CARRY((p8(4) & (\sorter|c1~4_combout\ & !\sorter|LessThan7~7_cout\)) # (!p8(4) & ((\sorter|c1~4_combout\) # (!\sorter|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p8(4),
	datab => \sorter|c1~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan7~7_cout\,
	cout => \sorter|LessThan7~9_cout\);

-- Location: LCCOMB_X73_Y52_N14
\sorter|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~11_cout\ = CARRY((p8(5) & ((!\sorter|LessThan7~9_cout\) # (!\sorter|c1~3_combout\))) # (!p8(5) & (!\sorter|c1~3_combout\ & !\sorter|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => p8(5),
	datab => \sorter|c1~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan7~9_cout\,
	cout => \sorter|LessThan7~11_cout\);

-- Location: LCCOMB_X73_Y52_N16
\sorter|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~13_cout\ = CARRY((\sorter|c1~2_combout\ & ((!\sorter|LessThan7~11_cout\) # (!p8(6)))) # (!\sorter|c1~2_combout\ & (!p8(6) & !\sorter|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~2_combout\,
	datab => p8(6),
	datad => VCC,
	cin => \sorter|LessThan7~11_cout\,
	cout => \sorter|LessThan7~13_cout\);

-- Location: LCCOMB_X73_Y52_N18
\sorter|LessThan7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan7~14_combout\ = (p8(7) & (\sorter|LessThan7~13_cout\ & \sorter|c1~1_combout\)) # (!p8(7) & ((\sorter|LessThan7~13_cout\) # (\sorter|c1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => p8(7),
	datad => \sorter|c1~1_combout\,
	cin => \sorter|LessThan7~13_cout\,
	combout => \sorter|LessThan7~14_combout\);

-- Location: LCCOMB_X74_Y52_N2
\sorter|c2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[7]~1_combout\ = (\sorter|LessThan7~14_combout\ & (\sorter|c1~1_combout\)) # (!\sorter|LessThan7~14_combout\ & ((p8(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~1_combout\,
	datac => p8(7),
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[7]~1_combout\);

-- Location: LCCOMB_X76_Y53_N6
\sorter|f1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~1_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[7]~1_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[7]~1_combout\,
	datac => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[7]~1_combout\,
	combout => \sorter|f1~1_combout\);

-- Location: LCCOMB_X77_Y55_N22
\p3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~2_combout\ = (\Equal4~2_combout\ & ((w11(6)))) # (!\Equal4~2_combout\ & (p4(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(6),
	datac => w11(6),
	datad => \Equal4~2_combout\,
	combout => \p3~2_combout\);

-- Location: FF_X77_Y54_N5
\p3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p3~2_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(6));

-- Location: LCCOMB_X76_Y54_N22
\sorter|b1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~2_combout\ = (\sorter|LessThan3~14_combout\ & ((p3(6)))) # (!\sorter|LessThan3~14_combout\ & (p4(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan3~14_combout\,
	datab => p4(6),
	datad => p3(6),
	combout => \sorter|b1~2_combout\);

-- Location: LCCOMB_X76_Y54_N30
\sorter|b2[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[6]~2_combout\ = (\sorter|LessThan4~14_combout\ & ((\sorter|b1~2_combout\))) # (!\sorter|LessThan4~14_combout\ & (p5(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p5(6),
	datac => \sorter|b1~2_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b2[6]~2_combout\);

-- Location: LCCOMB_X75_Y53_N0
\sorter|f1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~2_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|a2[6]~2_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|b2[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a2[6]~2_combout\,
	datac => \sorter|b2[6]~2_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~2_combout\);

-- Location: LCCOMB_X77_Y53_N2
\p8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[5]~5_combout\ = (\Equal3~1_combout\ & ((w12(5)))) # (!\Equal3~1_combout\ & (w22(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w22(5),
	datab => w12(5),
	datad => \Equal3~1_combout\,
	combout => \p8[5]~5_combout\);

-- Location: LCCOMB_X70_Y52_N10
\p8[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[5]~feeder_combout\ = \p8[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p8[5]~5_combout\,
	combout => \p8[5]~feeder_combout\);

-- Location: FF_X70_Y52_N11
\p8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[5]~feeder_combout\,
	asdata => \p7~3_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(5));

-- Location: LCCOMB_X74_Y52_N28
\sorter|c2[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[5]~3_combout\ = (\sorter|LessThan7~14_combout\ & ((\sorter|c1~3_combout\))) # (!\sorter|LessThan7~14_combout\ & (p8(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|LessThan7~14_combout\,
	datac => p8(5),
	datad => \sorter|c1~3_combout\,
	combout => \sorter|c2[5]~3_combout\);

-- Location: LCCOMB_X77_Y52_N22
\p8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[4]~4_combout\ = (\Equal3~1_combout\ & ((w12(4)))) # (!\Equal3~1_combout\ & (w22(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w22(4),
	datab => \Equal3~1_combout\,
	datad => w12(4),
	combout => \p8[4]~4_combout\);

-- Location: FF_X77_Y52_N23
\p8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[4]~4_combout\,
	asdata => \p7~4_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(4));

-- Location: LCCOMB_X74_Y52_N22
\sorter|c2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[4]~4_combout\ = (\sorter|LessThan7~14_combout\ & (\sorter|c1~4_combout\)) # (!\sorter|LessThan7~14_combout\ & ((p8(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~4_combout\,
	datac => p8(4),
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[4]~4_combout\);

-- Location: LCCOMB_X75_Y53_N6
\sorter|f1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~5_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[3]~5_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[3]~5_combout\,
	datac => \sorter|a2[3]~5_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~5_combout\);

-- Location: LCCOMB_X70_Y52_N24
\p8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p8[2]~2_combout\ = (\Equal3~1_combout\ & (w12(2))) # (!\Equal3~1_combout\ & ((w22(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w12(2),
	datab => w22(2),
	datad => \Equal3~1_combout\,
	combout => \p8[2]~2_combout\);

-- Location: FF_X70_Y52_N25
\p8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p8[2]~2_combout\,
	asdata => \p7~6_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p8(2));

-- Location: LCCOMB_X74_Y52_N0
\sorter|c2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[2]~6_combout\ = (\sorter|LessThan7~14_combout\ & (\sorter|c1~6_combout\)) # (!\sorter|LessThan7~14_combout\ & ((p8(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~6_combout\,
	datac => p8(2),
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[2]~6_combout\);

-- Location: LCCOMB_X75_Y53_N8
\sorter|f1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~7_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[1]~7_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[1]~7_combout\,
	datac => \sorter|a2[1]~7_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~7_combout\);

-- Location: LCCOMB_X75_Y53_N14
\sorter|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~1_cout\ = CARRY((!\sorter|c2[0]~0_combout\ & \sorter|f1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[0]~0_combout\,
	datab => \sorter|f1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan16~1_cout\);

-- Location: LCCOMB_X75_Y53_N16
\sorter|LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~3_cout\ = CARRY((\sorter|c2[1]~7_combout\ & ((!\sorter|LessThan16~1_cout\) # (!\sorter|f1~7_combout\))) # (!\sorter|c2[1]~7_combout\ & (!\sorter|f1~7_combout\ & !\sorter|LessThan16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[1]~7_combout\,
	datab => \sorter|f1~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~1_cout\,
	cout => \sorter|LessThan16~3_cout\);

-- Location: LCCOMB_X75_Y53_N18
\sorter|LessThan16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~5_cout\ = CARRY((\sorter|f1~6_combout\ & ((!\sorter|LessThan16~3_cout\) # (!\sorter|c2[2]~6_combout\))) # (!\sorter|f1~6_combout\ & (!\sorter|c2[2]~6_combout\ & !\sorter|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~6_combout\,
	datab => \sorter|c2[2]~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~3_cout\,
	cout => \sorter|LessThan16~5_cout\);

-- Location: LCCOMB_X75_Y53_N20
\sorter|LessThan16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~7_cout\ = CARRY((\sorter|c2[3]~5_combout\ & ((!\sorter|LessThan16~5_cout\) # (!\sorter|f1~5_combout\))) # (!\sorter|c2[3]~5_combout\ & (!\sorter|f1~5_combout\ & !\sorter|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[3]~5_combout\,
	datab => \sorter|f1~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~5_cout\,
	cout => \sorter|LessThan16~7_cout\);

-- Location: LCCOMB_X75_Y53_N22
\sorter|LessThan16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~9_cout\ = CARRY((\sorter|f1~4_combout\ & ((!\sorter|LessThan16~7_cout\) # (!\sorter|c2[4]~4_combout\))) # (!\sorter|f1~4_combout\ & (!\sorter|c2[4]~4_combout\ & !\sorter|LessThan16~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~4_combout\,
	datab => \sorter|c2[4]~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~7_cout\,
	cout => \sorter|LessThan16~9_cout\);

-- Location: LCCOMB_X75_Y53_N24
\sorter|LessThan16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~11_cout\ = CARRY((\sorter|f1~3_combout\ & (\sorter|c2[5]~3_combout\ & !\sorter|LessThan16~9_cout\)) # (!\sorter|f1~3_combout\ & ((\sorter|c2[5]~3_combout\) # (!\sorter|LessThan16~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~3_combout\,
	datab => \sorter|c2[5]~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~9_cout\,
	cout => \sorter|LessThan16~11_cout\);

-- Location: LCCOMB_X75_Y53_N26
\sorter|LessThan16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~13_cout\ = CARRY((\sorter|c2[6]~2_combout\ & (\sorter|f1~2_combout\ & !\sorter|LessThan16~11_cout\)) # (!\sorter|c2[6]~2_combout\ & ((\sorter|f1~2_combout\) # (!\sorter|LessThan16~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[6]~2_combout\,
	datab => \sorter|f1~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan16~11_cout\,
	cout => \sorter|LessThan16~13_cout\);

-- Location: LCCOMB_X75_Y53_N28
\sorter|LessThan16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan16~14_combout\ = (\sorter|c2[7]~1_combout\ & (\sorter|LessThan16~13_cout\ & \sorter|f1~1_combout\)) # (!\sorter|c2[7]~1_combout\ & ((\sorter|LessThan16~13_cout\) # (\sorter|f1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c2[7]~1_combout\,
	datad => \sorter|f1~1_combout\,
	cin => \sorter|LessThan16~13_cout\,
	combout => \sorter|LessThan16~14_combout\);

-- Location: LCCOMB_X75_Y53_N30
\sorter|f1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~8_combout\ = (\sorter|LessThan16~14_combout\ & (\sorter|c2[0]~0_combout\)) # (!\sorter|LessThan16~14_combout\ & ((\sorter|f1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[0]~0_combout\,
	datac => \sorter|f1~0_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~8_combout\);

-- Location: LCCOMB_X74_Y53_N0
\sorter|f1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~9_combout\ = (\sorter|LessThan16~14_combout\ & ((\sorter|c2[7]~1_combout\))) # (!\sorter|LessThan16~14_combout\ & (\sorter|f1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~1_combout\,
	datac => \sorter|c2[7]~1_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~9_combout\);

-- Location: LCCOMB_X76_Y53_N24
\sorter|f0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~2_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[6]~2_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[6]~2_combout\,
	datac => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[6]~2_combout\,
	combout => \sorter|f0~2_combout\);

-- Location: LCCOMB_X73_Y53_N4
\p2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2[5]~5_combout\ = (\Equal2~1_combout\ & ((w12(5)))) # (!\Equal2~1_combout\ & (w02(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w02(5),
	datab => w12(5),
	datad => \Equal2~1_combout\,
	combout => \p2[5]~5_combout\);

-- Location: FF_X73_Y53_N5
\p2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p2[5]~5_combout\,
	asdata => \p1~3_combout\,
	sload => \Equal5~1_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p2(5));

-- Location: LCCOMB_X74_Y55_N20
\sorter|a2[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[5]~3_combout\ = (\sorter|LessThan1~14_combout\ & ((\sorter|a1~3_combout\))) # (!\sorter|LessThan1~14_combout\ & (p2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p2(5),
	datac => \sorter|LessThan1~14_combout\,
	datad => \sorter|a1~3_combout\,
	combout => \sorter|a2[5]~3_combout\);

-- Location: LCCOMB_X77_Y53_N18
\sorter|f0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~3_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[5]~3_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[5]~3_combout\,
	datac => \sorter|a2[5]~3_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f0~3_combout\);

-- Location: LCCOMB_X74_Y55_N26
\sorter|a2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a2[4]~4_combout\ = (\sorter|LessThan1~14_combout\ & ((\sorter|a1~4_combout\))) # (!\sorter|LessThan1~14_combout\ & (p2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p2(4),
	datac => \sorter|LessThan1~14_combout\,
	datad => \sorter|a1~4_combout\,
	combout => \sorter|a2[4]~4_combout\);

-- Location: LCCOMB_X75_Y53_N12
\sorter|f1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~4_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|a2[4]~4_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|b2[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a2[4]~4_combout\,
	datac => \sorter|b2[4]~4_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f1~4_combout\);

-- Location: LCCOMB_X74_Y53_N4
\sorter|f1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~12_combout\ = (\sorter|LessThan16~14_combout\ & (\sorter|c2[4]~4_combout\)) # (!\sorter|LessThan16~14_combout\ & ((\sorter|f1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[4]~4_combout\,
	datac => \sorter|f1~4_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~12_combout\);

-- Location: LCCOMB_X73_Y53_N6
\sorter|f0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~5_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[3]~5_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[3]~5_combout\,
	datab => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[3]~5_combout\,
	combout => \sorter|f0~5_combout\);

-- Location: LCCOMB_X76_Y53_N4
\sorter|f1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~6_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|a2[2]~6_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|b2[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[2]~6_combout\,
	datac => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[2]~6_combout\,
	combout => \sorter|f1~6_combout\);

-- Location: LCCOMB_X74_Y53_N2
\sorter|f1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~14_combout\ = (\sorter|LessThan16~14_combout\ & (\sorter|c2[2]~6_combout\)) # (!\sorter|LessThan16~14_combout\ & ((\sorter|f1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c2[2]~6_combout\,
	datac => \sorter|f1~6_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~14_combout\);

-- Location: LCCOMB_X74_Y53_N28
\sorter|f1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~15_combout\ = (\sorter|LessThan16~14_combout\ & (\sorter|c2[1]~7_combout\)) # (!\sorter|LessThan16~14_combout\ & ((\sorter|f1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c2[1]~7_combout\,
	datac => \sorter|f1~7_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~15_combout\);

-- Location: LCCOMB_X76_Y56_N22
\sorter|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~0_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[0]~0_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b2[0]~0_combout\,
	datac => \sorter|a2[0]~0_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f0~0_combout\);

-- Location: LCCOMB_X74_Y53_N10
\sorter|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~1_cout\ = CARRY((!\sorter|f1~8_combout\ & \sorter|f0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~8_combout\,
	datab => \sorter|f0~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan17~1_cout\);

-- Location: LCCOMB_X74_Y53_N12
\sorter|LessThan17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~3_cout\ = CARRY((\sorter|f0~7_combout\ & (\sorter|f1~15_combout\ & !\sorter|LessThan17~1_cout\)) # (!\sorter|f0~7_combout\ & ((\sorter|f1~15_combout\) # (!\sorter|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~7_combout\,
	datab => \sorter|f1~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~1_cout\,
	cout => \sorter|LessThan17~3_cout\);

-- Location: LCCOMB_X74_Y53_N14
\sorter|LessThan17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~5_cout\ = CARRY((\sorter|f0~6_combout\ & ((!\sorter|LessThan17~3_cout\) # (!\sorter|f1~14_combout\))) # (!\sorter|f0~6_combout\ & (!\sorter|f1~14_combout\ & !\sorter|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~6_combout\,
	datab => \sorter|f1~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~3_cout\,
	cout => \sorter|LessThan17~5_cout\);

-- Location: LCCOMB_X74_Y53_N16
\sorter|LessThan17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~7_cout\ = CARRY((\sorter|f1~13_combout\ & ((!\sorter|LessThan17~5_cout\) # (!\sorter|f0~5_combout\))) # (!\sorter|f1~13_combout\ & (!\sorter|f0~5_combout\ & !\sorter|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~13_combout\,
	datab => \sorter|f0~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~5_cout\,
	cout => \sorter|LessThan17~7_cout\);

-- Location: LCCOMB_X74_Y53_N18
\sorter|LessThan17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~9_cout\ = CARRY((\sorter|f0~4_combout\ & ((!\sorter|LessThan17~7_cout\) # (!\sorter|f1~12_combout\))) # (!\sorter|f0~4_combout\ & (!\sorter|f1~12_combout\ & !\sorter|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~4_combout\,
	datab => \sorter|f1~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~7_cout\,
	cout => \sorter|LessThan17~9_cout\);

-- Location: LCCOMB_X74_Y53_N20
\sorter|LessThan17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~11_cout\ = CARRY((\sorter|f1~11_combout\ & ((!\sorter|LessThan17~9_cout\) # (!\sorter|f0~3_combout\))) # (!\sorter|f1~11_combout\ & (!\sorter|f0~3_combout\ & !\sorter|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~11_combout\,
	datab => \sorter|f0~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~9_cout\,
	cout => \sorter|LessThan17~11_cout\);

-- Location: LCCOMB_X74_Y53_N22
\sorter|LessThan17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~13_cout\ = CARRY((\sorter|f1~10_combout\ & (\sorter|f0~2_combout\ & !\sorter|LessThan17~11_cout\)) # (!\sorter|f1~10_combout\ & ((\sorter|f0~2_combout\) # (!\sorter|LessThan17~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~10_combout\,
	datab => \sorter|f0~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan17~11_cout\,
	cout => \sorter|LessThan17~13_cout\);

-- Location: LCCOMB_X74_Y53_N24
\sorter|LessThan17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan17~14_combout\ = (\sorter|f0~1_combout\ & ((\sorter|LessThan17~13_cout\) # (!\sorter|f1~9_combout\))) # (!\sorter|f0~1_combout\ & (\sorter|LessThan17~13_cout\ & !\sorter|f1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~1_combout\,
	datad => \sorter|f1~9_combout\,
	cin => \sorter|LessThan17~13_cout\,
	combout => \sorter|LessThan17~14_combout\);

-- Location: LCCOMB_X72_Y53_N24
\sorter|f1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[0]~16_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~0_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~0_combout\,
	datac => \sorter|f1~8_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[0]~16_combout\);

-- Location: LCCOMB_X73_Y55_N0
\sorter|a1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~9_combout\ = (\sorter|LessThan1~14_combout\ & ((p2(7)))) # (!\sorter|LessThan1~14_combout\ & (\sorter|a1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~1_combout\,
	datac => \sorter|LessThan1~14_combout\,
	datad => p2(7),
	combout => \sorter|a1~9_combout\);

-- Location: LCCOMB_X75_Y55_N12
\sorter|a0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~2_combout\ = (\sorter|LessThan0~14_combout\ & ((p1(6)))) # (!\sorter|LessThan0~14_combout\ & (p0(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p0(6),
	datab => p1(6),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~2_combout\);

-- Location: LCCOMB_X73_Y55_N4
\sorter|a1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~11_combout\ = (\sorter|LessThan1~14_combout\ & (p2(5))) # (!\sorter|LessThan1~14_combout\ & ((\sorter|a1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p2(5),
	datac => \sorter|LessThan1~14_combout\,
	datad => \sorter|a1~3_combout\,
	combout => \sorter|a1~11_combout\);

-- Location: LCCOMB_X74_Y55_N22
\sorter|a1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~12_combout\ = (\sorter|LessThan1~14_combout\ & (p2(4))) # (!\sorter|LessThan1~14_combout\ & ((\sorter|a1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p2(4),
	datac => \sorter|LessThan1~14_combout\,
	datad => \sorter|a1~4_combout\,
	combout => \sorter|a1~12_combout\);

-- Location: LCCOMB_X72_Y54_N0
\sorter|a1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~13_combout\ = (\sorter|LessThan1~14_combout\ & ((p2(3)))) # (!\sorter|LessThan1~14_combout\ & (\sorter|a1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~5_combout\,
	datac => p2(3),
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a1~13_combout\);

-- Location: LCCOMB_X75_Y55_N8
\sorter|a0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~6_combout\ = (\sorter|LessThan0~14_combout\ & ((p1(2)))) # (!\sorter|LessThan0~14_combout\ & (p0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p0(2),
	datab => p1(2),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~6_combout\);

-- Location: LCCOMB_X72_Y55_N22
\sorter|a0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~7_combout\ = (\sorter|LessThan0~14_combout\ & ((p1(1)))) # (!\sorter|LessThan0~14_combout\ & (p0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p0(1),
	datac => p1(1),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~7_combout\);

-- Location: LCCOMB_X75_Y55_N2
\sorter|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~0_combout\ = (\sorter|LessThan0~14_combout\ & (p1(0))) # (!\sorter|LessThan0~14_combout\ & ((p0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p1(0),
	datab => p0(0),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~0_combout\);

-- Location: LCCOMB_X73_Y55_N14
\sorter|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~1_cout\ = CARRY((!\sorter|a1~8_combout\ & \sorter|a0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~8_combout\,
	datab => \sorter|a0~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan2~1_cout\);

-- Location: LCCOMB_X73_Y55_N16
\sorter|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~3_cout\ = CARRY((\sorter|a1~15_combout\ & ((!\sorter|LessThan2~1_cout\) # (!\sorter|a0~7_combout\))) # (!\sorter|a1~15_combout\ & (!\sorter|a0~7_combout\ & !\sorter|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~15_combout\,
	datab => \sorter|a0~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~1_cout\,
	cout => \sorter|LessThan2~3_cout\);

-- Location: LCCOMB_X73_Y55_N18
\sorter|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~5_cout\ = CARRY((\sorter|a1~14_combout\ & (\sorter|a0~6_combout\ & !\sorter|LessThan2~3_cout\)) # (!\sorter|a1~14_combout\ & ((\sorter|a0~6_combout\) # (!\sorter|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~14_combout\,
	datab => \sorter|a0~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~3_cout\,
	cout => \sorter|LessThan2~5_cout\);

-- Location: LCCOMB_X73_Y55_N20
\sorter|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~7_cout\ = CARRY((\sorter|a0~5_combout\ & (\sorter|a1~13_combout\ & !\sorter|LessThan2~5_cout\)) # (!\sorter|a0~5_combout\ & ((\sorter|a1~13_combout\) # (!\sorter|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~5_combout\,
	datab => \sorter|a1~13_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~5_cout\,
	cout => \sorter|LessThan2~7_cout\);

-- Location: LCCOMB_X73_Y55_N22
\sorter|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~9_cout\ = CARRY((\sorter|a0~4_combout\ & ((!\sorter|LessThan2~7_cout\) # (!\sorter|a1~12_combout\))) # (!\sorter|a0~4_combout\ & (!\sorter|a1~12_combout\ & !\sorter|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~4_combout\,
	datab => \sorter|a1~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~7_cout\,
	cout => \sorter|LessThan2~9_cout\);

-- Location: LCCOMB_X73_Y55_N24
\sorter|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~11_cout\ = CARRY((\sorter|a0~3_combout\ & (\sorter|a1~11_combout\ & !\sorter|LessThan2~9_cout\)) # (!\sorter|a0~3_combout\ & ((\sorter|a1~11_combout\) # (!\sorter|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~3_combout\,
	datab => \sorter|a1~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~9_cout\,
	cout => \sorter|LessThan2~11_cout\);

-- Location: LCCOMB_X73_Y55_N26
\sorter|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~13_cout\ = CARRY((\sorter|a1~10_combout\ & (\sorter|a0~2_combout\ & !\sorter|LessThan2~11_cout\)) # (!\sorter|a1~10_combout\ & ((\sorter|a0~2_combout\) # (!\sorter|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~10_combout\,
	datab => \sorter|a0~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan2~11_cout\,
	cout => \sorter|LessThan2~13_cout\);

-- Location: LCCOMB_X73_Y55_N28
\sorter|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan2~14_combout\ = (\sorter|a0~1_combout\ & ((\sorter|LessThan2~13_cout\) # (!\sorter|a1~9_combout\))) # (!\sorter|a0~1_combout\ & (\sorter|LessThan2~13_cout\ & !\sorter|a1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~1_combout\,
	datad => \sorter|a1~9_combout\,
	cin => \sorter|LessThan2~13_cout\,
	combout => \sorter|LessThan2~14_combout\);

-- Location: LCCOMB_X74_Y54_N2
\sorter|a1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[7]~17_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a0~1_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~1_combout\,
	datac => \sorter|a1~9_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[7]~17_combout\);

-- Location: LCCOMB_X75_Y54_N28
\sorter|b0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~1_combout\ = (\sorter|LessThan3~14_combout\ & (p4(7))) # (!\sorter|LessThan3~14_combout\ & ((p3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(7),
	datab => p3(7),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~1_combout\);

-- Location: LCCOMB_X76_Y54_N28
\sorter|b1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~9_combout\ = (\sorter|LessThan4~14_combout\ & (p5(7))) # (!\sorter|LessThan4~14_combout\ & ((\sorter|b1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p5(7),
	datac => \sorter|b1~1_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~9_combout\);

-- Location: LCCOMB_X76_Y54_N20
\sorter|b1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~10_combout\ = (\sorter|LessThan4~14_combout\ & (p5(6))) # (!\sorter|LessThan4~14_combout\ & ((\sorter|b1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p5(6),
	datac => \sorter|b1~2_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~10_combout\);

-- Location: LCCOMB_X72_Y54_N24
\sorter|b0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~3_combout\ = (\sorter|LessThan3~14_combout\ & ((p4(5)))) # (!\sorter|LessThan3~14_combout\ & (p3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(5),
	datac => p4(5),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~3_combout\);

-- Location: LCCOMB_X75_Y54_N8
\sorter|b1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~12_combout\ = (\sorter|LessThan4~14_combout\ & ((p5(4)))) # (!\sorter|LessThan4~14_combout\ & (\sorter|b1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~4_combout\,
	datab => p5(4),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~12_combout\);

-- Location: LCCOMB_X77_Y54_N0
\sorter|b0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~5_combout\ = (\sorter|LessThan3~14_combout\ & (p4(3))) # (!\sorter|LessThan3~14_combout\ & ((p3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(3),
	datab => p3(3),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~5_combout\);

-- Location: LCCOMB_X77_Y53_N26
\sorter|b0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~6_combout\ = (\sorter|LessThan3~14_combout\ & (p4(2))) # (!\sorter|LessThan3~14_combout\ & ((p3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan3~14_combout\,
	datab => p4(2),
	datad => p3(2),
	combout => \sorter|b0~6_combout\);

-- Location: LCCOMB_X77_Y54_N14
\sorter|b0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~7_combout\ = (\sorter|LessThan3~14_combout\ & ((p4(1)))) # (!\sorter|LessThan3~14_combout\ & (p3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(1),
	datab => p4(1),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~7_combout\);

-- Location: LCCOMB_X76_Y56_N14
\sorter|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~0_combout\ = (\sorter|LessThan3~14_combout\ & ((p4(0)))) # (!\sorter|LessThan3~14_combout\ & (p3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p3(0),
	datac => \sorter|LessThan3~14_combout\,
	datad => p4(0),
	combout => \sorter|b0~0_combout\);

-- Location: LCCOMB_X75_Y54_N10
\sorter|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~1_cout\ = CARRY((!\sorter|b1~8_combout\ & \sorter|b0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~8_combout\,
	datab => \sorter|b0~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan5~1_cout\);

-- Location: LCCOMB_X75_Y54_N12
\sorter|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~3_cout\ = CARRY((\sorter|b1~15_combout\ & ((!\sorter|LessThan5~1_cout\) # (!\sorter|b0~7_combout\))) # (!\sorter|b1~15_combout\ & (!\sorter|b0~7_combout\ & !\sorter|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~15_combout\,
	datab => \sorter|b0~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~1_cout\,
	cout => \sorter|LessThan5~3_cout\);

-- Location: LCCOMB_X75_Y54_N14
\sorter|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~5_cout\ = CARRY((\sorter|b1~14_combout\ & (\sorter|b0~6_combout\ & !\sorter|LessThan5~3_cout\)) # (!\sorter|b1~14_combout\ & ((\sorter|b0~6_combout\) # (!\sorter|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~14_combout\,
	datab => \sorter|b0~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~3_cout\,
	cout => \sorter|LessThan5~5_cout\);

-- Location: LCCOMB_X75_Y54_N16
\sorter|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~7_cout\ = CARRY((\sorter|b1~13_combout\ & ((!\sorter|LessThan5~5_cout\) # (!\sorter|b0~5_combout\))) # (!\sorter|b1~13_combout\ & (!\sorter|b0~5_combout\ & !\sorter|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~13_combout\,
	datab => \sorter|b0~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~5_cout\,
	cout => \sorter|LessThan5~7_cout\);

-- Location: LCCOMB_X75_Y54_N18
\sorter|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~9_cout\ = CARRY((\sorter|b0~4_combout\ & ((!\sorter|LessThan5~7_cout\) # (!\sorter|b1~12_combout\))) # (!\sorter|b0~4_combout\ & (!\sorter|b1~12_combout\ & !\sorter|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~4_combout\,
	datab => \sorter|b1~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~7_cout\,
	cout => \sorter|LessThan5~9_cout\);

-- Location: LCCOMB_X75_Y54_N20
\sorter|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~11_cout\ = CARRY((\sorter|b1~11_combout\ & ((!\sorter|LessThan5~9_cout\) # (!\sorter|b0~3_combout\))) # (!\sorter|b1~11_combout\ & (!\sorter|b0~3_combout\ & !\sorter|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~11_combout\,
	datab => \sorter|b0~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~9_cout\,
	cout => \sorter|LessThan5~11_cout\);

-- Location: LCCOMB_X75_Y54_N22
\sorter|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~13_cout\ = CARRY((\sorter|b0~2_combout\ & ((!\sorter|LessThan5~11_cout\) # (!\sorter|b1~10_combout\))) # (!\sorter|b0~2_combout\ & (!\sorter|b1~10_combout\ & !\sorter|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~2_combout\,
	datab => \sorter|b1~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan5~11_cout\,
	cout => \sorter|LessThan5~13_cout\);

-- Location: LCCOMB_X75_Y54_N24
\sorter|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan5~14_combout\ = (\sorter|b0~1_combout\ & ((\sorter|LessThan5~13_cout\) # (!\sorter|b1~9_combout\))) # (!\sorter|b0~1_combout\ & (\sorter|LessThan5~13_cout\ & !\sorter|b1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~1_combout\,
	datad => \sorter|b1~9_combout\,
	cin => \sorter|LessThan5~13_cout\,
	combout => \sorter|LessThan5~14_combout\);

-- Location: LCCOMB_X74_Y54_N24
\sorter|b1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[7]~17_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~1_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~1_combout\,
	datac => \sorter|b1~9_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[7]~17_combout\);

-- Location: LCCOMB_X74_Y54_N28
\sorter|b1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[6]~18_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~2_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~2_combout\,
	datac => \sorter|b1~10_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[6]~18_combout\);

-- Location: LCCOMB_X75_Y54_N26
\sorter|b1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~11_combout\ = (\sorter|LessThan4~14_combout\ & (p5(5))) # (!\sorter|LessThan4~14_combout\ & ((\sorter|b1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p5(5),
	datac => \sorter|b1~3_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~11_combout\);

-- Location: LCCOMB_X75_Y54_N0
\sorter|b1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[5]~19_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~3_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~3_combout\,
	datac => \sorter|b1~11_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[5]~19_combout\);

-- Location: FF_X75_Y55_N5
\p1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p1~4_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p1(4));

-- Location: LCCOMB_X73_Y56_N0
\sorter|a0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~4_combout\ = (\sorter|LessThan0~14_combout\ & ((p1(4)))) # (!\sorter|LessThan0~14_combout\ & (p0(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p0(4),
	datac => p1(4),
	datad => \sorter|LessThan0~14_combout\,
	combout => \sorter|a0~4_combout\);

-- Location: LCCOMB_X73_Y56_N20
\sorter|a1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[4]~20_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a0~4_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0~4_combout\,
	datac => \sorter|a1~12_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[4]~20_combout\);

-- Location: LCCOMB_X72_Y54_N8
\sorter|a1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[3]~21_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a0~5_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~5_combout\,
	datac => \sorter|LessThan2~14_combout\,
	datad => \sorter|a1~13_combout\,
	combout => \sorter|a1[3]~21_combout\);

-- Location: LCCOMB_X73_Y55_N2
\sorter|a1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[2]~22_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a0~6_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~14_combout\,
	datac => \sorter|a0~6_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[2]~22_combout\);

-- Location: LCCOMB_X72_Y55_N16
\sorter|a1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~15_combout\ = (\sorter|LessThan1~14_combout\ & ((p2(1)))) # (!\sorter|LessThan1~14_combout\ & (\sorter|a1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~7_combout\,
	datac => p2(1),
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a1~15_combout\);

-- Location: LCCOMB_X72_Y55_N8
\sorter|a1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[1]~23_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a0~7_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~15_combout\,
	datac => \sorter|a0~7_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[1]~23_combout\);

-- Location: LCCOMB_X73_Y55_N30
\sorter|a1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[0]~16_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a0~0_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~8_combout\,
	datac => \sorter|a0~0_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[0]~16_combout\);

-- Location: LCCOMB_X74_Y54_N6
\sorter|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~1_cout\ = CARRY((!\sorter|b1[0]~16_combout\ & \sorter|a1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[0]~16_combout\,
	datab => \sorter|a1[0]~16_combout\,
	datad => VCC,
	cout => \sorter|LessThan12~1_cout\);

-- Location: LCCOMB_X74_Y54_N8
\sorter|LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~3_cout\ = CARRY((\sorter|b1[1]~23_combout\ & ((!\sorter|LessThan12~1_cout\) # (!\sorter|a1[1]~23_combout\))) # (!\sorter|b1[1]~23_combout\ & (!\sorter|a1[1]~23_combout\ & !\sorter|LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[1]~23_combout\,
	datab => \sorter|a1[1]~23_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~1_cout\,
	cout => \sorter|LessThan12~3_cout\);

-- Location: LCCOMB_X74_Y54_N10
\sorter|LessThan12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~5_cout\ = CARRY((\sorter|b1[2]~22_combout\ & (\sorter|a1[2]~22_combout\ & !\sorter|LessThan12~3_cout\)) # (!\sorter|b1[2]~22_combout\ & ((\sorter|a1[2]~22_combout\) # (!\sorter|LessThan12~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[2]~22_combout\,
	datab => \sorter|a1[2]~22_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~3_cout\,
	cout => \sorter|LessThan12~5_cout\);

-- Location: LCCOMB_X74_Y54_N12
\sorter|LessThan12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~7_cout\ = CARRY((\sorter|b1[3]~21_combout\ & ((!\sorter|LessThan12~5_cout\) # (!\sorter|a1[3]~21_combout\))) # (!\sorter|b1[3]~21_combout\ & (!\sorter|a1[3]~21_combout\ & !\sorter|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[3]~21_combout\,
	datab => \sorter|a1[3]~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~5_cout\,
	cout => \sorter|LessThan12~7_cout\);

-- Location: LCCOMB_X74_Y54_N14
\sorter|LessThan12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~9_cout\ = CARRY((\sorter|b1[4]~20_combout\ & (\sorter|a1[4]~20_combout\ & !\sorter|LessThan12~7_cout\)) # (!\sorter|b1[4]~20_combout\ & ((\sorter|a1[4]~20_combout\) # (!\sorter|LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[4]~20_combout\,
	datab => \sorter|a1[4]~20_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~7_cout\,
	cout => \sorter|LessThan12~9_cout\);

-- Location: LCCOMB_X74_Y54_N16
\sorter|LessThan12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~11_cout\ = CARRY((\sorter|a1[5]~19_combout\ & (\sorter|b1[5]~19_combout\ & !\sorter|LessThan12~9_cout\)) # (!\sorter|a1[5]~19_combout\ & ((\sorter|b1[5]~19_combout\) # (!\sorter|LessThan12~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1[5]~19_combout\,
	datab => \sorter|b1[5]~19_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~9_cout\,
	cout => \sorter|LessThan12~11_cout\);

-- Location: LCCOMB_X74_Y54_N18
\sorter|LessThan12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~13_cout\ = CARRY((\sorter|a1[6]~18_combout\ & ((!\sorter|LessThan12~11_cout\) # (!\sorter|b1[6]~18_combout\))) # (!\sorter|a1[6]~18_combout\ & (!\sorter|b1[6]~18_combout\ & !\sorter|LessThan12~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1[6]~18_combout\,
	datab => \sorter|b1[6]~18_combout\,
	datad => VCC,
	cin => \sorter|LessThan12~11_cout\,
	cout => \sorter|LessThan12~13_cout\);

-- Location: LCCOMB_X74_Y54_N20
\sorter|LessThan12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan12~14_combout\ = (\sorter|a1[7]~17_combout\ & ((\sorter|LessThan12~13_cout\) # (!\sorter|b1[7]~17_combout\))) # (!\sorter|a1[7]~17_combout\ & (\sorter|LessThan12~13_cout\ & !\sorter|b1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1[7]~17_combout\,
	datad => \sorter|b1[7]~17_combout\,
	cin => \sorter|LessThan12~13_cout\,
	combout => \sorter|LessThan12~14_combout\);

-- Location: LCCOMB_X76_Y56_N20
\sorter|b1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~8_combout\ = (\sorter|LessThan4~14_combout\ & ((p5(0)))) # (!\sorter|LessThan4~14_combout\ & (\sorter|b1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1~0_combout\,
	datac => p5(0),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~8_combout\);

-- Location: LCCOMB_X70_Y54_N24
\sorter|b1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[0]~16_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~0_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~0_combout\,
	datac => \sorter|b1~8_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[0]~16_combout\);

-- Location: LCCOMB_X73_Y54_N0
\sorter|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~0_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|a1[0]~16_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|b1[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1[0]~16_combout\,
	datac => \sorter|LessThan12~14_combout\,
	datad => \sorter|b1[0]~16_combout\,
	combout => \sorter|e1~0_combout\);

-- Location: LCCOMB_X75_Y52_N30
\sorter|c0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~1_combout\ = (\sorter|LessThan6~14_combout\ & (p7(7))) # (!\sorter|LessThan6~14_combout\ & ((p6(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan6~14_combout\,
	datac => p7(7),
	datad => p6(7),
	combout => \sorter|c0~1_combout\);

-- Location: LCCOMB_X73_Y52_N24
\sorter|c1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~9_combout\ = (\sorter|LessThan7~14_combout\ & (p8(7))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|LessThan7~14_combout\,
	datac => p8(7),
	datad => \sorter|c1~1_combout\,
	combout => \sorter|c1~9_combout\);

-- Location: LCCOMB_X74_Y52_N16
\p6[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[6]~6_combout\ = (\Equal3~1_combout\ & ((p4(6)))) # (!\Equal3~1_combout\ & (w20(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w20(6),
	datab => p4(6),
	datad => \Equal3~1_combout\,
	combout => \p6[6]~6_combout\);

-- Location: FF_X74_Y52_N17
\p6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[6]~6_combout\,
	asdata => \p7~2_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(6));

-- Location: LCCOMB_X73_Y52_N26
\sorter|c1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~2_combout\ = (\sorter|LessThan6~14_combout\ & ((p6(6)))) # (!\sorter|LessThan6~14_combout\ & (p7(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p7(6),
	datac => \sorter|LessThan6~14_combout\,
	datad => p6(6),
	combout => \sorter|c1~2_combout\);

-- Location: LCCOMB_X73_Y52_N22
\sorter|c1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~10_combout\ = (\sorter|LessThan7~14_combout\ & (p8(6))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(6),
	datac => \sorter|c1~2_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~10_combout\);

-- Location: LCCOMB_X72_Y52_N8
\sorter|c1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~11_combout\ = (\sorter|LessThan7~14_combout\ & (p8(5))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p8(5),
	datac => \sorter|c1~3_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~11_combout\);

-- Location: LCCOMB_X72_Y52_N28
\sorter|c0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~4_combout\ = (\sorter|LessThan6~14_combout\ & ((p7(4)))) # (!\sorter|LessThan6~14_combout\ & (p6(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p6(4),
	datab => \sorter|LessThan6~14_combout\,
	datad => p7(4),
	combout => \sorter|c0~4_combout\);

-- Location: FF_X75_Y52_N3
\p7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~5_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(3));

-- Location: LCCOMB_X75_Y52_N10
\sorter|c1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~5_combout\ = (\sorter|LessThan6~14_combout\ & (p6(3))) # (!\sorter|LessThan6~14_combout\ & ((p7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan6~14_combout\,
	datab => p6(3),
	datad => p7(3),
	combout => \sorter|c1~5_combout\);

-- Location: LCCOMB_X73_Y52_N28
\sorter|c1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~13_combout\ = (\sorter|LessThan7~14_combout\ & (p8(3))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(3),
	datac => \sorter|c1~5_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~13_combout\);

-- Location: LCCOMB_X74_Y52_N18
\w20[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[2]~feeder_combout\ = w21(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w21(2),
	combout => \w20[2]~feeder_combout\);

-- Location: FF_X74_Y52_N19
\w20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[2]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(2));

-- Location: LCCOMB_X74_Y52_N26
\p6[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[2]~2_combout\ = (\Equal3~1_combout\ & (p4(2))) # (!\Equal3~1_combout\ & ((w20(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => p4(2),
	datad => w20(2),
	combout => \p6[2]~2_combout\);

-- Location: FF_X74_Y52_N27
\p6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[2]~2_combout\,
	asdata => \p7~6_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(2));

-- Location: LCCOMB_X70_Y52_N16
\sorter|c0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~6_combout\ = (\sorter|LessThan6~14_combout\ & (p7(2))) # (!\sorter|LessThan6~14_combout\ & ((p6(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p7(2),
	datac => p6(2),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c0~6_combout\);

-- Location: FF_X75_Y52_N11
\p7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \p7~7_combout\,
	sload => VCC,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p7(1));

-- Location: LCCOMB_X75_Y52_N2
\sorter|c1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~7_combout\ = (\sorter|LessThan6~14_combout\ & (p6(1))) # (!\sorter|LessThan6~14_combout\ & ((p7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan6~14_combout\,
	datab => p6(1),
	datad => p7(1),
	combout => \sorter|c1~7_combout\);

-- Location: LCCOMB_X70_Y52_N2
\sorter|c1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~15_combout\ = (\sorter|LessThan7~14_combout\ & (p8(1))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(1),
	datac => \sorter|c1~7_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~15_combout\);

-- Location: LCCOMB_X74_Y52_N14
\w20[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w20[0]~feeder_combout\ = w21(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w21(0),
	combout => \w20[0]~feeder_combout\);

-- Location: FF_X74_Y52_N15
\w20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w20[0]~feeder_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w20(0));

-- Location: LCCOMB_X74_Y52_N8
\p6[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p6[0]~0_combout\ = (\Equal3~1_combout\ & ((p4(0)))) # (!\Equal3~1_combout\ & (w20(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => w20(0),
	datad => p4(0),
	combout => \p6[0]~0_combout\);

-- Location: FF_X74_Y52_N9
\p6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p6[0]~0_combout\,
	asdata => \p7~0_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p6(0));

-- Location: LCCOMB_X74_Y52_N10
\sorter|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~0_combout\ = (\sorter|LessThan6~14_combout\ & (p7(0))) # (!\sorter|LessThan6~14_combout\ & ((p6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p7(0),
	datac => p6(0),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c0~0_combout\);

-- Location: LCCOMB_X72_Y52_N10
\sorter|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~1_cout\ = CARRY((!\sorter|c1~8_combout\ & \sorter|c0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~8_combout\,
	datab => \sorter|c0~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan8~1_cout\);

-- Location: LCCOMB_X72_Y52_N12
\sorter|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~3_cout\ = CARRY((\sorter|c0~7_combout\ & (\sorter|c1~15_combout\ & !\sorter|LessThan8~1_cout\)) # (!\sorter|c0~7_combout\ & ((\sorter|c1~15_combout\) # (!\sorter|LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~7_combout\,
	datab => \sorter|c1~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~1_cout\,
	cout => \sorter|LessThan8~3_cout\);

-- Location: LCCOMB_X72_Y52_N14
\sorter|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~5_cout\ = CARRY((\sorter|c1~14_combout\ & (\sorter|c0~6_combout\ & !\sorter|LessThan8~3_cout\)) # (!\sorter|c1~14_combout\ & ((\sorter|c0~6_combout\) # (!\sorter|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~14_combout\,
	datab => \sorter|c0~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~3_cout\,
	cout => \sorter|LessThan8~5_cout\);

-- Location: LCCOMB_X72_Y52_N16
\sorter|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~7_cout\ = CARRY((\sorter|c0~5_combout\ & (\sorter|c1~13_combout\ & !\sorter|LessThan8~5_cout\)) # (!\sorter|c0~5_combout\ & ((\sorter|c1~13_combout\) # (!\sorter|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~5_combout\,
	datab => \sorter|c1~13_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~5_cout\,
	cout => \sorter|LessThan8~7_cout\);

-- Location: LCCOMB_X72_Y52_N18
\sorter|LessThan8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~9_cout\ = CARRY((\sorter|c1~12_combout\ & (\sorter|c0~4_combout\ & !\sorter|LessThan8~7_cout\)) # (!\sorter|c1~12_combout\ & ((\sorter|c0~4_combout\) # (!\sorter|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~12_combout\,
	datab => \sorter|c0~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~7_cout\,
	cout => \sorter|LessThan8~9_cout\);

-- Location: LCCOMB_X72_Y52_N20
\sorter|LessThan8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~11_cout\ = CARRY((\sorter|c0~3_combout\ & (\sorter|c1~11_combout\ & !\sorter|LessThan8~9_cout\)) # (!\sorter|c0~3_combout\ & ((\sorter|c1~11_combout\) # (!\sorter|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~3_combout\,
	datab => \sorter|c1~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~9_cout\,
	cout => \sorter|LessThan8~11_cout\);

-- Location: LCCOMB_X72_Y52_N22
\sorter|LessThan8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~13_cout\ = CARRY((\sorter|c0~2_combout\ & ((!\sorter|LessThan8~11_cout\) # (!\sorter|c1~10_combout\))) # (!\sorter|c0~2_combout\ & (!\sorter|c1~10_combout\ & !\sorter|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~2_combout\,
	datab => \sorter|c1~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan8~11_cout\,
	cout => \sorter|LessThan8~13_cout\);

-- Location: LCCOMB_X72_Y52_N24
\sorter|LessThan8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan8~14_combout\ = (\sorter|c0~1_combout\ & ((\sorter|LessThan8~13_cout\) # (!\sorter|c1~9_combout\))) # (!\sorter|c0~1_combout\ & (\sorter|LessThan8~13_cout\ & !\sorter|c1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~1_combout\,
	datad => \sorter|c1~9_combout\,
	cin => \sorter|LessThan8~13_cout\,
	combout => \sorter|LessThan8~14_combout\);

-- Location: LCCOMB_X73_Y54_N2
\sorter|c1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[7]~17_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c0~1_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~9_combout\,
	datab => \sorter|c0~1_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[7]~17_combout\);

-- Location: LCCOMB_X74_Y54_N4
\sorter|e1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~1_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|a1[7]~17_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|b1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1[7]~17_combout\,
	datac => \sorter|a1[7]~17_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~1_combout\);

-- Location: LCCOMB_X73_Y54_N28
\sorter|c1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[6]~18_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c0~2_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~2_combout\,
	datab => \sorter|c1~10_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[6]~18_combout\);

-- Location: LCCOMB_X74_Y54_N0
\sorter|e1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~3_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|a1[5]~19_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|b1[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1[5]~19_combout\,
	datac => \sorter|b1[5]~19_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~3_combout\);

-- Location: LCCOMB_X73_Y56_N26
\sorter|e1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~4_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|a1[4]~20_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|b1[4]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[4]~20_combout\,
	datab => \sorter|a1[4]~20_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~4_combout\);

-- Location: LCCOMB_X72_Y52_N26
\sorter|c0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~5_combout\ = (\sorter|LessThan6~14_combout\ & ((p7(3)))) # (!\sorter|LessThan6~14_combout\ & (p6(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p6(3),
	datab => p7(3),
	datad => \sorter|LessThan6~14_combout\,
	combout => \sorter|c0~5_combout\);

-- Location: LCCOMB_X72_Y54_N18
\sorter|c1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[3]~21_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c0~5_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1~13_combout\,
	datab => \sorter|c0~5_combout\,
	datac => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[3]~21_combout\);

-- Location: LCCOMB_X70_Y54_N2
\sorter|e1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~6_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|a1[2]~22_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|b1[2]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[2]~22_combout\,
	datac => \sorter|a1[2]~22_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~6_combout\);

-- Location: LCCOMB_X77_Y54_N4
\sorter|b1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~7_combout\ = (\sorter|LessThan3~14_combout\ & (p3(1))) # (!\sorter|LessThan3~14_combout\ & ((p4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p3(1),
	datab => p4(1),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b1~7_combout\);

-- Location: LCCOMB_X75_Y54_N30
\sorter|b1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~15_combout\ = (\sorter|LessThan4~14_combout\ & ((p5(1)))) # (!\sorter|LessThan4~14_combout\ & (\sorter|b1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1~7_combout\,
	datac => p5(1),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~15_combout\);

-- Location: LCCOMB_X75_Y54_N2
\sorter|b1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[1]~23_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~7_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~7_combout\,
	datac => \sorter|b1~15_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[1]~23_combout\);

-- Location: LCCOMB_X72_Y55_N4
\sorter|e1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~7_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|a1[1]~23_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|b1[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1[1]~23_combout\,
	datac => \sorter|b1[1]~23_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~7_combout\);

-- Location: LCCOMB_X73_Y54_N10
\sorter|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~1_cout\ = CARRY((!\sorter|c1[0]~16_combout\ & \sorter|e1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[0]~16_combout\,
	datab => \sorter|e1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan13~1_cout\);

-- Location: LCCOMB_X73_Y54_N12
\sorter|LessThan13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~3_cout\ = CARRY((\sorter|c1[1]~23_combout\ & ((!\sorter|LessThan13~1_cout\) # (!\sorter|e1~7_combout\))) # (!\sorter|c1[1]~23_combout\ & (!\sorter|e1~7_combout\ & !\sorter|LessThan13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[1]~23_combout\,
	datab => \sorter|e1~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~1_cout\,
	cout => \sorter|LessThan13~3_cout\);

-- Location: LCCOMB_X73_Y54_N14
\sorter|LessThan13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~5_cout\ = CARRY((\sorter|c1[2]~22_combout\ & (\sorter|e1~6_combout\ & !\sorter|LessThan13~3_cout\)) # (!\sorter|c1[2]~22_combout\ & ((\sorter|e1~6_combout\) # (!\sorter|LessThan13~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[2]~22_combout\,
	datab => \sorter|e1~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~3_cout\,
	cout => \sorter|LessThan13~5_cout\);

-- Location: LCCOMB_X73_Y54_N16
\sorter|LessThan13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~7_cout\ = CARRY((\sorter|e1~5_combout\ & (\sorter|c1[3]~21_combout\ & !\sorter|LessThan13~5_cout\)) # (!\sorter|e1~5_combout\ & ((\sorter|c1[3]~21_combout\) # (!\sorter|LessThan13~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~5_combout\,
	datab => \sorter|c1[3]~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~5_cout\,
	cout => \sorter|LessThan13~7_cout\);

-- Location: LCCOMB_X73_Y54_N18
\sorter|LessThan13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~9_cout\ = CARRY((\sorter|c1[4]~20_combout\ & (\sorter|e1~4_combout\ & !\sorter|LessThan13~7_cout\)) # (!\sorter|c1[4]~20_combout\ & ((\sorter|e1~4_combout\) # (!\sorter|LessThan13~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[4]~20_combout\,
	datab => \sorter|e1~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~7_cout\,
	cout => \sorter|LessThan13~9_cout\);

-- Location: LCCOMB_X73_Y54_N20
\sorter|LessThan13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~11_cout\ = CARRY((\sorter|c1[5]~19_combout\ & ((!\sorter|LessThan13~9_cout\) # (!\sorter|e1~3_combout\))) # (!\sorter|c1[5]~19_combout\ & (!\sorter|e1~3_combout\ & !\sorter|LessThan13~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[5]~19_combout\,
	datab => \sorter|e1~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~9_cout\,
	cout => \sorter|LessThan13~11_cout\);

-- Location: LCCOMB_X73_Y54_N22
\sorter|LessThan13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~13_cout\ = CARRY((\sorter|e1~2_combout\ & ((!\sorter|LessThan13~11_cout\) # (!\sorter|c1[6]~18_combout\))) # (!\sorter|e1~2_combout\ & (!\sorter|c1[6]~18_combout\ & !\sorter|LessThan13~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~2_combout\,
	datab => \sorter|c1[6]~18_combout\,
	datad => VCC,
	cin => \sorter|LessThan13~11_cout\,
	cout => \sorter|LessThan13~13_cout\);

-- Location: LCCOMB_X73_Y54_N24
\sorter|LessThan13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan13~14_combout\ = (\sorter|c1[7]~17_combout\ & (\sorter|LessThan13~13_cout\ & \sorter|e1~1_combout\)) # (!\sorter|c1[7]~17_combout\ & ((\sorter|LessThan13~13_cout\) # (\sorter|e1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1[7]~17_combout\,
	datad => \sorter|e1~1_combout\,
	cin => \sorter|LessThan13~13_cout\,
	combout => \sorter|LessThan13~14_combout\);

-- Location: LCCOMB_X73_Y54_N4
\sorter|e2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[0]~0_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|e1~0_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|c1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[0]~16_combout\,
	datab => \sorter|e1~0_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[0]~0_combout\);

-- Location: LCCOMB_X76_Y53_N30
\sorter|f0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~1_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[7]~1_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[7]~1_combout\,
	datac => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[7]~1_combout\,
	combout => \sorter|f0~1_combout\);

-- Location: LCCOMB_X72_Y53_N0
\sorter|f1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[7]~17_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~1_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f0~1_combout\,
	datac => \sorter|f1~9_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[7]~17_combout\);

-- Location: LCCOMB_X73_Y55_N6
\sorter|a1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~10_combout\ = (\sorter|LessThan1~14_combout\ & (p2(6))) # (!\sorter|LessThan1~14_combout\ & ((\sorter|a1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p2(6),
	datac => \sorter|LessThan1~14_combout\,
	datad => \sorter|a1~2_combout\,
	combout => \sorter|a1~10_combout\);

-- Location: LCCOMB_X74_Y54_N22
\sorter|a1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[6]~18_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a0~2_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0~2_combout\,
	datac => \sorter|a1~10_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[6]~18_combout\);

-- Location: LCCOMB_X74_Y54_N30
\sorter|e1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~2_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|a1[6]~18_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|b1[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1[6]~18_combout\,
	datac => \sorter|a1[6]~18_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~2_combout\);

-- Location: LCCOMB_X73_Y54_N30
\sorter|e2[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[6]~2_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|e1~2_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|c1[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1[6]~18_combout\,
	datac => \sorter|e1~2_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[6]~2_combout\);

-- Location: LCCOMB_X77_Y53_N14
\sorter|f1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[5]~19_combout\ = (\sorter|LessThan17~14_combout\ & ((\sorter|f0~3_combout\))) # (!\sorter|LessThan17~14_combout\ & (\sorter|f1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~11_combout\,
	datab => \sorter|f0~3_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[5]~19_combout\);

-- Location: LCCOMB_X72_Y52_N30
\sorter|c1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~12_combout\ = (\sorter|LessThan7~14_combout\ & (p8(4))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p8(4),
	datac => \sorter|c1~4_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~12_combout\);

-- Location: LCCOMB_X72_Y52_N6
\sorter|c1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[4]~20_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c0~4_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~4_combout\,
	datac => \sorter|c1~12_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[4]~20_combout\);

-- Location: LCCOMB_X73_Y56_N12
\sorter|e2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[4]~4_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|e1~4_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|c1[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~4_combout\,
	datab => \sorter|c1[4]~20_combout\,
	datac => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[4]~4_combout\);

-- Location: LCCOMB_X73_Y53_N28
\sorter|c2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[3]~5_combout\ = (\sorter|LessThan7~14_combout\ & ((\sorter|c1~5_combout\))) # (!\sorter|LessThan7~14_combout\ & (p8(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p8(3),
	datac => \sorter|c1~5_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[3]~5_combout\);

-- Location: LCCOMB_X75_Y53_N2
\sorter|f1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~13_combout\ = (\sorter|LessThan16~14_combout\ & ((\sorter|c2[3]~5_combout\))) # (!\sorter|LessThan16~14_combout\ & (\sorter|f1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1~5_combout\,
	datac => \sorter|c2[3]~5_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~13_combout\);

-- Location: LCCOMB_X73_Y53_N16
\sorter|f1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[3]~21_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~5_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~5_combout\,
	datac => \sorter|f1~13_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[3]~21_combout\);

-- Location: LCCOMB_X70_Y52_N26
\sorter|c1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1~14_combout\ = (\sorter|LessThan7~14_combout\ & (p8(2))) # (!\sorter|LessThan7~14_combout\ & ((\sorter|c1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(2),
	datac => \sorter|c1~6_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c1~14_combout\);

-- Location: LCCOMB_X70_Y52_N22
\sorter|c1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[2]~22_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c0~6_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~6_combout\,
	datac => \sorter|c1~14_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[2]~22_combout\);

-- Location: LCCOMB_X70_Y54_N26
\sorter|e2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[2]~6_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|e1~6_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|c1[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~6_combout\,
	datac => \sorter|c1[2]~22_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[2]~6_combout\);

-- Location: LCCOMB_X72_Y55_N10
\sorter|e2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[1]~7_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|e1~7_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|c1[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[1]~23_combout\,
	datac => \sorter|e1~7_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[1]~7_combout\);

-- Location: LCCOMB_X72_Y53_N6
\sorter|LessThan19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~1_cout\ = CARRY((!\sorter|e2[0]~0_combout\ & \sorter|f1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[0]~0_combout\,
	datab => \sorter|f1[0]~16_combout\,
	datad => VCC,
	cout => \sorter|LessThan19~1_cout\);

-- Location: LCCOMB_X72_Y53_N8
\sorter|LessThan19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~3_cout\ = CARRY((\sorter|f1[1]~23_combout\ & (\sorter|e2[1]~7_combout\ & !\sorter|LessThan19~1_cout\)) # (!\sorter|f1[1]~23_combout\ & ((\sorter|e2[1]~7_combout\) # (!\sorter|LessThan19~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[1]~23_combout\,
	datab => \sorter|e2[1]~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~1_cout\,
	cout => \sorter|LessThan19~3_cout\);

-- Location: LCCOMB_X72_Y53_N10
\sorter|LessThan19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~5_cout\ = CARRY((\sorter|f1[2]~22_combout\ & ((!\sorter|LessThan19~3_cout\) # (!\sorter|e2[2]~6_combout\))) # (!\sorter|f1[2]~22_combout\ & (!\sorter|e2[2]~6_combout\ & !\sorter|LessThan19~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[2]~22_combout\,
	datab => \sorter|e2[2]~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~3_cout\,
	cout => \sorter|LessThan19~5_cout\);

-- Location: LCCOMB_X72_Y53_N12
\sorter|LessThan19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~7_cout\ = CARRY((\sorter|e2[3]~5_combout\ & ((!\sorter|LessThan19~5_cout\) # (!\sorter|f1[3]~21_combout\))) # (!\sorter|e2[3]~5_combout\ & (!\sorter|f1[3]~21_combout\ & !\sorter|LessThan19~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[3]~5_combout\,
	datab => \sorter|f1[3]~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~5_cout\,
	cout => \sorter|LessThan19~7_cout\);

-- Location: LCCOMB_X72_Y53_N14
\sorter|LessThan19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~9_cout\ = CARRY((\sorter|f1[4]~20_combout\ & ((!\sorter|LessThan19~7_cout\) # (!\sorter|e2[4]~4_combout\))) # (!\sorter|f1[4]~20_combout\ & (!\sorter|e2[4]~4_combout\ & !\sorter|LessThan19~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[4]~20_combout\,
	datab => \sorter|e2[4]~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~7_cout\,
	cout => \sorter|LessThan19~9_cout\);

-- Location: LCCOMB_X72_Y53_N16
\sorter|LessThan19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~11_cout\ = CARRY((\sorter|e2[5]~3_combout\ & ((!\sorter|LessThan19~9_cout\) # (!\sorter|f1[5]~19_combout\))) # (!\sorter|e2[5]~3_combout\ & (!\sorter|f1[5]~19_combout\ & !\sorter|LessThan19~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[5]~3_combout\,
	datab => \sorter|f1[5]~19_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~9_cout\,
	cout => \sorter|LessThan19~11_cout\);

-- Location: LCCOMB_X72_Y53_N18
\sorter|LessThan19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~13_cout\ = CARRY((\sorter|f1[6]~18_combout\ & ((!\sorter|LessThan19~11_cout\) # (!\sorter|e2[6]~2_combout\))) # (!\sorter|f1[6]~18_combout\ & (!\sorter|e2[6]~2_combout\ & !\sorter|LessThan19~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[6]~18_combout\,
	datab => \sorter|e2[6]~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan19~11_cout\,
	cout => \sorter|LessThan19~13_cout\);

-- Location: LCCOMB_X72_Y53_N20
\sorter|LessThan19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan19~14_combout\ = (\sorter|e2[7]~1_combout\ & (\sorter|LessThan19~13_cout\ & \sorter|f1[7]~17_combout\)) # (!\sorter|e2[7]~1_combout\ & ((\sorter|LessThan19~13_cout\) # (\sorter|f1[7]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[7]~1_combout\,
	datad => \sorter|f1[7]~17_combout\,
	cin => \sorter|LessThan19~13_cout\,
	combout => \sorter|LessThan19~14_combout\);

-- Location: LCCOMB_X65_Y53_N4
\sorter|m3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~0_combout\ = (\sorter|LessThan19~14_combout\ & ((\sorter|e2[0]~0_combout\))) # (!\sorter|LessThan19~14_combout\ & (\sorter|f1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1[0]~16_combout\,
	datac => \sorter|e2[0]~0_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~0_combout\);

-- Location: LCCOMB_X73_Y54_N26
\sorter|e1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~9_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|c1[7]~17_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|e1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~1_combout\,
	datab => \sorter|c1[7]~17_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~9_combout\);

-- Location: LCCOMB_X74_Y54_N26
\sorter|e0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~1_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|b1[7]~17_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|a1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1[7]~17_combout\,
	datac => \sorter|LessThan12~14_combout\,
	datad => \sorter|b1[7]~17_combout\,
	combout => \sorter|e0~1_combout\);

-- Location: LCCOMB_X70_Y54_N22
\sorter|e0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~2_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|b1[6]~18_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|a1[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1[6]~18_combout\,
	datac => \sorter|a1[6]~18_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~2_combout\);

-- Location: LCCOMB_X72_Y52_N0
\sorter|c1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c1[5]~19_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c0~3_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~3_combout\,
	datac => \sorter|c1~11_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c1[5]~19_combout\);

-- Location: LCCOMB_X73_Y54_N6
\sorter|e1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~11_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|c1[5]~19_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|e1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1[5]~19_combout\,
	datac => \sorter|e1~3_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~11_combout\);

-- Location: LCCOMB_X73_Y56_N24
\sorter|e1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~12_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|c1[4]~20_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|e1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~4_combout\,
	datab => \sorter|c1[4]~20_combout\,
	datac => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~12_combout\);

-- Location: LCCOMB_X77_Y54_N2
\sorter|b1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~5_combout\ = (\sorter|LessThan3~14_combout\ & ((p3(3)))) # (!\sorter|LessThan3~14_combout\ & (p4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(3),
	datab => p3(3),
	datad => \sorter|LessThan3~14_combout\,
	combout => \sorter|b1~5_combout\);

-- Location: LCCOMB_X72_Y54_N26
\sorter|b1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~13_combout\ = (\sorter|LessThan4~14_combout\ & (p5(3))) # (!\sorter|LessThan4~14_combout\ & ((\sorter|b1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p5(3),
	datac => \sorter|b1~5_combout\,
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~13_combout\);

-- Location: LCCOMB_X72_Y54_N22
\sorter|b1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1[3]~21_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b0~5_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~5_combout\,
	datac => \sorter|b1~13_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b1[3]~21_combout\);

-- Location: LCCOMB_X72_Y54_N12
\sorter|e0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~5_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|b1[3]~21_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|a1[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1[3]~21_combout\,
	datac => \sorter|b1[3]~21_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~5_combout\);

-- Location: LCCOMB_X70_Y54_N10
\sorter|e0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~6_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|b1[2]~22_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|a1[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[2]~22_combout\,
	datac => \sorter|a1[2]~22_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~6_combout\);

-- Location: LCCOMB_X72_Y55_N30
\sorter|e1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~15_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|c1[1]~23_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|e1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[1]~23_combout\,
	datac => \sorter|e1~7_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~15_combout\);

-- Location: LCCOMB_X69_Y54_N8
\sorter|e1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~8_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|c1[0]~16_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|e1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[0]~16_combout\,
	datac => \sorter|e1~0_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~8_combout\);

-- Location: LCCOMB_X69_Y54_N14
\sorter|LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~1_cout\ = CARRY((\sorter|e0~0_combout\ & !\sorter|e1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~0_combout\,
	datab => \sorter|e1~8_combout\,
	datad => VCC,
	cout => \sorter|LessThan14~1_cout\);

-- Location: LCCOMB_X69_Y54_N16
\sorter|LessThan14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~3_cout\ = CARRY((\sorter|e0~7_combout\ & (\sorter|e1~15_combout\ & !\sorter|LessThan14~1_cout\)) # (!\sorter|e0~7_combout\ & ((\sorter|e1~15_combout\) # (!\sorter|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~7_combout\,
	datab => \sorter|e1~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~1_cout\,
	cout => \sorter|LessThan14~3_cout\);

-- Location: LCCOMB_X69_Y54_N18
\sorter|LessThan14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~5_cout\ = CARRY((\sorter|e1~14_combout\ & (\sorter|e0~6_combout\ & !\sorter|LessThan14~3_cout\)) # (!\sorter|e1~14_combout\ & ((\sorter|e0~6_combout\) # (!\sorter|LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~14_combout\,
	datab => \sorter|e0~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~3_cout\,
	cout => \sorter|LessThan14~5_cout\);

-- Location: LCCOMB_X69_Y54_N20
\sorter|LessThan14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~7_cout\ = CARRY((\sorter|e1~13_combout\ & ((!\sorter|LessThan14~5_cout\) # (!\sorter|e0~5_combout\))) # (!\sorter|e1~13_combout\ & (!\sorter|e0~5_combout\ & !\sorter|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~13_combout\,
	datab => \sorter|e0~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~5_cout\,
	cout => \sorter|LessThan14~7_cout\);

-- Location: LCCOMB_X69_Y54_N22
\sorter|LessThan14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~9_cout\ = CARRY((\sorter|e0~4_combout\ & ((!\sorter|LessThan14~7_cout\) # (!\sorter|e1~12_combout\))) # (!\sorter|e0~4_combout\ & (!\sorter|e1~12_combout\ & !\sorter|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~4_combout\,
	datab => \sorter|e1~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~7_cout\,
	cout => \sorter|LessThan14~9_cout\);

-- Location: LCCOMB_X69_Y54_N24
\sorter|LessThan14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~11_cout\ = CARRY((\sorter|e0~3_combout\ & (\sorter|e1~11_combout\ & !\sorter|LessThan14~9_cout\)) # (!\sorter|e0~3_combout\ & ((\sorter|e1~11_combout\) # (!\sorter|LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~3_combout\,
	datab => \sorter|e1~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~9_cout\,
	cout => \sorter|LessThan14~11_cout\);

-- Location: LCCOMB_X69_Y54_N26
\sorter|LessThan14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~13_cout\ = CARRY((\sorter|e1~10_combout\ & (\sorter|e0~2_combout\ & !\sorter|LessThan14~11_cout\)) # (!\sorter|e1~10_combout\ & ((\sorter|e0~2_combout\) # (!\sorter|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~10_combout\,
	datab => \sorter|e0~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan14~11_cout\,
	cout => \sorter|LessThan14~13_cout\);

-- Location: LCCOMB_X69_Y54_N28
\sorter|LessThan14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan14~14_combout\ = (\sorter|e0~1_combout\ & ((\sorter|LessThan14~13_cout\) # (!\sorter|e1~9_combout\))) # (!\sorter|e0~1_combout\ & (\sorter|LessThan14~13_cout\ & !\sorter|e1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~1_combout\,
	datad => \sorter|e1~9_combout\,
	cin => \sorter|LessThan14~13_cout\,
	combout => \sorter|LessThan14~14_combout\);

-- Location: LCCOMB_X69_Y54_N12
\sorter|e1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[7]~17_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e0~1_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~9_combout\,
	datac => \sorter|e0~1_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[7]~17_combout\);

-- Location: LCCOMB_X73_Y52_N2
\sorter|c2[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c2[6]~2_combout\ = (\sorter|LessThan7~14_combout\ & ((\sorter|c1~2_combout\))) # (!\sorter|LessThan7~14_combout\ & (p8(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p8(6),
	datac => \sorter|c1~2_combout\,
	datad => \sorter|LessThan7~14_combout\,
	combout => \sorter|c2[6]~2_combout\);

-- Location: LCCOMB_X74_Y53_N30
\sorter|f1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1~10_combout\ = (\sorter|LessThan16~14_combout\ & (\sorter|c2[6]~2_combout\)) # (!\sorter|LessThan16~14_combout\ & ((\sorter|f1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c2[6]~2_combout\,
	datac => \sorter|f1~2_combout\,
	datad => \sorter|LessThan16~14_combout\,
	combout => \sorter|f1~10_combout\);

-- Location: LCCOMB_X74_Y53_N6
\sorter|f1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[6]~18_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~2_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f0~2_combout\,
	datac => \sorter|f1~10_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[6]~18_combout\);

-- Location: LCCOMB_X69_Y53_N24
\sorter|m4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~2_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[6]~18_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1[6]~18_combout\,
	datac => \sorter|e2[6]~2_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~2_combout\);

-- Location: LCCOMB_X69_Y53_N28
\sorter|e1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[5]~19_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e0~3_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~3_combout\,
	datac => \sorter|e1~11_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[5]~19_combout\);

-- Location: LCCOMB_X76_Y53_N26
\sorter|f0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~4_combout\ = (\sorter|LessThan15~14_combout\ & (\sorter|b2[4]~4_combout\)) # (!\sorter|LessThan15~14_combout\ & ((\sorter|a2[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b2[4]~4_combout\,
	datac => \sorter|LessThan15~14_combout\,
	datad => \sorter|a2[4]~4_combout\,
	combout => \sorter|f0~4_combout\);

-- Location: LCCOMB_X74_Y53_N8
\sorter|f1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[4]~20_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~4_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f0~4_combout\,
	datac => \sorter|f1~12_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[4]~20_combout\);

-- Location: LCCOMB_X69_Y53_N18
\sorter|m4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~4_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[4]~20_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1[4]~20_combout\,
	datac => \sorter|e2[4]~4_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~4_combout\);

-- Location: LCCOMB_X72_Y54_N16
\sorter|e1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~5_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|a1[3]~21_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|b1[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1[3]~21_combout\,
	datac => \sorter|b1[3]~21_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e1~5_combout\);

-- Location: LCCOMB_X72_Y54_N30
\sorter|e2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[3]~5_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|e1~5_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|c1[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~5_combout\,
	datac => \sorter|c1[3]~21_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[3]~5_combout\);

-- Location: LCCOMB_X69_Y53_N20
\sorter|m4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~5_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[3]~21_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[3]~21_combout\,
	datac => \sorter|e2[3]~5_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~5_combout\);

-- Location: LCCOMB_X69_Y54_N0
\sorter|e1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[2]~22_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e0~6_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~14_combout\,
	datac => \sorter|e0~6_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[2]~22_combout\);

-- Location: LCCOMB_X72_Y55_N12
\sorter|e0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~7_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|b1[1]~23_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|a1[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[1]~23_combout\,
	datac => \sorter|a1[1]~23_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~7_combout\);

-- Location: LCCOMB_X69_Y54_N10
\sorter|e1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[1]~23_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e0~7_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0~7_combout\,
	datac => \sorter|e1~15_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[1]~23_combout\);

-- Location: LCCOMB_X72_Y53_N28
\sorter|m4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~0_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[0]~16_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1[0]~16_combout\,
	datac => \sorter|e2[0]~0_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~0_combout\);

-- Location: LCCOMB_X69_Y53_N0
\sorter|LessThan20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~1_cout\ = CARRY((\sorter|e1[0]~16_combout\ & !\sorter|m4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[0]~16_combout\,
	datab => \sorter|m4~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan20~1_cout\);

-- Location: LCCOMB_X69_Y53_N2
\sorter|LessThan20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~3_cout\ = CARRY((\sorter|m4~7_combout\ & ((!\sorter|LessThan20~1_cout\) # (!\sorter|e1[1]~23_combout\))) # (!\sorter|m4~7_combout\ & (!\sorter|e1[1]~23_combout\ & !\sorter|LessThan20~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~7_combout\,
	datab => \sorter|e1[1]~23_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~1_cout\,
	cout => \sorter|LessThan20~3_cout\);

-- Location: LCCOMB_X69_Y53_N4
\sorter|LessThan20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~5_cout\ = CARRY((\sorter|m4~6_combout\ & (\sorter|e1[2]~22_combout\ & !\sorter|LessThan20~3_cout\)) # (!\sorter|m4~6_combout\ & ((\sorter|e1[2]~22_combout\) # (!\sorter|LessThan20~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~6_combout\,
	datab => \sorter|e1[2]~22_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~3_cout\,
	cout => \sorter|LessThan20~5_cout\);

-- Location: LCCOMB_X69_Y53_N6
\sorter|LessThan20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~7_cout\ = CARRY((\sorter|e1[3]~21_combout\ & (\sorter|m4~5_combout\ & !\sorter|LessThan20~5_cout\)) # (!\sorter|e1[3]~21_combout\ & ((\sorter|m4~5_combout\) # (!\sorter|LessThan20~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[3]~21_combout\,
	datab => \sorter|m4~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~5_cout\,
	cout => \sorter|LessThan20~7_cout\);

-- Location: LCCOMB_X69_Y53_N8
\sorter|LessThan20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~9_cout\ = CARRY((\sorter|e1[4]~20_combout\ & ((!\sorter|LessThan20~7_cout\) # (!\sorter|m4~4_combout\))) # (!\sorter|e1[4]~20_combout\ & (!\sorter|m4~4_combout\ & !\sorter|LessThan20~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[4]~20_combout\,
	datab => \sorter|m4~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~7_cout\,
	cout => \sorter|LessThan20~9_cout\);

-- Location: LCCOMB_X69_Y53_N10
\sorter|LessThan20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~11_cout\ = CARRY((\sorter|m4~3_combout\ & ((!\sorter|LessThan20~9_cout\) # (!\sorter|e1[5]~19_combout\))) # (!\sorter|m4~3_combout\ & (!\sorter|e1[5]~19_combout\ & !\sorter|LessThan20~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~3_combout\,
	datab => \sorter|e1[5]~19_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~9_cout\,
	cout => \sorter|LessThan20~11_cout\);

-- Location: LCCOMB_X69_Y53_N12
\sorter|LessThan20~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~13_cout\ = CARRY((\sorter|e1[6]~18_combout\ & ((!\sorter|LessThan20~11_cout\) # (!\sorter|m4~2_combout\))) # (!\sorter|e1[6]~18_combout\ & (!\sorter|m4~2_combout\ & !\sorter|LessThan20~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[6]~18_combout\,
	datab => \sorter|m4~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan20~11_cout\,
	cout => \sorter|LessThan20~13_cout\);

-- Location: LCCOMB_X69_Y53_N14
\sorter|LessThan20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan20~14_combout\ = (\sorter|m4~1_combout\ & (\sorter|LessThan20~13_cout\ & \sorter|e1[7]~17_combout\)) # (!\sorter|m4~1_combout\ & ((\sorter|LessThan20~13_cout\) # (\sorter|e1[7]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~1_combout\,
	datad => \sorter|e1[7]~17_combout\,
	cin => \sorter|LessThan20~13_cout\,
	combout => \sorter|LessThan20~14_combout\);

-- Location: LCCOMB_X72_Y53_N22
\sorter|e2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[7]~1_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|e1~1_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|c1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1[7]~17_combout\,
	datac => \sorter|e1~1_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[7]~1_combout\);

-- Location: LCCOMB_X72_Y53_N26
\sorter|m4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~1_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[7]~17_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1[7]~17_combout\,
	datac => \sorter|e2[7]~1_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~1_combout\);

-- Location: LCCOMB_X68_Y53_N2
\sorter|m2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~1_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|m4~1_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|e1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[7]~17_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|m4~1_combout\,
	combout => \sorter|m2~1_combout\);

-- Location: LCCOMB_X69_Y54_N2
\sorter|e1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[6]~18_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e0~2_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~10_combout\,
	datab => \sorter|e0~2_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[6]~18_combout\);

-- Location: LCCOMB_X68_Y53_N8
\sorter|m2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~2_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|m4~2_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|e1[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1[6]~18_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|m4~2_combout\,
	combout => \sorter|m2~2_combout\);

-- Location: LCCOMB_X69_Y53_N22
\sorter|m2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~3_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|m4~3_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|e1[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~3_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[5]~19_combout\,
	combout => \sorter|m2~3_combout\);

-- Location: LCCOMB_X73_Y56_N14
\sorter|e0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~4_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|b1[4]~20_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|a1[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1[4]~20_combout\,
	datab => \sorter|a1[4]~20_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~4_combout\);

-- Location: LCCOMB_X73_Y56_N18
\sorter|e1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[4]~20_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e0~4_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~12_combout\,
	datac => \sorter|e0~4_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[4]~20_combout\);

-- Location: LCCOMB_X69_Y53_N16
\sorter|m2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~4_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|m4~4_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|e1[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~4_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[4]~20_combout\,
	combout => \sorter|m2~4_combout\);

-- Location: LCCOMB_X73_Y53_N10
\sorter|m3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~5_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|e2[3]~5_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|f1[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[3]~5_combout\,
	datab => \sorter|f1[3]~21_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~5_combout\);

-- Location: LCCOMB_X72_Y53_N30
\sorter|f1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[2]~22_combout\ = (\sorter|LessThan17~14_combout\ & (\sorter|f0~6_combout\)) # (!\sorter|LessThan17~14_combout\ & ((\sorter|f1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f0~6_combout\,
	datac => \sorter|f1~14_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[2]~22_combout\);

-- Location: LCCOMB_X65_Y53_N22
\sorter|m3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~6_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|e2[2]~6_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|f1[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e2[2]~6_combout\,
	datac => \sorter|f1[2]~22_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~6_combout\);

-- Location: LCCOMB_X65_Y53_N0
\sorter|m3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~7_combout\ = (\sorter|LessThan19~14_combout\ & ((\sorter|e2[1]~7_combout\))) # (!\sorter|LessThan19~14_combout\ & (\sorter|f1[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[1]~23_combout\,
	datac => \sorter|e2[1]~7_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~7_combout\);

-- Location: LCCOMB_X68_Y53_N16
\sorter|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~1_cout\ = CARRY((\sorter|m2~0_combout\ & !\sorter|m3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~0_combout\,
	datab => \sorter|m3~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan21~1_cout\);

-- Location: LCCOMB_X68_Y53_N18
\sorter|LessThan21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~3_cout\ = CARRY((\sorter|m2~7_combout\ & (\sorter|m3~7_combout\ & !\sorter|LessThan21~1_cout\)) # (!\sorter|m2~7_combout\ & ((\sorter|m3~7_combout\) # (!\sorter|LessThan21~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~7_combout\,
	datab => \sorter|m3~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~1_cout\,
	cout => \sorter|LessThan21~3_cout\);

-- Location: LCCOMB_X68_Y53_N20
\sorter|LessThan21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~5_cout\ = CARRY((\sorter|m2~6_combout\ & ((!\sorter|LessThan21~3_cout\) # (!\sorter|m3~6_combout\))) # (!\sorter|m2~6_combout\ & (!\sorter|m3~6_combout\ & !\sorter|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~6_combout\,
	datab => \sorter|m3~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~3_cout\,
	cout => \sorter|LessThan21~5_cout\);

-- Location: LCCOMB_X68_Y53_N22
\sorter|LessThan21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~7_cout\ = CARRY((\sorter|m2~5_combout\ & (\sorter|m3~5_combout\ & !\sorter|LessThan21~5_cout\)) # (!\sorter|m2~5_combout\ & ((\sorter|m3~5_combout\) # (!\sorter|LessThan21~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~5_combout\,
	datab => \sorter|m3~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~5_cout\,
	cout => \sorter|LessThan21~7_cout\);

-- Location: LCCOMB_X68_Y53_N24
\sorter|LessThan21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~9_cout\ = CARRY((\sorter|m3~4_combout\ & (\sorter|m2~4_combout\ & !\sorter|LessThan21~7_cout\)) # (!\sorter|m3~4_combout\ & ((\sorter|m2~4_combout\) # (!\sorter|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~4_combout\,
	datab => \sorter|m2~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~7_cout\,
	cout => \sorter|LessThan21~9_cout\);

-- Location: LCCOMB_X68_Y53_N26
\sorter|LessThan21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~11_cout\ = CARRY((\sorter|m3~3_combout\ & ((!\sorter|LessThan21~9_cout\) # (!\sorter|m2~3_combout\))) # (!\sorter|m3~3_combout\ & (!\sorter|m2~3_combout\ & !\sorter|LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~3_combout\,
	datab => \sorter|m2~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~9_cout\,
	cout => \sorter|LessThan21~11_cout\);

-- Location: LCCOMB_X68_Y53_N28
\sorter|LessThan21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~13_cout\ = CARRY((\sorter|m3~2_combout\ & (\sorter|m2~2_combout\ & !\sorter|LessThan21~11_cout\)) # (!\sorter|m3~2_combout\ & ((\sorter|m2~2_combout\) # (!\sorter|LessThan21~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~2_combout\,
	datab => \sorter|m2~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan21~11_cout\,
	cout => \sorter|LessThan21~13_cout\);

-- Location: LCCOMB_X68_Y53_N30
\sorter|LessThan21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan21~14_combout\ = (\sorter|m3~1_combout\ & (\sorter|LessThan21~13_cout\ & \sorter|m2~1_combout\)) # (!\sorter|m3~1_combout\ & ((\sorter|LessThan21~13_cout\) # (\sorter|m2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~1_combout\,
	datad => \sorter|m2~1_combout\,
	cin => \sorter|LessThan21~13_cout\,
	combout => \sorter|LessThan21~14_combout\);

-- Location: LCCOMB_X70_Y54_N28
\sorter|e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~0_combout\ = (\sorter|LessThan12~14_combout\ & ((\sorter|b1[0]~16_combout\))) # (!\sorter|LessThan12~14_combout\ & (\sorter|a1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1[0]~16_combout\,
	datab => \sorter|b1[0]~16_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~0_combout\);

-- Location: LCCOMB_X69_Y54_N30
\sorter|e1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[0]~16_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e0~0_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0~0_combout\,
	datac => \sorter|e1~8_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[0]~16_combout\);

-- Location: LCCOMB_X68_Y53_N12
\sorter|m2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~0_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|m4~0_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|e1[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~0_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[0]~16_combout\,
	combout => \sorter|m2~0_combout\);

-- Location: LCCOMB_X68_Y53_N0
\sorter|m3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~8_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~0_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~0_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~0_combout\,
	combout => \sorter|m3~8_combout\);

-- Location: LCCOMB_X68_Y53_N10
\sorter|m3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~9_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~1_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~1_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~1_combout\,
	combout => \sorter|m3~9_combout\);

-- Location: LCCOMB_X67_Y53_N24
\sorter|m3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~2_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|e2[6]~2_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|f1[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e2[6]~2_combout\,
	datac => \sorter|f1[6]~18_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~2_combout\);

-- Location: LCCOMB_X68_Y53_N4
\sorter|m3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~10_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m2~2_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m2~2_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m3~2_combout\,
	combout => \sorter|m3~10_combout\);

-- Location: LCCOMB_X73_Y55_N8
\sorter|a1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1[5]~19_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a0~3_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~3_combout\,
	datac => \sorter|a1~11_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a1[5]~19_combout\);

-- Location: LCCOMB_X70_Y54_N20
\sorter|e0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0~3_combout\ = (\sorter|LessThan12~14_combout\ & (\sorter|b1[5]~19_combout\)) # (!\sorter|LessThan12~14_combout\ & ((\sorter|a1[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b1[5]~19_combout\,
	datac => \sorter|a1[5]~19_combout\,
	datad => \sorter|LessThan12~14_combout\,
	combout => \sorter|e0~3_combout\);

-- Location: LCCOMB_X69_Y56_N0
\sorter|e0[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[5]~11_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e1~11_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~11_combout\,
	datac => \sorter|e0~3_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e0[5]~11_combout\);

-- Location: LCCOMB_X69_Y54_N4
\sorter|e0[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[7]~9_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e1~9_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~9_combout\,
	datac => \sorter|e0~1_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e0[7]~9_combout\);

-- Location: LCCOMB_X73_Y54_N8
\sorter|e1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~10_combout\ = (\sorter|LessThan13~14_combout\ & (\sorter|c1[6]~18_combout\)) # (!\sorter|LessThan13~14_combout\ & ((\sorter|e1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1[6]~18_combout\,
	datac => \sorter|e1~2_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~10_combout\);

-- Location: LCCOMB_X69_Y56_N20
\sorter|e0[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[6]~10_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e1~10_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0~2_combout\,
	datac => \sorter|e1~10_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e0[6]~10_combout\);

-- Location: LCCOMB_X68_Y55_N2
\sorter|e0[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[4]~12_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e1~12_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~12_combout\,
	datac => \sorter|LessThan14~14_combout\,
	datad => \sorter|e0~4_combout\,
	combout => \sorter|e0[4]~12_combout\);

-- Location: LCCOMB_X72_Y54_N4
\sorter|a0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[3]~13_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~13_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~5_combout\,
	datac => \sorter|LessThan2~14_combout\,
	datad => \sorter|a1~13_combout\,
	combout => \sorter|a0[3]~13_combout\);

-- Location: LCCOMB_X72_Y54_N10
\sorter|b0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[3]~13_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~13_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~5_combout\,
	datac => \sorter|b1~13_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b0[3]~13_combout\);

-- Location: LCCOMB_X75_Y56_N24
\sorter|b0[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[7]~9_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~9_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~1_combout\,
	datab => \sorter|b1~9_combout\,
	datac => \sorter|LessThan5~14_combout\,
	combout => \sorter|b0[7]~9_combout\);

-- Location: LCCOMB_X75_Y56_N0
\sorter|b0[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[6]~10_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~10_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~2_combout\,
	datac => \sorter|LessThan5~14_combout\,
	datad => \sorter|b1~10_combout\,
	combout => \sorter|b0[6]~10_combout\);

-- Location: LCCOMB_X72_Y54_N28
\sorter|b0[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[5]~11_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~11_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~3_combout\,
	datac => \sorter|b1~11_combout\,
	datad => \sorter|LessThan5~14_combout\,
	combout => \sorter|b0[5]~11_combout\);

-- Location: LCCOMB_X76_Y52_N24
\p3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~4_combout\ = (\Equal4~2_combout\ & ((w11(4)))) # (!\Equal4~2_combout\ & (p4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(4),
	datac => w11(4),
	datad => \Equal4~2_combout\,
	combout => \p3~4_combout\);

-- Location: FF_X76_Y52_N25
\p3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p3~4_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p3(4));

-- Location: LCCOMB_X76_Y52_N10
\sorter|b0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0~4_combout\ = (\sorter|LessThan3~14_combout\ & (p4(4))) # (!\sorter|LessThan3~14_combout\ & ((p3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p4(4),
	datab => p3(4),
	datac => \sorter|LessThan3~14_combout\,
	combout => \sorter|b0~4_combout\);

-- Location: LCCOMB_X76_Y52_N20
\sorter|b0[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[4]~12_combout\ = (\sorter|LessThan5~14_combout\ & (\sorter|b1~12_combout\)) # (!\sorter|LessThan5~14_combout\ & ((\sorter|b0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~12_combout\,
	datac => \sorter|LessThan5~14_combout\,
	datad => \sorter|b0~4_combout\,
	combout => \sorter|b0[4]~12_combout\);

-- Location: LCCOMB_X76_Y54_N2
\sorter|b1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b1~14_combout\ = (\sorter|LessThan4~14_combout\ & ((p5(2)))) # (!\sorter|LessThan4~14_combout\ & (\sorter|b1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b1~6_combout\,
	datab => p5(2),
	datad => \sorter|LessThan4~14_combout\,
	combout => \sorter|b1~14_combout\);

-- Location: LCCOMB_X75_Y56_N28
\sorter|b0[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[2]~14_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~14_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0~6_combout\,
	datac => \sorter|LessThan5~14_combout\,
	datad => \sorter|b1~14_combout\,
	combout => \sorter|b0[2]~14_combout\);

-- Location: LCCOMB_X72_Y55_N2
\sorter|a0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[1]~15_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a1~15_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a1~15_combout\,
	datac => \sorter|a0~7_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a0[1]~15_combout\);

-- Location: LCCOMB_X76_Y56_N8
\sorter|b0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b0[0]~8_combout\ = (\sorter|LessThan5~14_combout\ & ((\sorter|b1~8_combout\))) # (!\sorter|LessThan5~14_combout\ & (\sorter|b0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0~0_combout\,
	datac => \sorter|LessThan5~14_combout\,
	datad => \sorter|b1~8_combout\,
	combout => \sorter|b0[0]~8_combout\);

-- Location: LCCOMB_X75_Y56_N8
\sorter|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~1_cout\ = CARRY((\sorter|a0[0]~8_combout\ & !\sorter|b0[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[0]~8_combout\,
	datab => \sorter|b0[0]~8_combout\,
	datad => VCC,
	cout => \sorter|LessThan9~1_cout\);

-- Location: LCCOMB_X75_Y56_N10
\sorter|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~3_cout\ = CARRY((\sorter|b0[1]~15_combout\ & ((!\sorter|LessThan9~1_cout\) # (!\sorter|a0[1]~15_combout\))) # (!\sorter|b0[1]~15_combout\ & (!\sorter|a0[1]~15_combout\ & !\sorter|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0[1]~15_combout\,
	datab => \sorter|a0[1]~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~1_cout\,
	cout => \sorter|LessThan9~3_cout\);

-- Location: LCCOMB_X75_Y56_N12
\sorter|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~5_cout\ = CARRY((\sorter|a0[2]~14_combout\ & ((!\sorter|LessThan9~3_cout\) # (!\sorter|b0[2]~14_combout\))) # (!\sorter|a0[2]~14_combout\ & (!\sorter|b0[2]~14_combout\ & !\sorter|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[2]~14_combout\,
	datab => \sorter|b0[2]~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~3_cout\,
	cout => \sorter|LessThan9~5_cout\);

-- Location: LCCOMB_X75_Y56_N14
\sorter|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~7_cout\ = CARRY((\sorter|b0[3]~13_combout\ & ((!\sorter|LessThan9~5_cout\) # (!\sorter|a0[3]~13_combout\))) # (!\sorter|b0[3]~13_combout\ & (!\sorter|a0[3]~13_combout\ & !\sorter|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0[3]~13_combout\,
	datab => \sorter|a0[3]~13_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~5_cout\,
	cout => \sorter|LessThan9~7_cout\);

-- Location: LCCOMB_X75_Y56_N16
\sorter|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~9_cout\ = CARRY((\sorter|a0[4]~12_combout\ & ((!\sorter|LessThan9~7_cout\) # (!\sorter|b0[4]~12_combout\))) # (!\sorter|a0[4]~12_combout\ & (!\sorter|b0[4]~12_combout\ & !\sorter|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[4]~12_combout\,
	datab => \sorter|b0[4]~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~7_cout\,
	cout => \sorter|LessThan9~9_cout\);

-- Location: LCCOMB_X75_Y56_N18
\sorter|LessThan9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~11_cout\ = CARRY((\sorter|a0[5]~11_combout\ & (\sorter|b0[5]~11_combout\ & !\sorter|LessThan9~9_cout\)) # (!\sorter|a0[5]~11_combout\ & ((\sorter|b0[5]~11_combout\) # (!\sorter|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[5]~11_combout\,
	datab => \sorter|b0[5]~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~9_cout\,
	cout => \sorter|LessThan9~11_cout\);

-- Location: LCCOMB_X75_Y56_N20
\sorter|LessThan9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~13_cout\ = CARRY((\sorter|a0[6]~10_combout\ & ((!\sorter|LessThan9~11_cout\) # (!\sorter|b0[6]~10_combout\))) # (!\sorter|a0[6]~10_combout\ & (!\sorter|b0[6]~10_combout\ & !\sorter|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[6]~10_combout\,
	datab => \sorter|b0[6]~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan9~11_cout\,
	cout => \sorter|LessThan9~13_cout\);

-- Location: LCCOMB_X75_Y56_N22
\sorter|LessThan9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan9~14_combout\ = (\sorter|a0[7]~9_combout\ & ((\sorter|LessThan9~13_cout\) # (!\sorter|b0[7]~9_combout\))) # (!\sorter|a0[7]~9_combout\ & (\sorter|LessThan9~13_cout\ & !\sorter|b0[7]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[7]~9_combout\,
	datad => \sorter|b0[7]~9_combout\,
	cin => \sorter|LessThan9~13_cout\,
	combout => \sorter|LessThan9~14_combout\);

-- Location: LCCOMB_X70_Y56_N8
\sorter|d0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~5_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[3]~13_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[3]~13_combout\,
	datac => \sorter|b0[3]~13_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~5_combout\);

-- Location: LCCOMB_X70_Y56_N28
\sorter|d0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~1_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[7]~9_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[7]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[7]~9_combout\,
	datac => \sorter|b0[7]~9_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~1_combout\);

-- Location: LCCOMB_X76_Y55_N6
\p0[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0[7]~7_combout\ = (\Equal2~1_combout\ & ((p4(7)))) # (!\Equal2~1_combout\ & (w00(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w00(7),
	datab => \Equal2~1_combout\,
	datad => p4(7),
	combout => \p0[7]~7_combout\);

-- Location: FF_X76_Y55_N7
\p0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \p0[7]~7_combout\,
	asdata => \p1~1_combout\,
	sload => \Equal4~2_combout\,
	ena => \p4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => p0(7));

-- Location: LCCOMB_X75_Y55_N10
\sorter|a0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0~1_combout\ = (\sorter|LessThan0~14_combout\ & (p1(7))) # (!\sorter|LessThan0~14_combout\ & ((p0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan0~14_combout\,
	datab => p1(7),
	datad => p0(7),
	combout => \sorter|a0~1_combout\);

-- Location: LCCOMB_X75_Y56_N6
\sorter|a0[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[7]~9_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~9_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0~1_combout\,
	datac => \sorter|LessThan2~14_combout\,
	datad => \sorter|a1~9_combout\,
	combout => \sorter|a0[7]~9_combout\);

-- Location: LCCOMB_X75_Y56_N2
\sorter|d1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~1_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|a0[7]~9_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|b0[7]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0[7]~9_combout\,
	datac => \sorter|LessThan9~14_combout\,
	datad => \sorter|a0[7]~9_combout\,
	combout => \sorter|d1~1_combout\);

-- Location: LCCOMB_X73_Y56_N4
\sorter|c0[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[7]~9_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~9_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|LessThan8~14_combout\,
	datac => \sorter|c0~1_combout\,
	datad => \sorter|c1~9_combout\,
	combout => \sorter|c0[7]~9_combout\);

-- Location: LCCOMB_X75_Y56_N30
\sorter|a0[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[6]~10_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~10_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0~2_combout\,
	datac => \sorter|LessThan2~14_combout\,
	datad => \sorter|a1~10_combout\,
	combout => \sorter|a0[6]~10_combout\);

-- Location: LCCOMB_X74_Y56_N4
\sorter|d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~2_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|a0[6]~10_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|b0[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0[6]~10_combout\,
	datac => \sorter|a0[6]~10_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~2_combout\);

-- Location: LCCOMB_X72_Y52_N4
\sorter|c0[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[5]~11_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~11_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0~3_combout\,
	datac => \sorter|c1~11_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[5]~11_combout\);

-- Location: LCCOMB_X72_Y52_N2
\sorter|c0[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[4]~12_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~12_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~4_combout\,
	datac => \sorter|c1~12_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[4]~12_combout\);

-- Location: LCCOMB_X74_Y56_N0
\sorter|d1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~5_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|a0[3]~13_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|b0[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0[3]~13_combout\,
	datac => \sorter|a0[3]~13_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~5_combout\);

-- Location: LCCOMB_X70_Y52_N4
\sorter|c0[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[2]~14_combout\ = (\sorter|LessThan8~14_combout\ & ((\sorter|c1~14_combout\))) # (!\sorter|LessThan8~14_combout\ & (\sorter|c0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0~6_combout\,
	datac => \sorter|c1~14_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[2]~14_combout\);

-- Location: LCCOMB_X76_Y56_N24
\sorter|d1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~7_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|a0[1]~15_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|b0[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|b0[1]~15_combout\,
	datac => \sorter|a0[1]~15_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~7_combout\);

-- Location: LCCOMB_X72_Y55_N14
\sorter|a1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a1~8_combout\ = (\sorter|LessThan1~14_combout\ & (p2(0))) # (!\sorter|LessThan1~14_combout\ & ((\sorter|a1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p2(0),
	datac => \sorter|a1~0_combout\,
	datad => \sorter|LessThan1~14_combout\,
	combout => \sorter|a1~8_combout\);

-- Location: LCCOMB_X72_Y55_N24
\sorter|a0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[0]~8_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~8_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0~0_combout\,
	datac => \sorter|a1~8_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a0[0]~8_combout\);

-- Location: LCCOMB_X76_Y56_N10
\sorter|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~0_combout\ = (\sorter|LessThan9~14_combout\ & (\sorter|a0[0]~8_combout\)) # (!\sorter|LessThan9~14_combout\ & ((\sorter|b0[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[0]~8_combout\,
	datac => \sorter|b0[0]~8_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~0_combout\);

-- Location: LCCOMB_X74_Y56_N16
\sorter|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~1_cout\ = CARRY((!\sorter|c0[0]~8_combout\ & \sorter|d1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[0]~8_combout\,
	datab => \sorter|d1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan10~1_cout\);

-- Location: LCCOMB_X74_Y56_N18
\sorter|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~3_cout\ = CARRY((\sorter|c0[1]~15_combout\ & ((!\sorter|LessThan10~1_cout\) # (!\sorter|d1~7_combout\))) # (!\sorter|c0[1]~15_combout\ & (!\sorter|d1~7_combout\ & !\sorter|LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[1]~15_combout\,
	datab => \sorter|d1~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~1_cout\,
	cout => \sorter|LessThan10~3_cout\);

-- Location: LCCOMB_X74_Y56_N20
\sorter|LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~5_cout\ = CARRY((\sorter|d1~6_combout\ & ((!\sorter|LessThan10~3_cout\) # (!\sorter|c0[2]~14_combout\))) # (!\sorter|d1~6_combout\ & (!\sorter|c0[2]~14_combout\ & !\sorter|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~6_combout\,
	datab => \sorter|c0[2]~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~3_cout\,
	cout => \sorter|LessThan10~5_cout\);

-- Location: LCCOMB_X74_Y56_N22
\sorter|LessThan10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~7_cout\ = CARRY((\sorter|c0[3]~13_combout\ & ((!\sorter|LessThan10~5_cout\) # (!\sorter|d1~5_combout\))) # (!\sorter|c0[3]~13_combout\ & (!\sorter|d1~5_combout\ & !\sorter|LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[3]~13_combout\,
	datab => \sorter|d1~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~5_cout\,
	cout => \sorter|LessThan10~7_cout\);

-- Location: LCCOMB_X74_Y56_N24
\sorter|LessThan10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~9_cout\ = CARRY((\sorter|d1~4_combout\ & ((!\sorter|LessThan10~7_cout\) # (!\sorter|c0[4]~12_combout\))) # (!\sorter|d1~4_combout\ & (!\sorter|c0[4]~12_combout\ & !\sorter|LessThan10~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~4_combout\,
	datab => \sorter|c0[4]~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~7_cout\,
	cout => \sorter|LessThan10~9_cout\);

-- Location: LCCOMB_X74_Y56_N26
\sorter|LessThan10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~11_cout\ = CARRY((\sorter|d1~3_combout\ & (\sorter|c0[5]~11_combout\ & !\sorter|LessThan10~9_cout\)) # (!\sorter|d1~3_combout\ & ((\sorter|c0[5]~11_combout\) # (!\sorter|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~3_combout\,
	datab => \sorter|c0[5]~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~9_cout\,
	cout => \sorter|LessThan10~11_cout\);

-- Location: LCCOMB_X74_Y56_N28
\sorter|LessThan10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~13_cout\ = CARRY((\sorter|c0[6]~10_combout\ & (\sorter|d1~2_combout\ & !\sorter|LessThan10~11_cout\)) # (!\sorter|c0[6]~10_combout\ & ((\sorter|d1~2_combout\) # (!\sorter|LessThan10~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[6]~10_combout\,
	datab => \sorter|d1~2_combout\,
	datad => VCC,
	cin => \sorter|LessThan10~11_cout\,
	cout => \sorter|LessThan10~13_cout\);

-- Location: LCCOMB_X74_Y56_N30
\sorter|LessThan10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan10~14_combout\ = (\sorter|c0[7]~9_combout\ & (\sorter|LessThan10~13_cout\ & \sorter|d1~1_combout\)) # (!\sorter|c0[7]~9_combout\ & ((\sorter|LessThan10~13_cout\) # (\sorter|d1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0[7]~9_combout\,
	datad => \sorter|d1~1_combout\,
	cin => \sorter|LessThan10~13_cout\,
	combout => \sorter|LessThan10~14_combout\);

-- Location: LCCOMB_X70_Y56_N2
\sorter|d1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~9_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[7]~9_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[7]~9_combout\,
	datac => \sorter|d1~1_combout\,
	datad => \sorter|LessThan10~14_combout\,
	combout => \sorter|d1~9_combout\);

-- Location: LCCOMB_X74_Y56_N8
\sorter|d1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~10_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[6]~10_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[6]~10_combout\,
	datac => \sorter|d1~2_combout\,
	datad => \sorter|LessThan10~14_combout\,
	combout => \sorter|d1~10_combout\);

-- Location: LCCOMB_X72_Y56_N4
\sorter|d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~3_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[5]~11_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a0[5]~11_combout\,
	datab => \sorter|b0[5]~11_combout\,
	datac => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~3_combout\);

-- Location: LCCOMB_X73_Y56_N16
\sorter|a0[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[4]~12_combout\ = (\sorter|LessThan2~14_combout\ & ((\sorter|a1~12_combout\))) # (!\sorter|LessThan2~14_combout\ & (\sorter|a0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0~4_combout\,
	datac => \sorter|a1~12_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a0[4]~12_combout\);

-- Location: LCCOMB_X73_Y56_N22
\sorter|d0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~4_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[4]~12_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[4]~12_combout\,
	datac => \sorter|b0[4]~12_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~4_combout\);

-- Location: LCCOMB_X73_Y55_N12
\sorter|a0[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|a0[2]~14_combout\ = (\sorter|LessThan2~14_combout\ & (\sorter|a1~14_combout\)) # (!\sorter|LessThan2~14_combout\ & ((\sorter|a0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a1~14_combout\,
	datac => \sorter|a0~6_combout\,
	datad => \sorter|LessThan2~14_combout\,
	combout => \sorter|a0[2]~14_combout\);

-- Location: LCCOMB_X74_Y56_N10
\sorter|d1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~6_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|a0[2]~14_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|b0[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|b0[2]~14_combout\,
	datac => \sorter|a0[2]~14_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d1~6_combout\);

-- Location: LCCOMB_X74_Y56_N12
\sorter|d1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~14_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[2]~14_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0[2]~14_combout\,
	datac => \sorter|LessThan10~14_combout\,
	datad => \sorter|d1~6_combout\,
	combout => \sorter|d1~14_combout\);

-- Location: LCCOMB_X76_Y52_N26
\sorter|c0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0~7_combout\ = (\sorter|LessThan6~14_combout\ & ((p7(1)))) # (!\sorter|LessThan6~14_combout\ & (p6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p6(1),
	datac => \sorter|LessThan6~14_combout\,
	datad => p7(1),
	combout => \sorter|c0~7_combout\);

-- Location: LCCOMB_X70_Y52_N6
\sorter|c0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[1]~15_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c1~15_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~15_combout\,
	datac => \sorter|c0~7_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[1]~15_combout\);

-- Location: LCCOMB_X74_Y56_N2
\sorter|d1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~15_combout\ = (\sorter|LessThan10~14_combout\ & ((\sorter|c0[1]~15_combout\))) # (!\sorter|LessThan10~14_combout\ & (\sorter|d1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~7_combout\,
	datac => \sorter|LessThan10~14_combout\,
	datad => \sorter|c0[1]~15_combout\,
	combout => \sorter|d1~15_combout\);

-- Location: LCCOMB_X70_Y56_N4
\sorter|d1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~8_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[0]~8_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c0[0]~8_combout\,
	datac => \sorter|d1~0_combout\,
	datad => \sorter|LessThan10~14_combout\,
	combout => \sorter|d1~8_combout\);

-- Location: LCCOMB_X70_Y56_N12
\sorter|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~1_cout\ = CARRY((\sorter|d0~0_combout\ & !\sorter|d1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~0_combout\,
	datab => \sorter|d1~8_combout\,
	datad => VCC,
	cout => \sorter|LessThan11~1_cout\);

-- Location: LCCOMB_X70_Y56_N14
\sorter|LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~3_cout\ = CARRY((\sorter|d0~7_combout\ & (\sorter|d1~15_combout\ & !\sorter|LessThan11~1_cout\)) # (!\sorter|d0~7_combout\ & ((\sorter|d1~15_combout\) # (!\sorter|LessThan11~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~7_combout\,
	datab => \sorter|d1~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~1_cout\,
	cout => \sorter|LessThan11~3_cout\);

-- Location: LCCOMB_X70_Y56_N16
\sorter|LessThan11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~5_cout\ = CARRY((\sorter|d0~6_combout\ & ((!\sorter|LessThan11~3_cout\) # (!\sorter|d1~14_combout\))) # (!\sorter|d0~6_combout\ & (!\sorter|d1~14_combout\ & !\sorter|LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~6_combout\,
	datab => \sorter|d1~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~3_cout\,
	cout => \sorter|LessThan11~5_cout\);

-- Location: LCCOMB_X70_Y56_N18
\sorter|LessThan11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~7_cout\ = CARRY((\sorter|d1~13_combout\ & ((!\sorter|LessThan11~5_cout\) # (!\sorter|d0~5_combout\))) # (!\sorter|d1~13_combout\ & (!\sorter|d0~5_combout\ & !\sorter|LessThan11~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~13_combout\,
	datab => \sorter|d0~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~5_cout\,
	cout => \sorter|LessThan11~7_cout\);

-- Location: LCCOMB_X70_Y56_N20
\sorter|LessThan11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~9_cout\ = CARRY((\sorter|d1~12_combout\ & (\sorter|d0~4_combout\ & !\sorter|LessThan11~7_cout\)) # (!\sorter|d1~12_combout\ & ((\sorter|d0~4_combout\) # (!\sorter|LessThan11~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~12_combout\,
	datab => \sorter|d0~4_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~7_cout\,
	cout => \sorter|LessThan11~9_cout\);

-- Location: LCCOMB_X70_Y56_N22
\sorter|LessThan11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~11_cout\ = CARRY((\sorter|d1~11_combout\ & ((!\sorter|LessThan11~9_cout\) # (!\sorter|d0~3_combout\))) # (!\sorter|d1~11_combout\ & (!\sorter|d0~3_combout\ & !\sorter|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~11_combout\,
	datab => \sorter|d0~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~9_cout\,
	cout => \sorter|LessThan11~11_cout\);

-- Location: LCCOMB_X70_Y56_N24
\sorter|LessThan11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~13_cout\ = CARRY((\sorter|d0~2_combout\ & ((!\sorter|LessThan11~11_cout\) # (!\sorter|d1~10_combout\))) # (!\sorter|d0~2_combout\ & (!\sorter|d1~10_combout\ & !\sorter|LessThan11~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~2_combout\,
	datab => \sorter|d1~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan11~11_cout\,
	cout => \sorter|LessThan11~13_cout\);

-- Location: LCCOMB_X70_Y56_N26
\sorter|LessThan11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan11~14_combout\ = (\sorter|d0~1_combout\ & ((\sorter|LessThan11~13_cout\) # (!\sorter|d1~9_combout\))) # (!\sorter|d0~1_combout\ & (\sorter|LessThan11~13_cout\ & !\sorter|d1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d0~1_combout\,
	datad => \sorter|d1~9_combout\,
	cin => \sorter|LessThan11~13_cout\,
	combout => \sorter|LessThan11~14_combout\);

-- Location: LCCOMB_X73_Y52_N0
\sorter|c0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|c0[3]~13_combout\ = (\sorter|LessThan8~14_combout\ & (\sorter|c1~13_combout\)) # (!\sorter|LessThan8~14_combout\ & ((\sorter|c0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c1~13_combout\,
	datac => \sorter|c0~5_combout\,
	datad => \sorter|LessThan8~14_combout\,
	combout => \sorter|c0[3]~13_combout\);

-- Location: LCCOMB_X70_Y56_N10
\sorter|d1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1~13_combout\ = (\sorter|LessThan10~14_combout\ & (\sorter|c0[3]~13_combout\)) # (!\sorter|LessThan10~14_combout\ & ((\sorter|d1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|c0[3]~13_combout\,
	datac => \sorter|d1~5_combout\,
	datad => \sorter|LessThan10~14_combout\,
	combout => \sorter|d1~13_combout\);

-- Location: LCCOMB_X70_Y56_N0
\sorter|d1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[3]~21_combout\ = (\sorter|LessThan11~14_combout\ & (\sorter|d0~5_combout\)) # (!\sorter|LessThan11~14_combout\ & ((\sorter|d1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d0~5_combout\,
	datac => \sorter|LessThan11~14_combout\,
	datad => \sorter|d1~13_combout\,
	combout => \sorter|d1[3]~21_combout\);

-- Location: LCCOMB_X69_Y54_N6
\sorter|e1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~14_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|c1[2]~22_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|e1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1~6_combout\,
	datac => \sorter|c1[2]~22_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~14_combout\);

-- Location: LCCOMB_X70_Y54_N12
\sorter|e0[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[2]~14_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e1~14_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~6_combout\,
	datac => \sorter|LessThan14~14_combout\,
	datad => \sorter|e1~14_combout\,
	combout => \sorter|e0[2]~14_combout\);

-- Location: LCCOMB_X68_Y54_N18
\sorter|e0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[1]~15_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e1~15_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0~7_combout\,
	datac => \sorter|e1~15_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e0[1]~15_combout\);

-- Location: LCCOMB_X76_Y56_N12
\sorter|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d0~0_combout\ = (\sorter|LessThan9~14_combout\ & ((\sorter|b0[0]~8_combout\))) # (!\sorter|LessThan9~14_combout\ & (\sorter|a0[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|a0[0]~8_combout\,
	datac => \sorter|b0[0]~8_combout\,
	datad => \sorter|LessThan9~14_combout\,
	combout => \sorter|d0~0_combout\);

-- Location: LCCOMB_X69_Y56_N24
\sorter|d1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[0]~16_combout\ = (\sorter|LessThan11~14_combout\ & ((\sorter|d0~0_combout\))) # (!\sorter|LessThan11~14_combout\ & (\sorter|d1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~8_combout\,
	datac => \sorter|d0~0_combout\,
	datad => \sorter|LessThan11~14_combout\,
	combout => \sorter|d1[0]~16_combout\);

-- Location: LCCOMB_X69_Y56_N2
\sorter|LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~1_cout\ = CARRY((\sorter|e0[0]~8_combout\ & !\sorter|d1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0[0]~8_combout\,
	datab => \sorter|d1[0]~16_combout\,
	datad => VCC,
	cout => \sorter|LessThan18~1_cout\);

-- Location: LCCOMB_X69_Y56_N4
\sorter|LessThan18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~3_cout\ = CARRY((\sorter|d1[1]~23_combout\ & ((!\sorter|LessThan18~1_cout\) # (!\sorter|e0[1]~15_combout\))) # (!\sorter|d1[1]~23_combout\ & (!\sorter|e0[1]~15_combout\ & !\sorter|LessThan18~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[1]~23_combout\,
	datab => \sorter|e0[1]~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~1_cout\,
	cout => \sorter|LessThan18~3_cout\);

-- Location: LCCOMB_X69_Y56_N6
\sorter|LessThan18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~5_cout\ = CARRY((\sorter|d1[2]~22_combout\ & (\sorter|e0[2]~14_combout\ & !\sorter|LessThan18~3_cout\)) # (!\sorter|d1[2]~22_combout\ & ((\sorter|e0[2]~14_combout\) # (!\sorter|LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[2]~22_combout\,
	datab => \sorter|e0[2]~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~3_cout\,
	cout => \sorter|LessThan18~5_cout\);

-- Location: LCCOMB_X69_Y56_N8
\sorter|LessThan18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~7_cout\ = CARRY((\sorter|e0[3]~13_combout\ & (\sorter|d1[3]~21_combout\ & !\sorter|LessThan18~5_cout\)) # (!\sorter|e0[3]~13_combout\ & ((\sorter|d1[3]~21_combout\) # (!\sorter|LessThan18~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0[3]~13_combout\,
	datab => \sorter|d1[3]~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~5_cout\,
	cout => \sorter|LessThan18~7_cout\);

-- Location: LCCOMB_X69_Y56_N10
\sorter|LessThan18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~9_cout\ = CARRY((\sorter|d1[4]~20_combout\ & (\sorter|e0[4]~12_combout\ & !\sorter|LessThan18~7_cout\)) # (!\sorter|d1[4]~20_combout\ & ((\sorter|e0[4]~12_combout\) # (!\sorter|LessThan18~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[4]~20_combout\,
	datab => \sorter|e0[4]~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~7_cout\,
	cout => \sorter|LessThan18~9_cout\);

-- Location: LCCOMB_X69_Y56_N12
\sorter|LessThan18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~11_cout\ = CARRY((\sorter|d1[5]~19_combout\ & ((!\sorter|LessThan18~9_cout\) # (!\sorter|e0[5]~11_combout\))) # (!\sorter|d1[5]~19_combout\ & (!\sorter|e0[5]~11_combout\ & !\sorter|LessThan18~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[5]~19_combout\,
	datab => \sorter|e0[5]~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~9_cout\,
	cout => \sorter|LessThan18~11_cout\);

-- Location: LCCOMB_X69_Y56_N14
\sorter|LessThan18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~13_cout\ = CARRY((\sorter|d1[6]~18_combout\ & (\sorter|e0[6]~10_combout\ & !\sorter|LessThan18~11_cout\)) # (!\sorter|d1[6]~18_combout\ & ((\sorter|e0[6]~10_combout\) # (!\sorter|LessThan18~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[6]~18_combout\,
	datab => \sorter|e0[6]~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan18~11_cout\,
	cout => \sorter|LessThan18~13_cout\);

-- Location: LCCOMB_X69_Y56_N16
\sorter|LessThan18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan18~14_combout\ = (\sorter|d1[7]~17_combout\ & (\sorter|LessThan18~13_cout\ & \sorter|e0[7]~9_combout\)) # (!\sorter|d1[7]~17_combout\ & ((\sorter|LessThan18~13_cout\) # (\sorter|e0[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[7]~17_combout\,
	datad => \sorter|e0[7]~9_combout\,
	cin => \sorter|LessThan18~13_cout\,
	combout => \sorter|LessThan18~14_combout\);

-- Location: LCCOMB_X68_Y56_N18
\sorter|m0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~3_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[5]~19_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[5]~19_combout\,
	datac => \sorter|e0[5]~11_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m0~3_combout\);

-- Location: LCCOMB_X67_Y53_N0
\sorter|m3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~4_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|e2[4]~4_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|f1[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e2[4]~4_combout\,
	datac => \sorter|f1[4]~20_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~4_combout\);

-- Location: LCCOMB_X67_Y54_N28
\sorter|m3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~12_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~4_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~4_combout\,
	datac => \sorter|m2~4_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m3~12_combout\);

-- Location: LCCOMB_X72_Y54_N14
\sorter|e1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1~13_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|c1[3]~21_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|e1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1~5_combout\,
	datac => \sorter|c1[3]~21_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e1~13_combout\);

-- Location: LCCOMB_X68_Y54_N20
\sorter|e0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[3]~13_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e1~13_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~5_combout\,
	datac => \sorter|e1~13_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e0[3]~13_combout\);

-- Location: LCCOMB_X68_Y54_N10
\sorter|m0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~5_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[3]~21_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[3]~21_combout\,
	datac => \sorter|LessThan18~14_combout\,
	datad => \sorter|e0[3]~13_combout\,
	combout => \sorter|m0~5_combout\);

-- Location: LCCOMB_X72_Y53_N4
\sorter|m4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~6_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[2]~22_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[2]~22_combout\,
	datab => \sorter|e2[2]~6_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~6_combout\);

-- Location: LCCOMB_X68_Y53_N6
\sorter|m2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~6_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|m4~6_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|e1[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~6_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[2]~22_combout\,
	combout => \sorter|m2~6_combout\);

-- Location: LCCOMB_X68_Y53_N14
\sorter|m3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~14_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~6_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~6_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~6_combout\,
	combout => \sorter|m3~14_combout\);

-- Location: LCCOMB_X77_Y53_N30
\sorter|b2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|b2[1]~7_combout\ = (\sorter|LessThan4~14_combout\ & ((\sorter|b1~7_combout\))) # (!\sorter|LessThan4~14_combout\ & (p5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p5(1),
	datab => \sorter|LessThan4~14_combout\,
	datad => \sorter|b1~7_combout\,
	combout => \sorter|b2[1]~7_combout\);

-- Location: LCCOMB_X77_Y53_N22
\sorter|f0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f0~7_combout\ = (\sorter|LessThan15~14_combout\ & ((\sorter|b2[1]~7_combout\))) # (!\sorter|LessThan15~14_combout\ & (\sorter|a2[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|a2[1]~7_combout\,
	datab => \sorter|b2[1]~7_combout\,
	datad => \sorter|LessThan15~14_combout\,
	combout => \sorter|f0~7_combout\);

-- Location: LCCOMB_X74_Y53_N26
\sorter|f1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|f1[1]~23_combout\ = (\sorter|LessThan17~14_combout\ & ((\sorter|f0~7_combout\))) # (!\sorter|LessThan17~14_combout\ & (\sorter|f1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|f1~15_combout\,
	datac => \sorter|f0~7_combout\,
	datad => \sorter|LessThan17~14_combout\,
	combout => \sorter|f1[1]~23_combout\);

-- Location: LCCOMB_X72_Y53_N2
\sorter|m4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~7_combout\ = (\sorter|LessThan19~14_combout\ & ((\sorter|f1[1]~23_combout\))) # (!\sorter|LessThan19~14_combout\ & (\sorter|e2[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e2[1]~7_combout\,
	datac => \sorter|f1[1]~23_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~7_combout\);

-- Location: LCCOMB_X70_Y53_N16
\sorter|m2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~7_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|m4~7_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|e1[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~7_combout\,
	datac => \sorter|e1[1]~23_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m2~7_combout\);

-- Location: LCCOMB_X67_Y54_N18
\sorter|m3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~15_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~7_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~7_combout\,
	datac => \sorter|m2~7_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m3~15_combout\);

-- Location: LCCOMB_X68_Y55_N8
\sorter|e0[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e0[0]~8_combout\ = (\sorter|LessThan14~14_combout\ & ((\sorter|e1~8_combout\))) # (!\sorter|LessThan14~14_combout\ & (\sorter|e0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0~0_combout\,
	datac => \sorter|LessThan14~14_combout\,
	datad => \sorter|e1~8_combout\,
	combout => \sorter|e0[0]~8_combout\);

-- Location: LCCOMB_X68_Y55_N28
\sorter|m0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~0_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[0]~16_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[0]~16_combout\,
	datac => \sorter|e0[0]~8_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m0~0_combout\);

-- Location: LCCOMB_X67_Y54_N0
\sorter|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~1_cout\ = CARRY((!\sorter|m3~8_combout\ & \sorter|m0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~8_combout\,
	datab => \sorter|m0~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan23~1_cout\);

-- Location: LCCOMB_X67_Y54_N2
\sorter|LessThan23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~3_cout\ = CARRY((\sorter|m0~7_combout\ & (\sorter|m3~15_combout\ & !\sorter|LessThan23~1_cout\)) # (!\sorter|m0~7_combout\ & ((\sorter|m3~15_combout\) # (!\sorter|LessThan23~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~7_combout\,
	datab => \sorter|m3~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~1_cout\,
	cout => \sorter|LessThan23~3_cout\);

-- Location: LCCOMB_X67_Y54_N4
\sorter|LessThan23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~5_cout\ = CARRY((\sorter|m0~6_combout\ & ((!\sorter|LessThan23~3_cout\) # (!\sorter|m3~14_combout\))) # (!\sorter|m0~6_combout\ & (!\sorter|m3~14_combout\ & !\sorter|LessThan23~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~6_combout\,
	datab => \sorter|m3~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~3_cout\,
	cout => \sorter|LessThan23~5_cout\);

-- Location: LCCOMB_X67_Y54_N6
\sorter|LessThan23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~7_cout\ = CARRY((\sorter|m3~13_combout\ & ((!\sorter|LessThan23~5_cout\) # (!\sorter|m0~5_combout\))) # (!\sorter|m3~13_combout\ & (!\sorter|m0~5_combout\ & !\sorter|LessThan23~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~13_combout\,
	datab => \sorter|m0~5_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~5_cout\,
	cout => \sorter|LessThan23~7_cout\);

-- Location: LCCOMB_X67_Y54_N8
\sorter|LessThan23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~9_cout\ = CARRY((\sorter|m0~4_combout\ & ((!\sorter|LessThan23~7_cout\) # (!\sorter|m3~12_combout\))) # (!\sorter|m0~4_combout\ & (!\sorter|m3~12_combout\ & !\sorter|LessThan23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~4_combout\,
	datab => \sorter|m3~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~7_cout\,
	cout => \sorter|LessThan23~9_cout\);

-- Location: LCCOMB_X67_Y54_N10
\sorter|LessThan23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~11_cout\ = CARRY((\sorter|m3~11_combout\ & ((!\sorter|LessThan23~9_cout\) # (!\sorter|m0~3_combout\))) # (!\sorter|m3~11_combout\ & (!\sorter|m0~3_combout\ & !\sorter|LessThan23~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~11_combout\,
	datab => \sorter|m0~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~9_cout\,
	cout => \sorter|LessThan23~11_cout\);

-- Location: LCCOMB_X67_Y54_N12
\sorter|LessThan23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~13_cout\ = CARRY((\sorter|m0~2_combout\ & ((!\sorter|LessThan23~11_cout\) # (!\sorter|m3~10_combout\))) # (!\sorter|m0~2_combout\ & (!\sorter|m3~10_combout\ & !\sorter|LessThan23~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~2_combout\,
	datab => \sorter|m3~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan23~11_cout\,
	cout => \sorter|LessThan23~13_cout\);

-- Location: LCCOMB_X67_Y54_N14
\sorter|LessThan23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan23~14_combout\ = (\sorter|m0~1_combout\ & ((\sorter|LessThan23~13_cout\) # (!\sorter|m3~9_combout\))) # (!\sorter|m0~1_combout\ & (\sorter|LessThan23~13_cout\ & !\sorter|m3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~1_combout\,
	datad => \sorter|m3~9_combout\,
	cin => \sorter|LessThan23~13_cout\,
	combout => \sorter|LessThan23~14_combout\);

-- Location: LCCOMB_X66_Y53_N24
\sorter|m0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~8_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m3~8_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~8_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m0~0_combout\,
	combout => \sorter|m0~8_combout\);

-- Location: LCCOMB_X65_Y53_N26
\sorter|m2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~8_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~0_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~0_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~0_combout\,
	combout => \sorter|m2~8_combout\);

-- Location: LCCOMB_X67_Y53_N14
\sorter|m3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~1_combout\ = (\sorter|LessThan19~14_combout\ & ((\sorter|e2[7]~1_combout\))) # (!\sorter|LessThan19~14_combout\ & (\sorter|f1[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[7]~17_combout\,
	datac => \sorter|e2[7]~1_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m3~1_combout\);

-- Location: LCCOMB_X67_Y53_N18
\sorter|m2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~9_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~1_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~1_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~1_combout\,
	combout => \sorter|m2~9_combout\);

-- Location: LCCOMB_X69_Y56_N28
\sorter|m0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~1_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[7]~17_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[7]~17_combout\,
	datac => \sorter|e0[7]~9_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m0~1_combout\);

-- Location: LCCOMB_X66_Y53_N2
\sorter|m0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~9_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~9_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~1_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~9_combout\,
	combout => \sorter|m0~9_combout\);

-- Location: LCCOMB_X67_Y53_N8
\sorter|m2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~10_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m3~2_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan21~14_combout\,
	datac => \sorter|m2~2_combout\,
	datad => \sorter|m3~2_combout\,
	combout => \sorter|m2~10_combout\);

-- Location: LCCOMB_X67_Y53_N28
\sorter|m2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~11_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~3_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~3_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~3_combout\,
	combout => \sorter|m2~11_combout\);

-- Location: LCCOMB_X69_Y55_N28
\sorter|d1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[4]~20_combout\ = (\sorter|LessThan11~14_combout\ & ((\sorter|d0~4_combout\))) # (!\sorter|LessThan11~14_combout\ & (\sorter|d1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~12_combout\,
	datac => \sorter|d0~4_combout\,
	datad => \sorter|LessThan11~14_combout\,
	combout => \sorter|d1[4]~20_combout\);

-- Location: LCCOMB_X68_Y55_N30
\sorter|m0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~4_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[4]~20_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[4]~20_combout\,
	datac => \sorter|e0[4]~12_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m0~4_combout\);

-- Location: LCCOMB_X67_Y54_N30
\sorter|m0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~12_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~12_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~4_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~12_combout\,
	combout => \sorter|m0~12_combout\);

-- Location: LCCOMB_X69_Y53_N30
\sorter|m2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~5_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|m4~5_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|e1[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[3]~21_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|m4~5_combout\,
	combout => \sorter|m2~5_combout\);

-- Location: LCCOMB_X73_Y53_N8
\sorter|m2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~13_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~5_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~5_combout\,
	datac => \sorter|m2~5_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m2~13_combout\);

-- Location: LCCOMB_X70_Y56_N30
\sorter|d1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[2]~22_combout\ = (\sorter|LessThan11~14_combout\ & (\sorter|d0~6_combout\)) # (!\sorter|LessThan11~14_combout\ & ((\sorter|d1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~6_combout\,
	datac => \sorter|LessThan11~14_combout\,
	datad => \sorter|d1~14_combout\,
	combout => \sorter|d1[2]~22_combout\);

-- Location: LCCOMB_X70_Y54_N4
\sorter|m0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~6_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[2]~22_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[2]~22_combout\,
	datac => \sorter|LessThan18~14_combout\,
	datad => \sorter|e0[2]~14_combout\,
	combout => \sorter|m0~6_combout\);

-- Location: LCCOMB_X70_Y54_N30
\sorter|m0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~14_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~14_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~6_combout\,
	datac => \sorter|m3~14_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m0~14_combout\);

-- Location: LCCOMB_X65_Y53_N18
\sorter|m2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~15_combout\ = (\sorter|LessThan21~14_combout\ & (\sorter|m3~7_combout\)) # (!\sorter|LessThan21~14_combout\ & ((\sorter|m2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~7_combout\,
	datac => \sorter|m2~7_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m2~15_combout\);

-- Location: LCCOMB_X66_Y53_N4
\sorter|LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~1_cout\ = CARRY((!\sorter|m2~8_combout\ & \sorter|m0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~8_combout\,
	datab => \sorter|m0~8_combout\,
	datad => VCC,
	cout => \sorter|LessThan24~1_cout\);

-- Location: LCCOMB_X66_Y53_N6
\sorter|LessThan24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~3_cout\ = CARRY((\sorter|m0~15_combout\ & (\sorter|m2~15_combout\ & !\sorter|LessThan24~1_cout\)) # (!\sorter|m0~15_combout\ & ((\sorter|m2~15_combout\) # (!\sorter|LessThan24~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~15_combout\,
	datab => \sorter|m2~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~1_cout\,
	cout => \sorter|LessThan24~3_cout\);

-- Location: LCCOMB_X66_Y53_N8
\sorter|LessThan24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~5_cout\ = CARRY((\sorter|m2~14_combout\ & (\sorter|m0~14_combout\ & !\sorter|LessThan24~3_cout\)) # (!\sorter|m2~14_combout\ & ((\sorter|m0~14_combout\) # (!\sorter|LessThan24~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~14_combout\,
	datab => \sorter|m0~14_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~3_cout\,
	cout => \sorter|LessThan24~5_cout\);

-- Location: LCCOMB_X66_Y53_N10
\sorter|LessThan24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~7_cout\ = CARRY((\sorter|m0~13_combout\ & (\sorter|m2~13_combout\ & !\sorter|LessThan24~5_cout\)) # (!\sorter|m0~13_combout\ & ((\sorter|m2~13_combout\) # (!\sorter|LessThan24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~13_combout\,
	datab => \sorter|m2~13_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~5_cout\,
	cout => \sorter|LessThan24~7_cout\);

-- Location: LCCOMB_X66_Y53_N12
\sorter|LessThan24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~9_cout\ = CARRY((\sorter|m2~12_combout\ & (\sorter|m0~12_combout\ & !\sorter|LessThan24~7_cout\)) # (!\sorter|m2~12_combout\ & ((\sorter|m0~12_combout\) # (!\sorter|LessThan24~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~12_combout\,
	datab => \sorter|m0~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~7_cout\,
	cout => \sorter|LessThan24~9_cout\);

-- Location: LCCOMB_X66_Y53_N14
\sorter|LessThan24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~11_cout\ = CARRY((\sorter|m0~11_combout\ & (\sorter|m2~11_combout\ & !\sorter|LessThan24~9_cout\)) # (!\sorter|m0~11_combout\ & ((\sorter|m2~11_combout\) # (!\sorter|LessThan24~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~11_combout\,
	datab => \sorter|m2~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~9_cout\,
	cout => \sorter|LessThan24~11_cout\);

-- Location: LCCOMB_X66_Y53_N16
\sorter|LessThan24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~13_cout\ = CARRY((\sorter|m0~10_combout\ & ((!\sorter|LessThan24~11_cout\) # (!\sorter|m2~10_combout\))) # (!\sorter|m0~10_combout\ & (!\sorter|m2~10_combout\ & !\sorter|LessThan24~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~10_combout\,
	datab => \sorter|m2~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan24~11_cout\,
	cout => \sorter|LessThan24~13_cout\);

-- Location: LCCOMB_X66_Y53_N18
\sorter|LessThan24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan24~14_combout\ = (\sorter|m2~9_combout\ & (\sorter|LessThan24~13_cout\ & \sorter|m0~9_combout\)) # (!\sorter|m2~9_combout\ & ((\sorter|LessThan24~13_cout\) # (\sorter|m0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m2~9_combout\,
	datad => \sorter|m0~9_combout\,
	cin => \sorter|LessThan24~13_cout\,
	combout => \sorter|LessThan24~14_combout\);

-- Location: LCCOMB_X66_Y53_N20
\sorter|m2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~16_combout\ = (\sorter|LessThan24~14_combout\ & (\sorter|m0~8_combout\)) # (!\sorter|LessThan24~14_combout\ & ((\sorter|m2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~8_combout\,
	datac => \sorter|m2~8_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~16_combout\);

-- Location: LCCOMB_X67_Y55_N0
\sorter|m3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~16_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~0_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~0_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~8_combout\,
	combout => \sorter|m3~16_combout\);

-- Location: LCCOMB_X68_Y55_N18
\sorter|m1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~0_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|e0[0]~8_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|d1[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[0]~16_combout\,
	datac => \sorter|e0[0]~8_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m1~0_combout\);

-- Location: LCCOMB_X68_Y55_N16
\sorter|m4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~8_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|e1[0]~16_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|m4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e1[0]~16_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|m4~0_combout\,
	combout => \sorter|m4~8_combout\);

-- Location: LCCOMB_X70_Y56_N6
\sorter|d1[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[7]~17_combout\ = (\sorter|LessThan11~14_combout\ & (\sorter|d0~1_combout\)) # (!\sorter|LessThan11~14_combout\ & ((\sorter|d1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d0~1_combout\,
	datac => \sorter|LessThan11~14_combout\,
	datad => \sorter|d1~9_combout\,
	combout => \sorter|d1[7]~17_combout\);

-- Location: LCCOMB_X69_Y55_N18
\sorter|m1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~1_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|e0[7]~9_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|d1[7]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0[7]~9_combout\,
	datac => \sorter|d1[7]~17_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m1~1_combout\);

-- Location: LCCOMB_X68_Y55_N24
\sorter|m4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~9_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|e1[7]~17_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|m4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~1_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[7]~17_combout\,
	combout => \sorter|m4~9_combout\);

-- Location: LCCOMB_X69_Y55_N0
\sorter|m4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~10_combout\ = (\sorter|LessThan20~14_combout\ & (\sorter|e1[6]~18_combout\)) # (!\sorter|LessThan20~14_combout\ & ((\sorter|m4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e1[6]~18_combout\,
	datac => \sorter|m4~2_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m4~10_combout\);

-- Location: LCCOMB_X69_Y56_N30
\sorter|d1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[5]~19_combout\ = (\sorter|LessThan11~14_combout\ & ((\sorter|d0~3_combout\))) # (!\sorter|LessThan11~14_combout\ & (\sorter|d1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1~11_combout\,
	datac => \sorter|d0~3_combout\,
	datad => \sorter|LessThan11~14_combout\,
	combout => \sorter|d1[5]~19_combout\);

-- Location: LCCOMB_X69_Y56_N18
\sorter|m1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~3_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|e0[5]~11_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|d1[5]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|e0[5]~11_combout\,
	datac => \sorter|d1[5]~19_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m1~3_combout\);

-- Location: LCCOMB_X68_Y55_N6
\sorter|m4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~12_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|e1[4]~20_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|m4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~4_combout\,
	datac => \sorter|LessThan20~14_combout\,
	datad => \sorter|e1[4]~20_combout\,
	combout => \sorter|m4~12_combout\);

-- Location: LCCOMB_X72_Y54_N20
\sorter|e1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e1[3]~21_combout\ = (\sorter|LessThan14~14_combout\ & (\sorter|e0~5_combout\)) # (!\sorter|LessThan14~14_combout\ & ((\sorter|e1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0~5_combout\,
	datac => \sorter|e1~13_combout\,
	datad => \sorter|LessThan14~14_combout\,
	combout => \sorter|e1[3]~21_combout\);

-- Location: LCCOMB_X69_Y55_N20
\sorter|m4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~13_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|e1[3]~21_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|m4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~5_combout\,
	datac => \sorter|e1[3]~21_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m4~13_combout\);

-- Location: LCCOMB_X70_Y54_N6
\sorter|m1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~6_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|e0[2]~14_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|d1[2]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[2]~22_combout\,
	datac => \sorter|LessThan18~14_combout\,
	datad => \sorter|e0[2]~14_combout\,
	combout => \sorter|m1~6_combout\);

-- Location: LCCOMB_X68_Y54_N14
\sorter|m1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~7_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|e0[1]~15_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|d1[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[1]~23_combout\,
	datac => \sorter|LessThan18~14_combout\,
	datad => \sorter|e0[1]~15_combout\,
	combout => \sorter|m1~7_combout\);

-- Location: LCCOMB_X69_Y55_N2
\sorter|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~1_cout\ = CARRY((!\sorter|m4~8_combout\ & \sorter|m1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~8_combout\,
	datab => \sorter|m1~0_combout\,
	datad => VCC,
	cout => \sorter|LessThan22~1_cout\);

-- Location: LCCOMB_X69_Y55_N4
\sorter|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~3_cout\ = CARRY((\sorter|m4~15_combout\ & ((!\sorter|LessThan22~1_cout\) # (!\sorter|m1~7_combout\))) # (!\sorter|m4~15_combout\ & (!\sorter|m1~7_combout\ & !\sorter|LessThan22~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~15_combout\,
	datab => \sorter|m1~7_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~1_cout\,
	cout => \sorter|LessThan22~3_cout\);

-- Location: LCCOMB_X69_Y55_N6
\sorter|LessThan22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~5_cout\ = CARRY((\sorter|m4~14_combout\ & (\sorter|m1~6_combout\ & !\sorter|LessThan22~3_cout\)) # (!\sorter|m4~14_combout\ & ((\sorter|m1~6_combout\) # (!\sorter|LessThan22~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~14_combout\,
	datab => \sorter|m1~6_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~3_cout\,
	cout => \sorter|LessThan22~5_cout\);

-- Location: LCCOMB_X69_Y55_N8
\sorter|LessThan22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~7_cout\ = CARRY((\sorter|m1~5_combout\ & (\sorter|m4~13_combout\ & !\sorter|LessThan22~5_cout\)) # (!\sorter|m1~5_combout\ & ((\sorter|m4~13_combout\) # (!\sorter|LessThan22~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~5_combout\,
	datab => \sorter|m4~13_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~5_cout\,
	cout => \sorter|LessThan22~7_cout\);

-- Location: LCCOMB_X69_Y55_N10
\sorter|LessThan22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~9_cout\ = CARRY((\sorter|m1~4_combout\ & ((!\sorter|LessThan22~7_cout\) # (!\sorter|m4~12_combout\))) # (!\sorter|m1~4_combout\ & (!\sorter|m4~12_combout\ & !\sorter|LessThan22~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~4_combout\,
	datab => \sorter|m4~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~7_cout\,
	cout => \sorter|LessThan22~9_cout\);

-- Location: LCCOMB_X69_Y55_N12
\sorter|LessThan22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~11_cout\ = CARRY((\sorter|m4~11_combout\ & ((!\sorter|LessThan22~9_cout\) # (!\sorter|m1~3_combout\))) # (!\sorter|m4~11_combout\ & (!\sorter|m1~3_combout\ & !\sorter|LessThan22~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~11_combout\,
	datab => \sorter|m1~3_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~9_cout\,
	cout => \sorter|LessThan22~11_cout\);

-- Location: LCCOMB_X69_Y55_N14
\sorter|LessThan22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~13_cout\ = CARRY((\sorter|m1~2_combout\ & ((!\sorter|LessThan22~11_cout\) # (!\sorter|m4~10_combout\))) # (!\sorter|m1~2_combout\ & (!\sorter|m4~10_combout\ & !\sorter|LessThan22~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~2_combout\,
	datab => \sorter|m4~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan22~11_cout\,
	cout => \sorter|LessThan22~13_cout\);

-- Location: LCCOMB_X69_Y55_N16
\sorter|LessThan22~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan22~14_combout\ = (\sorter|m1~1_combout\ & ((\sorter|LessThan22~13_cout\) # (!\sorter|m4~9_combout\))) # (!\sorter|m1~1_combout\ & (\sorter|LessThan22~13_cout\ & !\sorter|m4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~1_combout\,
	datad => \sorter|m4~9_combout\,
	cin => \sorter|LessThan22~13_cout\,
	combout => \sorter|LessThan22~14_combout\);

-- Location: LCCOMB_X68_Y55_N20
\sorter|m1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~8_combout\ = (\sorter|LessThan22~14_combout\ & ((\sorter|m4~8_combout\))) # (!\sorter|LessThan22~14_combout\ & (\sorter|m1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~0_combout\,
	datac => \sorter|m4~8_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~8_combout\);

-- Location: LCCOMB_X68_Y55_N14
\sorter|m1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~9_combout\ = (\sorter|LessThan22~14_combout\ & (\sorter|m4~9_combout\)) # (!\sorter|LessThan22~14_combout\ & ((\sorter|m1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~9_combout\,
	datac => \sorter|m1~1_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~9_combout\);

-- Location: LCCOMB_X67_Y54_N24
\sorter|m3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~17_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~1_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~1_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~9_combout\,
	combout => \sorter|m3~17_combout\);

-- Location: LCCOMB_X69_Y56_N22
\sorter|d1[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|d1[6]~18_combout\ = (\sorter|LessThan11~14_combout\ & (\sorter|d0~2_combout\)) # (!\sorter|LessThan11~14_combout\ & ((\sorter|d1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d0~2_combout\,
	datac => \sorter|d1~10_combout\,
	datad => \sorter|LessThan11~14_combout\,
	combout => \sorter|d1[6]~18_combout\);

-- Location: LCCOMB_X69_Y55_N30
\sorter|m1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~2_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|e0[6]~10_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|d1[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|d1[6]~18_combout\,
	datac => \sorter|e0[6]~10_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m1~2_combout\);

-- Location: LCCOMB_X68_Y55_N12
\sorter|m1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~10_combout\ = (\sorter|LessThan22~14_combout\ & (\sorter|m4~10_combout\)) # (!\sorter|LessThan22~14_combout\ & ((\sorter|m1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~10_combout\,
	datac => \sorter|m1~2_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~10_combout\);

-- Location: LCCOMB_X67_Y53_N12
\sorter|e2[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|e2[5]~3_combout\ = (\sorter|LessThan13~14_combout\ & ((\sorter|e1~3_combout\))) # (!\sorter|LessThan13~14_combout\ & (\sorter|c1[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|c1[5]~19_combout\,
	datac => \sorter|e1~3_combout\,
	datad => \sorter|LessThan13~14_combout\,
	combout => \sorter|e2[5]~3_combout\);

-- Location: LCCOMB_X69_Y53_N26
\sorter|m4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~3_combout\ = (\sorter|LessThan19~14_combout\ & (\sorter|f1[5]~19_combout\)) # (!\sorter|LessThan19~14_combout\ & ((\sorter|e2[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|f1[5]~19_combout\,
	datac => \sorter|e2[5]~3_combout\,
	datad => \sorter|LessThan19~14_combout\,
	combout => \sorter|m4~3_combout\);

-- Location: LCCOMB_X70_Y55_N24
\sorter|m4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m4~11_combout\ = (\sorter|LessThan20~14_combout\ & ((\sorter|e1[5]~19_combout\))) # (!\sorter|LessThan20~14_combout\ & (\sorter|m4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m4~3_combout\,
	datac => \sorter|e1[5]~19_combout\,
	datad => \sorter|LessThan20~14_combout\,
	combout => \sorter|m4~11_combout\);

-- Location: LCCOMB_X70_Y55_N18
\sorter|m1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~11_combout\ = (\sorter|LessThan22~14_combout\ & ((\sorter|m4~11_combout\))) # (!\sorter|LessThan22~14_combout\ & (\sorter|m1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~3_combout\,
	datac => \sorter|LessThan22~14_combout\,
	datad => \sorter|m4~11_combout\,
	combout => \sorter|m1~11_combout\);

-- Location: LCCOMB_X68_Y55_N0
\sorter|m1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~4_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|e0[4]~12_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|d1[4]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|LessThan18~14_combout\,
	datab => \sorter|d1[4]~20_combout\,
	datad => \sorter|e0[4]~12_combout\,
	combout => \sorter|m1~4_combout\);

-- Location: LCCOMB_X68_Y55_N22
\sorter|m1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~12_combout\ = (\sorter|LessThan22~14_combout\ & (\sorter|m4~12_combout\)) # (!\sorter|LessThan22~14_combout\ & ((\sorter|m1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~12_combout\,
	datab => \sorter|m1~4_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~12_combout\);

-- Location: LCCOMB_X68_Y54_N4
\sorter|m3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~13_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~5_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~5_combout\,
	datac => \sorter|m2~5_combout\,
	datad => \sorter|LessThan21~14_combout\,
	combout => \sorter|m3~13_combout\);

-- Location: LCCOMB_X68_Y54_N8
\sorter|m3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~21_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~5_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~5_combout\,
	datac => \sorter|m3~13_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m3~21_combout\);

-- Location: LCCOMB_X70_Y54_N0
\sorter|m3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~22_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~6_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~6_combout\,
	datac => \sorter|m3~14_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m3~22_combout\);

-- Location: LCCOMB_X69_Y55_N22
\sorter|m1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~15_combout\ = (\sorter|LessThan22~14_combout\ & (\sorter|m4~15_combout\)) # (!\sorter|LessThan22~14_combout\ & ((\sorter|m1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m4~15_combout\,
	datac => \sorter|m1~7_combout\,
	datad => \sorter|LessThan22~14_combout\,
	combout => \sorter|m1~15_combout\);

-- Location: LCCOMB_X67_Y55_N2
\sorter|LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~1_cout\ = CARRY((\sorter|m1~8_combout\ & !\sorter|m3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~8_combout\,
	datab => \sorter|m3~16_combout\,
	datad => VCC,
	cout => \sorter|LessThan25~1_cout\);

-- Location: LCCOMB_X67_Y55_N4
\sorter|LessThan25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~3_cout\ = CARRY((\sorter|m3~23_combout\ & ((!\sorter|LessThan25~1_cout\) # (!\sorter|m1~15_combout\))) # (!\sorter|m3~23_combout\ & (!\sorter|m1~15_combout\ & !\sorter|LessThan25~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~23_combout\,
	datab => \sorter|m1~15_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~1_cout\,
	cout => \sorter|LessThan25~3_cout\);

-- Location: LCCOMB_X67_Y55_N6
\sorter|LessThan25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~5_cout\ = CARRY((\sorter|m1~14_combout\ & ((!\sorter|LessThan25~3_cout\) # (!\sorter|m3~22_combout\))) # (!\sorter|m1~14_combout\ & (!\sorter|m3~22_combout\ & !\sorter|LessThan25~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~14_combout\,
	datab => \sorter|m3~22_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~3_cout\,
	cout => \sorter|LessThan25~5_cout\);

-- Location: LCCOMB_X67_Y55_N8
\sorter|LessThan25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~7_cout\ = CARRY((\sorter|m1~13_combout\ & (\sorter|m3~21_combout\ & !\sorter|LessThan25~5_cout\)) # (!\sorter|m1~13_combout\ & ((\sorter|m3~21_combout\) # (!\sorter|LessThan25~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~13_combout\,
	datab => \sorter|m3~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~5_cout\,
	cout => \sorter|LessThan25~7_cout\);

-- Location: LCCOMB_X67_Y55_N10
\sorter|LessThan25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~9_cout\ = CARRY((\sorter|m3~20_combout\ & (\sorter|m1~12_combout\ & !\sorter|LessThan25~7_cout\)) # (!\sorter|m3~20_combout\ & ((\sorter|m1~12_combout\) # (!\sorter|LessThan25~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~20_combout\,
	datab => \sorter|m1~12_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~7_cout\,
	cout => \sorter|LessThan25~9_cout\);

-- Location: LCCOMB_X67_Y55_N12
\sorter|LessThan25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~11_cout\ = CARRY((\sorter|m3~19_combout\ & ((!\sorter|LessThan25~9_cout\) # (!\sorter|m1~11_combout\))) # (!\sorter|m3~19_combout\ & (!\sorter|m1~11_combout\ & !\sorter|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~19_combout\,
	datab => \sorter|m1~11_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~9_cout\,
	cout => \sorter|LessThan25~11_cout\);

-- Location: LCCOMB_X67_Y55_N14
\sorter|LessThan25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~13_cout\ = CARRY((\sorter|m3~18_combout\ & (\sorter|m1~10_combout\ & !\sorter|LessThan25~11_cout\)) # (!\sorter|m3~18_combout\ & ((\sorter|m1~10_combout\) # (!\sorter|LessThan25~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~18_combout\,
	datab => \sorter|m1~10_combout\,
	datad => VCC,
	cin => \sorter|LessThan25~11_cout\,
	cout => \sorter|LessThan25~13_cout\);

-- Location: LCCOMB_X67_Y55_N16
\sorter|LessThan25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan25~14_combout\ = (\sorter|m1~9_combout\ & ((\sorter|LessThan25~13_cout\) # (!\sorter|m3~17_combout\))) # (!\sorter|m1~9_combout\ & (\sorter|LessThan25~13_cout\ & !\sorter|m3~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~9_combout\,
	datad => \sorter|m3~17_combout\,
	cin => \sorter|LessThan25~13_cout\,
	combout => \sorter|LessThan25~14_combout\);

-- Location: LCCOMB_X67_Y55_N20
\sorter|m1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~16_combout\ = (\sorter|LessThan25~14_combout\ & (\sorter|m3~16_combout\)) # (!\sorter|LessThan25~14_combout\ & ((\sorter|m1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m3~16_combout\,
	datac => \sorter|m1~8_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~16_combout\);

-- Location: LCCOMB_X68_Y55_N26
\sorter|m1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~17_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~17_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~9_combout\,
	datac => \sorter|LessThan25~14_combout\,
	datad => \sorter|m3~17_combout\,
	combout => \sorter|m1~17_combout\);

-- Location: LCCOMB_X68_Y56_N20
\sorter|m0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~2_combout\ = (\sorter|LessThan18~14_combout\ & ((\sorter|d1[6]~18_combout\))) # (!\sorter|LessThan18~14_combout\ & (\sorter|e0[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|e0[6]~10_combout\,
	datac => \sorter|d1[6]~18_combout\,
	datad => \sorter|LessThan18~14_combout\,
	combout => \sorter|m0~2_combout\);

-- Location: LCCOMB_X67_Y53_N2
\sorter|m0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~10_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m3~10_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~10_combout\,
	datac => \sorter|m0~2_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m0~10_combout\);

-- Location: LCCOMB_X67_Y53_N10
\sorter|m2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~18_combout\ = (\sorter|LessThan24~14_combout\ & (\sorter|m0~10_combout\)) # (!\sorter|LessThan24~14_combout\ & ((\sorter|m2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~10_combout\,
	datac => \sorter|m2~10_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~18_combout\);

-- Location: LCCOMB_X67_Y53_N22
\sorter|m3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~11_combout\ = (\sorter|LessThan21~14_combout\ & ((\sorter|m2~3_combout\))) # (!\sorter|LessThan21~14_combout\ & (\sorter|m3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~3_combout\,
	datac => \sorter|LessThan21~14_combout\,
	datad => \sorter|m2~3_combout\,
	combout => \sorter|m3~11_combout\);

-- Location: LCCOMB_X67_Y53_N4
\sorter|m3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~19_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~3_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~3_combout\,
	datac => \sorter|m3~11_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m3~19_combout\);

-- Location: LCCOMB_X67_Y55_N28
\sorter|m1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~19_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~19_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~11_combout\,
	datac => \sorter|m3~19_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~19_combout\);

-- Location: LCCOMB_X67_Y55_N22
\sorter|m1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~20_combout\ = (\sorter|LessThan25~14_combout\ & (\sorter|m3~20_combout\)) # (!\sorter|LessThan25~14_combout\ & ((\sorter|m1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m3~20_combout\,
	datab => \sorter|m1~12_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~20_combout\);

-- Location: LCCOMB_X66_Y53_N26
\sorter|m2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~21_combout\ = (\sorter|LessThan24~14_combout\ & (\sorter|m0~13_combout\)) # (!\sorter|LessThan24~14_combout\ & ((\sorter|m2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~13_combout\,
	datac => \sorter|m2~13_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~21_combout\);

-- Location: LCCOMB_X67_Y55_N18
\sorter|m1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~22_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~22_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~14_combout\,
	datab => \sorter|m3~22_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~22_combout\);

-- Location: LCCOMB_X66_Y53_N30
\sorter|m2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~23_combout\ = (\sorter|LessThan24~14_combout\ & (\sorter|m0~15_combout\)) # (!\sorter|LessThan24~14_combout\ & ((\sorter|m2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m0~15_combout\,
	datab => \sorter|m2~15_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~23_combout\);

-- Location: LCCOMB_X66_Y55_N8
\sorter|LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~1_cout\ = CARRY((\sorter|m1~16_combout\ & !\sorter|m2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~16_combout\,
	datab => \sorter|m2~16_combout\,
	datad => VCC,
	cout => \sorter|LessThan26~1_cout\);

-- Location: LCCOMB_X66_Y55_N10
\sorter|LessThan26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~3_cout\ = CARRY((\sorter|m1~23_combout\ & (\sorter|m2~23_combout\ & !\sorter|LessThan26~1_cout\)) # (!\sorter|m1~23_combout\ & ((\sorter|m2~23_combout\) # (!\sorter|LessThan26~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~23_combout\,
	datab => \sorter|m2~23_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~1_cout\,
	cout => \sorter|LessThan26~3_cout\);

-- Location: LCCOMB_X66_Y55_N12
\sorter|LessThan26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~5_cout\ = CARRY((\sorter|m2~22_combout\ & (\sorter|m1~22_combout\ & !\sorter|LessThan26~3_cout\)) # (!\sorter|m2~22_combout\ & ((\sorter|m1~22_combout\) # (!\sorter|LessThan26~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~22_combout\,
	datab => \sorter|m1~22_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~3_cout\,
	cout => \sorter|LessThan26~5_cout\);

-- Location: LCCOMB_X66_Y55_N14
\sorter|LessThan26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~7_cout\ = CARRY((\sorter|m1~21_combout\ & (\sorter|m2~21_combout\ & !\sorter|LessThan26~5_cout\)) # (!\sorter|m1~21_combout\ & ((\sorter|m2~21_combout\) # (!\sorter|LessThan26~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~21_combout\,
	datab => \sorter|m2~21_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~5_cout\,
	cout => \sorter|LessThan26~7_cout\);

-- Location: LCCOMB_X66_Y55_N16
\sorter|LessThan26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~9_cout\ = CARRY((\sorter|m2~20_combout\ & (\sorter|m1~20_combout\ & !\sorter|LessThan26~7_cout\)) # (!\sorter|m2~20_combout\ & ((\sorter|m1~20_combout\) # (!\sorter|LessThan26~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~20_combout\,
	datab => \sorter|m1~20_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~7_cout\,
	cout => \sorter|LessThan26~9_cout\);

-- Location: LCCOMB_X66_Y55_N18
\sorter|LessThan26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~11_cout\ = CARRY((\sorter|m2~19_combout\ & ((!\sorter|LessThan26~9_cout\) # (!\sorter|m1~19_combout\))) # (!\sorter|m2~19_combout\ & (!\sorter|m1~19_combout\ & !\sorter|LessThan26~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~19_combout\,
	datab => \sorter|m1~19_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~9_cout\,
	cout => \sorter|LessThan26~11_cout\);

-- Location: LCCOMB_X66_Y55_N20
\sorter|LessThan26~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~13_cout\ = CARRY((\sorter|m1~18_combout\ & ((!\sorter|LessThan26~11_cout\) # (!\sorter|m2~18_combout\))) # (!\sorter|m1~18_combout\ & (!\sorter|m2~18_combout\ & !\sorter|LessThan26~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~18_combout\,
	datab => \sorter|m2~18_combout\,
	datad => VCC,
	cin => \sorter|LessThan26~11_cout\,
	cout => \sorter|LessThan26~13_cout\);

-- Location: LCCOMB_X66_Y55_N22
\sorter|LessThan26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|LessThan26~14_combout\ = (\sorter|m2~17_combout\ & (\sorter|LessThan26~13_cout\ & \sorter|m1~17_combout\)) # (!\sorter|m2~17_combout\ & ((\sorter|LessThan26~13_cout\) # (\sorter|m1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~17_combout\,
	datad => \sorter|m1~17_combout\,
	cin => \sorter|LessThan26~13_cout\,
	combout => \sorter|LessThan26~14_combout\);

-- Location: LCCOMB_X65_Y55_N12
\pixel_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~0_combout\ = (!\rst~input_o\ & ((\sorter|LessThan26~14_combout\ & ((\sorter|m1~16_combout\))) # (!\sorter|LessThan26~14_combout\ & (\sorter|m2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \sorter|m2~16_combout\,
	datac => \sorter|m1~16_combout\,
	datad => \sorter|LessThan26~14_combout\,
	combout => \pixel_out~0_combout\);

-- Location: LCCOMB_X81_Y54_N16
\pixel_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~1_combout\ = (\rst~input_o\) # ((\process_en~q\ & \pixel_valid~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \process_en~q\,
	datad => \pixel_valid~input_o\,
	combout => \pixel_out~1_combout\);

-- Location: FF_X65_Y55_N13
\pixel_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~0_combout\,
	sclr => \ALT_INV_pixel_valid~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[0]~reg0_q\);

-- Location: LCCOMB_X68_Y54_N28
\sorter|m0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~7_combout\ = (\sorter|LessThan18~14_combout\ & (\sorter|d1[1]~23_combout\)) # (!\sorter|LessThan18~14_combout\ & ((\sorter|e0[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|d1[1]~23_combout\,
	datac => \sorter|LessThan18~14_combout\,
	datad => \sorter|e0[1]~15_combout\,
	combout => \sorter|m0~7_combout\);

-- Location: LCCOMB_X67_Y54_N16
\sorter|m3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m3~23_combout\ = (\sorter|LessThan23~14_combout\ & (\sorter|m0~7_combout\)) # (!\sorter|LessThan23~14_combout\ & ((\sorter|m3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~7_combout\,
	datac => \sorter|LessThan23~14_combout\,
	datad => \sorter|m3~15_combout\,
	combout => \sorter|m3~23_combout\);

-- Location: LCCOMB_X66_Y55_N6
\sorter|m1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~23_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~23_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~15_combout\,
	datac => \sorter|m3~23_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~23_combout\);

-- Location: LCCOMB_X66_Y55_N0
\pixel_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~2_combout\ = (\sorter|LessThan26~14_combout\ & ((\sorter|m1~23_combout\))) # (!\sorter|LessThan26~14_combout\ & (\sorter|m2~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m2~23_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m1~23_combout\,
	combout => \pixel_out~2_combout\);

-- Location: FF_X66_Y55_N1
\pixel_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~2_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[1]~reg0_q\);

-- Location: LCCOMB_X66_Y53_N28
\sorter|m2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~22_combout\ = (\sorter|LessThan24~14_combout\ & ((\sorter|m0~14_combout\))) # (!\sorter|LessThan24~14_combout\ & (\sorter|m2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~14_combout\,
	datac => \sorter|m0~14_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~22_combout\);

-- Location: LCCOMB_X66_Y55_N26
\pixel_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~3_combout\ = (\sorter|LessThan26~14_combout\ & (\sorter|m1~22_combout\)) # (!\sorter|LessThan26~14_combout\ & ((\sorter|m2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~22_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m2~22_combout\,
	combout => \pixel_out~3_combout\);

-- Location: FF_X66_Y55_N27
\pixel_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~3_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[2]~reg0_q\);

-- Location: LCCOMB_X67_Y55_N24
\sorter|m1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m1~21_combout\ = (\sorter|LessThan25~14_combout\ & ((\sorter|m3~21_combout\))) # (!\sorter|LessThan25~14_combout\ & (\sorter|m1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~13_combout\,
	datac => \sorter|m3~21_combout\,
	datad => \sorter|LessThan25~14_combout\,
	combout => \sorter|m1~21_combout\);

-- Location: LCCOMB_X66_Y55_N28
\pixel_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~4_combout\ = (\sorter|LessThan26~14_combout\ & (\sorter|m1~21_combout\)) # (!\sorter|LessThan26~14_combout\ & ((\sorter|m2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~21_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m2~21_combout\,
	combout => \pixel_out~4_combout\);

-- Location: FF_X66_Y55_N29
\pixel_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~4_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[3]~reg0_q\);

-- Location: LCCOMB_X66_Y53_N0
\sorter|m2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~20_combout\ = (\sorter|LessThan24~14_combout\ & ((\sorter|m0~12_combout\))) # (!\sorter|LessThan24~14_combout\ & (\sorter|m2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~12_combout\,
	datac => \sorter|m0~12_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~20_combout\);

-- Location: LCCOMB_X66_Y55_N30
\pixel_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~5_combout\ = (\sorter|LessThan26~14_combout\ & (\sorter|m1~20_combout\)) # (!\sorter|LessThan26~14_combout\ & ((\sorter|m2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~20_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m2~20_combout\,
	combout => \pixel_out~5_combout\);

-- Location: FF_X66_Y55_N31
\pixel_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~5_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[4]~reg0_q\);

-- Location: LCCOMB_X67_Y53_N30
\sorter|m0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m0~11_combout\ = (\sorter|LessThan23~14_combout\ & ((\sorter|m3~11_combout\))) # (!\sorter|LessThan23~14_combout\ & (\sorter|m0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m0~3_combout\,
	datac => \sorter|m3~11_combout\,
	datad => \sorter|LessThan23~14_combout\,
	combout => \sorter|m0~11_combout\);

-- Location: LCCOMB_X67_Y53_N16
\sorter|m2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sorter|m2~19_combout\ = (\sorter|LessThan24~14_combout\ & ((\sorter|m0~11_combout\))) # (!\sorter|LessThan24~14_combout\ & (\sorter|m2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m2~11_combout\,
	datac => \sorter|m0~11_combout\,
	datad => \sorter|LessThan24~14_combout\,
	combout => \sorter|m2~19_combout\);

-- Location: LCCOMB_X66_Y55_N24
\pixel_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~6_combout\ = (\sorter|LessThan26~14_combout\ & (\sorter|m1~19_combout\)) # (!\sorter|LessThan26~14_combout\ & ((\sorter|m2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sorter|m1~19_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m2~19_combout\,
	combout => \pixel_out~6_combout\);

-- Location: FF_X66_Y55_N25
\pixel_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~6_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[5]~reg0_q\);

-- Location: LCCOMB_X66_Y55_N2
\pixel_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~7_combout\ = (\sorter|LessThan26~14_combout\ & (\sorter|m1~18_combout\)) # (!\sorter|LessThan26~14_combout\ & ((\sorter|m2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m1~18_combout\,
	datab => \sorter|m2~18_combout\,
	datac => \sorter|LessThan26~14_combout\,
	combout => \pixel_out~7_combout\);

-- Location: FF_X66_Y55_N3
\pixel_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~7_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[6]~reg0_q\);

-- Location: LCCOMB_X66_Y55_N4
\pixel_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_out~8_combout\ = (\sorter|LessThan26~14_combout\ & ((\sorter|m1~17_combout\))) # (!\sorter|LessThan26~14_combout\ & (\sorter|m2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sorter|m2~17_combout\,
	datac => \sorter|LessThan26~14_combout\,
	datad => \sorter|m1~17_combout\,
	combout => \pixel_out~8_combout\);

-- Location: FF_X66_Y55_N5
\pixel_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pixel_out~8_combout\,
	sclr => \rst~input_o\,
	ena => \pixel_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_out[7]~reg0_q\);

ww_pixel_out_valid <= \pixel_out_valid~output_o\;

ww_pixel_out(0) <= \pixel_out[0]~output_o\;

ww_pixel_out(1) <= \pixel_out[1]~output_o\;

ww_pixel_out(2) <= \pixel_out[2]~output_o\;

ww_pixel_out(3) <= \pixel_out[3]~output_o\;

ww_pixel_out(4) <= \pixel_out[4]~output_o\;

ww_pixel_out(5) <= \pixel_out[5]~output_o\;

ww_pixel_out(6) <= \pixel_out[6]~output_o\;

ww_pixel_out(7) <= \pixel_out[7]~output_o\;
END structure;


