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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/04/2014 23:48:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	n64_driver IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPIO0_2 : IN std_logic;
	PB0 : IN std_logic;
	GPIO_01 : OUT std_logic;
	LEDR : OUT std_logic_vector(15 DOWNTO 0)
	);
END n64_driver;

-- Design Ports Information
-- GPIO_01	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PB0	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO0_2	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF n64_driver IS
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
SIGNAL ww_GPIO0_2 : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_GPIO_01 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux25~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux30~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux35~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan12~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan22~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan22~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan32~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan32~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan34~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan34~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan38~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan30~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan30~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan30~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan38~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan38~2_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~17_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan28~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan28~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan28~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan26~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan26~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~18_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan36~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan36~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~19_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~20_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan24~0_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~21_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~22_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~23_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan26~2_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~24_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~25_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~26_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~27_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~28_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~34_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~35_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~36_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~37_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~38_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~39_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~40_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan36~2_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~41_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~42_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~43_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~44_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~45_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~46_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~47_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~48_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~49_combout\ : std_logic;
SIGNAL \b2v_inst|sending~3_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~50_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~51_combout\ : std_logic;
SIGNAL \b2v_inst|comb~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux44~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux40~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \b2v_inst|comb~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~5_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~53_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan30~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~7_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~55_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~56_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~57_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~1\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~31\ : std_logic;
SIGNAL \b2v_inst|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~33\ : std_logic;
SIGNAL \b2v_inst|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~35\ : std_logic;
SIGNAL \b2v_inst|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~37\ : std_logic;
SIGNAL \b2v_inst|Add0~39\ : std_logic;
SIGNAL \b2v_inst|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~41\ : std_logic;
SIGNAL \b2v_inst|Add0~43\ : std_logic;
SIGNAL \b2v_inst|Add0~45\ : std_logic;
SIGNAL \b2v_inst|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~47\ : std_logic;
SIGNAL \b2v_inst|Add0~49\ : std_logic;
SIGNAL \b2v_inst|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~51\ : std_logic;
SIGNAL \b2v_inst|Add0~53\ : std_logic;
SIGNAL \b2v_inst|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~55\ : std_logic;
SIGNAL \b2v_inst|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~57\ : std_logic;
SIGNAL \b2v_inst|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~59\ : std_logic;
SIGNAL \b2v_inst|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~61\ : std_logic;
SIGNAL \b2v_inst|Add0~62_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~3\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~5\ : std_logic;
SIGNAL \b2v_inst|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~7\ : std_logic;
SIGNAL \b2v_inst|Add0~9\ : std_logic;
SIGNAL \b2v_inst|Add0~11\ : std_logic;
SIGNAL \b2v_inst|Add0~13\ : std_logic;
SIGNAL \b2v_inst|Add0~15\ : std_logic;
SIGNAL \b2v_inst|Add0~17\ : std_logic;
SIGNAL \b2v_inst|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~19\ : std_logic;
SIGNAL \b2v_inst|Add0~21\ : std_logic;
SIGNAL \b2v_inst|Add0~23\ : std_logic;
SIGNAL \b2v_inst|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~25\ : std_logic;
SIGNAL \b2v_inst|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~27\ : std_logic;
SIGNAL \b2v_inst|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~29\ : std_logic;
SIGNAL \b2v_inst|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~4_combout\ : std_logic;
SIGNAL \b2v_inst|sending~1_combout\ : std_logic;
SIGNAL \b2v_inst|sending~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|comb~0_combout\ : std_logic;
SIGNAL \b2v_inst|comb~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan10~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan10~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~33_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan32~2_combout\ : std_logic;
SIGNAL \b2v_inst|sending~2_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~52_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan14~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan14~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan14~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan16~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan12~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~13_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan18~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan18~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~14_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~15_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan18~2_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~16_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan16~1_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~54_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~6_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~31_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan20~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan20~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan22~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan22~3_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~29_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~30_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out~32_combout\ : std_logic;
SIGNAL \b2v_inst|comb~3_combout\ : std_logic;
SIGNAL \b2v_inst|signal_out_321~combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[1]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[1]~9\ : std_logic;
SIGNAL \b2v_inst6|sample_count[2]~10_combout\ : std_logic;
SIGNAL \b2v_inst|comb~7_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan10~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan41~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst|comb~8_combout\ : std_logic;
SIGNAL \b2v_inst|comb~5_combout\ : std_logic;
SIGNAL \b2v_inst|comb~6_combout\ : std_logic;
SIGNAL \b2v_inst|done_poll~combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[2]~11\ : std_logic;
SIGNAL \b2v_inst6|sample_count[3]~13\ : std_logic;
SIGNAL \b2v_inst6|sample_count[4]~14_combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[4]~15\ : std_logic;
SIGNAL \b2v_inst6|sample_count[5]~17\ : std_logic;
SIGNAL \b2v_inst6|sample_count[6]~18_combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux20~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux20~2_combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[5]~16_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal2~1_combout\ : std_logic;
SIGNAL \b2v_inst6|count[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst6|count_enable~feeder_combout\ : std_logic;
SIGNAL \b2v_inst6|count[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst6|count[6]~17_combout\ : std_logic;
SIGNAL \b2v_inst6|count[5]~15_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux43~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|count_enable~0_combout\ : std_logic;
SIGNAL \b2v_inst6|count_enable~regout\ : std_logic;
SIGNAL \b2v_inst6|count[1]~8\ : std_logic;
SIGNAL \b2v_inst6|count[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst6|count[2]~10\ : std_logic;
SIGNAL \b2v_inst6|count[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst6|count[3]~12\ : std_logic;
SIGNAL \b2v_inst6|count[4]~14\ : std_logic;
SIGNAL \b2v_inst6|count[5]~16\ : std_logic;
SIGNAL \b2v_inst6|count[6]~18\ : std_logic;
SIGNAL \b2v_inst6|count[7]~19_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux20~3_combout\ : std_logic;
SIGNAL \b2v_inst6|count[4]~13_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux43~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux43~2_combout\ : std_logic;
SIGNAL \GPIO0_2~combout\ : std_logic;
SIGNAL \b2v_inst6|Mux42~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux42~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux39~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux37~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux37~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux37~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux36~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux41~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux41~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux40~3_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux38~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux38~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux39~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux39~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|data_temp[30]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|data_temp[30]~1_combout\ : std_logic;
SIGNAL \b2v_inst6|sample_count[3]~12_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux35~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux21~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux21~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux22~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux22~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux23~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux23~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux24~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux24~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux25~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux26~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux26~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux27~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux27~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux28~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux28~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux29~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux29~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux30~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux31~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux31~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux32~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux32~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux33~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux33~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux34~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux34~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux35~2_combout\ : std_logic;
SIGNAL \b2v_inst|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst6|sample_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b2v_inst6|sample_array\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst6|data_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst6|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst6|ALT_INV_count_enable~regout\ : std_logic;
SIGNAL \ALT_INV_GPIO0_2~combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_signal_out_321~combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_GPIO0_2 <= GPIO0_2;
ww_PB0 <= PB0;
GPIO_01 <= ww_GPIO_01;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\b2v_inst6|ALT_INV_count_enable~regout\ <= NOT \b2v_inst6|count_enable~regout\;
\ALT_INV_GPIO0_2~combout\ <= NOT \GPIO0_2~combout\;
\b2v_inst|ALT_INV_signal_out_321~combout\ <= NOT \b2v_inst|signal_out_321~combout\;

-- Location: LCCOMB_X46_Y25_N8
\b2v_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~8_combout\ = (\b2v_inst|clk_count\(4) & (\b2v_inst|Add0~7\ $ (GND))) # (!\b2v_inst|clk_count\(4) & (!\b2v_inst|Add0~7\ & VCC))
-- \b2v_inst|Add0~9\ = CARRY((\b2v_inst|clk_count\(4) & !\b2v_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(4),
	datad => VCC,
	cin => \b2v_inst|Add0~7\,
	combout => \b2v_inst|Add0~8_combout\,
	cout => \b2v_inst|Add0~9\);

-- Location: LCCOMB_X46_Y25_N14
\b2v_inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~14_combout\ = (\b2v_inst|clk_count\(7) & (!\b2v_inst|Add0~13\)) # (!\b2v_inst|clk_count\(7) & ((\b2v_inst|Add0~13\) # (GND)))
-- \b2v_inst|Add0~15\ = CARRY((!\b2v_inst|Add0~13\) # (!\b2v_inst|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(7),
	datad => VCC,
	cin => \b2v_inst|Add0~13\,
	combout => \b2v_inst|Add0~14_combout\,
	cout => \b2v_inst|Add0~15\);

-- Location: LCCOMB_X46_Y25_N22
\b2v_inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~22_combout\ = (\b2v_inst|clk_count\(11) & (!\b2v_inst|Add0~21\)) # (!\b2v_inst|clk_count\(11) & ((\b2v_inst|Add0~21\) # (GND)))
-- \b2v_inst|Add0~23\ = CARRY((!\b2v_inst|Add0~21\) # (!\b2v_inst|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(11),
	datad => VCC,
	cin => \b2v_inst|Add0~21\,
	combout => \b2v_inst|Add0~22_combout\,
	cout => \b2v_inst|Add0~23\);

-- Location: LCCOMB_X46_Y24_N12
\b2v_inst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~44_combout\ = (\b2v_inst|clk_count\(22) & (\b2v_inst|Add0~43\ $ (GND))) # (!\b2v_inst|clk_count\(22) & (!\b2v_inst|Add0~43\ & VCC))
-- \b2v_inst|Add0~45\ = CARRY((\b2v_inst|clk_count\(22) & !\b2v_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(22),
	datad => VCC,
	cin => \b2v_inst|Add0~43\,
	combout => \b2v_inst|Add0~44_combout\,
	cout => \b2v_inst|Add0~45\);

-- Location: LCCOMB_X37_Y15_N12
\b2v_inst6|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux25~0_combout\ = (!\b2v_inst6|sample_count\(1) & (!\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & \b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(1),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux25~0_combout\);

-- Location: LCCOMB_X37_Y15_N20
\b2v_inst6|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux30~0_combout\ = (\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & (\b2v_inst6|sample_count\(3) & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(1),
	datab => \b2v_inst6|Mux20~1_combout\,
	datac => \b2v_inst6|sample_count\(3),
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux30~0_combout\);

-- Location: LCCOMB_X35_Y15_N12
\b2v_inst6|Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux35~1_combout\ = (\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & \b2v_inst6|sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(2),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(1),
	combout => \b2v_inst6|Mux35~1_combout\);

-- Location: LCFF_X46_Y24_N13
\b2v_inst|clk_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(22));

-- Location: LCFF_X47_Y25_N17
\b2v_inst|clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(11));

-- Location: LCCOMB_X44_Y25_N20
\b2v_inst|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~3_combout\ = (!\b2v_inst|clk_count\(12) & (!\b2v_inst|clk_count\(11) & !\b2v_inst|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(12),
	datac => \b2v_inst|clk_count\(11),
	datad => \b2v_inst|clk_count\(13),
	combout => \b2v_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X44_Y24_N10
\b2v_inst|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan12~0_combout\ = (!\b2v_inst|clk_count\(7) & (((!\b2v_inst|clk_count\(4) & !\b2v_inst|clk_count\(3))) # (!\b2v_inst|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(7),
	datad => \b2v_inst|LessThan18~0_combout\,
	combout => \b2v_inst|LessThan12~0_combout\);

-- Location: LCCOMB_X45_Y25_N30
\b2v_inst|LessThan22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan22~1_combout\ = (!\b2v_inst|clk_count\(8)) # (!\b2v_inst|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|clk_count\(8),
	combout => \b2v_inst|LessThan22~1_combout\);

-- Location: LCCOMB_X45_Y25_N28
\b2v_inst|LessThan22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan22~2_combout\ = (\b2v_inst|LessThan8~5_combout\ & (\b2v_inst|LessThan8~3_combout\ & ((\b2v_inst|LessThan22~1_combout\) # (\b2v_inst|LessThan22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|LessThan22~1_combout\,
	datac => \b2v_inst|LessThan22~0_combout\,
	datad => \b2v_inst|LessThan8~3_combout\,
	combout => \b2v_inst|LessThan22~2_combout\);

-- Location: LCCOMB_X43_Y24_N14
\b2v_inst|LessThan32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan32~0_combout\ = (\b2v_inst|clk_count\(6) & ((\b2v_inst|clk_count\(5)) # (\b2v_inst|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(5),
	datac => \b2v_inst|clk_count\(4),
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|LessThan32~0_combout\);

-- Location: LCCOMB_X44_Y24_N8
\b2v_inst|LessThan32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan32~1_combout\ = (\b2v_inst|clk_count\(9)) # ((\b2v_inst|clk_count\(8) & ((\b2v_inst|clk_count\(7)) # (\b2v_inst|LessThan32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datab => \b2v_inst|clk_count\(7),
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|LessThan32~0_combout\,
	combout => \b2v_inst|LessThan32~1_combout\);

-- Location: LCCOMB_X47_Y24_N28
\b2v_inst|LessThan34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan34~0_combout\ = ((!\b2v_inst|clk_count\(9) & ((!\b2v_inst|clk_count\(8)) # (!\b2v_inst|clk_count\(7))))) # (!\b2v_inst|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(7),
	datab => \b2v_inst|clk_count\(8),
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|clk_count\(9),
	combout => \b2v_inst|LessThan34~0_combout\);

-- Location: LCCOMB_X47_Y24_N10
\b2v_inst|LessThan34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan34~1_combout\ = (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan8~2_combout\ & ((\b2v_inst|LessThan6~4_combout\) # (\b2v_inst|LessThan34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~4_combout\,
	datab => \b2v_inst|LessThan6~4_combout\,
	datac => \b2v_inst|LessThan34~0_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan34~1_combout\);

-- Location: LCCOMB_X44_Y24_N14
\b2v_inst|LessThan38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan38~0_combout\ = (\b2v_inst|clk_count\(9) & \b2v_inst|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|clk_count\(9),
	datad => \b2v_inst|clk_count\(10),
	combout => \b2v_inst|LessThan38~0_combout\);

-- Location: LCCOMB_X47_Y24_N24
\b2v_inst|LessThan30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan30~2_combout\ = (\b2v_inst|clk_count\(7) & ((\b2v_inst|clk_count\(6)) # ((!\b2v_inst|LessThan14~0_combout\ & \b2v_inst|clk_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan14~0_combout\,
	datab => \b2v_inst|clk_count\(6),
	datac => \b2v_inst|clk_count\(5),
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan30~2_combout\);

-- Location: LCCOMB_X47_Y24_N22
\b2v_inst|LessThan30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan30~3_combout\ = ((!\b2v_inst|LessThan30~2_combout\ & (!\b2v_inst|clk_count\(8) & !\b2v_inst|clk_count\(9)))) # (!\b2v_inst|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan30~2_combout\,
	datab => \b2v_inst|clk_count\(8),
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|clk_count\(9),
	combout => \b2v_inst|LessThan30~3_combout\);

-- Location: LCCOMB_X47_Y24_N8
\b2v_inst|LessThan30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan30~4_combout\ = (\b2v_inst|LessThan8~3_combout\ & (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan30~5_combout\ & \b2v_inst|LessThan30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|LessThan30~5_combout\,
	datad => \b2v_inst|LessThan30~3_combout\,
	combout => \b2v_inst|LessThan30~4_combout\);

-- Location: LCCOMB_X45_Y24_N24
\b2v_inst|LessThan38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan38~1_combout\ = (\b2v_inst|LessThan38~0_combout\ & (!\b2v_inst|LessThan6~5_combout\ & ((\b2v_inst|clk_count\(6)) # (!\b2v_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan38~0_combout\,
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|LessThan6~5_combout\,
	combout => \b2v_inst|LessThan38~1_combout\);

-- Location: LCCOMB_X45_Y24_N2
\b2v_inst|LessThan38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan38~2_combout\ = (!\b2v_inst|clk_count\(27) & (\b2v_inst|LessThan1~4_combout\ & (!\b2v_inst|LessThan38~1_combout\ & \b2v_inst|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(27),
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|LessThan38~1_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan38~2_combout\);

-- Location: LCCOMB_X48_Y24_N22
\b2v_inst|signal_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~17_combout\ = (!\b2v_inst|LessThan38~2_combout\ & (\b2v_inst|sending~2_combout\ & (\b2v_inst|LessThan0~7_combout\ & !\b2v_inst|LessThan30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan38~2_combout\,
	datab => \b2v_inst|sending~2_combout\,
	datac => \b2v_inst|LessThan0~7_combout\,
	datad => \b2v_inst|LessThan30~4_combout\,
	combout => \b2v_inst|signal_out~17_combout\);

-- Location: LCCOMB_X44_Y24_N12
\b2v_inst|LessThan28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan28~0_combout\ = (!\b2v_inst|clk_count\(6) & (!\b2v_inst|clk_count\(5) & (!\b2v_inst|clk_count\(4) & !\b2v_inst|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(6),
	datab => \b2v_inst|clk_count\(5),
	datac => \b2v_inst|clk_count\(4),
	datad => \b2v_inst|clk_count\(3),
	combout => \b2v_inst|LessThan28~0_combout\);

-- Location: LCCOMB_X45_Y24_N12
\b2v_inst|LessThan28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan28~1_combout\ = ((\b2v_inst|LessThan2~0_combout\ & ((\b2v_inst|LessThan28~0_combout\) # (!\b2v_inst|clk_count\(7))))) # (!\b2v_inst|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan28~0_combout\,
	datab => \b2v_inst|clk_count\(10),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan28~1_combout\);

-- Location: LCCOMB_X45_Y24_N30
\b2v_inst|LessThan28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan28~2_combout\ = (\b2v_inst|LessThan8~3_combout\ & (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan28~1_combout\ & \b2v_inst|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|LessThan28~1_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan28~2_combout\);

-- Location: LCCOMB_X43_Y24_N12
\b2v_inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~6_combout\ = (\b2v_inst|clk_count\(5) & (\b2v_inst|clk_count\(4) & \b2v_inst|clk_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(5),
	datac => \b2v_inst|clk_count\(4),
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X44_Y24_N26
\b2v_inst|LessThan26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan26~0_combout\ = (\b2v_inst|clk_count\(9) & (\b2v_inst|clk_count\(8) & \b2v_inst|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan26~0_combout\);

-- Location: LCCOMB_X44_Y24_N24
\b2v_inst|LessThan26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan26~1_combout\ = (\b2v_inst|LessThan8~4_combout\ & (((\b2v_inst|LessThan6~3_combout\) # (!\b2v_inst|LessThan0~6_combout\)) # (!\b2v_inst|LessThan26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~4_combout\,
	datab => \b2v_inst|LessThan26~0_combout\,
	datac => \b2v_inst|LessThan6~3_combout\,
	datad => \b2v_inst|LessThan0~6_combout\,
	combout => \b2v_inst|LessThan26~1_combout\);

-- Location: LCCOMB_X48_Y24_N16
\b2v_inst|signal_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~18_combout\ = (\b2v_inst|clk_count\(29) & (((\b2v_inst|signal_out~17_combout\)))) # (!\b2v_inst|clk_count\(29) & (!\b2v_inst|LessThan26~1_combout\ & ((\b2v_inst|LessThan28~2_combout\) # (\b2v_inst|signal_out~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|LessThan28~2_combout\,
	datac => \b2v_inst|LessThan26~1_combout\,
	datad => \b2v_inst|signal_out~17_combout\,
	combout => \b2v_inst|signal_out~18_combout\);

-- Location: LCCOMB_X47_Y24_N6
\b2v_inst|LessThan36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan36~0_combout\ = (((!\b2v_inst|clk_count\(2) & !\b2v_inst|clk_count\(3))) # (!\b2v_inst|clk_count\(5))) # (!\b2v_inst|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(2),
	datac => \b2v_inst|clk_count\(5),
	datad => \b2v_inst|clk_count\(3),
	combout => \b2v_inst|LessThan36~0_combout\);

-- Location: LCCOMB_X47_Y24_N4
\b2v_inst|LessThan36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan36~1_combout\ = (\b2v_inst|LessThan34~0_combout\) # ((\b2v_inst|LessThan36~0_combout\ & (!\b2v_inst|clk_count\(9) & !\b2v_inst|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan36~0_combout\,
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|LessThan34~0_combout\,
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|LessThan36~1_combout\);

-- Location: LCCOMB_X47_Y24_N30
\b2v_inst|signal_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~19_combout\ = (!\b2v_inst|LessThan34~1_combout\ & (\b2v_inst|LessThan36~1_combout\ & (!\b2v_inst|clk_count\(31) & \b2v_inst|LessThan8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan34~1_combout\,
	datab => \b2v_inst|LessThan36~1_combout\,
	datac => \b2v_inst|clk_count\(31),
	datad => \b2v_inst|LessThan8~7_combout\,
	combout => \b2v_inst|signal_out~19_combout\);

-- Location: LCCOMB_X48_Y24_N26
\b2v_inst|signal_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~20_combout\ = (\b2v_inst|LessThan0~7_combout\ & (((\b2v_inst|LessThan8~3_combout\ & \b2v_inst|signal_out~19_combout\)) # (!\b2v_inst|LessThan38~2_combout\))) # (!\b2v_inst|LessThan0~7_combout\ & (\b2v_inst|LessThan8~3_combout\ & 
-- (\b2v_inst|signal_out~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~7_combout\,
	datab => \b2v_inst|LessThan8~3_combout\,
	datac => \b2v_inst|signal_out~19_combout\,
	datad => \b2v_inst|LessThan38~2_combout\,
	combout => \b2v_inst|signal_out~20_combout\);

-- Location: LCCOMB_X45_Y25_N6
\b2v_inst|LessThan24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan24~0_combout\ = (\b2v_inst|LessThan8~5_combout\ & (\b2v_inst|LessThan8~3_combout\ & ((!\b2v_inst|LessThan26~0_combout\) # (!\b2v_inst|clk_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|clk_count\(6),
	datac => \b2v_inst|LessThan26~0_combout\,
	datad => \b2v_inst|LessThan8~3_combout\,
	combout => \b2v_inst|LessThan24~0_combout\);

-- Location: LCCOMB_X48_Y24_N24
\b2v_inst|signal_out~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~21_combout\ = (\b2v_inst|LessThan30~4_combout\ & (((!\b2v_inst|LessThan8~7_combout\) # (!\b2v_inst|LessThan8~3_combout\)) # (!\b2v_inst|LessThan28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan30~4_combout\,
	datab => \b2v_inst|LessThan28~1_combout\,
	datac => \b2v_inst|LessThan8~3_combout\,
	datad => \b2v_inst|LessThan8~7_combout\,
	combout => \b2v_inst|signal_out~21_combout\);

-- Location: LCCOMB_X48_Y24_N10
\b2v_inst|signal_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~22_combout\ = (!\b2v_inst|signal_out~21_combout\ & (\b2v_inst|sending~2_combout\ & (!\b2v_inst|clk_count\(29) & \b2v_inst|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~21_combout\,
	datab => \b2v_inst|sending~2_combout\,
	datac => \b2v_inst|clk_count\(29),
	datad => \b2v_inst|LessThan24~0_combout\,
	combout => \b2v_inst|signal_out~22_combout\);

-- Location: LCCOMB_X48_Y24_N12
\b2v_inst|signal_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~23_combout\ = (\b2v_inst|signal_out~18_combout\) # ((\b2v_inst|signal_out~22_combout\ & \b2v_inst|signal_out~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~22_combout\,
	datab => \b2v_inst|signal_out~20_combout\,
	datac => \b2v_inst|signal_out~18_combout\,
	combout => \b2v_inst|signal_out~23_combout\);

-- Location: LCCOMB_X48_Y24_N30
\b2v_inst|LessThan26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan26~2_combout\ = (!\b2v_inst|clk_count\(29) & \b2v_inst|LessThan26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datac => \b2v_inst|LessThan26~1_combout\,
	combout => \b2v_inst|LessThan26~2_combout\);

-- Location: LCCOMB_X48_Y24_N20
\b2v_inst|signal_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~24_combout\ = (\b2v_inst|LessThan32~2_combout\ & (((\b2v_inst|LessThan24~0_combout\) # (!\b2v_inst|LessThan26~2_combout\)))) # (!\b2v_inst|LessThan32~2_combout\ & (\b2v_inst|signal_out~19_combout\ & 
-- ((!\b2v_inst|LessThan26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~19_combout\,
	datab => \b2v_inst|LessThan32~2_combout\,
	datac => \b2v_inst|LessThan24~0_combout\,
	datad => \b2v_inst|LessThan26~2_combout\,
	combout => \b2v_inst|signal_out~24_combout\);

-- Location: LCCOMB_X48_Y24_N6
\b2v_inst|signal_out~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~25_combout\ = (!\b2v_inst|clk_count\(29) & (\b2v_inst|LessThan8~3_combout\ & ((!\b2v_inst|LessThan8~7_combout\) # (!\b2v_inst|LessThan30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|LessThan30~3_combout\,
	datac => \b2v_inst|LessThan8~3_combout\,
	datad => \b2v_inst|LessThan8~7_combout\,
	combout => \b2v_inst|signal_out~25_combout\);

-- Location: LCCOMB_X48_Y24_N0
\b2v_inst|signal_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~26_combout\ = (\b2v_inst|signal_out~53_combout\ & ((\b2v_inst|signal_out~23_combout\) # ((\b2v_inst|signal_out~24_combout\ & \b2v_inst|signal_out~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~24_combout\,
	datab => \b2v_inst|signal_out~23_combout\,
	datac => \b2v_inst|signal_out~53_combout\,
	datad => \b2v_inst|signal_out~25_combout\,
	combout => \b2v_inst|signal_out~26_combout\);

-- Location: LCCOMB_X48_Y25_N20
\b2v_inst|signal_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~27_combout\ = (\b2v_inst|LessThan24~0_combout\ & (!\b2v_inst|LessThan20~3_combout\ & (!\b2v_inst|LessThan22~2_combout\ & \b2v_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan24~0_combout\,
	datab => \b2v_inst|LessThan20~3_combout\,
	datac => \b2v_inst|LessThan22~2_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst|signal_out~27_combout\);

-- Location: LCCOMB_X45_Y25_N12
\b2v_inst|signal_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~28_combout\ = (\b2v_inst|LessThan8~5_combout\ & (!\b2v_inst|clk_count\(27) & ((!\b2v_inst|clk_count\(6)) # (!\b2v_inst|LessThan26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|LessThan26~0_combout\,
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|clk_count\(27),
	combout => \b2v_inst|signal_out~28_combout\);

-- Location: LCCOMB_X49_Y25_N22
\b2v_inst|signal_out~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~34_combout\ = (\b2v_inst|signal_out~54_combout\) # ((\b2v_inst|signal_out~16_combout\ & ((\b2v_inst|signal_out~26_combout\) # (\b2v_inst|signal_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~54_combout\,
	datab => \b2v_inst|signal_out~16_combout\,
	datac => \b2v_inst|signal_out~26_combout\,
	datad => \b2v_inst|signal_out~30_combout\,
	combout => \b2v_inst|signal_out~34_combout\);

-- Location: LCCOMB_X49_Y25_N4
\b2v_inst|signal_out~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~35_combout\ = ((\b2v_inst|LessThan12~1_combout\ & (!\b2v_inst|LessThan10~2_combout\ & !\b2v_inst|clk_count\(27)))) # (!\b2v_inst|sending~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan12~1_combout\,
	datab => \b2v_inst|sending~1_combout\,
	datac => \b2v_inst|LessThan10~2_combout\,
	datad => \b2v_inst|clk_count\(27),
	combout => \b2v_inst|signal_out~35_combout\);

-- Location: LCCOMB_X49_Y25_N10
\b2v_inst|signal_out~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~36_combout\ = (\b2v_inst|signal_out~55_combout\ & ((\b2v_inst|signal_out~35_combout\) # (\b2v_inst|signal_out~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|signal_out~35_combout\,
	datac => \b2v_inst|signal_out~55_combout\,
	datad => \b2v_inst|signal_out~34_combout\,
	combout => \b2v_inst|signal_out~36_combout\);

-- Location: LCCOMB_X45_Y25_N10
\b2v_inst|signal_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~37_combout\ = (\b2v_inst|LessThan14~1_combout\ & (!\b2v_inst|clk_count\(9) & \b2v_inst|LessThan8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan14~1_combout\,
	datac => \b2v_inst|clk_count\(9),
	datad => \b2v_inst|LessThan8~5_combout\,
	combout => \b2v_inst|signal_out~37_combout\);

-- Location: LCCOMB_X48_Y25_N24
\b2v_inst|signal_out~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~38_combout\ = (\b2v_inst|signal_out~37_combout\ & ((\b2v_inst|LessThan8~3_combout\ & ((!\b2v_inst|LessThan12~1_combout\))) # (!\b2v_inst|LessThan8~3_combout\ & (\b2v_inst|LessThan16~1_combout\)))) # (!\b2v_inst|signal_out~37_combout\ 
-- & (\b2v_inst|LessThan16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan16~1_combout\,
	datab => \b2v_inst|signal_out~37_combout\,
	datac => \b2v_inst|LessThan12~1_combout\,
	datad => \b2v_inst|LessThan8~3_combout\,
	combout => \b2v_inst|signal_out~38_combout\);

-- Location: LCCOMB_X48_Y25_N14
\b2v_inst|signal_out~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~39_combout\ = (\b2v_inst|signal_out~38_combout\) # ((\b2v_inst|LessThan8~3_combout\ & (\b2v_inst|LessThan22~3_combout\ & !\b2v_inst|LessThan20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan22~3_combout\,
	datac => \b2v_inst|signal_out~38_combout\,
	datad => \b2v_inst|LessThan20~3_combout\,
	combout => \b2v_inst|signal_out~39_combout\);

-- Location: LCCOMB_X48_Y24_N2
\b2v_inst|signal_out~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~40_combout\ = (\b2v_inst|LessThan32~2_combout\ & (((!\b2v_inst|LessThan8~7_combout\) # (!\b2v_inst|LessThan30~3_combout\)) # (!\b2v_inst|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan30~3_combout\,
	datac => \b2v_inst|LessThan32~2_combout\,
	datad => \b2v_inst|LessThan8~7_combout\,
	combout => \b2v_inst|signal_out~40_combout\);

-- Location: LCCOMB_X47_Y24_N16
\b2v_inst|LessThan36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan36~2_combout\ = (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan36~1_combout\ & \b2v_inst|LessThan8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|LessThan36~1_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan36~2_combout\);

-- Location: LCCOMB_X44_Y24_N18
\b2v_inst|signal_out~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~41_combout\ = (\b2v_inst|LessThan8~7_combout\ & (((\b2v_inst|LessThan41~0_combout\) # (!\b2v_inst|clk_count\(8))) # (!\b2v_inst|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~7_combout\,
	datab => \b2v_inst|LessThan38~0_combout\,
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|LessThan41~0_combout\,
	combout => \b2v_inst|signal_out~41_combout\);

-- Location: LCCOMB_X47_Y24_N14
\b2v_inst|signal_out~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~42_combout\ = (\b2v_inst|LessThan36~2_combout\ & (((\b2v_inst|signal_out~41_combout\ & !\b2v_inst|LessThan0~5_combout\)) # (!\b2v_inst|LessThan34~1_combout\))) # (!\b2v_inst|LessThan36~2_combout\ & (\b2v_inst|signal_out~41_combout\ & 
-- (!\b2v_inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan36~2_combout\,
	datab => \b2v_inst|signal_out~41_combout\,
	datac => \b2v_inst|LessThan0~5_combout\,
	datad => \b2v_inst|LessThan34~1_combout\,
	combout => \b2v_inst|signal_out~42_combout\);

-- Location: LCCOMB_X45_Y24_N6
\b2v_inst|signal_out~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~43_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan8~5_combout\ & ((\b2v_inst|LessThan10~0_combout\) # (\b2v_inst|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan10~0_combout\,
	datab => \b2v_inst|LessThan10~1_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan8~5_combout\,
	combout => \b2v_inst|signal_out~43_combout\);

-- Location: LCCOMB_X48_Y24_N4
\b2v_inst|signal_out~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~44_combout\ = (\b2v_inst|signal_out~42_combout\) # ((\b2v_inst|signal_out~40_combout\) # ((!\b2v_inst|LessThan8~6_combout\ & \b2v_inst|signal_out~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~42_combout\,
	datab => \b2v_inst|LessThan8~6_combout\,
	datac => \b2v_inst|signal_out~43_combout\,
	datad => \b2v_inst|signal_out~40_combout\,
	combout => \b2v_inst|signal_out~44_combout\);

-- Location: LCCOMB_X48_Y25_N28
\b2v_inst|signal_out~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~45_combout\ = (\b2v_inst|LessThan8~3_combout\ & ((\b2v_inst|signal_out~44_combout\) # ((!\b2v_inst|LessThan18~2_combout\ & \b2v_inst|LessThan20~3_combout\)))) # (!\b2v_inst|LessThan8~3_combout\ & (!\b2v_inst|LessThan18~2_combout\ & 
-- ((\b2v_inst|LessThan20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan18~2_combout\,
	datac => \b2v_inst|signal_out~44_combout\,
	datad => \b2v_inst|LessThan20~3_combout\,
	combout => \b2v_inst|signal_out~45_combout\);

-- Location: LCCOMB_X45_Y24_N0
\b2v_inst|signal_out~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~46_combout\ = (\b2v_inst|sending~1_combout\ & (\b2v_inst|LessThan28~2_combout\ & ((!\b2v_inst|LessThan26~1_combout\)))) # (!\b2v_inst|sending~1_combout\ & ((\b2v_inst|LessThan8~6_combout\) # ((\b2v_inst|LessThan28~2_combout\ & 
-- !\b2v_inst|LessThan26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|sending~1_combout\,
	datab => \b2v_inst|LessThan28~2_combout\,
	datac => \b2v_inst|LessThan8~6_combout\,
	datad => \b2v_inst|LessThan26~1_combout\,
	combout => \b2v_inst|signal_out~46_combout\);

-- Location: LCCOMB_X48_Y25_N6
\b2v_inst|signal_out~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~47_combout\ = (\b2v_inst|LessThan16~1_combout\ & (((!\b2v_inst|LessThan22~2_combout\ & \b2v_inst|LessThan24~0_combout\)))) # (!\b2v_inst|LessThan16~1_combout\ & ((\b2v_inst|LessThan18~2_combout\) # ((!\b2v_inst|LessThan22~2_combout\ & 
-- \b2v_inst|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan16~1_combout\,
	datab => \b2v_inst|LessThan18~2_combout\,
	datac => \b2v_inst|LessThan22~2_combout\,
	datad => \b2v_inst|LessThan24~0_combout\,
	combout => \b2v_inst|signal_out~47_combout\);

-- Location: LCCOMB_X48_Y25_N4
\b2v_inst|signal_out~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~48_combout\ = (\b2v_inst|signal_out~46_combout\) # ((\b2v_inst|signal_out~47_combout\) # ((\b2v_inst|LessThan12~1_combout\ & \b2v_inst|signal_out~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan12~1_combout\,
	datab => \b2v_inst|signal_out~57_combout\,
	datac => \b2v_inst|signal_out~46_combout\,
	datad => \b2v_inst|signal_out~47_combout\,
	combout => \b2v_inst|signal_out~48_combout\);

-- Location: LCCOMB_X48_Y25_N10
\b2v_inst|signal_out~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~49_combout\ = (!\b2v_inst|clk_count\(29) & ((\b2v_inst|signal_out~39_combout\) # ((\b2v_inst|signal_out~48_combout\) # (\b2v_inst|signal_out~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|signal_out~39_combout\,
	datac => \b2v_inst|signal_out~48_combout\,
	datad => \b2v_inst|signal_out~45_combout\,
	combout => \b2v_inst|signal_out~49_combout\);

-- Location: LCCOMB_X48_Y24_N18
\b2v_inst|sending~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|sending~3_combout\ = (\b2v_inst|clk_count\(28)) # ((\b2v_inst|clk_count\(29)) # (\b2v_inst|LessThan36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(28),
	datac => \b2v_inst|clk_count\(29),
	datad => \b2v_inst|LessThan36~2_combout\,
	combout => \b2v_inst|sending~3_combout\);

-- Location: LCCOMB_X48_Y24_N28
\b2v_inst|signal_out~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~50_combout\ = (\b2v_inst|signal_out~21_combout\) # ((\b2v_inst|LessThan38~2_combout\ & ((!\b2v_inst|sending~3_combout\))) # (!\b2v_inst|LessThan38~2_combout\ & (\b2v_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~7_combout\,
	datab => \b2v_inst|sending~3_combout\,
	datac => \b2v_inst|signal_out~21_combout\,
	datad => \b2v_inst|LessThan38~2_combout\,
	combout => \b2v_inst|signal_out~50_combout\);

-- Location: LCCOMB_X48_Y24_N14
\b2v_inst|signal_out~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~51_combout\ = (\b2v_inst|signal_out~49_combout\) # ((\b2v_inst|signal_out~50_combout\) # ((\b2v_inst|LessThan26~2_combout\ & !\b2v_inst|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~49_combout\,
	datab => \b2v_inst|LessThan26~2_combout\,
	datac => \b2v_inst|LessThan24~0_combout\,
	datad => \b2v_inst|signal_out~50_combout\,
	combout => \b2v_inst|signal_out~51_combout\);

-- Location: LCCOMB_X49_Y25_N24
\b2v_inst|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~1_combout\ = (!\b2v_inst|signal_out~36_combout\ & (\b2v_inst|signal_out~52_combout\ & ((!\b2v_inst|signal_out~32_combout\) # (!\b2v_inst|signal_out~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~36_combout\,
	datab => \b2v_inst|signal_out~33_combout\,
	datac => \b2v_inst|signal_out~52_combout\,
	datad => \b2v_inst|signal_out~32_combout\,
	combout => \b2v_inst|comb~1_combout\);

-- Location: LCCOMB_X37_Y14_N28
\b2v_inst6|Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux44~0_combout\ = (\GPIO0_2~combout\ & !\b2v_inst6|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO0_2~combout\,
	datad => \b2v_inst6|count\(7),
	combout => \b2v_inst6|Mux44~0_combout\);

-- Location: LCCOMB_X36_Y14_N18
\b2v_inst6|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal0~1_combout\ = (\b2v_inst6|count\(0) & !\b2v_inst6|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|count\(0),
	datad => \b2v_inst6|count\(4),
	combout => \b2v_inst6|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y14_N22
\b2v_inst6|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal0~2_combout\ = (\b2v_inst6|count\(6) & (\b2v_inst6|Mux43~0_combout\ & (\b2v_inst6|count\(2) & \b2v_inst6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(6),
	datab => \b2v_inst6|Mux43~0_combout\,
	datac => \b2v_inst6|count\(2),
	datad => \b2v_inst6|Equal0~1_combout\,
	combout => \b2v_inst6|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y14_N10
\b2v_inst6|Mux40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux40~2_combout\ = (\b2v_inst6|count\(1) & \b2v_inst6|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|count\(1),
	datad => \b2v_inst6|count\(2),
	combout => \b2v_inst6|Mux40~2_combout\);

-- Location: LCCOMB_X36_Y14_N4
\b2v_inst6|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux1~1_combout\ = (\GPIO0_2~combout\ & (!\b2v_inst6|count\(0) & (\b2v_inst6|Mux1~0_combout\ & \b2v_inst6|Mux40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO0_2~combout\,
	datab => \b2v_inst6|count\(0),
	datac => \b2v_inst6|Mux1~0_combout\,
	datad => \b2v_inst6|Mux40~2_combout\,
	combout => \b2v_inst6|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y14_N6
\b2v_inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux5~0_combout\ = (\b2v_inst6|count\(1) & (\b2v_inst6|count\(2) & (\b2v_inst6|count\(6) $ (!\b2v_inst6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(1),
	datab => \b2v_inst6|count\(6),
	datac => \b2v_inst6|count\(0),
	datad => \b2v_inst6|count\(2),
	combout => \b2v_inst6|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y14_N0
\b2v_inst6|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux5~1_combout\ = (\b2v_inst6|Mux5~0_combout\ & (!\b2v_inst6|count\(5) & (\b2v_inst6|Mux1~0_combout\ & \b2v_inst6|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux5~0_combout\,
	datab => \b2v_inst6|count\(5),
	datac => \b2v_inst6|Mux1~0_combout\,
	datad => \b2v_inst6|count\(7),
	combout => \b2v_inst6|Mux5~1_combout\);

-- Location: LCCOMB_X47_Y25_N10
\b2v_inst|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~6_combout\ = (!\b2v_inst|clk_count\(8) & (\b2v_inst|clk_count\(7) & (\b2v_inst|clk_count\(2) & \b2v_inst|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(8),
	datab => \b2v_inst|clk_count\(7),
	datac => \b2v_inst|clk_count\(2),
	datad => \b2v_inst|clk_count\(4),
	combout => \b2v_inst|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y25_N16
\b2v_inst|clk_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~2_combout\ = (\b2v_inst|Add0~22_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~22_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~2_combout\);

-- Location: LCCOMB_X43_Y25_N14
\b2v_inst|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan4~0_combout\ = (\b2v_inst|clk_count\(7) & (((\b2v_inst|clk_count\(4) & \b2v_inst|clk_count\(3))) # (!\b2v_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(7),
	datac => \b2v_inst|clk_count\(3),
	datad => \b2v_inst|Equal0~0_combout\,
	combout => \b2v_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X44_Y25_N22
\b2v_inst|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan4~1_combout\ = (\b2v_inst|clk_count\(10)) # ((\b2v_inst|clk_count\(9) & ((\b2v_inst|clk_count\(8)) # (\b2v_inst|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datab => \b2v_inst|clk_count\(8),
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|LessThan4~0_combout\,
	combout => \b2v_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X44_Y25_N12
\b2v_inst|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~4_combout\ = (!\b2v_inst|clk_count\(28) & (!\b2v_inst|clk_count\(29) & ((!\b2v_inst|Equal0~5_combout\) # (!\b2v_inst|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(28),
	datab => \b2v_inst|LessThan4~1_combout\,
	datac => \b2v_inst|clk_count\(29),
	datad => \b2v_inst|Equal0~5_combout\,
	combout => \b2v_inst|comb~4_combout\);

-- Location: LCCOMB_X44_Y24_N4
\b2v_inst|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~5_combout\ = (!\b2v_inst|clk_count\(5) & (((!\b2v_inst|clk_count\(3) & !\b2v_inst|clk_count\(2))) # (!\b2v_inst|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(2),
	datad => \b2v_inst|clk_count\(5),
	combout => \b2v_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X44_Y24_N30
\b2v_inst|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~6_combout\ = ((\b2v_inst|LessThan0~2_combout\ & ((\b2v_inst|LessThan1~5_combout\) # (!\b2v_inst|clk_count\(6))))) # (!\b2v_inst|LessThan38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(6),
	datab => \b2v_inst|LessThan1~5_combout\,
	datac => \b2v_inst|LessThan38~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X45_Y24_N10
\b2v_inst|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~5_combout\ = (!\b2v_inst|clk_count\(5) & (!\b2v_inst|clk_count\(8) & (\b2v_inst|LessThan6~2_combout\ & !\b2v_inst|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(5),
	datab => \b2v_inst|clk_count\(8),
	datac => \b2v_inst|LessThan6~2_combout\,
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan6~5_combout\);

-- Location: LCCOMB_X48_Y25_N16
\b2v_inst|signal_out~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~53_combout\ = (!\b2v_inst|clk_count\(30) & ((\b2v_inst|clk_count\(29)) # ((\b2v_inst|LessThan20~3_combout\) # (!\b2v_inst|LessThan22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|clk_count\(30),
	datac => \b2v_inst|LessThan22~2_combout\,
	datad => \b2v_inst|LessThan20~3_combout\,
	combout => \b2v_inst|signal_out~53_combout\);

-- Location: LCCOMB_X47_Y24_N20
\b2v_inst|LessThan30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan30~5_combout\ = (!\b2v_inst|clk_count\(29) & (!\b2v_inst|clk_count\(25) & (!\b2v_inst|clk_count\(26) & !\b2v_inst|clk_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|clk_count\(25),
	datac => \b2v_inst|clk_count\(26),
	datad => \b2v_inst|clk_count\(24),
	combout => \b2v_inst|LessThan30~5_combout\);

-- Location: LCCOMB_X47_Y24_N18
\b2v_inst|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~7_combout\ = (\b2v_inst|LessThan1~4_combout\ & (!\b2v_inst|clk_count\(25) & (!\b2v_inst|clk_count\(26) & !\b2v_inst|clk_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~4_combout\,
	datab => \b2v_inst|clk_count\(25),
	datac => \b2v_inst|clk_count\(26),
	datad => \b2v_inst|clk_count\(24),
	combout => \b2v_inst|LessThan8~7_combout\);

-- Location: LCCOMB_X48_Y25_N0
\b2v_inst|signal_out~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~55_combout\ = (!\b2v_inst|clk_count\(29) & (!\b2v_inst|clk_count\(31) & (\b2v_inst|LessThan8~6_combout\ & !\b2v_inst|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|clk_count\(31),
	datac => \b2v_inst|LessThan8~6_combout\,
	datad => \b2v_inst|clk_count\(30),
	combout => \b2v_inst|signal_out~55_combout\);

-- Location: LCCOMB_X45_Y24_N22
\b2v_inst|signal_out~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~56_combout\ = (!\b2v_inst|clk_count\(9) & (!\b2v_inst|clk_count\(8) & ((\b2v_inst|LessThan10~0_combout\) # (\b2v_inst|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan10~0_combout\,
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|LessThan10~1_combout\,
	combout => \b2v_inst|signal_out~56_combout\);

-- Location: LCCOMB_X48_Y25_N18
\b2v_inst|signal_out~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~57_combout\ = (!\b2v_inst|clk_count\(27) & (!\b2v_inst|clk_count\(28) & ((!\b2v_inst|signal_out~56_combout\) # (!\b2v_inst|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(27),
	datab => \b2v_inst|clk_count\(28),
	datac => \b2v_inst|LessThan8~5_combout\,
	datad => \b2v_inst|signal_out~56_combout\,
	combout => \b2v_inst|signal_out~57_combout\);

-- Location: LCCOMB_X37_Y14_N20
\b2v_inst6|sample_array[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(10) = (\b2v_inst6|Equal0~2_combout\ & ((\b2v_inst6|Mux44~0_combout\))) # (!\b2v_inst6|Equal0~2_combout\ & (\b2v_inst6|sample_array\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Equal0~2_combout\,
	datac => \b2v_inst6|sample_array\(10),
	datad => \b2v_inst6|Mux44~0_combout\,
	combout => \b2v_inst6|sample_array\(10));

-- Location: LCCOMB_X35_Y14_N16
\b2v_inst6|sample_array[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(5) = (\b2v_inst6|Mux5~1_combout\ & ((\b2v_inst6|Mux1~1_combout\))) # (!\b2v_inst6|Mux5~1_combout\ & (\b2v_inst6|sample_array\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(5),
	datac => \b2v_inst6|Mux5~1_combout\,
	datad => \b2v_inst6|Mux1~1_combout\,
	combout => \b2v_inst6|sample_array\(5));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y25_N0
\b2v_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = \b2v_inst|clk_count\(0) $ (VCC)
-- \b2v_inst|Add0~1\ = CARRY(\b2v_inst|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(0),
	datad => VCC,
	combout => \b2v_inst|Add0~0_combout\,
	cout => \b2v_inst|Add0~1\);

-- Location: LCFF_X46_Y25_N1
\b2v_inst|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(0));

-- Location: LCCOMB_X46_Y25_N2
\b2v_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = (\b2v_inst|clk_count\(1) & (!\b2v_inst|Add0~1\)) # (!\b2v_inst|clk_count\(1) & ((\b2v_inst|Add0~1\) # (GND)))
-- \b2v_inst|Add0~3\ = CARRY((!\b2v_inst|Add0~1\) # (!\b2v_inst|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(1),
	datad => VCC,
	cin => \b2v_inst|Add0~1\,
	combout => \b2v_inst|Add0~2_combout\,
	cout => \b2v_inst|Add0~3\);

-- Location: LCFF_X46_Y25_N3
\b2v_inst|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(1));

-- Location: LCCOMB_X47_Y25_N4
\b2v_inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~5_combout\ = (\b2v_inst|clk_count\(11) & (\b2v_inst|clk_count\(12) & \b2v_inst|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(11),
	datab => \b2v_inst|clk_count\(12),
	datac => \b2v_inst|clk_count\(13),
	combout => \b2v_inst|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y25_N10
\b2v_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~10_combout\ = (\b2v_inst|clk_count\(5) & (!\b2v_inst|Add0~9\)) # (!\b2v_inst|clk_count\(5) & ((\b2v_inst|Add0~9\) # (GND)))
-- \b2v_inst|Add0~11\ = CARRY((!\b2v_inst|Add0~9\) # (!\b2v_inst|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(5),
	datad => VCC,
	cin => \b2v_inst|Add0~9\,
	combout => \b2v_inst|Add0~10_combout\,
	cout => \b2v_inst|Add0~11\);

-- Location: LCFF_X46_Y25_N11
\b2v_inst|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(5));

-- Location: LCCOMB_X46_Y25_N12
\b2v_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~12_combout\ = (\b2v_inst|clk_count\(6) & (\b2v_inst|Add0~11\ $ (GND))) # (!\b2v_inst|clk_count\(6) & (!\b2v_inst|Add0~11\ & VCC))
-- \b2v_inst|Add0~13\ = CARRY((\b2v_inst|clk_count\(6) & !\b2v_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(6),
	datad => VCC,
	cin => \b2v_inst|Add0~11\,
	combout => \b2v_inst|Add0~12_combout\,
	cout => \b2v_inst|Add0~13\);

-- Location: LCFF_X46_Y25_N13
\b2v_inst|clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(6));

-- Location: LCCOMB_X47_Y25_N30
\b2v_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = (!\b2v_inst|clk_count\(5) & !\b2v_inst|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|clk_count\(5),
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y25_N20
\b2v_inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~20_combout\ = (\b2v_inst|clk_count\(10) & (\b2v_inst|Add0~19\ $ (GND))) # (!\b2v_inst|clk_count\(10) & (!\b2v_inst|Add0~19\ & VCC))
-- \b2v_inst|Add0~21\ = CARRY((\b2v_inst|clk_count\(10) & !\b2v_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(10),
	datad => VCC,
	cin => \b2v_inst|Add0~19\,
	combout => \b2v_inst|Add0~20_combout\,
	cout => \b2v_inst|Add0~21\);

-- Location: LCFF_X46_Y25_N21
\b2v_inst|clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(10));

-- Location: LCCOMB_X46_Y25_N30
\b2v_inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~30_combout\ = (\b2v_inst|clk_count\(15) & (!\b2v_inst|Add0~29\)) # (!\b2v_inst|clk_count\(15) & ((\b2v_inst|Add0~29\) # (GND)))
-- \b2v_inst|Add0~31\ = CARRY((!\b2v_inst|Add0~29\) # (!\b2v_inst|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(15),
	datad => VCC,
	cin => \b2v_inst|Add0~29\,
	combout => \b2v_inst|Add0~30_combout\,
	cout => \b2v_inst|Add0~31\);

-- Location: LCCOMB_X46_Y24_N0
\b2v_inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~32_combout\ = (\b2v_inst|clk_count\(16) & (\b2v_inst|Add0~31\ $ (GND))) # (!\b2v_inst|clk_count\(16) & (!\b2v_inst|Add0~31\ & VCC))
-- \b2v_inst|Add0~33\ = CARRY((\b2v_inst|clk_count\(16) & !\b2v_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(16),
	datad => VCC,
	cin => \b2v_inst|Add0~31\,
	combout => \b2v_inst|Add0~32_combout\,
	cout => \b2v_inst|Add0~33\);

-- Location: LCFF_X46_Y24_N1
\b2v_inst|clk_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(16));

-- Location: LCCOMB_X46_Y24_N2
\b2v_inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~34_combout\ = (\b2v_inst|clk_count\(17) & (!\b2v_inst|Add0~33\)) # (!\b2v_inst|clk_count\(17) & ((\b2v_inst|Add0~33\) # (GND)))
-- \b2v_inst|Add0~35\ = CARRY((!\b2v_inst|Add0~33\) # (!\b2v_inst|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(17),
	datad => VCC,
	cin => \b2v_inst|Add0~33\,
	combout => \b2v_inst|Add0~34_combout\,
	cout => \b2v_inst|Add0~35\);

-- Location: LCFF_X46_Y24_N3
\b2v_inst|clk_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(17));

-- Location: LCCOMB_X46_Y24_N4
\b2v_inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~36_combout\ = (\b2v_inst|clk_count\(18) & (\b2v_inst|Add0~35\ $ (GND))) # (!\b2v_inst|clk_count\(18) & (!\b2v_inst|Add0~35\ & VCC))
-- \b2v_inst|Add0~37\ = CARRY((\b2v_inst|clk_count\(18) & !\b2v_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(18),
	datad => VCC,
	cin => \b2v_inst|Add0~35\,
	combout => \b2v_inst|Add0~36_combout\,
	cout => \b2v_inst|Add0~37\);

-- Location: LCFF_X46_Y24_N5
\b2v_inst|clk_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(18));

-- Location: LCCOMB_X46_Y24_N6
\b2v_inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~38_combout\ = (\b2v_inst|clk_count\(19) & (!\b2v_inst|Add0~37\)) # (!\b2v_inst|clk_count\(19) & ((\b2v_inst|Add0~37\) # (GND)))
-- \b2v_inst|Add0~39\ = CARRY((!\b2v_inst|Add0~37\) # (!\b2v_inst|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(19),
	datad => VCC,
	cin => \b2v_inst|Add0~37\,
	combout => \b2v_inst|Add0~38_combout\,
	cout => \b2v_inst|Add0~39\);

-- Location: LCCOMB_X46_Y24_N8
\b2v_inst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~40_combout\ = (\b2v_inst|clk_count\(20) & (\b2v_inst|Add0~39\ $ (GND))) # (!\b2v_inst|clk_count\(20) & (!\b2v_inst|Add0~39\ & VCC))
-- \b2v_inst|Add0~41\ = CARRY((\b2v_inst|clk_count\(20) & !\b2v_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(20),
	datad => VCC,
	cin => \b2v_inst|Add0~39\,
	combout => \b2v_inst|Add0~40_combout\,
	cout => \b2v_inst|Add0~41\);

-- Location: LCFF_X46_Y24_N9
\b2v_inst|clk_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(20));

-- Location: LCCOMB_X46_Y24_N10
\b2v_inst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~42_combout\ = (\b2v_inst|clk_count\(21) & (!\b2v_inst|Add0~41\)) # (!\b2v_inst|clk_count\(21) & ((\b2v_inst|Add0~41\) # (GND)))
-- \b2v_inst|Add0~43\ = CARRY((!\b2v_inst|Add0~41\) # (!\b2v_inst|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(21),
	datad => VCC,
	cin => \b2v_inst|Add0~41\,
	combout => \b2v_inst|Add0~42_combout\,
	cout => \b2v_inst|Add0~43\);

-- Location: LCCOMB_X46_Y24_N14
\b2v_inst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~46_combout\ = (\b2v_inst|clk_count\(23) & (!\b2v_inst|Add0~45\)) # (!\b2v_inst|clk_count\(23) & ((\b2v_inst|Add0~45\) # (GND)))
-- \b2v_inst|Add0~47\ = CARRY((!\b2v_inst|Add0~45\) # (!\b2v_inst|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(23),
	datad => VCC,
	cin => \b2v_inst|Add0~45\,
	combout => \b2v_inst|Add0~46_combout\,
	cout => \b2v_inst|Add0~47\);

-- Location: LCFF_X46_Y24_N15
\b2v_inst|clk_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(23));

-- Location: LCCOMB_X46_Y24_N16
\b2v_inst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~48_combout\ = (\b2v_inst|clk_count\(24) & (\b2v_inst|Add0~47\ $ (GND))) # (!\b2v_inst|clk_count\(24) & (!\b2v_inst|Add0~47\ & VCC))
-- \b2v_inst|Add0~49\ = CARRY((\b2v_inst|clk_count\(24) & !\b2v_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(24),
	datad => VCC,
	cin => \b2v_inst|Add0~47\,
	combout => \b2v_inst|Add0~48_combout\,
	cout => \b2v_inst|Add0~49\);

-- Location: LCCOMB_X46_Y24_N18
\b2v_inst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~50_combout\ = (\b2v_inst|clk_count\(25) & (!\b2v_inst|Add0~49\)) # (!\b2v_inst|clk_count\(25) & ((\b2v_inst|Add0~49\) # (GND)))
-- \b2v_inst|Add0~51\ = CARRY((!\b2v_inst|Add0~49\) # (!\b2v_inst|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(25),
	datad => VCC,
	cin => \b2v_inst|Add0~49\,
	combout => \b2v_inst|Add0~50_combout\,
	cout => \b2v_inst|Add0~51\);

-- Location: LCFF_X46_Y24_N19
\b2v_inst|clk_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(25));

-- Location: LCCOMB_X46_Y24_N20
\b2v_inst|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~52_combout\ = (\b2v_inst|clk_count\(26) & (\b2v_inst|Add0~51\ $ (GND))) # (!\b2v_inst|clk_count\(26) & (!\b2v_inst|Add0~51\ & VCC))
-- \b2v_inst|Add0~53\ = CARRY((\b2v_inst|clk_count\(26) & !\b2v_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(26),
	datad => VCC,
	cin => \b2v_inst|Add0~51\,
	combout => \b2v_inst|Add0~52_combout\,
	cout => \b2v_inst|Add0~53\);

-- Location: LCCOMB_X46_Y24_N22
\b2v_inst|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~54_combout\ = (\b2v_inst|clk_count\(27) & (!\b2v_inst|Add0~53\)) # (!\b2v_inst|clk_count\(27) & ((\b2v_inst|Add0~53\) # (GND)))
-- \b2v_inst|Add0~55\ = CARRY((!\b2v_inst|Add0~53\) # (!\b2v_inst|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(27),
	datad => VCC,
	cin => \b2v_inst|Add0~53\,
	combout => \b2v_inst|Add0~54_combout\,
	cout => \b2v_inst|Add0~55\);

-- Location: LCFF_X46_Y24_N23
\b2v_inst|clk_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(27));

-- Location: LCCOMB_X46_Y24_N24
\b2v_inst|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~56_combout\ = (\b2v_inst|clk_count\(28) & (\b2v_inst|Add0~55\ $ (GND))) # (!\b2v_inst|clk_count\(28) & (!\b2v_inst|Add0~55\ & VCC))
-- \b2v_inst|Add0~57\ = CARRY((\b2v_inst|clk_count\(28) & !\b2v_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(28),
	datad => VCC,
	cin => \b2v_inst|Add0~55\,
	combout => \b2v_inst|Add0~56_combout\,
	cout => \b2v_inst|Add0~57\);

-- Location: LCFF_X46_Y24_N25
\b2v_inst|clk_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(28));

-- Location: LCCOMB_X46_Y24_N26
\b2v_inst|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~58_combout\ = (\b2v_inst|clk_count\(29) & (!\b2v_inst|Add0~57\)) # (!\b2v_inst|clk_count\(29) & ((\b2v_inst|Add0~57\) # (GND)))
-- \b2v_inst|Add0~59\ = CARRY((!\b2v_inst|Add0~57\) # (!\b2v_inst|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(29),
	datad => VCC,
	cin => \b2v_inst|Add0~57\,
	combout => \b2v_inst|Add0~58_combout\,
	cout => \b2v_inst|Add0~59\);

-- Location: LCFF_X46_Y24_N27
\b2v_inst|clk_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(29));

-- Location: LCCOMB_X46_Y24_N28
\b2v_inst|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~60_combout\ = (\b2v_inst|clk_count\(30) & (\b2v_inst|Add0~59\ $ (GND))) # (!\b2v_inst|clk_count\(30) & (!\b2v_inst|Add0~59\ & VCC))
-- \b2v_inst|Add0~61\ = CARRY((\b2v_inst|clk_count\(30) & !\b2v_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(30),
	datad => VCC,
	cin => \b2v_inst|Add0~59\,
	combout => \b2v_inst|Add0~60_combout\,
	cout => \b2v_inst|Add0~61\);

-- Location: LCFF_X46_Y24_N29
\b2v_inst|clk_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(30));

-- Location: LCCOMB_X46_Y24_N30
\b2v_inst|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~62_combout\ = \b2v_inst|Add0~61\ $ (\b2v_inst|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|clk_count\(31),
	cin => \b2v_inst|Add0~61\,
	combout => \b2v_inst|Add0~62_combout\);

-- Location: LCFF_X46_Y24_N31
\b2v_inst|clk_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(31));

-- Location: LCCOMB_X47_Y25_N12
\b2v_inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~3_combout\ = (!\b2v_inst|clk_count\(30) & (!\b2v_inst|clk_count\(28) & (!\b2v_inst|clk_count\(31) & !\b2v_inst|clk_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(30),
	datab => \b2v_inst|clk_count\(28),
	datac => \b2v_inst|clk_count\(31),
	datad => \b2v_inst|clk_count\(29),
	combout => \b2v_inst|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y25_N6
\b2v_inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~4_combout\ = (!\b2v_inst|clk_count\(3) & (\b2v_inst|Equal0~0_combout\ & (!\b2v_inst|clk_count\(10) & \b2v_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(3),
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|Equal0~3_combout\,
	combout => \b2v_inst|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y25_N20
\b2v_inst|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~7_combout\ = (\b2v_inst|Equal0~6_combout\ & (\b2v_inst|clk_count\(9) & (\b2v_inst|Equal0~5_combout\ & \b2v_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~6_combout\,
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|Equal0~5_combout\,
	datad => \b2v_inst|Equal0~4_combout\,
	combout => \b2v_inst|Equal0~7_combout\);

-- Location: LCFF_X46_Y24_N21
\b2v_inst|clk_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(26));

-- Location: LCFF_X46_Y24_N17
\b2v_inst|clk_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(24));

-- Location: LCCOMB_X47_Y24_N0
\b2v_inst|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~2_combout\ = (!\b2v_inst|clk_count\(25) & (!\b2v_inst|clk_count\(26) & !\b2v_inst|clk_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(25),
	datac => \b2v_inst|clk_count\(26),
	datad => \b2v_inst|clk_count\(24),
	combout => \b2v_inst|LessThan8~2_combout\);

-- Location: LCFF_X46_Y24_N7
\b2v_inst|clk_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(19));

-- Location: LCCOMB_X47_Y24_N2
\b2v_inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~1_combout\ = (!\b2v_inst|clk_count\(16) & (!\b2v_inst|clk_count\(18) & (!\b2v_inst|clk_count\(19) & !\b2v_inst|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(16),
	datab => \b2v_inst|clk_count\(18),
	datac => \b2v_inst|clk_count\(19),
	datad => \b2v_inst|clk_count\(17),
	combout => \b2v_inst|LessThan1~1_combout\);

-- Location: LCFF_X46_Y24_N11
\b2v_inst|clk_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(21));

-- Location: LCCOMB_X47_Y24_N12
\b2v_inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~0_combout\ = (!\b2v_inst|clk_count\(22) & (!\b2v_inst|clk_count\(23) & (!\b2v_inst|clk_count\(21) & !\b2v_inst|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(22),
	datab => \b2v_inst|clk_count\(23),
	datac => \b2v_inst|clk_count\(21),
	datad => \b2v_inst|clk_count\(20),
	combout => \b2v_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X47_Y25_N28
\b2v_inst|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~1_combout\ = (\b2v_inst|LessThan1~2_combout\ & (\b2v_inst|LessThan8~2_combout\ & (\b2v_inst|LessThan1~1_combout\ & \b2v_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~2_combout\,
	datab => \b2v_inst|LessThan8~2_combout\,
	datac => \b2v_inst|LessThan1~1_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y25_N26
\b2v_inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~2_combout\ = (!\b2v_inst|clk_count\(27) & \b2v_inst|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|clk_count\(27),
	datad => \b2v_inst|LessThan2~1_combout\,
	combout => \b2v_inst|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y25_N18
\b2v_inst|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~8_combout\ = (\b2v_inst|clk_count\(0) & (\b2v_inst|clk_count\(1) & (\b2v_inst|Equal0~7_combout\ & \b2v_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(0),
	datab => \b2v_inst|clk_count\(1),
	datac => \b2v_inst|Equal0~7_combout\,
	datad => \b2v_inst|Equal0~2_combout\,
	combout => \b2v_inst|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y25_N22
\b2v_inst|clk_count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~5_combout\ = (\b2v_inst|Add0~8_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~8_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~5_combout\);

-- Location: LCFF_X47_Y25_N23
\b2v_inst|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(4));

-- Location: LCCOMB_X46_Y25_N4
\b2v_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~4_combout\ = (\b2v_inst|clk_count\(2) & (\b2v_inst|Add0~3\ $ (GND))) # (!\b2v_inst|clk_count\(2) & (!\b2v_inst|Add0~3\ & VCC))
-- \b2v_inst|Add0~5\ = CARRY((\b2v_inst|clk_count\(2) & !\b2v_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(2),
	datad => VCC,
	cin => \b2v_inst|Add0~3\,
	combout => \b2v_inst|Add0~4_combout\,
	cout => \b2v_inst|Add0~5\);

-- Location: LCFF_X46_Y25_N5
\b2v_inst|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(2));

-- Location: LCCOMB_X46_Y25_N6
\b2v_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~6_combout\ = (\b2v_inst|clk_count\(3) & (!\b2v_inst|Add0~5\)) # (!\b2v_inst|clk_count\(3) & ((\b2v_inst|Add0~5\) # (GND)))
-- \b2v_inst|Add0~7\ = CARRY((!\b2v_inst|Add0~5\) # (!\b2v_inst|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(3),
	datad => VCC,
	cin => \b2v_inst|Add0~5\,
	combout => \b2v_inst|Add0~6_combout\,
	cout => \b2v_inst|Add0~7\);

-- Location: LCCOMB_X47_Y25_N24
\b2v_inst|clk_count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~4_combout\ = (\b2v_inst|Add0~6_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~4_combout\);

-- Location: LCFF_X47_Y25_N25
\b2v_inst|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(3));

-- Location: LCCOMB_X46_Y25_N16
\b2v_inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~16_combout\ = (\b2v_inst|clk_count\(8) & (\b2v_inst|Add0~15\ $ (GND))) # (!\b2v_inst|clk_count\(8) & (!\b2v_inst|Add0~15\ & VCC))
-- \b2v_inst|Add0~17\ = CARRY((\b2v_inst|clk_count\(8) & !\b2v_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(8),
	datad => VCC,
	cin => \b2v_inst|Add0~15\,
	combout => \b2v_inst|Add0~16_combout\,
	cout => \b2v_inst|Add0~17\);

-- Location: LCCOMB_X46_Y25_N18
\b2v_inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~18_combout\ = (\b2v_inst|clk_count\(9) & (!\b2v_inst|Add0~17\)) # (!\b2v_inst|clk_count\(9) & ((\b2v_inst|Add0~17\) # (GND)))
-- \b2v_inst|Add0~19\ = CARRY((!\b2v_inst|Add0~17\) # (!\b2v_inst|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(9),
	datad => VCC,
	cin => \b2v_inst|Add0~17\,
	combout => \b2v_inst|Add0~18_combout\,
	cout => \b2v_inst|Add0~19\);

-- Location: LCCOMB_X47_Y25_N0
\b2v_inst|clk_count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~6_combout\ = (\b2v_inst|Add0~18_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~18_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~6_combout\);

-- Location: LCFF_X47_Y25_N1
\b2v_inst|clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(9));

-- Location: LCCOMB_X46_Y25_N24
\b2v_inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~24_combout\ = (\b2v_inst|clk_count\(12) & (\b2v_inst|Add0~23\ $ (GND))) # (!\b2v_inst|clk_count\(12) & (!\b2v_inst|Add0~23\ & VCC))
-- \b2v_inst|Add0~25\ = CARRY((\b2v_inst|clk_count\(12) & !\b2v_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(12),
	datad => VCC,
	cin => \b2v_inst|Add0~23\,
	combout => \b2v_inst|Add0~24_combout\,
	cout => \b2v_inst|Add0~25\);

-- Location: LCCOMB_X47_Y25_N14
\b2v_inst|clk_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~1_combout\ = (\b2v_inst|Add0~24_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~24_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~1_combout\);

-- Location: LCFF_X47_Y25_N15
\b2v_inst|clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(12));

-- Location: LCCOMB_X46_Y25_N26
\b2v_inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~26_combout\ = (\b2v_inst|clk_count\(13) & (!\b2v_inst|Add0~25\)) # (!\b2v_inst|clk_count\(13) & ((\b2v_inst|Add0~25\) # (GND)))
-- \b2v_inst|Add0~27\ = CARRY((!\b2v_inst|Add0~25\) # (!\b2v_inst|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(13),
	datad => VCC,
	cin => \b2v_inst|Add0~25\,
	combout => \b2v_inst|Add0~26_combout\,
	cout => \b2v_inst|Add0~27\);

-- Location: LCCOMB_X47_Y25_N8
\b2v_inst|clk_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~0_combout\ = (\b2v_inst|Add0~26_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~26_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~0_combout\);

-- Location: LCFF_X47_Y25_N9
\b2v_inst|clk_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(13));

-- Location: LCCOMB_X46_Y25_N28
\b2v_inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~28_combout\ = (\b2v_inst|clk_count\(14) & (\b2v_inst|Add0~27\ $ (GND))) # (!\b2v_inst|clk_count\(14) & (!\b2v_inst|Add0~27\ & VCC))
-- \b2v_inst|Add0~29\ = CARRY((\b2v_inst|clk_count\(14) & !\b2v_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(14),
	datad => VCC,
	cin => \b2v_inst|Add0~27\,
	combout => \b2v_inst|Add0~28_combout\,
	cout => \b2v_inst|Add0~29\);

-- Location: LCFF_X46_Y25_N29
\b2v_inst|clk_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(14));

-- Location: LCFF_X46_Y25_N31
\b2v_inst|clk_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(15));

-- Location: LCCOMB_X45_Y25_N8
\b2v_inst|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~2_combout\ = (!\b2v_inst|clk_count\(15) & !\b2v_inst|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(15),
	datad => \b2v_inst|clk_count\(14),
	combout => \b2v_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y25_N2
\b2v_inst|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~4_combout\ = (\b2v_inst|LessThan1~3_combout\ & (\b2v_inst|LessThan1~2_combout\ & (\b2v_inst|LessThan1~1_combout\ & \b2v_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~3_combout\,
	datab => \b2v_inst|LessThan1~2_combout\,
	datac => \b2v_inst|LessThan1~1_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y24_N4
\b2v_inst|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~4_combout\ = (\b2v_inst|LessThan8~3_combout\ & (\b2v_inst|LessThan1~4_combout\ & (!\b2v_inst|clk_count\(10) & \b2v_inst|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan8~4_combout\);

-- Location: LCCOMB_X45_Y24_N18
\b2v_inst|sending~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|sending~1_combout\ = (\b2v_inst|LessThan6~5_combout\ & (\b2v_inst|LessThan8~4_combout\ & (!\b2v_inst|clk_count\(6) & !\b2v_inst|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~5_combout\,
	datab => \b2v_inst|LessThan8~4_combout\,
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|clk_count\(9),
	combout => \b2v_inst|sending~1_combout\);

-- Location: LCCOMB_X49_Y25_N8
\b2v_inst|sending~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|sending~0_combout\ = (!\b2v_inst|clk_count\(31) & (!\b2v_inst|clk_count\(30) & !\b2v_inst|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(31),
	datab => \b2v_inst|clk_count\(30),
	datac => \b2v_inst|clk_count\(29),
	combout => \b2v_inst|sending~0_combout\);

-- Location: LCCOMB_X45_Y25_N14
\b2v_inst|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~3_combout\ = (!\b2v_inst|clk_count\(1) & (!\b2v_inst|clk_count\(3) & !\b2v_inst|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(1),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(2),
	combout => \b2v_inst|LessThan6~3_combout\);

-- Location: LCCOMB_X44_Y24_N22
\b2v_inst|LessThan6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~4_combout\ = (!\b2v_inst|clk_count\(9) & (\b2v_inst|Equal0~0_combout\ & (\b2v_inst|LessThan6~3_combout\ & !\b2v_inst|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|LessThan6~3_combout\,
	datad => \b2v_inst|clk_count\(4),
	combout => \b2v_inst|LessThan6~4_combout\);

-- Location: LCFF_X46_Y25_N17
\b2v_inst|clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(8));

-- Location: LCCOMB_X47_Y25_N2
\b2v_inst|clk_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|clk_count~3_combout\ = (\b2v_inst|Add0~14_combout\ & !\b2v_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~14_combout\,
	datad => \b2v_inst|Equal0~8_combout\,
	combout => \b2v_inst|clk_count~3_combout\);

-- Location: LCFF_X47_Y25_N3
\b2v_inst|clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \b2v_inst|clk_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|clk_count\(7));

-- Location: LCCOMB_X44_Y24_N28
\b2v_inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~2_combout\ = (!\b2v_inst|clk_count\(8) & !\b2v_inst|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X44_Y24_N0
\b2v_inst|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~0_combout\ = (!\b2v_inst|clk_count\(10) & (\b2v_inst|LessThan6~4_combout\ & (\b2v_inst|LessThan1~4_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(10),
	datab => \b2v_inst|LessThan6~4_combout\,
	datac => \b2v_inst|LessThan1~4_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|comb~0_combout\);

-- Location: LCCOMB_X49_Y25_N2
\b2v_inst|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~2_combout\ = (!\b2v_inst|comb~1_combout\ & (((\b2v_inst|comb~0_combout\) # (!\b2v_inst|sending~0_combout\)) # (!\b2v_inst|sending~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|comb~1_combout\,
	datab => \b2v_inst|sending~1_combout\,
	datac => \b2v_inst|sending~0_combout\,
	datad => \b2v_inst|comb~0_combout\,
	combout => \b2v_inst|comb~2_combout\);

-- Location: LCCOMB_X45_Y24_N26
\b2v_inst|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan10~1_combout\ = (!\b2v_inst|clk_count\(7)) # (!\b2v_inst|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan10~1_combout\);

-- Location: LCCOMB_X44_Y25_N30
\b2v_inst|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~0_combout\ = (!\b2v_inst|clk_count\(9) & !\b2v_inst|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datad => \b2v_inst|clk_count\(8),
	combout => \b2v_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y24_N26
\b2v_inst|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~5_combout\ = (\b2v_inst|LessThan1~4_combout\ & (!\b2v_inst|clk_count\(10) & \b2v_inst|LessThan8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan8~5_combout\);

-- Location: LCCOMB_X45_Y24_N28
\b2v_inst|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan10~2_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan8~5_combout\ & ((\b2v_inst|LessThan10~0_combout\) # (\b2v_inst|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan10~0_combout\,
	datab => \b2v_inst|LessThan10~1_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan8~5_combout\,
	combout => \b2v_inst|LessThan10~2_combout\);

-- Location: LCCOMB_X44_Y25_N18
\b2v_inst|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~3_combout\ = (!\b2v_inst|clk_count\(27) & !\b2v_inst|clk_count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(27),
	datad => \b2v_inst|clk_count\(28),
	combout => \b2v_inst|LessThan8~3_combout\);

-- Location: LCCOMB_X49_Y25_N26
\b2v_inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~1_combout\ = (!\b2v_inst|clk_count\(30) & !\b2v_inst|clk_count\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(30),
	datac => \b2v_inst|clk_count\(29),
	combout => \b2v_inst|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y25_N28
\b2v_inst|signal_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~33_combout\ = (!\b2v_inst|clk_count\(31) & (((!\b2v_inst|Equal0~1_combout\) # (!\b2v_inst|LessThan8~3_combout\)) # (!\b2v_inst|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(31),
	datab => \b2v_inst|LessThan10~2_combout\,
	datac => \b2v_inst|LessThan8~3_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst|signal_out~33_combout\);

-- Location: LCCOMB_X45_Y24_N8
\b2v_inst|LessThan32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan32~2_combout\ = (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan8~2_combout\ & ((!\b2v_inst|clk_count\(10)) # (!\b2v_inst|LessThan32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan32~1_combout\,
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|clk_count\(10),
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan32~2_combout\);

-- Location: LCCOMB_X48_Y24_N8
\b2v_inst|sending~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|sending~2_combout\ = ((\b2v_inst|LessThan32~2_combout\) # ((!\b2v_inst|sending~0_combout\) # (!\b2v_inst|LessThan8~3_combout\))) # (!\b2v_inst|LessThan34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan34~1_combout\,
	datab => \b2v_inst|LessThan32~2_combout\,
	datac => \b2v_inst|LessThan8~3_combout\,
	datad => \b2v_inst|sending~0_combout\,
	combout => \b2v_inst|sending~2_combout\);

-- Location: LCCOMB_X49_Y24_N0
\b2v_inst|signal_out~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~52_combout\ = ((\b2v_inst|signal_out~51_combout\ & (!\b2v_inst|clk_count\(30) & !\b2v_inst|clk_count\(31)))) # (!\b2v_inst|sending~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~51_combout\,
	datab => \b2v_inst|clk_count\(30),
	datac => \b2v_inst|clk_count\(31),
	datad => \b2v_inst|sending~2_combout\,
	combout => \b2v_inst|signal_out~52_combout\);

-- Location: LCCOMB_X45_Y25_N0
\b2v_inst|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan14~0_combout\ = (((!\b2v_inst|clk_count\(2) & !\b2v_inst|clk_count\(1))) # (!\b2v_inst|clk_count\(3))) # (!\b2v_inst|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(2),
	datad => \b2v_inst|clk_count\(1),
	combout => \b2v_inst|LessThan14~0_combout\);

-- Location: LCCOMB_X45_Y25_N22
\b2v_inst|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan14~1_combout\ = (((\b2v_inst|LessThan14~0_combout\ & \b2v_inst|Equal0~0_combout\)) # (!\b2v_inst|clk_count\(7))) # (!\b2v_inst|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(8),
	datab => \b2v_inst|LessThan14~0_combout\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan14~1_combout\);

-- Location: LCCOMB_X45_Y25_N20
\b2v_inst|LessThan14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan14~2_combout\ = (\b2v_inst|LessThan8~4_combout\ & (!\b2v_inst|clk_count\(9) & (\b2v_inst|Equal0~1_combout\ & \b2v_inst|LessThan14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~4_combout\,
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|Equal0~1_combout\,
	datad => \b2v_inst|LessThan14~1_combout\,
	combout => \b2v_inst|LessThan14~2_combout\);

-- Location: LCCOMB_X44_Y24_N16
\b2v_inst|LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan16~0_combout\ = (!\b2v_inst|clk_count\(6) & (\b2v_inst|LessThan0~2_combout\ & ((!\b2v_inst|clk_count\(5)) # (!\b2v_inst|clk_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(5),
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|LessThan16~0_combout\);

-- Location: LCCOMB_X45_Y25_N26
\b2v_inst|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan12~1_combout\ = (!\b2v_inst|clk_count\(9) & (\b2v_inst|LessThan8~5_combout\ & ((\b2v_inst|LessThan12~0_combout\) # (!\b2v_inst|clk_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan12~0_combout\,
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|clk_count\(8),
	datad => \b2v_inst|LessThan8~5_combout\,
	combout => \b2v_inst|LessThan12~1_combout\);

-- Location: LCCOMB_X48_Y25_N12
\b2v_inst|signal_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~13_combout\ = (\b2v_inst|LessThan8~3_combout\ & (!\b2v_inst|clk_count\(30) & (\b2v_inst|LessThan12~1_combout\ & !\b2v_inst|clk_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|clk_count\(30),
	datac => \b2v_inst|LessThan12~1_combout\,
	datad => \b2v_inst|clk_count\(29),
	combout => \b2v_inst|signal_out~13_combout\);

-- Location: LCCOMB_X43_Y24_N16
\b2v_inst|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan18~0_combout\ = (\b2v_inst|clk_count\(5) & \b2v_inst|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(5),
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|LessThan18~0_combout\);

-- Location: LCCOMB_X44_Y24_N2
\b2v_inst|LessThan18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan18~1_combout\ = (\b2v_inst|LessThan0~2_combout\ & (((!\b2v_inst|clk_count\(4) & \b2v_inst|LessThan6~3_combout\)) # (!\b2v_inst|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|LessThan18~0_combout\,
	datac => \b2v_inst|LessThan6~3_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|LessThan18~1_combout\);

-- Location: LCCOMB_X44_Y25_N2
\b2v_inst|signal_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~14_combout\ = (\b2v_inst|clk_count\(9) & (\b2v_inst|LessThan18~1_combout\ & !\b2v_inst|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datab => \b2v_inst|LessThan18~1_combout\,
	datad => \b2v_inst|clk_count\(27),
	combout => \b2v_inst|signal_out~14_combout\);

-- Location: LCCOMB_X44_Y25_N28
\b2v_inst|signal_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~15_combout\ = (\b2v_inst|signal_out~13_combout\ & (((\b2v_inst|LessThan16~0_combout\) # (!\b2v_inst|signal_out~14_combout\)) # (!\b2v_inst|LessThan8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|LessThan16~0_combout\,
	datac => \b2v_inst|signal_out~13_combout\,
	datad => \b2v_inst|signal_out~14_combout\,
	combout => \b2v_inst|signal_out~15_combout\);

-- Location: LCCOMB_X44_Y25_N8
\b2v_inst|LessThan18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan18~2_combout\ = (\b2v_inst|LessThan8~5_combout\ & (\b2v_inst|LessThan8~3_combout\ & ((\b2v_inst|LessThan18~1_combout\) # (!\b2v_inst|clk_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|LessThan8~3_combout\,
	datac => \b2v_inst|LessThan18~1_combout\,
	datad => \b2v_inst|clk_count\(9),
	combout => \b2v_inst|LessThan18~2_combout\);

-- Location: LCCOMB_X48_Y25_N26
\b2v_inst|signal_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~16_combout\ = (\b2v_inst|LessThan14~2_combout\ & (((\b2v_inst|signal_out~15_combout\)))) # (!\b2v_inst|LessThan14~2_combout\ & (((!\b2v_inst|LessThan18~2_combout\)) # (!\b2v_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~1_combout\,
	datab => \b2v_inst|LessThan14~2_combout\,
	datac => \b2v_inst|signal_out~15_combout\,
	datad => \b2v_inst|LessThan18~2_combout\,
	combout => \b2v_inst|signal_out~16_combout\);

-- Location: LCCOMB_X44_Y25_N16
\b2v_inst|LessThan16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan16~1_combout\ = (\b2v_inst|LessThan8~5_combout\ & (\b2v_inst|LessThan8~3_combout\ & ((\b2v_inst|LessThan16~0_combout\) # (!\b2v_inst|clk_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~5_combout\,
	datab => \b2v_inst|LessThan8~3_combout\,
	datac => \b2v_inst|LessThan16~0_combout\,
	datad => \b2v_inst|clk_count\(9),
	combout => \b2v_inst|LessThan16~1_combout\);

-- Location: LCCOMB_X48_Y25_N2
\b2v_inst|signal_out~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~54_combout\ = (!\b2v_inst|clk_count\(29) & (!\b2v_inst|LessThan14~2_combout\ & (\b2v_inst|LessThan16~1_combout\ & !\b2v_inst|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(29),
	datab => \b2v_inst|LessThan14~2_combout\,
	datac => \b2v_inst|LessThan16~1_combout\,
	datad => \b2v_inst|clk_count\(30),
	combout => \b2v_inst|signal_out~54_combout\);

-- Location: LCCOMB_X45_Y24_N16
\b2v_inst|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~6_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan8~4_combout\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|clk_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|LessThan8~4_combout\,
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan8~6_combout\);

-- Location: LCCOMB_X48_Y25_N30
\b2v_inst|signal_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~31_combout\ = (\b2v_inst|signal_out~54_combout\) # ((\b2v_inst|signal_out~13_combout\ & ((!\b2v_inst|Equal0~1_combout\) # (!\b2v_inst|LessThan8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~13_combout\,
	datab => \b2v_inst|signal_out~54_combout\,
	datac => \b2v_inst|LessThan8~6_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst|signal_out~31_combout\);

-- Location: LCCOMB_X43_Y25_N28
\b2v_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~3_combout\ = (\b2v_inst|clk_count\(5) & (\b2v_inst|clk_count\(3) & (\b2v_inst|clk_count\(4) & \b2v_inst|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(5),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(4),
	datad => \b2v_inst|clk_count\(6),
	combout => \b2v_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X44_Y25_N14
\b2v_inst|LessThan20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan20~2_combout\ = ((!\b2v_inst|clk_count\(8) & ((!\b2v_inst|LessThan0~3_combout\) # (!\b2v_inst|clk_count\(7))))) # (!\b2v_inst|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(9),
	datab => \b2v_inst|clk_count\(8),
	datac => \b2v_inst|clk_count\(7),
	datad => \b2v_inst|LessThan0~3_combout\,
	combout => \b2v_inst|LessThan20~2_combout\);

-- Location: LCCOMB_X48_Y25_N22
\b2v_inst|LessThan20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan20~3_combout\ = (!\b2v_inst|clk_count\(27) & (!\b2v_inst|clk_count\(28) & (\b2v_inst|LessThan8~5_combout\ & \b2v_inst|LessThan20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(27),
	datab => \b2v_inst|clk_count\(28),
	datac => \b2v_inst|LessThan8~5_combout\,
	datad => \b2v_inst|LessThan20~2_combout\,
	combout => \b2v_inst|LessThan20~3_combout\);

-- Location: LCCOMB_X45_Y25_N16
\b2v_inst|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~2_combout\ = (!\b2v_inst|clk_count\(4) & (((!\b2v_inst|clk_count\(2) & !\b2v_inst|clk_count\(1))) # (!\b2v_inst|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datab => \b2v_inst|clk_count\(3),
	datac => \b2v_inst|clk_count\(2),
	datad => \b2v_inst|clk_count\(1),
	combout => \b2v_inst|LessThan6~2_combout\);

-- Location: LCCOMB_X45_Y25_N24
\b2v_inst|LessThan22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan22~0_combout\ = (!\b2v_inst|clk_count\(6) & (!\b2v_inst|clk_count\(7) & ((\b2v_inst|LessThan6~2_combout\) # (!\b2v_inst|clk_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(5),
	datab => \b2v_inst|LessThan6~2_combout\,
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|clk_count\(7),
	combout => \b2v_inst|LessThan22~0_combout\);

-- Location: LCCOMB_X45_Y25_N18
\b2v_inst|LessThan22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan22~3_combout\ = (\b2v_inst|LessThan8~5_combout\ & (((\b2v_inst|LessThan22~0_combout\) # (!\b2v_inst|clk_count\(9))) # (!\b2v_inst|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(8),
	datab => \b2v_inst|clk_count\(9),
	datac => \b2v_inst|LessThan22~0_combout\,
	datad => \b2v_inst|LessThan8~5_combout\,
	combout => \b2v_inst|LessThan22~3_combout\);

-- Location: LCCOMB_X45_Y25_N4
\b2v_inst|signal_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~29_combout\ = (((\b2v_inst|signal_out~28_combout\ & !\b2v_inst|LessThan22~3_combout\)) # (!\b2v_inst|Equal0~1_combout\)) # (!\b2v_inst|LessThan18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~28_combout\,
	datab => \b2v_inst|LessThan18~2_combout\,
	datac => \b2v_inst|Equal0~1_combout\,
	datad => \b2v_inst|LessThan22~3_combout\,
	combout => \b2v_inst|signal_out~29_combout\);

-- Location: LCCOMB_X49_Y25_N12
\b2v_inst|signal_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~30_combout\ = (\b2v_inst|signal_out~27_combout\) # ((\b2v_inst|LessThan20~3_combout\ & (\b2v_inst|signal_out~29_combout\ & \b2v_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~27_combout\,
	datab => \b2v_inst|LessThan20~3_combout\,
	datac => \b2v_inst|signal_out~29_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst|signal_out~30_combout\);

-- Location: LCCOMB_X49_Y25_N18
\b2v_inst|signal_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out~32_combout\ = (\b2v_inst|signal_out~31_combout\) # ((\b2v_inst|signal_out~16_combout\ & ((\b2v_inst|signal_out~26_combout\) # (\b2v_inst|signal_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~26_combout\,
	datab => \b2v_inst|signal_out~16_combout\,
	datac => \b2v_inst|signal_out~31_combout\,
	datad => \b2v_inst|signal_out~30_combout\,
	combout => \b2v_inst|signal_out~32_combout\);

-- Location: LCCOMB_X49_Y25_N20
\b2v_inst|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~3_combout\ = ((!\b2v_inst|signal_out~36_combout\ & ((!\b2v_inst|signal_out~32_combout\) # (!\b2v_inst|signal_out~33_combout\)))) # (!\b2v_inst|signal_out~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|signal_out~36_combout\,
	datab => \b2v_inst|signal_out~33_combout\,
	datac => \b2v_inst|signal_out~52_combout\,
	datad => \b2v_inst|signal_out~32_combout\,
	combout => \b2v_inst|comb~3_combout\);

-- Location: LCCOMB_X49_Y25_N30
\b2v_inst|signal_out_321\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|signal_out_321~combout\ = (\b2v_inst|comb~2_combout\ & ((\b2v_inst|signal_out_321~combout\) # (!\b2v_inst|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|comb~2_combout\,
	datac => \b2v_inst|comb~3_combout\,
	datad => \b2v_inst|signal_out_321~combout\,
	combout => \b2v_inst|signal_out_321~combout\);

-- Location: LCCOMB_X36_Y15_N0
\b2v_inst6|sample_count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[1]~7_cout\ = CARRY(\b2v_inst6|sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(0),
	datad => VCC,
	cout => \b2v_inst6|sample_count[1]~7_cout\);

-- Location: LCCOMB_X36_Y15_N2
\b2v_inst6|sample_count[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[1]~8_combout\ = (\b2v_inst6|sample_count\(1) & (\b2v_inst6|sample_count[1]~7_cout\ & VCC)) # (!\b2v_inst6|sample_count\(1) & (!\b2v_inst6|sample_count[1]~7_cout\))
-- \b2v_inst6|sample_count[1]~9\ = CARRY((!\b2v_inst6|sample_count\(1) & !\b2v_inst6|sample_count[1]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_count\(1),
	datad => VCC,
	cin => \b2v_inst6|sample_count[1]~7_cout\,
	combout => \b2v_inst6|sample_count[1]~8_combout\,
	cout => \b2v_inst6|sample_count[1]~9\);

-- Location: LCCOMB_X36_Y15_N4
\b2v_inst6|sample_count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[2]~10_combout\ = (\b2v_inst6|sample_count\(2) & ((GND) # (!\b2v_inst6|sample_count[1]~9\))) # (!\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count[1]~9\ $ (GND)))
-- \b2v_inst6|sample_count[2]~11\ = CARRY((\b2v_inst6|sample_count\(2)) # (!\b2v_inst6|sample_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_count\(2),
	datad => VCC,
	cin => \b2v_inst6|sample_count[1]~9\,
	combout => \b2v_inst6|sample_count[2]~10_combout\,
	cout => \b2v_inst6|sample_count[2]~11\);

-- Location: LCCOMB_X44_Y25_N0
\b2v_inst|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~7_combout\ = (((\b2v_inst|LessThan1~6_combout\ & \b2v_inst|LessThan1~4_combout\)) # (!\b2v_inst|Equal0~1_combout\)) # (!\b2v_inst|LessThan8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~6_combout\,
	datab => \b2v_inst|LessThan8~3_combout\,
	datac => \b2v_inst|Equal0~1_combout\,
	datad => \b2v_inst|LessThan1~4_combout\,
	combout => \b2v_inst|comb~7_combout\);

-- Location: LCCOMB_X44_Y24_N6
\b2v_inst|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan10~0_combout\ = (!\b2v_inst|clk_count\(5) & ((\b2v_inst|LessThan6~3_combout\) # (!\b2v_inst|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(4),
	datac => \b2v_inst|LessThan6~3_combout\,
	datad => \b2v_inst|clk_count\(5),
	combout => \b2v_inst|LessThan10~0_combout\);

-- Location: LCCOMB_X44_Y24_N20
\b2v_inst|LessThan41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan41~0_combout\ = (!\b2v_inst|clk_count\(7) & (!\b2v_inst|clk_count\(6) & \b2v_inst|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(7),
	datac => \b2v_inst|clk_count\(6),
	datad => \b2v_inst|LessThan10~0_combout\,
	combout => \b2v_inst|LessThan41~0_combout\);

-- Location: LCCOMB_X44_Y25_N26
\b2v_inst|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~2_combout\ = (!\b2v_inst|clk_count\(11) & (!\b2v_inst|clk_count\(12) & (\b2v_inst|LessThan41~0_combout\ & \b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(11),
	datab => \b2v_inst|clk_count\(12),
	datac => \b2v_inst|LessThan41~0_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|LessThan2~2_combout\);

-- Location: LCCOMB_X44_Y25_N4
\b2v_inst|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~3_combout\ = (\b2v_inst|LessThan2~1_combout\ & (((!\b2v_inst|clk_count\(10) & \b2v_inst|LessThan2~2_combout\)) # (!\b2v_inst|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(10),
	datab => \b2v_inst|LessThan2~2_combout\,
	datac => \b2v_inst|LessThan2~1_combout\,
	datad => \b2v_inst|clk_count\(13),
	combout => \b2v_inst|LessThan2~3_combout\);

-- Location: LCCOMB_X44_Y25_N24
\b2v_inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~4_combout\ = (!\b2v_inst|clk_count\(7) & (!\b2v_inst|clk_count\(8) & ((!\b2v_inst|clk_count\(2)) # (!\b2v_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~3_combout\,
	datab => \b2v_inst|clk_count\(2),
	datac => \b2v_inst|clk_count\(7),
	datad => \b2v_inst|clk_count\(8),
	combout => \b2v_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X45_Y24_N14
\b2v_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~5_combout\ = (\b2v_inst|LessThan1~4_combout\ & (\b2v_inst|LessThan8~2_combout\ & ((\b2v_inst|LessThan0~4_combout\) # (!\b2v_inst|LessThan38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan38~0_combout\,
	datab => \b2v_inst|LessThan1~4_combout\,
	datac => \b2v_inst|LessThan0~4_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X45_Y24_N20
\b2v_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~7_combout\ = (!\b2v_inst|clk_count\(27) & (\b2v_inst|LessThan0~5_combout\ & (!\b2v_inst|clk_count\(29) & !\b2v_inst|clk_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|clk_count\(27),
	datab => \b2v_inst|LessThan0~5_combout\,
	datac => \b2v_inst|clk_count\(29),
	datad => \b2v_inst|clk_count\(28),
	combout => \b2v_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X44_Y25_N10
\b2v_inst|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~8_combout\ = (\b2v_inst|comb~7_combout\) # ((\b2v_inst|LessThan0~7_combout\) # (!\b2v_inst|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|comb~7_combout\,
	datac => \b2v_inst|LessThan2~3_combout\,
	datad => \b2v_inst|LessThan0~7_combout\,
	combout => \b2v_inst|comb~8_combout\);

-- Location: LCCOMB_X44_Y25_N6
\b2v_inst|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~5_combout\ = (\b2v_inst|LessThan0~7_combout\) # ((\b2v_inst|comb~4_combout\ & (!\b2v_inst|LessThan2~3_combout\ & \b2v_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|comb~4_combout\,
	datab => \b2v_inst|LessThan2~3_combout\,
	datac => \b2v_inst|Equal0~2_combout\,
	datad => \b2v_inst|LessThan0~7_combout\,
	combout => \b2v_inst|comb~5_combout\);

-- Location: LCCOMB_X48_Y25_N8
\b2v_inst|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|comb~6_combout\ = (\b2v_inst|clk_count\(31)) # ((\b2v_inst|comb~5_combout\ & !\b2v_inst|clk_count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|clk_count\(31),
	datac => \b2v_inst|comb~5_combout\,
	datad => \b2v_inst|clk_count\(30),
	combout => \b2v_inst|comb~6_combout\);

-- Location: LCCOMB_X43_Y25_N0
\b2v_inst|done_poll\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|done_poll~combout\ = (!\b2v_inst|comb~6_combout\ & ((\b2v_inst|done_poll~combout\) # (!\b2v_inst|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|comb~8_combout\,
	datac => \b2v_inst|comb~6_combout\,
	datad => \b2v_inst|done_poll~combout\,
	combout => \b2v_inst|done_poll~combout\);

-- Location: LCFF_X36_Y15_N5
\b2v_inst6|sample_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[2]~10_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(2));

-- Location: LCCOMB_X36_Y15_N6
\b2v_inst6|sample_count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[3]~12_combout\ = (\b2v_inst6|sample_count\(3) & (\b2v_inst6|sample_count[2]~11\ & VCC)) # (!\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count[2]~11\))
-- \b2v_inst6|sample_count[3]~13\ = CARRY((!\b2v_inst6|sample_count\(3) & !\b2v_inst6|sample_count[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datad => VCC,
	cin => \b2v_inst6|sample_count[2]~11\,
	combout => \b2v_inst6|sample_count[3]~12_combout\,
	cout => \b2v_inst6|sample_count[3]~13\);

-- Location: LCCOMB_X36_Y15_N8
\b2v_inst6|sample_count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[4]~14_combout\ = (\b2v_inst6|sample_count\(4) & ((GND) # (!\b2v_inst6|sample_count[3]~13\))) # (!\b2v_inst6|sample_count\(4) & (\b2v_inst6|sample_count[3]~13\ $ (GND)))
-- \b2v_inst6|sample_count[4]~15\ = CARRY((\b2v_inst6|sample_count\(4)) # (!\b2v_inst6|sample_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_count\(4),
	datad => VCC,
	cin => \b2v_inst6|sample_count[3]~13\,
	combout => \b2v_inst6|sample_count[4]~14_combout\,
	cout => \b2v_inst6|sample_count[4]~15\);

-- Location: LCFF_X36_Y15_N9
\b2v_inst6|sample_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[4]~14_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(4));

-- Location: LCCOMB_X36_Y15_N10
\b2v_inst6|sample_count[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[5]~16_combout\ = (\b2v_inst6|sample_count\(5) & (\b2v_inst6|sample_count[4]~15\ $ (GND))) # (!\b2v_inst6|sample_count\(5) & (!\b2v_inst6|sample_count[4]~15\ & VCC))
-- \b2v_inst6|sample_count[5]~17\ = CARRY((\b2v_inst6|sample_count\(5) & !\b2v_inst6|sample_count[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(5),
	datad => VCC,
	cin => \b2v_inst6|sample_count[4]~15\,
	combout => \b2v_inst6|sample_count[5]~16_combout\,
	cout => \b2v_inst6|sample_count[5]~17\);

-- Location: LCCOMB_X36_Y15_N12
\b2v_inst6|sample_count[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[6]~18_combout\ = \b2v_inst6|sample_count\(6) $ (\b2v_inst6|sample_count[5]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_count\(6),
	cin => \b2v_inst6|sample_count[5]~17\,
	combout => \b2v_inst6|sample_count[6]~18_combout\);

-- Location: LCFF_X36_Y15_N13
\b2v_inst6|sample_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[6]~18_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(6));

-- Location: LCFF_X36_Y15_N3
\b2v_inst6|sample_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[1]~8_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(1));

-- Location: LCCOMB_X35_Y15_N30
\b2v_inst6|sample_count[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_count[0]~20_combout\ = \b2v_inst|done_poll~combout\ $ (\b2v_inst6|sample_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|done_poll~combout\,
	datad => \b2v_inst6|sample_count\(0),
	combout => \b2v_inst6|sample_count[0]~20_combout\);

-- Location: LCFF_X36_Y15_N17
\b2v_inst6|sample_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	sdata => \b2v_inst6|sample_count[0]~20_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(0));

-- Location: LCCOMB_X37_Y15_N4
\b2v_inst6|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux20~1_combout\ = (!\b2v_inst6|sample_count\(0) & \b2v_inst6|sample_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_count\(0),
	datad => \b2v_inst6|sample_count\(4),
	combout => \b2v_inst6|Mux20~1_combout\);

-- Location: LCCOMB_X38_Y15_N4
\b2v_inst6|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux20~2_combout\ = (!\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|Mux20~1_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux20~2_combout\);

-- Location: LCFF_X36_Y15_N11
\b2v_inst6|sample_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[5]~16_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(5));

-- Location: LCCOMB_X36_Y15_N28
\b2v_inst6|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal2~0_combout\ = (!\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count\(1) & (!\b2v_inst6|sample_count\(0) & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|sample_count\(0),
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y15_N24
\b2v_inst6|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal2~1_combout\ = (!\b2v_inst6|sample_count\(4) & (!\b2v_inst6|sample_count\(6) & (\b2v_inst6|sample_count\(5) & \b2v_inst6|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(4),
	datab => \b2v_inst6|sample_count\(6),
	datac => \b2v_inst6|sample_count\(5),
	datad => \b2v_inst6|Equal2~0_combout\,
	combout => \b2v_inst6|Equal2~1_combout\);

-- Location: LCCOMB_X37_Y14_N0
\b2v_inst6|count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[1]~7_combout\ = (\b2v_inst6|count\(0) & (\b2v_inst6|count\(1) $ (VCC))) # (!\b2v_inst6|count\(0) & (\b2v_inst6|count\(1) & VCC))
-- \b2v_inst6|count[1]~8\ = CARRY((\b2v_inst6|count\(0) & \b2v_inst6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(0),
	datab => \b2v_inst6|count\(1),
	datad => VCC,
	combout => \b2v_inst6|count[1]~7_combout\,
	cout => \b2v_inst6|count[1]~8\);

-- Location: LCCOMB_X37_Y14_N30
\b2v_inst6|count_enable~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count_enable~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst6|count_enable~feeder_combout\);

-- Location: LCCOMB_X35_Y14_N24
\b2v_inst6|count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[0]~21_combout\ = !\b2v_inst6|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst6|count\(0),
	combout => \b2v_inst6|count[0]~21_combout\);

-- Location: LCFF_X36_Y14_N19
\b2v_inst6|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \b2v_inst6|count[0]~21_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(0));

-- Location: LCCOMB_X37_Y14_N10
\b2v_inst6|count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[6]~17_combout\ = (\b2v_inst6|count\(6) & (!\b2v_inst6|count[5]~16\)) # (!\b2v_inst6|count\(6) & ((\b2v_inst6|count[5]~16\) # (GND)))
-- \b2v_inst6|count[6]~18\ = CARRY((!\b2v_inst6|count[5]~16\) # (!\b2v_inst6|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(6),
	datad => VCC,
	cin => \b2v_inst6|count[5]~16\,
	combout => \b2v_inst6|count[6]~17_combout\,
	cout => \b2v_inst6|count[6]~18\);

-- Location: LCFF_X37_Y14_N11
\b2v_inst6|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[6]~17_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(6));

-- Location: LCCOMB_X37_Y14_N8
\b2v_inst6|count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[5]~15_combout\ = (\b2v_inst6|count\(5) & (\b2v_inst6|count[4]~14\ $ (GND))) # (!\b2v_inst6|count\(5) & (!\b2v_inst6|count[4]~14\ & VCC))
-- \b2v_inst6|count[5]~16\ = CARRY((\b2v_inst6|count\(5) & !\b2v_inst6|count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(5),
	datad => VCC,
	cin => \b2v_inst6|count[4]~14\,
	combout => \b2v_inst6|count[5]~15_combout\,
	cout => \b2v_inst6|count[5]~16\);

-- Location: LCFF_X37_Y14_N9
\b2v_inst6|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[5]~15_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(5));

-- Location: LCCOMB_X37_Y14_N18
\b2v_inst6|Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux43~0_combout\ = (\b2v_inst6|count\(1) & (!\b2v_inst6|count\(3) & !\b2v_inst6|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(1),
	datac => \b2v_inst6|count\(3),
	datad => \b2v_inst6|count\(5),
	combout => \b2v_inst6|Mux43~0_combout\);

-- Location: LCCOMB_X37_Y14_N26
\b2v_inst6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal0~0_combout\ = (!\b2v_inst6|count\(4) & (\b2v_inst6|count\(0) & (\b2v_inst6|count\(6) & \b2v_inst6|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(4),
	datab => \b2v_inst6|count\(0),
	datac => \b2v_inst6|count\(6),
	datad => \b2v_inst6|Mux43~0_combout\,
	combout => \b2v_inst6|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y14_N24
\b2v_inst6|count_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count_enable~0_combout\ = ((\b2v_inst6|count\(7) & (\b2v_inst6|count\(2) & \b2v_inst6|Equal0~0_combout\))) # (!\b2v_inst|done_poll~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|done_poll~combout\,
	datab => \b2v_inst6|count\(7),
	datac => \b2v_inst6|count\(2),
	datad => \b2v_inst6|Equal0~0_combout\,
	combout => \b2v_inst6|count_enable~0_combout\);

-- Location: LCFF_X37_Y14_N31
\b2v_inst6|count_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|count_enable~feeder_combout\,
	aclr => \b2v_inst6|count_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count_enable~regout\);

-- Location: LCFF_X37_Y14_N1
\b2v_inst6|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[1]~7_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(1));

-- Location: LCCOMB_X37_Y14_N2
\b2v_inst6|count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[2]~9_combout\ = (\b2v_inst6|count\(2) & (!\b2v_inst6|count[1]~8\)) # (!\b2v_inst6|count\(2) & ((\b2v_inst6|count[1]~8\) # (GND)))
-- \b2v_inst6|count[2]~10\ = CARRY((!\b2v_inst6|count[1]~8\) # (!\b2v_inst6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(2),
	datad => VCC,
	cin => \b2v_inst6|count[1]~8\,
	combout => \b2v_inst6|count[2]~9_combout\,
	cout => \b2v_inst6|count[2]~10\);

-- Location: LCFF_X37_Y14_N3
\b2v_inst6|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[2]~9_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(2));

-- Location: LCCOMB_X37_Y14_N4
\b2v_inst6|count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[3]~11_combout\ = (\b2v_inst6|count\(3) & (\b2v_inst6|count[2]~10\ $ (GND))) # (!\b2v_inst6|count\(3) & (!\b2v_inst6|count[2]~10\ & VCC))
-- \b2v_inst6|count[3]~12\ = CARRY((\b2v_inst6|count\(3) & !\b2v_inst6|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(3),
	datad => VCC,
	cin => \b2v_inst6|count[2]~10\,
	combout => \b2v_inst6|count[3]~11_combout\,
	cout => \b2v_inst6|count[3]~12\);

-- Location: LCFF_X37_Y14_N5
\b2v_inst6|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[3]~11_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(3));

-- Location: LCCOMB_X37_Y14_N6
\b2v_inst6|count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[4]~13_combout\ = (\b2v_inst6|count\(4) & (!\b2v_inst6|count[3]~12\)) # (!\b2v_inst6|count\(4) & ((\b2v_inst6|count[3]~12\) # (GND)))
-- \b2v_inst6|count[4]~14\ = CARRY((!\b2v_inst6|count[3]~12\) # (!\b2v_inst6|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(4),
	datad => VCC,
	cin => \b2v_inst6|count[3]~12\,
	combout => \b2v_inst6|count[4]~13_combout\,
	cout => \b2v_inst6|count[4]~14\);

-- Location: LCCOMB_X37_Y14_N12
\b2v_inst6|count[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|count[7]~19_combout\ = \b2v_inst6|count\(7) $ (!\b2v_inst6|count[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(7),
	cin => \b2v_inst6|count[6]~18\,
	combout => \b2v_inst6|count[7]~19_combout\);

-- Location: LCFF_X37_Y14_N13
\b2v_inst6|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[7]~19_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(7));

-- Location: LCCOMB_X38_Y15_N8
\b2v_inst6|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux20~0_combout\ = (!\b2v_inst6|count\(2) & \b2v_inst6|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datad => \b2v_inst6|count\(7),
	combout => \b2v_inst6|Mux20~0_combout\);

-- Location: LCCOMB_X38_Y15_N12
\b2v_inst6|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux20~3_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux20~2_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux20~2_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux20~3_combout\);

-- Location: LCFF_X37_Y14_N7
\b2v_inst6|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \b2v_inst6|count[4]~13_combout\,
	aclr => \b2v_inst6|ALT_INV_count_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|count\(4));

-- Location: LCCOMB_X36_Y14_N16
\b2v_inst6|Mux43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux43~1_combout\ = (\b2v_inst6|count\(0) & ((\b2v_inst6|count\(2) & (\b2v_inst6|count\(7) & !\b2v_inst6|count\(4))) # (!\b2v_inst6|count\(2) & (!\b2v_inst6|count\(7) & \b2v_inst6|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datab => \b2v_inst6|count\(0),
	datac => \b2v_inst6|count\(7),
	datad => \b2v_inst6|count\(4),
	combout => \b2v_inst6|Mux43~1_combout\);

-- Location: LCCOMB_X36_Y14_N26
\b2v_inst6|Mux43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux43~2_combout\ = (\b2v_inst6|count\(6) & (\b2v_inst6|Mux43~1_combout\ & \b2v_inst6|Mux43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(6),
	datac => \b2v_inst6|Mux43~1_combout\,
	datad => \b2v_inst6|Mux43~0_combout\,
	combout => \b2v_inst6|Mux43~2_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GPIO0_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GPIO0_2,
	combout => \GPIO0_2~combout\);

-- Location: LCCOMB_X36_Y14_N30
\b2v_inst6|Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux42~0_combout\ = (\b2v_inst6|count\(0) & (\GPIO0_2~combout\ & \b2v_inst6|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(0),
	datac => \GPIO0_2~combout\,
	datad => \b2v_inst6|count\(4),
	combout => \b2v_inst6|Mux42~0_combout\);

-- Location: LCCOMB_X35_Y14_N18
\b2v_inst6|Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux42~1_combout\ = (!\b2v_inst6|count\(2) & (!\b2v_inst6|count\(3) & (\b2v_inst6|count\(1) & \b2v_inst6|Mux42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datab => \b2v_inst6|count\(3),
	datac => \b2v_inst6|count\(1),
	datad => \b2v_inst6|Mux42~0_combout\,
	combout => \b2v_inst6|Mux42~1_combout\);

-- Location: LCCOMB_X35_Y14_N30
\b2v_inst6|sample_array[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(9) = (\b2v_inst6|Mux43~2_combout\ & ((\b2v_inst6|Mux42~1_combout\))) # (!\b2v_inst6|Mux43~2_combout\ & (\b2v_inst6|sample_array\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(9),
	datac => \b2v_inst6|Mux43~2_combout\,
	datad => \b2v_inst6|Mux42~1_combout\,
	combout => \b2v_inst6|sample_array\(9));

-- Location: LCCOMB_X38_Y14_N24
\b2v_inst6|Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux39~0_combout\ = (!\b2v_inst6|count\(7) & (\b2v_inst6|count\(3) & (!\b2v_inst6|count\(1) & \b2v_inst6|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(7),
	datab => \b2v_inst6|count\(3),
	datac => \b2v_inst6|count\(1),
	datad => \b2v_inst6|count\(5),
	combout => \b2v_inst6|Mux39~0_combout\);

-- Location: LCCOMB_X38_Y14_N26
\b2v_inst6|Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux37~1_combout\ = (\b2v_inst6|count\(4) & (\b2v_inst6|Mux39~0_combout\ & !\b2v_inst6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|count\(4),
	datac => \b2v_inst6|Mux39~0_combout\,
	datad => \b2v_inst6|count\(2),
	combout => \b2v_inst6|Mux37~1_combout\);

-- Location: LCCOMB_X36_Y14_N20
\b2v_inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux1~0_combout\ = (!\b2v_inst6|count\(3) & !\b2v_inst6|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(3),
	datad => \b2v_inst6|count\(4),
	combout => \b2v_inst6|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y14_N2
\b2v_inst6|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux37~0_combout\ = (\b2v_inst6|Mux40~2_combout\ & (!\b2v_inst6|count\(5) & (\b2v_inst6|Mux1~0_combout\ & \b2v_inst6|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux40~2_combout\,
	datab => \b2v_inst6|count\(5),
	datac => \b2v_inst6|Mux1~0_combout\,
	datad => \b2v_inst6|count\(7),
	combout => \b2v_inst6|Mux37~0_combout\);

-- Location: LCCOMB_X37_Y14_N16
\b2v_inst6|Mux37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux37~2_combout\ = (\b2v_inst6|count\(6) & (\b2v_inst6|count\(0) & ((\b2v_inst6|Mux37~1_combout\) # (\b2v_inst6|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(6),
	datab => \b2v_inst6|count\(0),
	datac => \b2v_inst6|Mux37~1_combout\,
	datad => \b2v_inst6|Mux37~0_combout\,
	combout => \b2v_inst6|Mux37~2_combout\);

-- Location: LCCOMB_X36_Y14_N22
\b2v_inst6|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux36~0_combout\ = (!\b2v_inst6|count\(2) & (\b2v_inst6|count\(3) & (!\b2v_inst6|count\(1) & \b2v_inst6|Mux42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datab => \b2v_inst6|count\(3),
	datac => \b2v_inst6|count\(1),
	datad => \b2v_inst6|Mux42~0_combout\,
	combout => \b2v_inst6|Mux36~0_combout\);

-- Location: LCCOMB_X36_Y14_N14
\b2v_inst6|sample_array[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(6) = (\b2v_inst6|Mux37~2_combout\ & ((\b2v_inst6|Mux36~0_combout\))) # (!\b2v_inst6|Mux37~2_combout\ & (\b2v_inst6|sample_array\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|sample_array\(6),
	datac => \b2v_inst6|Mux37~2_combout\,
	datad => \b2v_inst6|Mux36~0_combout\,
	combout => \b2v_inst6|sample_array\(6));

-- Location: LCCOMB_X36_Y14_N8
\b2v_inst6|Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux41~0_combout\ = (\b2v_inst6|count\(0) & ((\b2v_inst6|count\(4) & (!\b2v_inst6|count\(7) & \b2v_inst6|count\(3))) # (!\b2v_inst6|count\(4) & (\b2v_inst6|count\(7) & !\b2v_inst6|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(4),
	datab => \b2v_inst6|count\(0),
	datac => \b2v_inst6|count\(7),
	datad => \b2v_inst6|count\(3),
	combout => \b2v_inst6|Mux41~0_combout\);

-- Location: LCCOMB_X36_Y14_N12
\b2v_inst6|Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux41~1_combout\ = (\b2v_inst6|Mux40~2_combout\ & (!\b2v_inst6|count\(5) & (\b2v_inst6|Mux41~0_combout\ & \b2v_inst6|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux40~2_combout\,
	datab => \b2v_inst6|count\(5),
	datac => \b2v_inst6|Mux41~0_combout\,
	datad => \b2v_inst6|count\(6),
	combout => \b2v_inst6|Mux41~1_combout\);

-- Location: LCCOMB_X35_Y14_N2
\b2v_inst6|Mux40~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux40~3_combout\ = (\b2v_inst6|count\(2) & (\b2v_inst6|count\(3) & (\b2v_inst6|count\(1) & \b2v_inst6|Mux42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datab => \b2v_inst6|count\(3),
	datac => \b2v_inst6|count\(1),
	datad => \b2v_inst6|Mux42~0_combout\,
	combout => \b2v_inst6|Mux40~3_combout\);

-- Location: LCCOMB_X35_Y14_N20
\b2v_inst6|sample_array[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(8) = (\b2v_inst6|Mux41~1_combout\ & ((\b2v_inst6|Mux40~3_combout\))) # (!\b2v_inst6|Mux41~1_combout\ & (\b2v_inst6|sample_array\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(8),
	datac => \b2v_inst6|Mux41~1_combout\,
	datad => \b2v_inst6|Mux40~3_combout\,
	combout => \b2v_inst6|sample_array\(8));

-- Location: LCCOMB_X36_Y14_N24
\b2v_inst6|Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux38~0_combout\ = (\b2v_inst6|count\(3) & (!\b2v_inst6|count\(1) & (!\b2v_inst6|count\(0) & \GPIO0_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(3),
	datab => \b2v_inst6|count\(1),
	datac => \b2v_inst6|count\(0),
	datad => \GPIO0_2~combout\,
	combout => \b2v_inst6|Mux38~0_combout\);

-- Location: LCCOMB_X35_Y14_N4
\b2v_inst6|Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux38~1_combout\ = (\b2v_inst6|count\(2) & (!\b2v_inst6|count\(4) & \b2v_inst6|Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(2),
	datac => \b2v_inst6|count\(4),
	datad => \b2v_inst6|Mux38~0_combout\,
	combout => \b2v_inst6|Mux38~1_combout\);

-- Location: LCCOMB_X37_Y14_N14
\b2v_inst6|Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux39~1_combout\ = (\b2v_inst6|count\(0) & (((\b2v_inst6|Mux43~0_combout\ & \b2v_inst6|count\(7))))) # (!\b2v_inst6|count\(0) & (\b2v_inst6|Mux39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux39~0_combout\,
	datab => \b2v_inst6|Mux43~0_combout\,
	datac => \b2v_inst6|count\(0),
	datad => \b2v_inst6|count\(7),
	combout => \b2v_inst6|Mux39~1_combout\);

-- Location: LCCOMB_X36_Y14_N28
\b2v_inst6|Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux39~2_combout\ = (!\b2v_inst6|count\(4) & (\b2v_inst6|count\(6) & (\b2v_inst6|Mux39~1_combout\ & \b2v_inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|count\(4),
	datab => \b2v_inst6|count\(6),
	datac => \b2v_inst6|Mux39~1_combout\,
	datad => \b2v_inst6|count\(2),
	combout => \b2v_inst6|Mux39~2_combout\);

-- Location: LCCOMB_X35_Y14_N6
\b2v_inst6|sample_array[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|sample_array\(7) = (\b2v_inst6|Mux39~2_combout\ & ((\b2v_inst6|Mux38~1_combout\))) # (!\b2v_inst6|Mux39~2_combout\ & (\b2v_inst6|sample_array\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(7),
	datac => \b2v_inst6|Mux38~1_combout\,
	datad => \b2v_inst6|Mux39~2_combout\,
	combout => \b2v_inst6|sample_array\(7));

-- Location: LCCOMB_X35_Y14_N0
\b2v_inst6|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Equal1~0_combout\ = (\b2v_inst6|sample_array\(5)) # ((\b2v_inst6|sample_array\(6)) # ((\b2v_inst6|sample_array\(8)) # (\b2v_inst6|sample_array\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(5),
	datab => \b2v_inst6|sample_array\(6),
	datac => \b2v_inst6|sample_array\(8),
	datad => \b2v_inst6|sample_array\(7),
	combout => \b2v_inst6|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y15_N26
\b2v_inst6|data_temp[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp[30]~0_combout\ = (\b2v_inst6|sample_count\(5) & (!\b2v_inst6|sample_count\(6) & (!\b2v_inst6|sample_count\(4) & \b2v_inst6|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(5),
	datab => \b2v_inst6|sample_count\(6),
	datac => \b2v_inst6|sample_count\(4),
	datad => \b2v_inst6|Equal2~0_combout\,
	combout => \b2v_inst6|data_temp[30]~0_combout\);

-- Location: LCCOMB_X36_Y15_N18
\b2v_inst6|data_temp[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp[30]~1_combout\ = (!\b2v_inst6|data_temp[30]~0_combout\ & ((\b2v_inst6|sample_array\(10)) # ((\b2v_inst6|sample_array\(9)) # (\b2v_inst6|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_array\(10),
	datab => \b2v_inst6|sample_array\(9),
	datac => \b2v_inst6|Equal1~0_combout\,
	datad => \b2v_inst6|data_temp[30]~0_combout\,
	combout => \b2v_inst6|data_temp[30]~1_combout\);

-- Location: LCCOMB_X37_Y15_N2
\b2v_inst6|data_temp[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(16) = (\b2v_inst6|Mux20~3_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux20~3_combout\ & (\b2v_inst6|data_temp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(16),
	datac => \b2v_inst6|Mux20~3_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(16));

-- Location: LCFF_X36_Y15_N7
\b2v_inst6|sample_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_GPIO0_2~combout\,
	datain => \b2v_inst6|sample_count[3]~12_combout\,
	aclr => \b2v_inst6|sample_count\(6),
	ena => \b2v_inst|done_poll~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst6|sample_count\(3));

-- Location: LCCOMB_X36_Y15_N30
\b2v_inst6|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux35~0_combout\ = (\b2v_inst6|sample_count\(0) & \b2v_inst6|sample_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(0),
	datac => \b2v_inst6|sample_count\(4),
	combout => \b2v_inst6|Mux35~0_combout\);

-- Location: LCCOMB_X37_Y15_N6
\b2v_inst6|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux21~0_combout\ = (!\b2v_inst6|sample_count\(1) & (!\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(1),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux21~0_combout\);

-- Location: LCCOMB_X38_Y15_N10
\b2v_inst6|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux21~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Equal2~1_combout\,
	datac => \b2v_inst6|Mux21~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux21~1_combout\);

-- Location: LCCOMB_X37_Y15_N30
\b2v_inst6|data_temp[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(17) = (\b2v_inst6|Mux21~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux21~1_combout\ & (\b2v_inst6|data_temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(17),
	datac => \b2v_inst6|Mux21~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(17));

-- Location: LCCOMB_X38_Y15_N18
\b2v_inst6|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux22~0_combout\ = (!\b2v_inst6|sample_count\(3) & (\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|Mux20~1_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux22~0_combout\);

-- Location: LCCOMB_X38_Y15_N0
\b2v_inst6|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux22~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux22~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux22~0_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux22~1_combout\);

-- Location: LCCOMB_X37_Y15_N18
\b2v_inst6|data_temp[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(18) = (\b2v_inst6|Mux22~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux22~1_combout\ & (\b2v_inst6|data_temp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(18),
	datac => \b2v_inst6|Mux22~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(18));

-- Location: LCCOMB_X35_Y15_N0
\b2v_inst6|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux23~0_combout\ = (!\b2v_inst6|sample_count\(2) & (!\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & \b2v_inst6|sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(2),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(1),
	combout => \b2v_inst6|Mux23~0_combout\);

-- Location: LCCOMB_X35_Y15_N14
\b2v_inst6|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux23~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal2~1_combout\,
	datab => \b2v_inst6|Mux23~0_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux23~1_combout\);

-- Location: LCCOMB_X35_Y15_N10
\b2v_inst6|data_temp[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(19) = (\b2v_inst6|Mux23~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux23~1_combout\ & (\b2v_inst6|data_temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|data_temp\(19),
	datac => \b2v_inst6|Mux23~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(19));

-- Location: LCCOMB_X38_Y15_N22
\b2v_inst6|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux24~0_combout\ = (!\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & \b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|Mux20~1_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux24~0_combout\);

-- Location: LCCOMB_X38_Y15_N16
\b2v_inst6|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux24~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux24~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux24~0_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux24~1_combout\);

-- Location: LCCOMB_X37_Y15_N8
\b2v_inst6|data_temp[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(20) = (\b2v_inst6|Mux24~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux24~1_combout\ & (\b2v_inst6|data_temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(20),
	datac => \b2v_inst6|Mux24~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(20));

-- Location: LCCOMB_X37_Y15_N26
\b2v_inst6|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux25~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux25~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux25~0_combout\,
	datab => \b2v_inst6|Equal2~1_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux25~1_combout\);

-- Location: LCCOMB_X36_Y15_N14
\b2v_inst6|data_temp[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(21) = (\b2v_inst6|Mux25~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux25~1_combout\ & (\b2v_inst6|data_temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(21),
	datac => \b2v_inst6|Mux25~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(21));

-- Location: LCCOMB_X38_Y15_N2
\b2v_inst6|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux26~0_combout\ = (!\b2v_inst6|sample_count\(3) & (\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & \b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|Mux20~1_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux26~0_combout\);

-- Location: LCCOMB_X38_Y15_N14
\b2v_inst6|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux26~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux26~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux26~0_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux26~1_combout\);

-- Location: LCCOMB_X37_Y15_N28
\b2v_inst6|data_temp[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(22) = (\b2v_inst6|Mux26~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux26~1_combout\ & (\b2v_inst6|data_temp\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(22),
	datac => \b2v_inst6|Mux26~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(22));

-- Location: LCCOMB_X36_Y15_N22
\b2v_inst6|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux27~0_combout\ = (\b2v_inst6|sample_count\(2) & (\b2v_inst6|Mux35~0_combout\ & (\b2v_inst6|sample_count\(1) & !\b2v_inst6|sample_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(2),
	datab => \b2v_inst6|Mux35~0_combout\,
	datac => \b2v_inst6|sample_count\(1),
	datad => \b2v_inst6|sample_count\(3),
	combout => \b2v_inst6|Mux27~0_combout\);

-- Location: LCCOMB_X37_Y15_N10
\b2v_inst6|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux27~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux27~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux27~0_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux27~1_combout\);

-- Location: LCCOMB_X37_Y15_N24
\b2v_inst6|data_temp[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(23) = (\b2v_inst6|Mux27~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux27~1_combout\ & (\b2v_inst6|data_temp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux27~1_combout\,
	datac => \b2v_inst6|data_temp\(23),
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(23));

-- Location: LCCOMB_X38_Y15_N28
\b2v_inst6|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux28~0_combout\ = (\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count\(1) & (\b2v_inst6|Mux20~1_combout\ & !\b2v_inst6|sample_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(1),
	datac => \b2v_inst6|Mux20~1_combout\,
	datad => \b2v_inst6|sample_count\(2),
	combout => \b2v_inst6|Mux28~0_combout\);

-- Location: LCCOMB_X38_Y15_N26
\b2v_inst6|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux28~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux28~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal0~0_combout\,
	datab => \b2v_inst6|Mux28~0_combout\,
	datac => \b2v_inst6|Equal2~1_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux28~1_combout\);

-- Location: LCCOMB_X37_Y15_N14
\b2v_inst6|data_temp[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(24) = (\b2v_inst6|Mux28~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux28~1_combout\ & (\b2v_inst6|data_temp\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(24),
	datac => \b2v_inst6|Mux28~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(24));

-- Location: LCCOMB_X35_Y15_N4
\b2v_inst6|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux29~0_combout\ = (!\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & !\b2v_inst6|sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(2),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(1),
	combout => \b2v_inst6|Mux29~0_combout\);

-- Location: LCCOMB_X35_Y15_N20
\b2v_inst6|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux29~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal2~1_combout\,
	datab => \b2v_inst6|Mux29~0_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux29~1_combout\);

-- Location: LCCOMB_X35_Y15_N28
\b2v_inst6|data_temp[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(25) = (\b2v_inst6|Mux29~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux29~1_combout\ & (\b2v_inst6|data_temp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(25),
	datac => \b2v_inst6|Mux29~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(25));

-- Location: LCCOMB_X37_Y15_N16
\b2v_inst6|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux30~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux30~0_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux30~0_combout\,
	datab => \b2v_inst6|Equal2~1_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux30~1_combout\);

-- Location: LCCOMB_X36_Y15_N20
\b2v_inst6|data_temp[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(26) = (\b2v_inst6|Mux30~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux30~1_combout\ & (\b2v_inst6|data_temp\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|data_temp\(26),
	datac => \b2v_inst6|Mux30~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(26));

-- Location: LCCOMB_X37_Y15_N0
\b2v_inst6|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux31~0_combout\ = (\b2v_inst6|sample_count\(3) & (!\b2v_inst6|sample_count\(2) & (\b2v_inst6|Mux35~0_combout\ & \b2v_inst6|sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(3),
	datab => \b2v_inst6|sample_count\(2),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(1),
	combout => \b2v_inst6|Mux31~0_combout\);

-- Location: LCCOMB_X38_Y15_N6
\b2v_inst6|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux31~1_combout\ = (\b2v_inst6|Mux20~0_combout\ & (\b2v_inst6|Equal0~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal2~1_combout\,
	datab => \b2v_inst6|Mux20~0_combout\,
	datac => \b2v_inst6|Mux31~0_combout\,
	datad => \b2v_inst6|Equal0~0_combout\,
	combout => \b2v_inst6|Mux31~1_combout\);

-- Location: LCCOMB_X35_Y15_N18
\b2v_inst6|data_temp[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(27) = (\b2v_inst6|Mux31~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux31~1_combout\ & (\b2v_inst6|data_temp\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(27),
	datac => \b2v_inst6|Mux31~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(27));

-- Location: LCCOMB_X38_Y15_N30
\b2v_inst6|Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux32~0_combout\ = (!\b2v_inst6|sample_count\(1) & (\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count\(3) & \b2v_inst6|Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(1),
	datab => \b2v_inst6|sample_count\(2),
	datac => \b2v_inst6|sample_count\(3),
	datad => \b2v_inst6|Mux20~1_combout\,
	combout => \b2v_inst6|Mux32~0_combout\);

-- Location: LCCOMB_X35_Y15_N8
\b2v_inst6|Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux32~1_combout\ = (\b2v_inst6|Mux20~0_combout\ & (\b2v_inst6|Equal0~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux20~0_combout\,
	datab => \b2v_inst6|Equal2~1_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux32~0_combout\,
	combout => \b2v_inst6|Mux32~1_combout\);

-- Location: LCCOMB_X35_Y15_N26
\b2v_inst6|data_temp[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(28) = (\b2v_inst6|Mux32~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux32~1_combout\ & (\b2v_inst6|data_temp\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(28),
	datac => \b2v_inst6|Mux32~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(28));

-- Location: LCCOMB_X35_Y15_N2
\b2v_inst6|Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux33~0_combout\ = (\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count\(3) & (\b2v_inst6|Mux35~0_combout\ & !\b2v_inst6|sample_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(2),
	datab => \b2v_inst6|sample_count\(3),
	datac => \b2v_inst6|Mux35~0_combout\,
	datad => \b2v_inst6|sample_count\(1),
	combout => \b2v_inst6|Mux33~0_combout\);

-- Location: LCCOMB_X35_Y15_N24
\b2v_inst6|Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux33~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal2~1_combout\,
	datab => \b2v_inst6|Mux33~0_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux33~1_combout\);

-- Location: LCCOMB_X35_Y15_N22
\b2v_inst6|data_temp[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(29) = (\b2v_inst6|Mux33~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux33~1_combout\ & (\b2v_inst6|data_temp\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|data_temp\(29),
	datac => \b2v_inst6|Mux33~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(29));

-- Location: LCCOMB_X38_Y15_N20
\b2v_inst6|Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux34~0_combout\ = (\b2v_inst6|sample_count\(1) & (\b2v_inst6|sample_count\(2) & (\b2v_inst6|sample_count\(3) & \b2v_inst6|Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|sample_count\(1),
	datab => \b2v_inst6|sample_count\(2),
	datac => \b2v_inst6|sample_count\(3),
	datad => \b2v_inst6|Mux20~1_combout\,
	combout => \b2v_inst6|Mux34~0_combout\);

-- Location: LCCOMB_X37_Y15_N22
\b2v_inst6|Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux34~1_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Equal2~1_combout\) # (\b2v_inst6|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Equal2~1_combout\,
	datab => \b2v_inst6|Mux34~0_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux34~1_combout\);

-- Location: LCCOMB_X36_Y15_N16
\b2v_inst6|data_temp[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(30) = (\b2v_inst6|Mux34~1_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux34~1_combout\ & (\b2v_inst6|data_temp\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|data_temp\(30),
	datab => \b2v_inst6|Mux34~1_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(30));

-- Location: LCCOMB_X35_Y15_N16
\b2v_inst6|Mux35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux35~2_combout\ = (\b2v_inst6|Equal0~0_combout\ & (\b2v_inst6|Mux20~0_combout\ & ((\b2v_inst6|Mux35~1_combout\) # (\b2v_inst6|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Mux35~1_combout\,
	datab => \b2v_inst6|Equal2~1_combout\,
	datac => \b2v_inst6|Equal0~0_combout\,
	datad => \b2v_inst6|Mux20~0_combout\,
	combout => \b2v_inst6|Mux35~2_combout\);

-- Location: LCCOMB_X35_Y15_N6
\b2v_inst6|data_temp[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst6|data_temp\(31) = (\b2v_inst6|Mux35~2_combout\ & ((\b2v_inst6|data_temp[30]~1_combout\))) # (!\b2v_inst6|Mux35~2_combout\ & (\b2v_inst6|data_temp\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|data_temp\(31),
	datac => \b2v_inst6|Mux35~2_combout\,
	datad => \b2v_inst6|data_temp[30]~1_combout\,
	combout => \b2v_inst6|data_temp\(31));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_01~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|ALT_INV_signal_out_321~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_01);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PB0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PB0);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst6|data_temp\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));
END structure;


