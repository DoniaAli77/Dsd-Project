-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/06/2019 16:21:56"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Balls IS
    PORT (
	p1 : IN std_logic;
	p2 : IN std_logic;
	c1 : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	leds : BUFFER std_logic_vector(1 DOWNTO 0);
	timer0 : BUFFER std_logic_vector(6 DOWNTO 0);
	timer1 : BUFFER std_logic_vector(6 DOWNTO 0);
	counter_t1 : BUFFER std_logic_vector(13 DOWNTO 0);
	counter_t2 : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END Balls;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer0[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer1[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t1[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_t2[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Balls IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_leds : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_timer0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_timer1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_counter_t1 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_counter_t2 : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m1|clk_1Hz_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m13|clk_110Hz_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \timer0[0]~output_o\ : std_logic;
SIGNAL \timer0[1]~output_o\ : std_logic;
SIGNAL \timer0[2]~output_o\ : std_logic;
SIGNAL \timer0[3]~output_o\ : std_logic;
SIGNAL \timer0[4]~output_o\ : std_logic;
SIGNAL \timer0[5]~output_o\ : std_logic;
SIGNAL \timer0[6]~output_o\ : std_logic;
SIGNAL \timer1[0]~output_o\ : std_logic;
SIGNAL \timer1[1]~output_o\ : std_logic;
SIGNAL \timer1[2]~output_o\ : std_logic;
SIGNAL \timer1[3]~output_o\ : std_logic;
SIGNAL \timer1[4]~output_o\ : std_logic;
SIGNAL \timer1[5]~output_o\ : std_logic;
SIGNAL \timer1[6]~output_o\ : std_logic;
SIGNAL \counter_t1[0]~output_o\ : std_logic;
SIGNAL \counter_t1[1]~output_o\ : std_logic;
SIGNAL \counter_t1[2]~output_o\ : std_logic;
SIGNAL \counter_t1[3]~output_o\ : std_logic;
SIGNAL \counter_t1[4]~output_o\ : std_logic;
SIGNAL \counter_t1[5]~output_o\ : std_logic;
SIGNAL \counter_t1[6]~output_o\ : std_logic;
SIGNAL \counter_t1[7]~output_o\ : std_logic;
SIGNAL \counter_t1[8]~output_o\ : std_logic;
SIGNAL \counter_t1[9]~output_o\ : std_logic;
SIGNAL \counter_t1[10]~output_o\ : std_logic;
SIGNAL \counter_t1[11]~output_o\ : std_logic;
SIGNAL \counter_t1[12]~output_o\ : std_logic;
SIGNAL \counter_t1[13]~output_o\ : std_logic;
SIGNAL \counter_t2[0]~output_o\ : std_logic;
SIGNAL \counter_t2[1]~output_o\ : std_logic;
SIGNAL \counter_t2[2]~output_o\ : std_logic;
SIGNAL \counter_t2[3]~output_o\ : std_logic;
SIGNAL \counter_t2[4]~output_o\ : std_logic;
SIGNAL \counter_t2[5]~output_o\ : std_logic;
SIGNAL \counter_t2[6]~output_o\ : std_logic;
SIGNAL \counter_t2[7]~output_o\ : std_logic;
SIGNAL \counter_t2[8]~output_o\ : std_logic;
SIGNAL \counter_t2[9]~output_o\ : std_logic;
SIGNAL \counter_t2[10]~output_o\ : std_logic;
SIGNAL \counter_t2[11]~output_o\ : std_logic;
SIGNAL \counter_t2[12]~output_o\ : std_logic;
SIGNAL \counter_t2[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \m13|clockcounter[0]~32_combout\ : std_logic;
SIGNAL \m13|clockcounter[0]~33\ : std_logic;
SIGNAL \m13|clockcounter[1]~34_combout\ : std_logic;
SIGNAL \m13|clockcounter[1]~35\ : std_logic;
SIGNAL \m13|clockcounter[2]~36_combout\ : std_logic;
SIGNAL \m13|clockcounter[2]~37\ : std_logic;
SIGNAL \m13|clockcounter[3]~38_combout\ : std_logic;
SIGNAL \m13|clockcounter[3]~39\ : std_logic;
SIGNAL \m13|clockcounter[4]~40_combout\ : std_logic;
SIGNAL \m13|clockcounter[4]~41\ : std_logic;
SIGNAL \m13|clockcounter[5]~42_combout\ : std_logic;
SIGNAL \m13|clockcounter[5]~43\ : std_logic;
SIGNAL \m13|clockcounter[6]~44_combout\ : std_logic;
SIGNAL \m13|clockcounter[6]~45\ : std_logic;
SIGNAL \m13|clockcounter[7]~46_combout\ : std_logic;
SIGNAL \m13|clockcounter[7]~47\ : std_logic;
SIGNAL \m13|clockcounter[8]~48_combout\ : std_logic;
SIGNAL \m13|clockcounter[8]~49\ : std_logic;
SIGNAL \m13|clockcounter[9]~50_combout\ : std_logic;
SIGNAL \m13|clockcounter[9]~51\ : std_logic;
SIGNAL \m13|clockcounter[10]~52_combout\ : std_logic;
SIGNAL \m13|clockcounter[10]~53\ : std_logic;
SIGNAL \m13|clockcounter[11]~54_combout\ : std_logic;
SIGNAL \m13|clockcounter[11]~55\ : std_logic;
SIGNAL \m13|clockcounter[12]~56_combout\ : std_logic;
SIGNAL \m13|clockcounter[12]~57\ : std_logic;
SIGNAL \m13|clockcounter[13]~58_combout\ : std_logic;
SIGNAL \m13|clockcounter[13]~59\ : std_logic;
SIGNAL \m13|clockcounter[14]~60_combout\ : std_logic;
SIGNAL \m13|clockcounter[14]~61\ : std_logic;
SIGNAL \m13|clockcounter[15]~62_combout\ : std_logic;
SIGNAL \m13|clockcounter[15]~63\ : std_logic;
SIGNAL \m13|clockcounter[16]~64_combout\ : std_logic;
SIGNAL \m13|clockcounter[16]~65\ : std_logic;
SIGNAL \m13|clockcounter[17]~66_combout\ : std_logic;
SIGNAL \m13|clockcounter[17]~67\ : std_logic;
SIGNAL \m13|clockcounter[18]~68_combout\ : std_logic;
SIGNAL \m13|clockcounter[18]~69\ : std_logic;
SIGNAL \m13|clockcounter[19]~70_combout\ : std_logic;
SIGNAL \m13|clockcounter[19]~71\ : std_logic;
SIGNAL \m13|clockcounter[20]~72_combout\ : std_logic;
SIGNAL \m13|clockcounter[20]~73\ : std_logic;
SIGNAL \m13|clockcounter[21]~74_combout\ : std_logic;
SIGNAL \m13|clockcounter[21]~75\ : std_logic;
SIGNAL \m13|clockcounter[22]~76_combout\ : std_logic;
SIGNAL \m13|clockcounter[22]~77\ : std_logic;
SIGNAL \m13|clockcounter[23]~78_combout\ : std_logic;
SIGNAL \m13|LessThan0~5_combout\ : std_logic;
SIGNAL \m13|clockcounter[23]~79\ : std_logic;
SIGNAL \m13|clockcounter[24]~80_combout\ : std_logic;
SIGNAL \m13|clockcounter[24]~81\ : std_logic;
SIGNAL \m13|clockcounter[25]~82_combout\ : std_logic;
SIGNAL \m13|clockcounter[25]~83\ : std_logic;
SIGNAL \m13|clockcounter[26]~84_combout\ : std_logic;
SIGNAL \m13|clockcounter[26]~85\ : std_logic;
SIGNAL \m13|clockcounter[27]~86_combout\ : std_logic;
SIGNAL \m13|clockcounter[27]~87\ : std_logic;
SIGNAL \m13|clockcounter[28]~88_combout\ : std_logic;
SIGNAL \m13|clockcounter[28]~89\ : std_logic;
SIGNAL \m13|clockcounter[29]~90_combout\ : std_logic;
SIGNAL \m13|clockcounter[29]~91\ : std_logic;
SIGNAL \m13|clockcounter[30]~92_combout\ : std_logic;
SIGNAL \m13|clockcounter[30]~93\ : std_logic;
SIGNAL \m13|clockcounter[31]~94_combout\ : std_logic;
SIGNAL \m13|LessThan0~6_combout\ : std_logic;
SIGNAL \m13|LessThan0~7_combout\ : std_logic;
SIGNAL \m13|LessThan0~0_combout\ : std_logic;
SIGNAL \m13|LessThan0~1_combout\ : std_logic;
SIGNAL \m13|LessThan0~2_combout\ : std_logic;
SIGNAL \m13|LessThan0~3_combout\ : std_logic;
SIGNAL \m13|LessThan0~4_combout\ : std_logic;
SIGNAL \m13|LessThan0~8_combout\ : std_logic;
SIGNAL \m13|clk_110Hz_temp~feeder_combout\ : std_logic;
SIGNAL \m13|clk_110Hz_temp~q\ : std_logic;
SIGNAL \m13|clk_110Hz_temp~clkctrl_outclk\ : std_logic;
SIGNAL \m1|clockcounter[0]~32_combout\ : std_logic;
SIGNAL \m1|clockcounter[0]~33\ : std_logic;
SIGNAL \m1|clockcounter[1]~34_combout\ : std_logic;
SIGNAL \m1|clockcounter[1]~35\ : std_logic;
SIGNAL \m1|clockcounter[2]~36_combout\ : std_logic;
SIGNAL \m1|clockcounter[2]~37\ : std_logic;
SIGNAL \m1|clockcounter[3]~38_combout\ : std_logic;
SIGNAL \m1|clockcounter[3]~39\ : std_logic;
SIGNAL \m1|clockcounter[4]~40_combout\ : std_logic;
SIGNAL \m1|clockcounter[4]~41\ : std_logic;
SIGNAL \m1|clockcounter[5]~42_combout\ : std_logic;
SIGNAL \m1|clockcounter[5]~43\ : std_logic;
SIGNAL \m1|clockcounter[6]~44_combout\ : std_logic;
SIGNAL \m1|clockcounter[6]~45\ : std_logic;
SIGNAL \m1|clockcounter[7]~46_combout\ : std_logic;
SIGNAL \m1|clockcounter[7]~47\ : std_logic;
SIGNAL \m1|clockcounter[8]~48_combout\ : std_logic;
SIGNAL \m1|clockcounter[8]~49\ : std_logic;
SIGNAL \m1|clockcounter[9]~50_combout\ : std_logic;
SIGNAL \m1|clockcounter[9]~51\ : std_logic;
SIGNAL \m1|clockcounter[10]~52_combout\ : std_logic;
SIGNAL \m1|clockcounter[10]~53\ : std_logic;
SIGNAL \m1|clockcounter[11]~54_combout\ : std_logic;
SIGNAL \m1|clockcounter[11]~55\ : std_logic;
SIGNAL \m1|clockcounter[12]~56_combout\ : std_logic;
SIGNAL \m1|clockcounter[12]~57\ : std_logic;
SIGNAL \m1|clockcounter[13]~58_combout\ : std_logic;
SIGNAL \m1|clockcounter[13]~59\ : std_logic;
SIGNAL \m1|clockcounter[14]~60_combout\ : std_logic;
SIGNAL \m1|clockcounter[14]~61\ : std_logic;
SIGNAL \m1|clockcounter[15]~62_combout\ : std_logic;
SIGNAL \m1|clockcounter[15]~63\ : std_logic;
SIGNAL \m1|clockcounter[16]~64_combout\ : std_logic;
SIGNAL \m1|clockcounter[16]~65\ : std_logic;
SIGNAL \m1|clockcounter[17]~66_combout\ : std_logic;
SIGNAL \m1|clockcounter[17]~67\ : std_logic;
SIGNAL \m1|clockcounter[18]~68_combout\ : std_logic;
SIGNAL \m1|clockcounter[18]~69\ : std_logic;
SIGNAL \m1|clockcounter[19]~70_combout\ : std_logic;
SIGNAL \m1|clockcounter[19]~71\ : std_logic;
SIGNAL \m1|clockcounter[20]~72_combout\ : std_logic;
SIGNAL \m1|clockcounter[20]~73\ : std_logic;
SIGNAL \m1|clockcounter[21]~74_combout\ : std_logic;
SIGNAL \m1|clockcounter[21]~75\ : std_logic;
SIGNAL \m1|clockcounter[22]~76_combout\ : std_logic;
SIGNAL \m1|clockcounter[22]~77\ : std_logic;
SIGNAL \m1|clockcounter[23]~78_combout\ : std_logic;
SIGNAL \m1|clockcounter[23]~79\ : std_logic;
SIGNAL \m1|clockcounter[24]~80_combout\ : std_logic;
SIGNAL \m1|clockcounter[24]~81\ : std_logic;
SIGNAL \m1|clockcounter[25]~82_combout\ : std_logic;
SIGNAL \m1|clockcounter[25]~83\ : std_logic;
SIGNAL \m1|clockcounter[26]~84_combout\ : std_logic;
SIGNAL \m1|clockcounter[26]~85\ : std_logic;
SIGNAL \m1|clockcounter[27]~86_combout\ : std_logic;
SIGNAL \m1|clockcounter[27]~87\ : std_logic;
SIGNAL \m1|clockcounter[28]~88_combout\ : std_logic;
SIGNAL \m1|clockcounter[28]~89\ : std_logic;
SIGNAL \m1|clockcounter[29]~90_combout\ : std_logic;
SIGNAL \m1|clockcounter[29]~91\ : std_logic;
SIGNAL \m1|clockcounter[30]~92_combout\ : std_logic;
SIGNAL \m1|clockcounter[30]~93\ : std_logic;
SIGNAL \m1|clockcounter[31]~94_combout\ : std_logic;
SIGNAL \m1|LessThan0~0_combout\ : std_logic;
SIGNAL \m1|LessThan0~1_combout\ : std_logic;
SIGNAL \m1|LessThan0~2_combout\ : std_logic;
SIGNAL \m1|LessThan0~3_combout\ : std_logic;
SIGNAL \m1|LessThan0~4_combout\ : std_logic;
SIGNAL \m1|LessThan0~5_combout\ : std_logic;
SIGNAL \m1|LessThan0~6_combout\ : std_logic;
SIGNAL \m1|LessThan0~7_combout\ : std_logic;
SIGNAL \m1|LessThan0~8_combout\ : std_logic;
SIGNAL \m1|clk_1Hz_temp~feeder_combout\ : std_logic;
SIGNAL \m1|clk_1Hz_temp~q\ : std_logic;
SIGNAL \m1|clk_1Hz_temp~clkctrl_outclk\ : std_logic;
SIGNAL \m2|m[1]~31_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \m2|m[0]~35_combout\ : std_logic;
SIGNAL \m2|process_0~0_combout\ : std_logic;
SIGNAL \m2|process_0~1_combout\ : std_logic;
SIGNAL \m2|process_0~3_combout\ : std_logic;
SIGNAL \m2|process_0~2_combout\ : std_logic;
SIGNAL \m2|process_0~4_combout\ : std_logic;
SIGNAL \m2|m[0]~36_combout\ : std_logic;
SIGNAL \m2|m[1]~32\ : std_logic;
SIGNAL \m2|m[2]~33_combout\ : std_logic;
SIGNAL \m2|m[2]~34\ : std_logic;
SIGNAL \m2|m[3]~37_combout\ : std_logic;
SIGNAL \m2|m[3]~38\ : std_logic;
SIGNAL \m2|m[4]~39_combout\ : std_logic;
SIGNAL \m2|m[4]~40\ : std_logic;
SIGNAL \m2|m[5]~41_combout\ : std_logic;
SIGNAL \m2|m[5]~42\ : std_logic;
SIGNAL \m2|m[6]~43_combout\ : std_logic;
SIGNAL \m2|m[6]~44\ : std_logic;
SIGNAL \m2|m[7]~45_combout\ : std_logic;
SIGNAL \m2|m[7]~46\ : std_logic;
SIGNAL \m2|m[8]~47_combout\ : std_logic;
SIGNAL \m2|m[8]~48\ : std_logic;
SIGNAL \m2|m[9]~49_combout\ : std_logic;
SIGNAL \m2|m[9]~50\ : std_logic;
SIGNAL \m2|m[10]~51_combout\ : std_logic;
SIGNAL \m2|m[10]~52\ : std_logic;
SIGNAL \m2|m[11]~53_combout\ : std_logic;
SIGNAL \m2|m[11]~54\ : std_logic;
SIGNAL \m2|m[12]~55_combout\ : std_logic;
SIGNAL \m2|m[12]~56\ : std_logic;
SIGNAL \m2|m[13]~57_combout\ : std_logic;
SIGNAL \m2|m[13]~58\ : std_logic;
SIGNAL \m2|m[14]~59_combout\ : std_logic;
SIGNAL \m2|m[14]~60\ : std_logic;
SIGNAL \m2|m[15]~61_combout\ : std_logic;
SIGNAL \m2|m[15]~62\ : std_logic;
SIGNAL \m2|m[16]~63_combout\ : std_logic;
SIGNAL \m2|m[16]~64\ : std_logic;
SIGNAL \m2|m[17]~65_combout\ : std_logic;
SIGNAL \m2|m[17]~66\ : std_logic;
SIGNAL \m2|m[18]~67_combout\ : std_logic;
SIGNAL \m2|m[18]~68\ : std_logic;
SIGNAL \m2|m[19]~69_combout\ : std_logic;
SIGNAL \m2|m[19]~70\ : std_logic;
SIGNAL \m2|m[20]~71_combout\ : std_logic;
SIGNAL \m2|m[20]~72\ : std_logic;
SIGNAL \m2|m[21]~73_combout\ : std_logic;
SIGNAL \m2|m[21]~74\ : std_logic;
SIGNAL \m2|m[22]~75_combout\ : std_logic;
SIGNAL \m2|m[22]~76\ : std_logic;
SIGNAL \m2|m[23]~77_combout\ : std_logic;
SIGNAL \m2|process_0~6_combout\ : std_logic;
SIGNAL \m2|process_0~5_combout\ : std_logic;
SIGNAL \m2|m[23]~78\ : std_logic;
SIGNAL \m2|m[24]~79_combout\ : std_logic;
SIGNAL \m2|m[24]~80\ : std_logic;
SIGNAL \m2|m[25]~81_combout\ : std_logic;
SIGNAL \m2|m[25]~82\ : std_logic;
SIGNAL \m2|m[26]~83_combout\ : std_logic;
SIGNAL \m2|m[26]~84\ : std_logic;
SIGNAL \m2|m[27]~85_combout\ : std_logic;
SIGNAL \m2|process_0~7_combout\ : std_logic;
SIGNAL \m2|m[27]~86\ : std_logic;
SIGNAL \m2|m[28]~87_combout\ : std_logic;
SIGNAL \m2|m[28]~88\ : std_logic;
SIGNAL \m2|m[29]~89_combout\ : std_logic;
SIGNAL \m2|m[29]~90\ : std_logic;
SIGNAL \m2|m[30]~91_combout\ : std_logic;
SIGNAL \m2|m[30]~92\ : std_logic;
SIGNAL \m2|m[31]~93_combout\ : std_logic;
SIGNAL \m2|process_0~8_combout\ : std_logic;
SIGNAL \m2|process_0~9_combout\ : std_logic;
SIGNAL \m2|Add1~5\ : std_logic;
SIGNAL \m2|Add1~6_combout\ : std_logic;
SIGNAL \m2|l[3]~2_combout\ : std_logic;
SIGNAL \m2|Add1~7\ : std_logic;
SIGNAL \m2|Add1~8_combout\ : std_logic;
SIGNAL \m2|Add1~9\ : std_logic;
SIGNAL \m2|Add1~10_combout\ : std_logic;
SIGNAL \m2|Add1~11\ : std_logic;
SIGNAL \m2|Add1~12_combout\ : std_logic;
SIGNAL \m2|Add1~13\ : std_logic;
SIGNAL \m2|Add1~14_combout\ : std_logic;
SIGNAL \m2|Add1~15\ : std_logic;
SIGNAL \m2|Add1~16_combout\ : std_logic;
SIGNAL \m2|Add1~17\ : std_logic;
SIGNAL \m2|Add1~18_combout\ : std_logic;
SIGNAL \m2|Add1~19\ : std_logic;
SIGNAL \m2|Add1~20_combout\ : std_logic;
SIGNAL \m2|Add1~21\ : std_logic;
SIGNAL \m2|Add1~22_combout\ : std_logic;
SIGNAL \m2|Equal1~8_combout\ : std_logic;
SIGNAL \m2|Equal1~9_combout\ : std_logic;
SIGNAL \m2|Add1~23\ : std_logic;
SIGNAL \m2|Add1~24_combout\ : std_logic;
SIGNAL \m2|Add1~25\ : std_logic;
SIGNAL \m2|Add1~26_combout\ : std_logic;
SIGNAL \m2|Add1~27\ : std_logic;
SIGNAL \m2|Add1~28_combout\ : std_logic;
SIGNAL \m2|Add1~29\ : std_logic;
SIGNAL \m2|Add1~30_combout\ : std_logic;
SIGNAL \m2|Add1~31\ : std_logic;
SIGNAL \m2|Add1~32_combout\ : std_logic;
SIGNAL \m2|Add1~33\ : std_logic;
SIGNAL \m2|Add1~34_combout\ : std_logic;
SIGNAL \m2|Add1~35\ : std_logic;
SIGNAL \m2|Add1~36_combout\ : std_logic;
SIGNAL \m2|Equal1~6_combout\ : std_logic;
SIGNAL \m2|Add1~37\ : std_logic;
SIGNAL \m2|Add1~38_combout\ : std_logic;
SIGNAL \m2|Equal1~5_combout\ : std_logic;
SIGNAL \m2|Equal1~7_combout\ : std_logic;
SIGNAL \m2|Add1~39\ : std_logic;
SIGNAL \m2|Add1~40_combout\ : std_logic;
SIGNAL \m2|Add1~41\ : std_logic;
SIGNAL \m2|Add1~42_combout\ : std_logic;
SIGNAL \m2|Add1~43\ : std_logic;
SIGNAL \m2|Add1~44_combout\ : std_logic;
SIGNAL \m2|Add1~45\ : std_logic;
SIGNAL \m2|Add1~46_combout\ : std_logic;
SIGNAL \m2|Add1~47\ : std_logic;
SIGNAL \m2|Add1~48_combout\ : std_logic;
SIGNAL \m2|Add1~49\ : std_logic;
SIGNAL \m2|Add1~50_combout\ : std_logic;
SIGNAL \m2|Add1~51\ : std_logic;
SIGNAL \m2|Add1~52_combout\ : std_logic;
SIGNAL \m2|Add1~53\ : std_logic;
SIGNAL \m2|Add1~54_combout\ : std_logic;
SIGNAL \m2|Add1~55\ : std_logic;
SIGNAL \m2|Add1~56_combout\ : std_logic;
SIGNAL \m2|Add1~57\ : std_logic;
SIGNAL \m2|Add1~58_combout\ : std_logic;
SIGNAL \m2|Add1~59\ : std_logic;
SIGNAL \m2|Add1~60_combout\ : std_logic;
SIGNAL \m2|Add1~61\ : std_logic;
SIGNAL \m2|Add1~62_combout\ : std_logic;
SIGNAL \m2|Equal1~1_combout\ : std_logic;
SIGNAL \m2|Add1~0_combout\ : std_logic;
SIGNAL \m2|l[0]~0_combout\ : std_logic;
SIGNAL \m2|Equal1~0_combout\ : std_logic;
SIGNAL \m2|Equal1~2_combout\ : std_logic;
SIGNAL \m2|Equal1~3_combout\ : std_logic;
SIGNAL \m2|Equal1~4_combout\ : std_logic;
SIGNAL \m2|Equal1~10_combout\ : std_logic;
SIGNAL \m2|Add1~1\ : std_logic;
SIGNAL \m2|Add1~2_combout\ : std_logic;
SIGNAL \m2|l[1]~1_combout\ : std_logic;
SIGNAL \m2|Add1~3\ : std_logic;
SIGNAL \m2|Add1~4_combout\ : std_logic;
SIGNAL \m3|process_0~1_combout\ : std_logic;
SIGNAL \m3|process_0~0_combout\ : std_logic;
SIGNAL \m3|process_0~2_combout\ : std_logic;
SIGNAL \m3|m2r[1]~37_combout\ : std_logic;
SIGNAL \p1~input_o\ : std_logic;
SIGNAL \p2~input_o\ : std_logic;
SIGNAL \m3|point2[0]~31_combout\ : std_logic;
SIGNAL \m3|f2~0_combout\ : std_logic;
SIGNAL \m3|f2~1_combout\ : std_logic;
SIGNAL \m3|f2~q\ : std_logic;
SIGNAL \m3|m2r~45_combout\ : std_logic;
SIGNAL \m3|f1~0_combout\ : std_logic;
SIGNAL \m3|f1~q\ : std_logic;
SIGNAL \m3|process_0~3_combout\ : std_logic;
SIGNAL \m3|point2[0]~99_combout\ : std_logic;
SIGNAL \m3|Add2~0_combout\ : std_logic;
SIGNAL \m3|point2[1]~33_cout\ : std_logic;
SIGNAL \m3|point2[1]~34_combout\ : std_logic;
SIGNAL \m3|LessThan7~0_combout\ : std_logic;
SIGNAL \m3|LessThan7~1_combout\ : std_logic;
SIGNAL \m3|LessThan7~7_combout\ : std_logic;
SIGNAL \m3|LessThan7~8_combout\ : std_logic;
SIGNAL \m3|LessThan7~3_combout\ : std_logic;
SIGNAL \m3|LessThan7~2_combout\ : std_logic;
SIGNAL \m3|LessThan7~4_combout\ : std_logic;
SIGNAL \m3|LessThan7~5_combout\ : std_logic;
SIGNAL \m3|LessThan7~6_combout\ : std_logic;
SIGNAL \m3|LessThan7~9_combout\ : std_logic;
SIGNAL \m3|LessThan7~10_combout\ : std_logic;
SIGNAL \m3|point2[31]~96_combout\ : std_logic;
SIGNAL \m3|point2[31]~97_combout\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \m3|point2[31]~98_combout\ : std_logic;
SIGNAL \m3|point2[1]~35\ : std_logic;
SIGNAL \m3|point2[2]~36_combout\ : std_logic;
SIGNAL \m3|point2[2]~37\ : std_logic;
SIGNAL \m3|point2[3]~38_combout\ : std_logic;
SIGNAL \m3|point2[3]~39\ : std_logic;
SIGNAL \m3|point2[4]~40_combout\ : std_logic;
SIGNAL \m3|point2[4]~41\ : std_logic;
SIGNAL \m3|point2[5]~42_combout\ : std_logic;
SIGNAL \m3|point2[5]~43\ : std_logic;
SIGNAL \m3|point2[6]~44_combout\ : std_logic;
SIGNAL \m3|point2[6]~45\ : std_logic;
SIGNAL \m3|point2[7]~46_combout\ : std_logic;
SIGNAL \m3|point2[7]~47\ : std_logic;
SIGNAL \m3|point2[8]~48_combout\ : std_logic;
SIGNAL \m3|point2[8]~49\ : std_logic;
SIGNAL \m3|point2[9]~50_combout\ : std_logic;
SIGNAL \m3|point2[9]~51\ : std_logic;
SIGNAL \m3|point2[10]~52_combout\ : std_logic;
SIGNAL \m3|point2[10]~53\ : std_logic;
SIGNAL \m3|point2[11]~54_combout\ : std_logic;
SIGNAL \m3|point2[11]~55\ : std_logic;
SIGNAL \m3|point2[12]~56_combout\ : std_logic;
SIGNAL \m3|point2[12]~57\ : std_logic;
SIGNAL \m3|point2[13]~58_combout\ : std_logic;
SIGNAL \m3|point2[13]~59\ : std_logic;
SIGNAL \m3|point2[14]~60_combout\ : std_logic;
SIGNAL \m3|point2[14]~61\ : std_logic;
SIGNAL \m3|point2[15]~62_combout\ : std_logic;
SIGNAL \m3|point2[15]~63\ : std_logic;
SIGNAL \m3|point2[16]~64_combout\ : std_logic;
SIGNAL \m3|point2[16]~65\ : std_logic;
SIGNAL \m3|point2[17]~66_combout\ : std_logic;
SIGNAL \m3|point2[17]~67\ : std_logic;
SIGNAL \m3|point2[18]~68_combout\ : std_logic;
SIGNAL \m3|point2[18]~69\ : std_logic;
SIGNAL \m3|point2[19]~70_combout\ : std_logic;
SIGNAL \m3|point2[19]~71\ : std_logic;
SIGNAL \m3|point2[20]~72_combout\ : std_logic;
SIGNAL \m3|point2[20]~73\ : std_logic;
SIGNAL \m3|point2[21]~74_combout\ : std_logic;
SIGNAL \m3|point2[21]~75\ : std_logic;
SIGNAL \m3|point2[22]~76_combout\ : std_logic;
SIGNAL \m3|point2[22]~77\ : std_logic;
SIGNAL \m3|point2[23]~78_combout\ : std_logic;
SIGNAL \m3|point2[23]~79\ : std_logic;
SIGNAL \m3|point2[24]~80_combout\ : std_logic;
SIGNAL \m3|point2[24]~81\ : std_logic;
SIGNAL \m3|point2[25]~82_combout\ : std_logic;
SIGNAL \m3|point2[25]~83\ : std_logic;
SIGNAL \m3|point2[26]~84_combout\ : std_logic;
SIGNAL \m3|point2[26]~85\ : std_logic;
SIGNAL \m3|point2[27]~86_combout\ : std_logic;
SIGNAL \m3|point2[27]~87\ : std_logic;
SIGNAL \m3|point2[28]~88_combout\ : std_logic;
SIGNAL \m3|point2[28]~89\ : std_logic;
SIGNAL \m3|point2[29]~90_combout\ : std_logic;
SIGNAL \m3|point2[29]~91\ : std_logic;
SIGNAL \m3|point2[30]~92_combout\ : std_logic;
SIGNAL \m3|point2[30]~93\ : std_logic;
SIGNAL \m3|point2[31]~94_combout\ : std_logic;
SIGNAL \m3|m2r~34_combout\ : std_logic;
SIGNAL \m3|m2r~32_combout\ : std_logic;
SIGNAL \m3|m2r~33_combout\ : std_logic;
SIGNAL \m3|m2r~35_combout\ : std_logic;
SIGNAL \m3|Add3~0_combout\ : std_logic;
SIGNAL \m3|Equal4~6_combout\ : std_logic;
SIGNAL \m3|Equal4~5_combout\ : std_logic;
SIGNAL \m3|Equal4~7_combout\ : std_logic;
SIGNAL \m3|Equal4~8_combout\ : std_logic;
SIGNAL \m3|Equal4~2_combout\ : std_logic;
SIGNAL \m3|Equal4~3_combout\ : std_logic;
SIGNAL \m3|Equal4~1_combout\ : std_logic;
SIGNAL \m3|Equal4~0_combout\ : std_logic;
SIGNAL \m3|Equal4~4_combout\ : std_logic;
SIGNAL \m3|Equal4~9_combout\ : std_logic;
SIGNAL \m3|m2r~31_combout\ : std_logic;
SIGNAL \m3|m2r~36_combout\ : std_logic;
SIGNAL \m3|Add3~1\ : std_logic;
SIGNAL \m3|Add3~2_combout\ : std_logic;
SIGNAL \m3|m2r[3]~41_combout\ : std_logic;
SIGNAL \m3|m2r[3]~42_combout\ : std_logic;
SIGNAL \m3|m2r[1]~38\ : std_logic;
SIGNAL \m3|m2r[2]~39_combout\ : std_logic;
SIGNAL \m3|Add3~3\ : std_logic;
SIGNAL \m3|Add3~4_combout\ : std_logic;
SIGNAL \m3|m2r[2]~40\ : std_logic;
SIGNAL \m3|m2r[3]~43_combout\ : std_logic;
SIGNAL \m3|Add3~5\ : std_logic;
SIGNAL \m3|Add3~6_combout\ : std_logic;
SIGNAL \m3|m2r[3]~44\ : std_logic;
SIGNAL \m3|m2r[4]~46_combout\ : std_logic;
SIGNAL \m3|Add3~7\ : std_logic;
SIGNAL \m3|Add3~8_combout\ : std_logic;
SIGNAL \m3|m2r[4]~47\ : std_logic;
SIGNAL \m3|m2r[5]~48_combout\ : std_logic;
SIGNAL \m3|Add3~9\ : std_logic;
SIGNAL \m3|Add3~10_combout\ : std_logic;
SIGNAL \m3|m2r[5]~49\ : std_logic;
SIGNAL \m3|m2r[6]~50_combout\ : std_logic;
SIGNAL \m3|Add3~11\ : std_logic;
SIGNAL \m3|Add3~12_combout\ : std_logic;
SIGNAL \m3|m2r[6]~51\ : std_logic;
SIGNAL \m3|m2r[7]~52_combout\ : std_logic;
SIGNAL \m3|Add3~13\ : std_logic;
SIGNAL \m3|Add3~14_combout\ : std_logic;
SIGNAL \m3|m2r[7]~53\ : std_logic;
SIGNAL \m3|m2r[8]~54_combout\ : std_logic;
SIGNAL \m3|Add3~15\ : std_logic;
SIGNAL \m3|Add3~16_combout\ : std_logic;
SIGNAL \m3|m2r[8]~55\ : std_logic;
SIGNAL \m3|m2r[9]~56_combout\ : std_logic;
SIGNAL \m3|Add3~17\ : std_logic;
SIGNAL \m3|Add3~18_combout\ : std_logic;
SIGNAL \m3|m2r[9]~57\ : std_logic;
SIGNAL \m3|m2r[10]~58_combout\ : std_logic;
SIGNAL \m3|Add3~19\ : std_logic;
SIGNAL \m3|Add3~20_combout\ : std_logic;
SIGNAL \m3|m2r[10]~59\ : std_logic;
SIGNAL \m3|m2r[11]~60_combout\ : std_logic;
SIGNAL \m3|Add3~21\ : std_logic;
SIGNAL \m3|Add3~22_combout\ : std_logic;
SIGNAL \m3|m2r[11]~61\ : std_logic;
SIGNAL \m3|m2r[12]~62_combout\ : std_logic;
SIGNAL \m3|Add3~23\ : std_logic;
SIGNAL \m3|Add3~24_combout\ : std_logic;
SIGNAL \m3|m2r[12]~63\ : std_logic;
SIGNAL \m3|m2r[13]~64_combout\ : std_logic;
SIGNAL \m3|Add3~25\ : std_logic;
SIGNAL \m3|Add3~26_combout\ : std_logic;
SIGNAL \m3|m2r[13]~65\ : std_logic;
SIGNAL \m3|m2r[14]~66_combout\ : std_logic;
SIGNAL \m3|Add3~27\ : std_logic;
SIGNAL \m3|Add3~28_combout\ : std_logic;
SIGNAL \m3|m2r[14]~67\ : std_logic;
SIGNAL \m3|m2r[15]~68_combout\ : std_logic;
SIGNAL \m3|Add3~29\ : std_logic;
SIGNAL \m3|Add3~30_combout\ : std_logic;
SIGNAL \m3|m2r[15]~69\ : std_logic;
SIGNAL \m3|m2r[16]~70_combout\ : std_logic;
SIGNAL \m3|Add3~31\ : std_logic;
SIGNAL \m3|Add3~32_combout\ : std_logic;
SIGNAL \m3|m2r[16]~71\ : std_logic;
SIGNAL \m3|m2r[17]~72_combout\ : std_logic;
SIGNAL \m3|Add3~33\ : std_logic;
SIGNAL \m3|Add3~34_combout\ : std_logic;
SIGNAL \m3|m2r[17]~73\ : std_logic;
SIGNAL \m3|m2r[18]~74_combout\ : std_logic;
SIGNAL \m3|Add3~35\ : std_logic;
SIGNAL \m3|Add3~36_combout\ : std_logic;
SIGNAL \m3|m2r[18]~75\ : std_logic;
SIGNAL \m3|m2r[19]~76_combout\ : std_logic;
SIGNAL \m3|Add3~37\ : std_logic;
SIGNAL \m3|Add3~38_combout\ : std_logic;
SIGNAL \m3|m2r[19]~77\ : std_logic;
SIGNAL \m3|m2r[20]~78_combout\ : std_logic;
SIGNAL \m3|Add3~39\ : std_logic;
SIGNAL \m3|Add3~40_combout\ : std_logic;
SIGNAL \m3|m2r[20]~79\ : std_logic;
SIGNAL \m3|m2r[21]~80_combout\ : std_logic;
SIGNAL \m3|Add3~41\ : std_logic;
SIGNAL \m3|Add3~42_combout\ : std_logic;
SIGNAL \m3|m2r[21]~81\ : std_logic;
SIGNAL \m3|m2r[22]~82_combout\ : std_logic;
SIGNAL \m3|Add3~43\ : std_logic;
SIGNAL \m3|Add3~44_combout\ : std_logic;
SIGNAL \m3|m2r[22]~83\ : std_logic;
SIGNAL \m3|m2r[23]~84_combout\ : std_logic;
SIGNAL \m3|Add3~45\ : std_logic;
SIGNAL \m3|Add3~46_combout\ : std_logic;
SIGNAL \m3|m2r[23]~85\ : std_logic;
SIGNAL \m3|m2r[24]~86_combout\ : std_logic;
SIGNAL \m3|Add3~47\ : std_logic;
SIGNAL \m3|Add3~48_combout\ : std_logic;
SIGNAL \m3|m2r[24]~87\ : std_logic;
SIGNAL \m3|m2r[25]~88_combout\ : std_logic;
SIGNAL \m3|Add3~49\ : std_logic;
SIGNAL \m3|Add3~50_combout\ : std_logic;
SIGNAL \m3|m2r[25]~89\ : std_logic;
SIGNAL \m3|m2r[26]~90_combout\ : std_logic;
SIGNAL \m3|Add3~51\ : std_logic;
SIGNAL \m3|Add3~52_combout\ : std_logic;
SIGNAL \m3|m2r[26]~91\ : std_logic;
SIGNAL \m3|m2r[27]~92_combout\ : std_logic;
SIGNAL \m3|Add3~53\ : std_logic;
SIGNAL \m3|Add3~54_combout\ : std_logic;
SIGNAL \m3|m2r[27]~93\ : std_logic;
SIGNAL \m3|m2r[28]~94_combout\ : std_logic;
SIGNAL \m3|Add3~55\ : std_logic;
SIGNAL \m3|Add3~56_combout\ : std_logic;
SIGNAL \m3|m2r[28]~95\ : std_logic;
SIGNAL \m3|m2r[29]~96_combout\ : std_logic;
SIGNAL \m3|Add3~57\ : std_logic;
SIGNAL \m3|Add3~58_combout\ : std_logic;
SIGNAL \m3|m2r[29]~97\ : std_logic;
SIGNAL \m3|m2r[30]~98_combout\ : std_logic;
SIGNAL \m3|Add3~59\ : std_logic;
SIGNAL \m3|Add3~60_combout\ : std_logic;
SIGNAL \m3|m2r[30]~99\ : std_logic;
SIGNAL \m3|m2r[31]~100_combout\ : std_logic;
SIGNAL \m3|Add3~61\ : std_logic;
SIGNAL \m3|Add3~62_combout\ : std_logic;
SIGNAL \m3|m1r[1]~36_combout\ : std_logic;
SIGNAL \m3|Equal3~6_combout\ : std_logic;
SIGNAL \m3|Equal3~5_combout\ : std_logic;
SIGNAL \m3|Equal3~7_combout\ : std_logic;
SIGNAL \m3|Equal3~8_combout\ : std_logic;
SIGNAL \m3|Equal3~2_combout\ : std_logic;
SIGNAL \m3|Equal3~1_combout\ : std_logic;
SIGNAL \m3|Equal3~3_combout\ : std_logic;
SIGNAL \m3|Equal3~0_combout\ : std_logic;
SIGNAL \m3|Equal3~4_combout\ : std_logic;
SIGNAL \m3|Equal3~9_combout\ : std_logic;
SIGNAL \m3|Add1~0_combout\ : std_logic;
SIGNAL \m3|m1r~31_combout\ : std_logic;
SIGNAL \m3|m1r~33_combout\ : std_logic;
SIGNAL \m3|point1[0]~98_combout\ : std_logic;
SIGNAL \m3|Add0~0_combout\ : std_logic;
SIGNAL \m3|point1[1]~34_cout\ : std_logic;
SIGNAL \m3|point1[1]~35_combout\ : std_logic;
SIGNAL \m3|LessThan6~9_combout\ : std_logic;
SIGNAL \m3|LessThan6~6_combout\ : std_logic;
SIGNAL \m3|LessThan6~5_combout\ : std_logic;
SIGNAL \m3|LessThan6~3_combout\ : std_logic;
SIGNAL \m3|LessThan6~1_combout\ : std_logic;
SIGNAL \m3|LessThan6~0_combout\ : std_logic;
SIGNAL \m3|LessThan6~2_combout\ : std_logic;
SIGNAL \m3|LessThan6~4_combout\ : std_logic;
SIGNAL \m3|LessThan6~7_combout\ : std_logic;
SIGNAL \m3|LessThan6~8_combout\ : std_logic;
SIGNAL \m3|m1r~32_combout\ : std_logic;
SIGNAL \m3|point1[31]~32_combout\ : std_logic;
SIGNAL \m3|point1[31]~97_combout\ : std_logic;
SIGNAL \m3|point1[1]~36\ : std_logic;
SIGNAL \m3|point1[2]~37_combout\ : std_logic;
SIGNAL \m3|point1[2]~38\ : std_logic;
SIGNAL \m3|point1[3]~39_combout\ : std_logic;
SIGNAL \m3|point1[3]~40\ : std_logic;
SIGNAL \m3|point1[4]~41_combout\ : std_logic;
SIGNAL \m3|point1[4]~42\ : std_logic;
SIGNAL \m3|point1[5]~43_combout\ : std_logic;
SIGNAL \m3|point1[5]~44\ : std_logic;
SIGNAL \m3|point1[6]~45_combout\ : std_logic;
SIGNAL \m3|point1[6]~46\ : std_logic;
SIGNAL \m3|point1[7]~47_combout\ : std_logic;
SIGNAL \m3|point1[7]~48\ : std_logic;
SIGNAL \m3|point1[8]~49_combout\ : std_logic;
SIGNAL \m3|point1[8]~50\ : std_logic;
SIGNAL \m3|point1[9]~51_combout\ : std_logic;
SIGNAL \m3|point1[9]~52\ : std_logic;
SIGNAL \m3|point1[10]~53_combout\ : std_logic;
SIGNAL \m3|point1[10]~54\ : std_logic;
SIGNAL \m3|point1[11]~55_combout\ : std_logic;
SIGNAL \m3|point1[11]~56\ : std_logic;
SIGNAL \m3|point1[12]~57_combout\ : std_logic;
SIGNAL \m3|point1[12]~58\ : std_logic;
SIGNAL \m3|point1[13]~59_combout\ : std_logic;
SIGNAL \m3|point1[13]~60\ : std_logic;
SIGNAL \m3|point1[14]~61_combout\ : std_logic;
SIGNAL \m3|point1[14]~62\ : std_logic;
SIGNAL \m3|point1[15]~63_combout\ : std_logic;
SIGNAL \m3|point1[15]~64\ : std_logic;
SIGNAL \m3|point1[16]~65_combout\ : std_logic;
SIGNAL \m3|point1[16]~66\ : std_logic;
SIGNAL \m3|point1[17]~67_combout\ : std_logic;
SIGNAL \m3|point1[17]~68\ : std_logic;
SIGNAL \m3|point1[18]~69_combout\ : std_logic;
SIGNAL \m3|point1[18]~70\ : std_logic;
SIGNAL \m3|point1[19]~71_combout\ : std_logic;
SIGNAL \m3|point1[19]~72\ : std_logic;
SIGNAL \m3|point1[20]~73_combout\ : std_logic;
SIGNAL \m3|point1[20]~74\ : std_logic;
SIGNAL \m3|point1[21]~75_combout\ : std_logic;
SIGNAL \m3|point1[21]~76\ : std_logic;
SIGNAL \m3|point1[22]~77_combout\ : std_logic;
SIGNAL \m3|point1[22]~78\ : std_logic;
SIGNAL \m3|point1[23]~79_combout\ : std_logic;
SIGNAL \m3|point1[23]~80\ : std_logic;
SIGNAL \m3|point1[24]~81_combout\ : std_logic;
SIGNAL \m3|point1[24]~82\ : std_logic;
SIGNAL \m3|point1[25]~83_combout\ : std_logic;
SIGNAL \m3|point1[25]~84\ : std_logic;
SIGNAL \m3|point1[26]~85_combout\ : std_logic;
SIGNAL \m3|point1[26]~86\ : std_logic;
SIGNAL \m3|point1[27]~87_combout\ : std_logic;
SIGNAL \m3|point1[27]~88\ : std_logic;
SIGNAL \m3|point1[28]~89_combout\ : std_logic;
SIGNAL \m3|point1[28]~90\ : std_logic;
SIGNAL \m3|point1[29]~91_combout\ : std_logic;
SIGNAL \m3|point1[29]~92\ : std_logic;
SIGNAL \m3|point1[30]~93_combout\ : std_logic;
SIGNAL \m3|point1[30]~94\ : std_logic;
SIGNAL \m3|point1[31]~95_combout\ : std_logic;
SIGNAL \m3|point1[0]~31_combout\ : std_logic;
SIGNAL \m3|m1r~34_combout\ : std_logic;
SIGNAL \m3|m1r~35_combout\ : std_logic;
SIGNAL \m3|Add1~1\ : std_logic;
SIGNAL \m3|Add1~2_combout\ : std_logic;
SIGNAL \m3|m1r[29]~40_combout\ : std_logic;
SIGNAL \m3|m1r[29]~41_combout\ : std_logic;
SIGNAL \m3|m1r[1]~37\ : std_logic;
SIGNAL \m3|m1r[2]~38_combout\ : std_logic;
SIGNAL \m3|Add1~3\ : std_logic;
SIGNAL \m3|Add1~4_combout\ : std_logic;
SIGNAL \m3|m1r[2]~39\ : std_logic;
SIGNAL \m3|m1r[3]~42_combout\ : std_logic;
SIGNAL \m3|Add1~5\ : std_logic;
SIGNAL \m3|Add1~6_combout\ : std_logic;
SIGNAL \m3|m1r[3]~43\ : std_logic;
SIGNAL \m3|m1r[4]~44_combout\ : std_logic;
SIGNAL \m3|Add1~7\ : std_logic;
SIGNAL \m3|Add1~8_combout\ : std_logic;
SIGNAL \m3|m1r[4]~45\ : std_logic;
SIGNAL \m3|m1r[5]~46_combout\ : std_logic;
SIGNAL \m3|Add1~9\ : std_logic;
SIGNAL \m3|Add1~10_combout\ : std_logic;
SIGNAL \m3|m1r[5]~47\ : std_logic;
SIGNAL \m3|m1r[6]~48_combout\ : std_logic;
SIGNAL \m3|Add1~11\ : std_logic;
SIGNAL \m3|Add1~12_combout\ : std_logic;
SIGNAL \m3|m1r[6]~49\ : std_logic;
SIGNAL \m3|m1r[7]~50_combout\ : std_logic;
SIGNAL \m3|Add1~13\ : std_logic;
SIGNAL \m3|Add1~14_combout\ : std_logic;
SIGNAL \m3|m1r[7]~51\ : std_logic;
SIGNAL \m3|m1r[8]~52_combout\ : std_logic;
SIGNAL \m3|Add1~15\ : std_logic;
SIGNAL \m3|Add1~16_combout\ : std_logic;
SIGNAL \m3|m1r[8]~53\ : std_logic;
SIGNAL \m3|m1r[9]~54_combout\ : std_logic;
SIGNAL \m3|Add1~17\ : std_logic;
SIGNAL \m3|Add1~18_combout\ : std_logic;
SIGNAL \m3|m1r[9]~55\ : std_logic;
SIGNAL \m3|m1r[10]~56_combout\ : std_logic;
SIGNAL \m3|Add1~19\ : std_logic;
SIGNAL \m3|Add1~20_combout\ : std_logic;
SIGNAL \m3|m1r[10]~57\ : std_logic;
SIGNAL \m3|m1r[11]~58_combout\ : std_logic;
SIGNAL \m3|Add1~21\ : std_logic;
SIGNAL \m3|Add1~22_combout\ : std_logic;
SIGNAL \m3|m1r[11]~59\ : std_logic;
SIGNAL \m3|m1r[12]~60_combout\ : std_logic;
SIGNAL \m3|Add1~23\ : std_logic;
SIGNAL \m3|Add1~24_combout\ : std_logic;
SIGNAL \m3|m1r[12]~61\ : std_logic;
SIGNAL \m3|m1r[13]~62_combout\ : std_logic;
SIGNAL \m3|Add1~25\ : std_logic;
SIGNAL \m3|Add1~26_combout\ : std_logic;
SIGNAL \m3|m1r[13]~63\ : std_logic;
SIGNAL \m3|m1r[14]~64_combout\ : std_logic;
SIGNAL \m3|Add1~27\ : std_logic;
SIGNAL \m3|Add1~28_combout\ : std_logic;
SIGNAL \m3|m1r[14]~65\ : std_logic;
SIGNAL \m3|m1r[15]~66_combout\ : std_logic;
SIGNAL \m3|Add1~29\ : std_logic;
SIGNAL \m3|Add1~30_combout\ : std_logic;
SIGNAL \m3|m1r[15]~67\ : std_logic;
SIGNAL \m3|m1r[16]~68_combout\ : std_logic;
SIGNAL \m3|Add1~31\ : std_logic;
SIGNAL \m3|Add1~32_combout\ : std_logic;
SIGNAL \m3|m1r[16]~69\ : std_logic;
SIGNAL \m3|m1r[17]~70_combout\ : std_logic;
SIGNAL \m3|Add1~33\ : std_logic;
SIGNAL \m3|Add1~34_combout\ : std_logic;
SIGNAL \m3|m1r[17]~71\ : std_logic;
SIGNAL \m3|m1r[18]~72_combout\ : std_logic;
SIGNAL \m3|Add1~35\ : std_logic;
SIGNAL \m3|Add1~36_combout\ : std_logic;
SIGNAL \m3|m1r[18]~73\ : std_logic;
SIGNAL \m3|m1r[19]~74_combout\ : std_logic;
SIGNAL \m3|Add1~37\ : std_logic;
SIGNAL \m3|Add1~38_combout\ : std_logic;
SIGNAL \m3|m1r[19]~75\ : std_logic;
SIGNAL \m3|m1r[20]~76_combout\ : std_logic;
SIGNAL \m3|Add1~39\ : std_logic;
SIGNAL \m3|Add1~40_combout\ : std_logic;
SIGNAL \m3|m1r[20]~77\ : std_logic;
SIGNAL \m3|m1r[21]~78_combout\ : std_logic;
SIGNAL \m3|Add1~41\ : std_logic;
SIGNAL \m3|Add1~42_combout\ : std_logic;
SIGNAL \m3|m1r[21]~79\ : std_logic;
SIGNAL \m3|m1r[22]~80_combout\ : std_logic;
SIGNAL \m3|Add1~43\ : std_logic;
SIGNAL \m3|Add1~44_combout\ : std_logic;
SIGNAL \m3|m1r[22]~81\ : std_logic;
SIGNAL \m3|m1r[23]~82_combout\ : std_logic;
SIGNAL \m3|Add1~45\ : std_logic;
SIGNAL \m3|Add1~46_combout\ : std_logic;
SIGNAL \m3|m1r[23]~83\ : std_logic;
SIGNAL \m3|m1r[24]~84_combout\ : std_logic;
SIGNAL \m3|Add1~47\ : std_logic;
SIGNAL \m3|Add1~48_combout\ : std_logic;
SIGNAL \m3|m1r[24]~85\ : std_logic;
SIGNAL \m3|m1r[25]~86_combout\ : std_logic;
SIGNAL \m3|Add1~49\ : std_logic;
SIGNAL \m3|Add1~50_combout\ : std_logic;
SIGNAL \m3|m1r[25]~87\ : std_logic;
SIGNAL \m3|m1r[26]~88_combout\ : std_logic;
SIGNAL \m3|Add1~51\ : std_logic;
SIGNAL \m3|Add1~52_combout\ : std_logic;
SIGNAL \m3|m1r[26]~89\ : std_logic;
SIGNAL \m3|m1r[27]~90_combout\ : std_logic;
SIGNAL \m3|Add1~53\ : std_logic;
SIGNAL \m3|Add1~54_combout\ : std_logic;
SIGNAL \m3|m1r[27]~91\ : std_logic;
SIGNAL \m3|m1r[28]~92_combout\ : std_logic;
SIGNAL \m3|Add1~55\ : std_logic;
SIGNAL \m3|Add1~56_combout\ : std_logic;
SIGNAL \m3|m1r[28]~93\ : std_logic;
SIGNAL \m3|m1r[29]~94_combout\ : std_logic;
SIGNAL \m3|Add1~57\ : std_logic;
SIGNAL \m3|Add1~58_combout\ : std_logic;
SIGNAL \m3|m1r[29]~95\ : std_logic;
SIGNAL \m3|m1r[30]~96_combout\ : std_logic;
SIGNAL \m3|Add1~59\ : std_logic;
SIGNAL \m3|Add1~60_combout\ : std_logic;
SIGNAL \m3|m1r[30]~97\ : std_logic;
SIGNAL \m3|m1r[31]~98_combout\ : std_logic;
SIGNAL \m3|Add1~61\ : std_logic;
SIGNAL \m3|Add1~62_combout\ : std_logic;
SIGNAL \m3|LessThan2~1_cout\ : std_logic;
SIGNAL \m3|LessThan2~3_cout\ : std_logic;
SIGNAL \m3|LessThan2~5_cout\ : std_logic;
SIGNAL \m3|LessThan2~7_cout\ : std_logic;
SIGNAL \m3|LessThan2~9_cout\ : std_logic;
SIGNAL \m3|LessThan2~11_cout\ : std_logic;
SIGNAL \m3|LessThan2~13_cout\ : std_logic;
SIGNAL \m3|LessThan2~15_cout\ : std_logic;
SIGNAL \m3|LessThan2~17_cout\ : std_logic;
SIGNAL \m3|LessThan2~19_cout\ : std_logic;
SIGNAL \m3|LessThan2~21_cout\ : std_logic;
SIGNAL \m3|LessThan2~23_cout\ : std_logic;
SIGNAL \m3|LessThan2~25_cout\ : std_logic;
SIGNAL \m3|LessThan2~27_cout\ : std_logic;
SIGNAL \m3|LessThan2~29_cout\ : std_logic;
SIGNAL \m3|LessThan2~31_cout\ : std_logic;
SIGNAL \m3|LessThan2~33_cout\ : std_logic;
SIGNAL \m3|LessThan2~35_cout\ : std_logic;
SIGNAL \m3|LessThan2~37_cout\ : std_logic;
SIGNAL \m3|LessThan2~39_cout\ : std_logic;
SIGNAL \m3|LessThan2~41_cout\ : std_logic;
SIGNAL \m3|LessThan2~43_cout\ : std_logic;
SIGNAL \m3|LessThan2~45_cout\ : std_logic;
SIGNAL \m3|LessThan2~47_cout\ : std_logic;
SIGNAL \m3|LessThan2~49_cout\ : std_logic;
SIGNAL \m3|LessThan2~51_cout\ : std_logic;
SIGNAL \m3|LessThan2~53_cout\ : std_logic;
SIGNAL \m3|LessThan2~55_cout\ : std_logic;
SIGNAL \m3|LessThan2~57_cout\ : std_logic;
SIGNAL \m3|LessThan2~59_cout\ : std_logic;
SIGNAL \m3|LessThan2~61_cout\ : std_logic;
SIGNAL \m3|LessThan2~62_combout\ : std_logic;
SIGNAL \m3|m2l[0]~32_combout\ : std_logic;
SIGNAL \m3|m2l[21]~38_combout\ : std_logic;
SIGNAL \m3|m2l[21]~39_combout\ : std_logic;
SIGNAL \m3|m2l[0]~33\ : std_logic;
SIGNAL \m3|m2l[1]~34_combout\ : std_logic;
SIGNAL \m3|m2l[1]~35\ : std_logic;
SIGNAL \m3|m2l[2]~36_combout\ : std_logic;
SIGNAL \m3|m2l[2]~37\ : std_logic;
SIGNAL \m3|m2l[3]~40_combout\ : std_logic;
SIGNAL \m3|m2l[3]~41\ : std_logic;
SIGNAL \m3|m2l[4]~42_combout\ : std_logic;
SIGNAL \m3|m2l[4]~43\ : std_logic;
SIGNAL \m3|m2l[5]~44_combout\ : std_logic;
SIGNAL \m3|m2l[5]~45\ : std_logic;
SIGNAL \m3|m2l[6]~46_combout\ : std_logic;
SIGNAL \m3|m2l[6]~47\ : std_logic;
SIGNAL \m3|m2l[7]~48_combout\ : std_logic;
SIGNAL \m3|m2l[7]~49\ : std_logic;
SIGNAL \m3|m2l[8]~50_combout\ : std_logic;
SIGNAL \m3|m2l[8]~51\ : std_logic;
SIGNAL \m3|m2l[9]~52_combout\ : std_logic;
SIGNAL \m3|m2l[9]~53\ : std_logic;
SIGNAL \m3|m2l[10]~54_combout\ : std_logic;
SIGNAL \m3|m2l[10]~55\ : std_logic;
SIGNAL \m3|m2l[11]~56_combout\ : std_logic;
SIGNAL \m3|m2l[11]~57\ : std_logic;
SIGNAL \m3|m2l[12]~58_combout\ : std_logic;
SIGNAL \m3|m2l[12]~59\ : std_logic;
SIGNAL \m3|m2l[13]~60_combout\ : std_logic;
SIGNAL \m3|m2l[13]~61\ : std_logic;
SIGNAL \m3|m2l[14]~62_combout\ : std_logic;
SIGNAL \m3|m2l[14]~63\ : std_logic;
SIGNAL \m3|m2l[15]~64_combout\ : std_logic;
SIGNAL \m3|m2l[15]~65\ : std_logic;
SIGNAL \m3|m2l[16]~66_combout\ : std_logic;
SIGNAL \m3|m2l[16]~67\ : std_logic;
SIGNAL \m3|m2l[17]~68_combout\ : std_logic;
SIGNAL \m3|m2l[17]~69\ : std_logic;
SIGNAL \m3|m2l[18]~70_combout\ : std_logic;
SIGNAL \m3|m2l[18]~71\ : std_logic;
SIGNAL \m3|m2l[19]~72_combout\ : std_logic;
SIGNAL \m3|m2l[19]~73\ : std_logic;
SIGNAL \m3|m2l[20]~74_combout\ : std_logic;
SIGNAL \m3|m2l[20]~75\ : std_logic;
SIGNAL \m3|m2l[21]~76_combout\ : std_logic;
SIGNAL \m3|m2l[21]~77\ : std_logic;
SIGNAL \m3|m2l[22]~78_combout\ : std_logic;
SIGNAL \m3|m2l[22]~79\ : std_logic;
SIGNAL \m3|m2l[23]~80_combout\ : std_logic;
SIGNAL \m3|m2l[23]~81\ : std_logic;
SIGNAL \m3|m2l[24]~82_combout\ : std_logic;
SIGNAL \m3|m2l[24]~83\ : std_logic;
SIGNAL \m3|m2l[25]~84_combout\ : std_logic;
SIGNAL \m3|m2l[25]~85\ : std_logic;
SIGNAL \m3|m2l[26]~86_combout\ : std_logic;
SIGNAL \m3|m2l[26]~87\ : std_logic;
SIGNAL \m3|m2l[27]~88_combout\ : std_logic;
SIGNAL \m3|m2l[27]~89\ : std_logic;
SIGNAL \m3|m2l[28]~90_combout\ : std_logic;
SIGNAL \m3|m2l[28]~91\ : std_logic;
SIGNAL \m3|m2l[29]~92_combout\ : std_logic;
SIGNAL \m3|m2l[29]~93\ : std_logic;
SIGNAL \m3|m2l[30]~94_combout\ : std_logic;
SIGNAL \m3|m2l[30]~95\ : std_logic;
SIGNAL \m3|m2l[31]~96_combout\ : std_logic;
SIGNAL \m3|m1l[0]~32_combout\ : std_logic;
SIGNAL \m3|m1l[26]~38_combout\ : std_logic;
SIGNAL \m3|m1l[26]~39_combout\ : std_logic;
SIGNAL \m3|m1l[26]~40_combout\ : std_logic;
SIGNAL \m3|m1l[26]~41_combout\ : std_logic;
SIGNAL \m3|m1l[0]~33\ : std_logic;
SIGNAL \m3|m1l[1]~34_combout\ : std_logic;
SIGNAL \m3|m1l[1]~35\ : std_logic;
SIGNAL \m3|m1l[2]~36_combout\ : std_logic;
SIGNAL \m3|m1l[2]~37\ : std_logic;
SIGNAL \m3|m1l[3]~42_combout\ : std_logic;
SIGNAL \m3|m1l[3]~43\ : std_logic;
SIGNAL \m3|m1l[4]~44_combout\ : std_logic;
SIGNAL \m3|m1l[4]~45\ : std_logic;
SIGNAL \m3|m1l[5]~46_combout\ : std_logic;
SIGNAL \m3|m1l[5]~47\ : std_logic;
SIGNAL \m3|m1l[6]~48_combout\ : std_logic;
SIGNAL \m3|m1l[6]~49\ : std_logic;
SIGNAL \m3|m1l[7]~50_combout\ : std_logic;
SIGNAL \m3|m1l[7]~51\ : std_logic;
SIGNAL \m3|m1l[8]~52_combout\ : std_logic;
SIGNAL \m3|m1l[8]~53\ : std_logic;
SIGNAL \m3|m1l[9]~54_combout\ : std_logic;
SIGNAL \m3|m1l[9]~55\ : std_logic;
SIGNAL \m3|m1l[10]~56_combout\ : std_logic;
SIGNAL \m3|m1l[10]~57\ : std_logic;
SIGNAL \m3|m1l[11]~58_combout\ : std_logic;
SIGNAL \m3|m1l[11]~59\ : std_logic;
SIGNAL \m3|m1l[12]~60_combout\ : std_logic;
SIGNAL \m3|m1l[12]~61\ : std_logic;
SIGNAL \m3|m1l[13]~62_combout\ : std_logic;
SIGNAL \m3|m1l[13]~63\ : std_logic;
SIGNAL \m3|m1l[14]~64_combout\ : std_logic;
SIGNAL \m3|m1l[14]~65\ : std_logic;
SIGNAL \m3|m1l[15]~66_combout\ : std_logic;
SIGNAL \m3|m1l[15]~67\ : std_logic;
SIGNAL \m3|m1l[16]~68_combout\ : std_logic;
SIGNAL \m3|m1l[16]~69\ : std_logic;
SIGNAL \m3|m1l[17]~70_combout\ : std_logic;
SIGNAL \m3|m1l[17]~71\ : std_logic;
SIGNAL \m3|m1l[18]~72_combout\ : std_logic;
SIGNAL \m3|m1l[18]~73\ : std_logic;
SIGNAL \m3|m1l[19]~74_combout\ : std_logic;
SIGNAL \m3|m1l[19]~75\ : std_logic;
SIGNAL \m3|m1l[20]~76_combout\ : std_logic;
SIGNAL \m3|m1l[20]~77\ : std_logic;
SIGNAL \m3|m1l[21]~78_combout\ : std_logic;
SIGNAL \m3|m1l[21]~79\ : std_logic;
SIGNAL \m3|m1l[22]~80_combout\ : std_logic;
SIGNAL \m3|m1l[22]~81\ : std_logic;
SIGNAL \m3|m1l[23]~82_combout\ : std_logic;
SIGNAL \m3|m1l[23]~83\ : std_logic;
SIGNAL \m3|m1l[24]~84_combout\ : std_logic;
SIGNAL \m3|m1l[24]~85\ : std_logic;
SIGNAL \m3|m1l[25]~86_combout\ : std_logic;
SIGNAL \m3|m1l[25]~87\ : std_logic;
SIGNAL \m3|m1l[26]~88_combout\ : std_logic;
SIGNAL \m3|m1l[26]~89\ : std_logic;
SIGNAL \m3|m1l[27]~90_combout\ : std_logic;
SIGNAL \m3|m1l[27]~91\ : std_logic;
SIGNAL \m3|m1l[28]~92_combout\ : std_logic;
SIGNAL \m3|m1l[28]~93\ : std_logic;
SIGNAL \m3|m1l[29]~94_combout\ : std_logic;
SIGNAL \m3|m1l[29]~95\ : std_logic;
SIGNAL \m3|m1l[30]~96_combout\ : std_logic;
SIGNAL \m3|m1l[30]~97\ : std_logic;
SIGNAL \m3|m1l[31]~98_combout\ : std_logic;
SIGNAL \m3|LessThan0~1_cout\ : std_logic;
SIGNAL \m3|LessThan0~3_cout\ : std_logic;
SIGNAL \m3|LessThan0~5_cout\ : std_logic;
SIGNAL \m3|LessThan0~7_cout\ : std_logic;
SIGNAL \m3|LessThan0~9_cout\ : std_logic;
SIGNAL \m3|LessThan0~11_cout\ : std_logic;
SIGNAL \m3|LessThan0~13_cout\ : std_logic;
SIGNAL \m3|LessThan0~15_cout\ : std_logic;
SIGNAL \m3|LessThan0~17_cout\ : std_logic;
SIGNAL \m3|LessThan0~19_cout\ : std_logic;
SIGNAL \m3|LessThan0~21_cout\ : std_logic;
SIGNAL \m3|LessThan0~23_cout\ : std_logic;
SIGNAL \m3|LessThan0~25_cout\ : std_logic;
SIGNAL \m3|LessThan0~27_cout\ : std_logic;
SIGNAL \m3|LessThan0~29_cout\ : std_logic;
SIGNAL \m3|LessThan0~31_cout\ : std_logic;
SIGNAL \m3|LessThan0~33_cout\ : std_logic;
SIGNAL \m3|LessThan0~35_cout\ : std_logic;
SIGNAL \m3|LessThan0~37_cout\ : std_logic;
SIGNAL \m3|LessThan0~39_cout\ : std_logic;
SIGNAL \m3|LessThan0~41_cout\ : std_logic;
SIGNAL \m3|LessThan0~43_cout\ : std_logic;
SIGNAL \m3|LessThan0~45_cout\ : std_logic;
SIGNAL \m3|LessThan0~47_cout\ : std_logic;
SIGNAL \m3|LessThan0~49_cout\ : std_logic;
SIGNAL \m3|LessThan0~51_cout\ : std_logic;
SIGNAL \m3|LessThan0~53_cout\ : std_logic;
SIGNAL \m3|LessThan0~55_cout\ : std_logic;
SIGNAL \m3|LessThan0~57_cout\ : std_logic;
SIGNAL \m3|LessThan0~59_cout\ : std_logic;
SIGNAL \m3|LessThan0~61_cout\ : std_logic;
SIGNAL \m3|LessThan0~62_combout\ : std_logic;
SIGNAL \m3|LessThan3~1_cout\ : std_logic;
SIGNAL \m3|LessThan3~3_cout\ : std_logic;
SIGNAL \m3|LessThan3~5_cout\ : std_logic;
SIGNAL \m3|LessThan3~7_cout\ : std_logic;
SIGNAL \m3|LessThan3~9_cout\ : std_logic;
SIGNAL \m3|LessThan3~11_cout\ : std_logic;
SIGNAL \m3|LessThan3~13_cout\ : std_logic;
SIGNAL \m3|LessThan3~15_cout\ : std_logic;
SIGNAL \m3|LessThan3~17_cout\ : std_logic;
SIGNAL \m3|LessThan3~19_cout\ : std_logic;
SIGNAL \m3|LessThan3~21_cout\ : std_logic;
SIGNAL \m3|LessThan3~23_cout\ : std_logic;
SIGNAL \m3|LessThan3~25_cout\ : std_logic;
SIGNAL \m3|LessThan3~27_cout\ : std_logic;
SIGNAL \m3|LessThan3~29_cout\ : std_logic;
SIGNAL \m3|LessThan3~31_cout\ : std_logic;
SIGNAL \m3|LessThan3~33_cout\ : std_logic;
SIGNAL \m3|LessThan3~35_cout\ : std_logic;
SIGNAL \m3|LessThan3~37_cout\ : std_logic;
SIGNAL \m3|LessThan3~39_cout\ : std_logic;
SIGNAL \m3|LessThan3~41_cout\ : std_logic;
SIGNAL \m3|LessThan3~43_cout\ : std_logic;
SIGNAL \m3|LessThan3~45_cout\ : std_logic;
SIGNAL \m3|LessThan3~47_cout\ : std_logic;
SIGNAL \m3|LessThan3~49_cout\ : std_logic;
SIGNAL \m3|LessThan3~51_cout\ : std_logic;
SIGNAL \m3|LessThan3~53_cout\ : std_logic;
SIGNAL \m3|LessThan3~55_cout\ : std_logic;
SIGNAL \m3|LessThan3~57_cout\ : std_logic;
SIGNAL \m3|LessThan3~59_cout\ : std_logic;
SIGNAL \m3|LessThan3~61_cout\ : std_logic;
SIGNAL \m3|LessThan3~62_combout\ : std_logic;
SIGNAL \m3|LessThan1~1_cout\ : std_logic;
SIGNAL \m3|LessThan1~3_cout\ : std_logic;
SIGNAL \m3|LessThan1~5_cout\ : std_logic;
SIGNAL \m3|LessThan1~7_cout\ : std_logic;
SIGNAL \m3|LessThan1~9_cout\ : std_logic;
SIGNAL \m3|LessThan1~11_cout\ : std_logic;
SIGNAL \m3|LessThan1~13_cout\ : std_logic;
SIGNAL \m3|LessThan1~15_cout\ : std_logic;
SIGNAL \m3|LessThan1~17_cout\ : std_logic;
SIGNAL \m3|LessThan1~19_cout\ : std_logic;
SIGNAL \m3|LessThan1~21_cout\ : std_logic;
SIGNAL \m3|LessThan1~23_cout\ : std_logic;
SIGNAL \m3|LessThan1~25_cout\ : std_logic;
SIGNAL \m3|LessThan1~27_cout\ : std_logic;
SIGNAL \m3|LessThan1~29_cout\ : std_logic;
SIGNAL \m3|LessThan1~31_cout\ : std_logic;
SIGNAL \m3|LessThan1~33_cout\ : std_logic;
SIGNAL \m3|LessThan1~35_cout\ : std_logic;
SIGNAL \m3|LessThan1~37_cout\ : std_logic;
SIGNAL \m3|LessThan1~39_cout\ : std_logic;
SIGNAL \m3|LessThan1~41_cout\ : std_logic;
SIGNAL \m3|LessThan1~43_cout\ : std_logic;
SIGNAL \m3|LessThan1~45_cout\ : std_logic;
SIGNAL \m3|LessThan1~47_cout\ : std_logic;
SIGNAL \m3|LessThan1~49_cout\ : std_logic;
SIGNAL \m3|LessThan1~51_cout\ : std_logic;
SIGNAL \m3|LessThan1~53_cout\ : std_logic;
SIGNAL \m3|LessThan1~55_cout\ : std_logic;
SIGNAL \m3|LessThan1~57_cout\ : std_logic;
SIGNAL \m3|LessThan1~59_cout\ : std_logic;
SIGNAL \m3|LessThan1~61_cout\ : std_logic;
SIGNAL \m3|LessThan1~62_combout\ : std_logic;
SIGNAL \m3|leds~0_combout\ : std_logic;
SIGNAL \m3|leds~1_combout\ : std_logic;
SIGNAL \m3|leds~2_combout\ : std_logic;
SIGNAL \m3|leds~3_combout\ : std_logic;
SIGNAL \m11|output[0]~0_combout\ : std_logic;
SIGNAL \m11|output[1]~1_combout\ : std_logic;
SIGNAL \m11|Equal8~0_combout\ : std_logic;
SIGNAL \m11|output[3]~2_combout\ : std_logic;
SIGNAL \m11|output[4]~3_combout\ : std_logic;
SIGNAL \m11|output[5]~4_combout\ : std_logic;
SIGNAL \m11|output[6]~5_combout\ : std_logic;
SIGNAL \m12|output[0]~0_combout\ : std_logic;
SIGNAL \m12|output[1]~1_combout\ : std_logic;
SIGNAL \m12|output[2]~2_combout\ : std_logic;
SIGNAL \m12|output[3]~3_combout\ : std_logic;
SIGNAL \m12|output[4]~4_combout\ : std_logic;
SIGNAL \m12|output[5]~5_combout\ : std_logic;
SIGNAL \m12|output[6]~6_combout\ : std_logic;
SIGNAL \m8|output[0]~0_combout\ : std_logic;
SIGNAL \m8|output[1]~1_combout\ : std_logic;
SIGNAL \m8|output[2]~2_combout\ : std_logic;
SIGNAL \m8|output[3]~3_combout\ : std_logic;
SIGNAL \m8|output[4]~4_combout\ : std_logic;
SIGNAL \m8|output[5]~5_combout\ : std_logic;
SIGNAL \m8|output[6]~6_combout\ : std_logic;
SIGNAL \m7|output[0]~0_combout\ : std_logic;
SIGNAL \m7|output[1]~1_combout\ : std_logic;
SIGNAL \m7|output[2]~2_combout\ : std_logic;
SIGNAL \m7|output[3]~3_combout\ : std_logic;
SIGNAL \m7|output[4]~4_combout\ : std_logic;
SIGNAL \m7|output[5]~5_combout\ : std_logic;
SIGNAL \m7|output[6]~6_combout\ : std_logic;
SIGNAL \m10|output[0]~0_combout\ : std_logic;
SIGNAL \m10|output[1]~1_combout\ : std_logic;
SIGNAL \m10|output[2]~2_combout\ : std_logic;
SIGNAL \m10|output[3]~3_combout\ : std_logic;
SIGNAL \m10|output[4]~4_combout\ : std_logic;
SIGNAL \m10|output[5]~5_combout\ : std_logic;
SIGNAL \m10|output[6]~6_combout\ : std_logic;
SIGNAL \m9|output[0]~0_combout\ : std_logic;
SIGNAL \m9|output[1]~1_combout\ : std_logic;
SIGNAL \m9|output[2]~2_combout\ : std_logic;
SIGNAL \m9|output[3]~3_combout\ : std_logic;
SIGNAL \m9|output[4]~4_combout\ : std_logic;
SIGNAL \m9|output[5]~5_combout\ : std_logic;
SIGNAL \m9|output[6]~6_combout\ : std_logic;
SIGNAL \m1|clockcounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|leds\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \m3|m1l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m2|m\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|m2r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|m2l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|m1r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|point2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m13|clockcounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m3|point1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \m2|l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \m3|ALT_INV_process_0~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_p1 <= p1;
ww_p2 <= p2;
ww_c1 <= c1;
ww_clk <= clk;
ww_start <= start;
leds <= ww_leds;
timer0 <= ww_timer0;
timer1 <= ww_timer1;
counter_t1 <= ww_counter_t1;
counter_t2 <= ww_counter_t2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\m1|clk_1Hz_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m1|clk_1Hz_temp~q\);

\m13|clk_110Hz_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m13|clk_110Hz_temp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\m3|ALT_INV_process_0~3_combout\ <= NOT \m3|process_0~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N30
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3|leds\(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3|leds\(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\timer0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \timer0[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\timer0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \timer0[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\timer0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|Equal8~0_combout\,
	devoe => ww_devoe,
	o => \timer0[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\timer0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[3]~2_combout\,
	devoe => ww_devoe,
	o => \timer0[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\timer0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[4]~3_combout\,
	devoe => ww_devoe,
	o => \timer0[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\timer0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[5]~4_combout\,
	devoe => ww_devoe,
	o => \timer0[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\timer0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m11|output[6]~5_combout\,
	devoe => ww_devoe,
	o => \timer0[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\timer1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \timer1[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\timer1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \timer1[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\timer1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \timer1[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\timer1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \timer1[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\timer1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \timer1[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\timer1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \timer1[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\timer1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \timer1[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\counter_t1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \counter_t1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\counter_t1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \counter_t1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\counter_t1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \counter_t1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\counter_t1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \counter_t1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\counter_t1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \counter_t1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\counter_t1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \counter_t1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\counter_t1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m8|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \counter_t1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\counter_t1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \counter_t1[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\counter_t1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \counter_t1[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\counter_t1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \counter_t1[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\counter_t1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \counter_t1[10]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\counter_t1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \counter_t1[11]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\counter_t1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \counter_t1[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\counter_t1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m7|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \counter_t1[13]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\counter_t2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \counter_t2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\counter_t2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \counter_t2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\counter_t2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \counter_t2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\counter_t2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \counter_t2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\counter_t2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \counter_t2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\counter_t2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \counter_t2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\counter_t2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m10|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \counter_t2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\counter_t2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \counter_t2[7]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\counter_t2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \counter_t2[8]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\counter_t2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \counter_t2[9]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\counter_t2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \counter_t2[10]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\counter_t2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \counter_t2[11]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\counter_t2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \counter_t2[12]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\counter_t2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m9|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \counter_t2[13]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X46_Y48_N0
\m13|clockcounter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[0]~32_combout\ = \m13|clockcounter\(0) $ (VCC)
-- \m13|clockcounter[0]~33\ = CARRY(\m13|clockcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(0),
	datad => VCC,
	combout => \m13|clockcounter[0]~32_combout\,
	cout => \m13|clockcounter[0]~33\);

-- Location: FF_X46_Y48_N1
\m13|clockcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[0]~32_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(0));

-- Location: LCCOMB_X46_Y48_N2
\m13|clockcounter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[1]~34_combout\ = (\m13|clockcounter\(1) & (!\m13|clockcounter[0]~33\)) # (!\m13|clockcounter\(1) & ((\m13|clockcounter[0]~33\) # (GND)))
-- \m13|clockcounter[1]~35\ = CARRY((!\m13|clockcounter[0]~33\) # (!\m13|clockcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(1),
	datad => VCC,
	cin => \m13|clockcounter[0]~33\,
	combout => \m13|clockcounter[1]~34_combout\,
	cout => \m13|clockcounter[1]~35\);

-- Location: FF_X46_Y48_N3
\m13|clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[1]~34_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(1));

-- Location: LCCOMB_X46_Y48_N4
\m13|clockcounter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[2]~36_combout\ = (\m13|clockcounter\(2) & (\m13|clockcounter[1]~35\ $ (GND))) # (!\m13|clockcounter\(2) & (!\m13|clockcounter[1]~35\ & VCC))
-- \m13|clockcounter[2]~37\ = CARRY((\m13|clockcounter\(2) & !\m13|clockcounter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(2),
	datad => VCC,
	cin => \m13|clockcounter[1]~35\,
	combout => \m13|clockcounter[2]~36_combout\,
	cout => \m13|clockcounter[2]~37\);

-- Location: FF_X46_Y48_N5
\m13|clockcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[2]~36_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(2));

-- Location: LCCOMB_X46_Y48_N6
\m13|clockcounter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[3]~38_combout\ = (\m13|clockcounter\(3) & (!\m13|clockcounter[2]~37\)) # (!\m13|clockcounter\(3) & ((\m13|clockcounter[2]~37\) # (GND)))
-- \m13|clockcounter[3]~39\ = CARRY((!\m13|clockcounter[2]~37\) # (!\m13|clockcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(3),
	datad => VCC,
	cin => \m13|clockcounter[2]~37\,
	combout => \m13|clockcounter[3]~38_combout\,
	cout => \m13|clockcounter[3]~39\);

-- Location: FF_X46_Y48_N7
\m13|clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[3]~38_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(3));

-- Location: LCCOMB_X46_Y48_N8
\m13|clockcounter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[4]~40_combout\ = (\m13|clockcounter\(4) & (\m13|clockcounter[3]~39\ $ (GND))) # (!\m13|clockcounter\(4) & (!\m13|clockcounter[3]~39\ & VCC))
-- \m13|clockcounter[4]~41\ = CARRY((\m13|clockcounter\(4) & !\m13|clockcounter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(4),
	datad => VCC,
	cin => \m13|clockcounter[3]~39\,
	combout => \m13|clockcounter[4]~40_combout\,
	cout => \m13|clockcounter[4]~41\);

-- Location: FF_X46_Y48_N9
\m13|clockcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[4]~40_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(4));

-- Location: LCCOMB_X46_Y48_N10
\m13|clockcounter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[5]~42_combout\ = (\m13|clockcounter\(5) & (!\m13|clockcounter[4]~41\)) # (!\m13|clockcounter\(5) & ((\m13|clockcounter[4]~41\) # (GND)))
-- \m13|clockcounter[5]~43\ = CARRY((!\m13|clockcounter[4]~41\) # (!\m13|clockcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(5),
	datad => VCC,
	cin => \m13|clockcounter[4]~41\,
	combout => \m13|clockcounter[5]~42_combout\,
	cout => \m13|clockcounter[5]~43\);

-- Location: FF_X46_Y48_N11
\m13|clockcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[5]~42_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(5));

-- Location: LCCOMB_X46_Y48_N12
\m13|clockcounter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[6]~44_combout\ = (\m13|clockcounter\(6) & (\m13|clockcounter[5]~43\ $ (GND))) # (!\m13|clockcounter\(6) & (!\m13|clockcounter[5]~43\ & VCC))
-- \m13|clockcounter[6]~45\ = CARRY((\m13|clockcounter\(6) & !\m13|clockcounter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(6),
	datad => VCC,
	cin => \m13|clockcounter[5]~43\,
	combout => \m13|clockcounter[6]~44_combout\,
	cout => \m13|clockcounter[6]~45\);

-- Location: FF_X46_Y48_N13
\m13|clockcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[6]~44_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(6));

-- Location: LCCOMB_X46_Y48_N14
\m13|clockcounter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[7]~46_combout\ = (\m13|clockcounter\(7) & (!\m13|clockcounter[6]~45\)) # (!\m13|clockcounter\(7) & ((\m13|clockcounter[6]~45\) # (GND)))
-- \m13|clockcounter[7]~47\ = CARRY((!\m13|clockcounter[6]~45\) # (!\m13|clockcounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(7),
	datad => VCC,
	cin => \m13|clockcounter[6]~45\,
	combout => \m13|clockcounter[7]~46_combout\,
	cout => \m13|clockcounter[7]~47\);

-- Location: FF_X46_Y48_N15
\m13|clockcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[7]~46_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(7));

-- Location: LCCOMB_X46_Y48_N16
\m13|clockcounter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[8]~48_combout\ = (\m13|clockcounter\(8) & (\m13|clockcounter[7]~47\ $ (GND))) # (!\m13|clockcounter\(8) & (!\m13|clockcounter[7]~47\ & VCC))
-- \m13|clockcounter[8]~49\ = CARRY((\m13|clockcounter\(8) & !\m13|clockcounter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(8),
	datad => VCC,
	cin => \m13|clockcounter[7]~47\,
	combout => \m13|clockcounter[8]~48_combout\,
	cout => \m13|clockcounter[8]~49\);

-- Location: FF_X46_Y48_N17
\m13|clockcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[8]~48_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(8));

-- Location: LCCOMB_X46_Y48_N18
\m13|clockcounter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[9]~50_combout\ = (\m13|clockcounter\(9) & (!\m13|clockcounter[8]~49\)) # (!\m13|clockcounter\(9) & ((\m13|clockcounter[8]~49\) # (GND)))
-- \m13|clockcounter[9]~51\ = CARRY((!\m13|clockcounter[8]~49\) # (!\m13|clockcounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(9),
	datad => VCC,
	cin => \m13|clockcounter[8]~49\,
	combout => \m13|clockcounter[9]~50_combout\,
	cout => \m13|clockcounter[9]~51\);

-- Location: FF_X46_Y48_N19
\m13|clockcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[9]~50_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(9));

-- Location: LCCOMB_X46_Y48_N20
\m13|clockcounter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[10]~52_combout\ = (\m13|clockcounter\(10) & (\m13|clockcounter[9]~51\ $ (GND))) # (!\m13|clockcounter\(10) & (!\m13|clockcounter[9]~51\ & VCC))
-- \m13|clockcounter[10]~53\ = CARRY((\m13|clockcounter\(10) & !\m13|clockcounter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(10),
	datad => VCC,
	cin => \m13|clockcounter[9]~51\,
	combout => \m13|clockcounter[10]~52_combout\,
	cout => \m13|clockcounter[10]~53\);

-- Location: FF_X46_Y48_N21
\m13|clockcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[10]~52_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(10));

-- Location: LCCOMB_X46_Y48_N22
\m13|clockcounter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[11]~54_combout\ = (\m13|clockcounter\(11) & (!\m13|clockcounter[10]~53\)) # (!\m13|clockcounter\(11) & ((\m13|clockcounter[10]~53\) # (GND)))
-- \m13|clockcounter[11]~55\ = CARRY((!\m13|clockcounter[10]~53\) # (!\m13|clockcounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(11),
	datad => VCC,
	cin => \m13|clockcounter[10]~53\,
	combout => \m13|clockcounter[11]~54_combout\,
	cout => \m13|clockcounter[11]~55\);

-- Location: FF_X46_Y48_N23
\m13|clockcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[11]~54_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(11));

-- Location: LCCOMB_X46_Y48_N24
\m13|clockcounter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[12]~56_combout\ = (\m13|clockcounter\(12) & (\m13|clockcounter[11]~55\ $ (GND))) # (!\m13|clockcounter\(12) & (!\m13|clockcounter[11]~55\ & VCC))
-- \m13|clockcounter[12]~57\ = CARRY((\m13|clockcounter\(12) & !\m13|clockcounter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(12),
	datad => VCC,
	cin => \m13|clockcounter[11]~55\,
	combout => \m13|clockcounter[12]~56_combout\,
	cout => \m13|clockcounter[12]~57\);

-- Location: FF_X46_Y48_N25
\m13|clockcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[12]~56_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(12));

-- Location: LCCOMB_X46_Y48_N26
\m13|clockcounter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[13]~58_combout\ = (\m13|clockcounter\(13) & (!\m13|clockcounter[12]~57\)) # (!\m13|clockcounter\(13) & ((\m13|clockcounter[12]~57\) # (GND)))
-- \m13|clockcounter[13]~59\ = CARRY((!\m13|clockcounter[12]~57\) # (!\m13|clockcounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(13),
	datad => VCC,
	cin => \m13|clockcounter[12]~57\,
	combout => \m13|clockcounter[13]~58_combout\,
	cout => \m13|clockcounter[13]~59\);

-- Location: FF_X46_Y48_N27
\m13|clockcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[13]~58_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(13));

-- Location: LCCOMB_X46_Y48_N28
\m13|clockcounter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[14]~60_combout\ = (\m13|clockcounter\(14) & (\m13|clockcounter[13]~59\ $ (GND))) # (!\m13|clockcounter\(14) & (!\m13|clockcounter[13]~59\ & VCC))
-- \m13|clockcounter[14]~61\ = CARRY((\m13|clockcounter\(14) & !\m13|clockcounter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(14),
	datad => VCC,
	cin => \m13|clockcounter[13]~59\,
	combout => \m13|clockcounter[14]~60_combout\,
	cout => \m13|clockcounter[14]~61\);

-- Location: FF_X45_Y47_N23
\m13|clockcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m13|clockcounter[14]~60_combout\,
	sclr => \m13|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(14));

-- Location: LCCOMB_X46_Y48_N30
\m13|clockcounter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[15]~62_combout\ = (\m13|clockcounter\(15) & (!\m13|clockcounter[14]~61\)) # (!\m13|clockcounter\(15) & ((\m13|clockcounter[14]~61\) # (GND)))
-- \m13|clockcounter[15]~63\ = CARRY((!\m13|clockcounter[14]~61\) # (!\m13|clockcounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(15),
	datad => VCC,
	cin => \m13|clockcounter[14]~61\,
	combout => \m13|clockcounter[15]~62_combout\,
	cout => \m13|clockcounter[15]~63\);

-- Location: FF_X45_Y47_N15
\m13|clockcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m13|clockcounter[15]~62_combout\,
	sclr => \m13|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(15));

-- Location: LCCOMB_X46_Y47_N0
\m13|clockcounter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[16]~64_combout\ = (\m13|clockcounter\(16) & (\m13|clockcounter[15]~63\ $ (GND))) # (!\m13|clockcounter\(16) & (!\m13|clockcounter[15]~63\ & VCC))
-- \m13|clockcounter[16]~65\ = CARRY((\m13|clockcounter\(16) & !\m13|clockcounter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(16),
	datad => VCC,
	cin => \m13|clockcounter[15]~63\,
	combout => \m13|clockcounter[16]~64_combout\,
	cout => \m13|clockcounter[16]~65\);

-- Location: FF_X45_Y47_N7
\m13|clockcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m13|clockcounter[16]~64_combout\,
	sclr => \m13|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(16));

-- Location: LCCOMB_X46_Y47_N2
\m13|clockcounter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[17]~66_combout\ = (\m13|clockcounter\(17) & (!\m13|clockcounter[16]~65\)) # (!\m13|clockcounter\(17) & ((\m13|clockcounter[16]~65\) # (GND)))
-- \m13|clockcounter[17]~67\ = CARRY((!\m13|clockcounter[16]~65\) # (!\m13|clockcounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(17),
	datad => VCC,
	cin => \m13|clockcounter[16]~65\,
	combout => \m13|clockcounter[17]~66_combout\,
	cout => \m13|clockcounter[17]~67\);

-- Location: FF_X46_Y47_N3
\m13|clockcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[17]~66_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(17));

-- Location: LCCOMB_X46_Y47_N4
\m13|clockcounter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[18]~68_combout\ = (\m13|clockcounter\(18) & (\m13|clockcounter[17]~67\ $ (GND))) # (!\m13|clockcounter\(18) & (!\m13|clockcounter[17]~67\ & VCC))
-- \m13|clockcounter[18]~69\ = CARRY((\m13|clockcounter\(18) & !\m13|clockcounter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(18),
	datad => VCC,
	cin => \m13|clockcounter[17]~67\,
	combout => \m13|clockcounter[18]~68_combout\,
	cout => \m13|clockcounter[18]~69\);

-- Location: FF_X46_Y47_N5
\m13|clockcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[18]~68_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(18));

-- Location: LCCOMB_X46_Y47_N6
\m13|clockcounter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[19]~70_combout\ = (\m13|clockcounter\(19) & (!\m13|clockcounter[18]~69\)) # (!\m13|clockcounter\(19) & ((\m13|clockcounter[18]~69\) # (GND)))
-- \m13|clockcounter[19]~71\ = CARRY((!\m13|clockcounter[18]~69\) # (!\m13|clockcounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(19),
	datad => VCC,
	cin => \m13|clockcounter[18]~69\,
	combout => \m13|clockcounter[19]~70_combout\,
	cout => \m13|clockcounter[19]~71\);

-- Location: FF_X46_Y47_N7
\m13|clockcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[19]~70_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(19));

-- Location: LCCOMB_X46_Y47_N8
\m13|clockcounter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[20]~72_combout\ = (\m13|clockcounter\(20) & (\m13|clockcounter[19]~71\ $ (GND))) # (!\m13|clockcounter\(20) & (!\m13|clockcounter[19]~71\ & VCC))
-- \m13|clockcounter[20]~73\ = CARRY((\m13|clockcounter\(20) & !\m13|clockcounter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(20),
	datad => VCC,
	cin => \m13|clockcounter[19]~71\,
	combout => \m13|clockcounter[20]~72_combout\,
	cout => \m13|clockcounter[20]~73\);

-- Location: FF_X46_Y47_N9
\m13|clockcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[20]~72_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(20));

-- Location: LCCOMB_X46_Y47_N10
\m13|clockcounter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[21]~74_combout\ = (\m13|clockcounter\(21) & (!\m13|clockcounter[20]~73\)) # (!\m13|clockcounter\(21) & ((\m13|clockcounter[20]~73\) # (GND)))
-- \m13|clockcounter[21]~75\ = CARRY((!\m13|clockcounter[20]~73\) # (!\m13|clockcounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(21),
	datad => VCC,
	cin => \m13|clockcounter[20]~73\,
	combout => \m13|clockcounter[21]~74_combout\,
	cout => \m13|clockcounter[21]~75\);

-- Location: FF_X46_Y47_N11
\m13|clockcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[21]~74_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(21));

-- Location: LCCOMB_X46_Y47_N12
\m13|clockcounter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[22]~76_combout\ = (\m13|clockcounter\(22) & (\m13|clockcounter[21]~75\ $ (GND))) # (!\m13|clockcounter\(22) & (!\m13|clockcounter[21]~75\ & VCC))
-- \m13|clockcounter[22]~77\ = CARRY((\m13|clockcounter\(22) & !\m13|clockcounter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(22),
	datad => VCC,
	cin => \m13|clockcounter[21]~75\,
	combout => \m13|clockcounter[22]~76_combout\,
	cout => \m13|clockcounter[22]~77\);

-- Location: FF_X46_Y47_N13
\m13|clockcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[22]~76_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(22));

-- Location: LCCOMB_X46_Y47_N14
\m13|clockcounter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[23]~78_combout\ = (\m13|clockcounter\(23) & (!\m13|clockcounter[22]~77\)) # (!\m13|clockcounter\(23) & ((\m13|clockcounter[22]~77\) # (GND)))
-- \m13|clockcounter[23]~79\ = CARRY((!\m13|clockcounter[22]~77\) # (!\m13|clockcounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(23),
	datad => VCC,
	cin => \m13|clockcounter[22]~77\,
	combout => \m13|clockcounter[23]~78_combout\,
	cout => \m13|clockcounter[23]~79\);

-- Location: FF_X46_Y47_N15
\m13|clockcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[23]~78_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(23));

-- Location: LCCOMB_X45_Y47_N26
\m13|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~5_combout\ = (!\m13|clockcounter\(21) & (!\m13|clockcounter\(22) & (!\m13|clockcounter\(20) & !\m13|clockcounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(21),
	datab => \m13|clockcounter\(22),
	datac => \m13|clockcounter\(20),
	datad => \m13|clockcounter\(23),
	combout => \m13|LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y47_N16
\m13|clockcounter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[24]~80_combout\ = (\m13|clockcounter\(24) & (\m13|clockcounter[23]~79\ $ (GND))) # (!\m13|clockcounter\(24) & (!\m13|clockcounter[23]~79\ & VCC))
-- \m13|clockcounter[24]~81\ = CARRY((\m13|clockcounter\(24) & !\m13|clockcounter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(24),
	datad => VCC,
	cin => \m13|clockcounter[23]~79\,
	combout => \m13|clockcounter[24]~80_combout\,
	cout => \m13|clockcounter[24]~81\);

-- Location: FF_X46_Y47_N17
\m13|clockcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[24]~80_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(24));

-- Location: LCCOMB_X46_Y47_N18
\m13|clockcounter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[25]~82_combout\ = (\m13|clockcounter\(25) & (!\m13|clockcounter[24]~81\)) # (!\m13|clockcounter\(25) & ((\m13|clockcounter[24]~81\) # (GND)))
-- \m13|clockcounter[25]~83\ = CARRY((!\m13|clockcounter[24]~81\) # (!\m13|clockcounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(25),
	datad => VCC,
	cin => \m13|clockcounter[24]~81\,
	combout => \m13|clockcounter[25]~82_combout\,
	cout => \m13|clockcounter[25]~83\);

-- Location: FF_X46_Y47_N19
\m13|clockcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[25]~82_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(25));

-- Location: LCCOMB_X46_Y47_N20
\m13|clockcounter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[26]~84_combout\ = (\m13|clockcounter\(26) & (\m13|clockcounter[25]~83\ $ (GND))) # (!\m13|clockcounter\(26) & (!\m13|clockcounter[25]~83\ & VCC))
-- \m13|clockcounter[26]~85\ = CARRY((\m13|clockcounter\(26) & !\m13|clockcounter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(26),
	datad => VCC,
	cin => \m13|clockcounter[25]~83\,
	combout => \m13|clockcounter[26]~84_combout\,
	cout => \m13|clockcounter[26]~85\);

-- Location: FF_X46_Y47_N21
\m13|clockcounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[26]~84_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(26));

-- Location: LCCOMB_X46_Y47_N22
\m13|clockcounter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[27]~86_combout\ = (\m13|clockcounter\(27) & (!\m13|clockcounter[26]~85\)) # (!\m13|clockcounter\(27) & ((\m13|clockcounter[26]~85\) # (GND)))
-- \m13|clockcounter[27]~87\ = CARRY((!\m13|clockcounter[26]~85\) # (!\m13|clockcounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(27),
	datad => VCC,
	cin => \m13|clockcounter[26]~85\,
	combout => \m13|clockcounter[27]~86_combout\,
	cout => \m13|clockcounter[27]~87\);

-- Location: FF_X46_Y47_N23
\m13|clockcounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[27]~86_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(27));

-- Location: LCCOMB_X46_Y47_N24
\m13|clockcounter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[28]~88_combout\ = (\m13|clockcounter\(28) & (\m13|clockcounter[27]~87\ $ (GND))) # (!\m13|clockcounter\(28) & (!\m13|clockcounter[27]~87\ & VCC))
-- \m13|clockcounter[28]~89\ = CARRY((\m13|clockcounter\(28) & !\m13|clockcounter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(28),
	datad => VCC,
	cin => \m13|clockcounter[27]~87\,
	combout => \m13|clockcounter[28]~88_combout\,
	cout => \m13|clockcounter[28]~89\);

-- Location: FF_X46_Y47_N25
\m13|clockcounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[28]~88_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(28));

-- Location: LCCOMB_X46_Y47_N26
\m13|clockcounter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[29]~90_combout\ = (\m13|clockcounter\(29) & (!\m13|clockcounter[28]~89\)) # (!\m13|clockcounter\(29) & ((\m13|clockcounter[28]~89\) # (GND)))
-- \m13|clockcounter[29]~91\ = CARRY((!\m13|clockcounter[28]~89\) # (!\m13|clockcounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(29),
	datad => VCC,
	cin => \m13|clockcounter[28]~89\,
	combout => \m13|clockcounter[29]~90_combout\,
	cout => \m13|clockcounter[29]~91\);

-- Location: FF_X46_Y47_N27
\m13|clockcounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[29]~90_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(29));

-- Location: LCCOMB_X46_Y47_N28
\m13|clockcounter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[30]~92_combout\ = (\m13|clockcounter\(30) & (\m13|clockcounter[29]~91\ $ (GND))) # (!\m13|clockcounter\(30) & (!\m13|clockcounter[29]~91\ & VCC))
-- \m13|clockcounter[30]~93\ = CARRY((\m13|clockcounter\(30) & !\m13|clockcounter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m13|clockcounter\(30),
	datad => VCC,
	cin => \m13|clockcounter[29]~91\,
	combout => \m13|clockcounter[30]~92_combout\,
	cout => \m13|clockcounter[30]~93\);

-- Location: FF_X46_Y47_N29
\m13|clockcounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[30]~92_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(30));

-- Location: LCCOMB_X46_Y47_N30
\m13|clockcounter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clockcounter[31]~94_combout\ = \m13|clockcounter\(31) $ (\m13|clockcounter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(31),
	cin => \m13|clockcounter[30]~93\,
	combout => \m13|clockcounter[31]~94_combout\);

-- Location: FF_X46_Y47_N31
\m13|clockcounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clockcounter[31]~94_combout\,
	sclr => \m13|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clockcounter\(31));

-- Location: LCCOMB_X45_Y47_N8
\m13|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~6_combout\ = (!\m13|clockcounter\(25) & (!\m13|clockcounter\(27) & (!\m13|clockcounter\(26) & !\m13|clockcounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(25),
	datab => \m13|clockcounter\(27),
	datac => \m13|clockcounter\(26),
	datad => \m13|clockcounter\(24),
	combout => \m13|LessThan0~6_combout\);

-- Location: LCCOMB_X45_Y47_N30
\m13|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~7_combout\ = (!\m13|clockcounter\(28) & (!\m13|clockcounter\(29) & (\m13|LessThan0~6_combout\ & !\m13|clockcounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(28),
	datab => \m13|clockcounter\(29),
	datac => \m13|LessThan0~6_combout\,
	datad => \m13|clockcounter\(30),
	combout => \m13|LessThan0~7_combout\);

-- Location: LCCOMB_X45_Y47_N20
\m13|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~0_combout\ = (((!\m13|clockcounter\(15) & !\m13|clockcounter\(14))) # (!\m13|clockcounter\(17))) # (!\m13|clockcounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(16),
	datab => \m13|clockcounter\(15),
	datac => \m13|clockcounter\(14),
	datad => \m13|clockcounter\(17),
	combout => \m13|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y47_N4
\m13|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~1_combout\ = ((!\m13|clockcounter\(7) & (!\m13|clockcounter\(6) & !\m13|clockcounter\(8)))) # (!\m13|clockcounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(7),
	datab => \m13|clockcounter\(6),
	datac => \m13|clockcounter\(9),
	datad => \m13|clockcounter\(8),
	combout => \m13|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y47_N24
\m13|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~2_combout\ = (!\m13|clockcounter\(12) & (!\m13|clockcounter\(13) & (!\m13|clockcounter\(10) & !\m13|clockcounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(12),
	datab => \m13|clockcounter\(13),
	datac => \m13|clockcounter\(10),
	datad => \m13|clockcounter\(11),
	combout => \m13|LessThan0~2_combout\);

-- Location: LCCOMB_X45_Y47_N12
\m13|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~3_combout\ = (\m13|LessThan0~0_combout\) # ((!\m13|clockcounter\(15) & (\m13|LessThan0~1_combout\ & \m13|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(15),
	datab => \m13|LessThan0~0_combout\,
	datac => \m13|LessThan0~1_combout\,
	datad => \m13|LessThan0~2_combout\,
	combout => \m13|LessThan0~3_combout\);

-- Location: LCCOMB_X45_Y47_N28
\m13|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~4_combout\ = ((\m13|LessThan0~3_combout\) # (!\m13|clockcounter\(18))) # (!\m13|clockcounter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|clockcounter\(19),
	datab => \m13|clockcounter\(18),
	datad => \m13|LessThan0~3_combout\,
	combout => \m13|LessThan0~4_combout\);

-- Location: LCCOMB_X45_Y47_N0
\m13|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|LessThan0~8_combout\ = (!\m13|clockcounter\(31) & (((!\m13|LessThan0~4_combout\) # (!\m13|LessThan0~7_combout\)) # (!\m13|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m13|LessThan0~5_combout\,
	datab => \m13|clockcounter\(31),
	datac => \m13|LessThan0~7_combout\,
	datad => \m13|LessThan0~4_combout\,
	combout => \m13|LessThan0~8_combout\);

-- Location: LCCOMB_X45_Y47_N10
\m13|clk_110Hz_temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m13|clk_110Hz_temp~feeder_combout\ = \m13|LessThan0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m13|LessThan0~8_combout\,
	combout => \m13|clk_110Hz_temp~feeder_combout\);

-- Location: FF_X45_Y47_N11
\m13|clk_110Hz_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m13|clk_110Hz_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m13|clk_110Hz_temp~q\);

-- Location: CLKCTRL_G14
\m13|clk_110Hz_temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m13|clk_110Hz_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m13|clk_110Hz_temp~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y39_N0
\m1|clockcounter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[0]~32_combout\ = \m1|clockcounter\(0) $ (VCC)
-- \m1|clockcounter[0]~33\ = CARRY(\m1|clockcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(0),
	datad => VCC,
	combout => \m1|clockcounter[0]~32_combout\,
	cout => \m1|clockcounter[0]~33\);

-- Location: FF_X57_Y39_N1
\m1|clockcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[0]~32_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(0));

-- Location: LCCOMB_X57_Y39_N2
\m1|clockcounter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[1]~34_combout\ = (\m1|clockcounter\(1) & (!\m1|clockcounter[0]~33\)) # (!\m1|clockcounter\(1) & ((\m1|clockcounter[0]~33\) # (GND)))
-- \m1|clockcounter[1]~35\ = CARRY((!\m1|clockcounter[0]~33\) # (!\m1|clockcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(1),
	datad => VCC,
	cin => \m1|clockcounter[0]~33\,
	combout => \m1|clockcounter[1]~34_combout\,
	cout => \m1|clockcounter[1]~35\);

-- Location: FF_X57_Y39_N3
\m1|clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[1]~34_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(1));

-- Location: LCCOMB_X57_Y39_N4
\m1|clockcounter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[2]~36_combout\ = (\m1|clockcounter\(2) & (\m1|clockcounter[1]~35\ $ (GND))) # (!\m1|clockcounter\(2) & (!\m1|clockcounter[1]~35\ & VCC))
-- \m1|clockcounter[2]~37\ = CARRY((\m1|clockcounter\(2) & !\m1|clockcounter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(2),
	datad => VCC,
	cin => \m1|clockcounter[1]~35\,
	combout => \m1|clockcounter[2]~36_combout\,
	cout => \m1|clockcounter[2]~37\);

-- Location: FF_X57_Y39_N5
\m1|clockcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[2]~36_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(2));

-- Location: LCCOMB_X57_Y39_N6
\m1|clockcounter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[3]~38_combout\ = (\m1|clockcounter\(3) & (!\m1|clockcounter[2]~37\)) # (!\m1|clockcounter\(3) & ((\m1|clockcounter[2]~37\) # (GND)))
-- \m1|clockcounter[3]~39\ = CARRY((!\m1|clockcounter[2]~37\) # (!\m1|clockcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(3),
	datad => VCC,
	cin => \m1|clockcounter[2]~37\,
	combout => \m1|clockcounter[3]~38_combout\,
	cout => \m1|clockcounter[3]~39\);

-- Location: FF_X57_Y39_N7
\m1|clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[3]~38_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(3));

-- Location: LCCOMB_X57_Y39_N8
\m1|clockcounter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[4]~40_combout\ = (\m1|clockcounter\(4) & (\m1|clockcounter[3]~39\ $ (GND))) # (!\m1|clockcounter\(4) & (!\m1|clockcounter[3]~39\ & VCC))
-- \m1|clockcounter[4]~41\ = CARRY((\m1|clockcounter\(4) & !\m1|clockcounter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(4),
	datad => VCC,
	cin => \m1|clockcounter[3]~39\,
	combout => \m1|clockcounter[4]~40_combout\,
	cout => \m1|clockcounter[4]~41\);

-- Location: FF_X57_Y39_N9
\m1|clockcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[4]~40_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(4));

-- Location: LCCOMB_X57_Y39_N10
\m1|clockcounter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[5]~42_combout\ = (\m1|clockcounter\(5) & (!\m1|clockcounter[4]~41\)) # (!\m1|clockcounter\(5) & ((\m1|clockcounter[4]~41\) # (GND)))
-- \m1|clockcounter[5]~43\ = CARRY((!\m1|clockcounter[4]~41\) # (!\m1|clockcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(5),
	datad => VCC,
	cin => \m1|clockcounter[4]~41\,
	combout => \m1|clockcounter[5]~42_combout\,
	cout => \m1|clockcounter[5]~43\);

-- Location: FF_X57_Y39_N11
\m1|clockcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[5]~42_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(5));

-- Location: LCCOMB_X57_Y39_N12
\m1|clockcounter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[6]~44_combout\ = (\m1|clockcounter\(6) & (\m1|clockcounter[5]~43\ $ (GND))) # (!\m1|clockcounter\(6) & (!\m1|clockcounter[5]~43\ & VCC))
-- \m1|clockcounter[6]~45\ = CARRY((\m1|clockcounter\(6) & !\m1|clockcounter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(6),
	datad => VCC,
	cin => \m1|clockcounter[5]~43\,
	combout => \m1|clockcounter[6]~44_combout\,
	cout => \m1|clockcounter[6]~45\);

-- Location: FF_X57_Y39_N13
\m1|clockcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[6]~44_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(6));

-- Location: LCCOMB_X57_Y39_N14
\m1|clockcounter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[7]~46_combout\ = (\m1|clockcounter\(7) & (!\m1|clockcounter[6]~45\)) # (!\m1|clockcounter\(7) & ((\m1|clockcounter[6]~45\) # (GND)))
-- \m1|clockcounter[7]~47\ = CARRY((!\m1|clockcounter[6]~45\) # (!\m1|clockcounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(7),
	datad => VCC,
	cin => \m1|clockcounter[6]~45\,
	combout => \m1|clockcounter[7]~46_combout\,
	cout => \m1|clockcounter[7]~47\);

-- Location: FF_X57_Y39_N15
\m1|clockcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[7]~46_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(7));

-- Location: LCCOMB_X57_Y39_N16
\m1|clockcounter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[8]~48_combout\ = (\m1|clockcounter\(8) & (\m1|clockcounter[7]~47\ $ (GND))) # (!\m1|clockcounter\(8) & (!\m1|clockcounter[7]~47\ & VCC))
-- \m1|clockcounter[8]~49\ = CARRY((\m1|clockcounter\(8) & !\m1|clockcounter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(8),
	datad => VCC,
	cin => \m1|clockcounter[7]~47\,
	combout => \m1|clockcounter[8]~48_combout\,
	cout => \m1|clockcounter[8]~49\);

-- Location: FF_X57_Y39_N17
\m1|clockcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[8]~48_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(8));

-- Location: LCCOMB_X57_Y39_N18
\m1|clockcounter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[9]~50_combout\ = (\m1|clockcounter\(9) & (!\m1|clockcounter[8]~49\)) # (!\m1|clockcounter\(9) & ((\m1|clockcounter[8]~49\) # (GND)))
-- \m1|clockcounter[9]~51\ = CARRY((!\m1|clockcounter[8]~49\) # (!\m1|clockcounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(9),
	datad => VCC,
	cin => \m1|clockcounter[8]~49\,
	combout => \m1|clockcounter[9]~50_combout\,
	cout => \m1|clockcounter[9]~51\);

-- Location: FF_X57_Y39_N19
\m1|clockcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[9]~50_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(9));

-- Location: LCCOMB_X57_Y39_N20
\m1|clockcounter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[10]~52_combout\ = (\m1|clockcounter\(10) & (\m1|clockcounter[9]~51\ $ (GND))) # (!\m1|clockcounter\(10) & (!\m1|clockcounter[9]~51\ & VCC))
-- \m1|clockcounter[10]~53\ = CARRY((\m1|clockcounter\(10) & !\m1|clockcounter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(10),
	datad => VCC,
	cin => \m1|clockcounter[9]~51\,
	combout => \m1|clockcounter[10]~52_combout\,
	cout => \m1|clockcounter[10]~53\);

-- Location: FF_X57_Y39_N21
\m1|clockcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[10]~52_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(10));

-- Location: LCCOMB_X57_Y39_N22
\m1|clockcounter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[11]~54_combout\ = (\m1|clockcounter\(11) & (!\m1|clockcounter[10]~53\)) # (!\m1|clockcounter\(11) & ((\m1|clockcounter[10]~53\) # (GND)))
-- \m1|clockcounter[11]~55\ = CARRY((!\m1|clockcounter[10]~53\) # (!\m1|clockcounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(11),
	datad => VCC,
	cin => \m1|clockcounter[10]~53\,
	combout => \m1|clockcounter[11]~54_combout\,
	cout => \m1|clockcounter[11]~55\);

-- Location: FF_X57_Y39_N23
\m1|clockcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[11]~54_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(11));

-- Location: LCCOMB_X57_Y39_N24
\m1|clockcounter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[12]~56_combout\ = (\m1|clockcounter\(12) & (\m1|clockcounter[11]~55\ $ (GND))) # (!\m1|clockcounter\(12) & (!\m1|clockcounter[11]~55\ & VCC))
-- \m1|clockcounter[12]~57\ = CARRY((\m1|clockcounter\(12) & !\m1|clockcounter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(12),
	datad => VCC,
	cin => \m1|clockcounter[11]~55\,
	combout => \m1|clockcounter[12]~56_combout\,
	cout => \m1|clockcounter[12]~57\);

-- Location: FF_X57_Y39_N25
\m1|clockcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[12]~56_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(12));

-- Location: LCCOMB_X57_Y39_N26
\m1|clockcounter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[13]~58_combout\ = (\m1|clockcounter\(13) & (!\m1|clockcounter[12]~57\)) # (!\m1|clockcounter\(13) & ((\m1|clockcounter[12]~57\) # (GND)))
-- \m1|clockcounter[13]~59\ = CARRY((!\m1|clockcounter[12]~57\) # (!\m1|clockcounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(13),
	datad => VCC,
	cin => \m1|clockcounter[12]~57\,
	combout => \m1|clockcounter[13]~58_combout\,
	cout => \m1|clockcounter[13]~59\);

-- Location: FF_X57_Y39_N27
\m1|clockcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[13]~58_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(13));

-- Location: LCCOMB_X57_Y39_N28
\m1|clockcounter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[14]~60_combout\ = (\m1|clockcounter\(14) & (\m1|clockcounter[13]~59\ $ (GND))) # (!\m1|clockcounter\(14) & (!\m1|clockcounter[13]~59\ & VCC))
-- \m1|clockcounter[14]~61\ = CARRY((\m1|clockcounter\(14) & !\m1|clockcounter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(14),
	datad => VCC,
	cin => \m1|clockcounter[13]~59\,
	combout => \m1|clockcounter[14]~60_combout\,
	cout => \m1|clockcounter[14]~61\);

-- Location: FF_X58_Y39_N11
\m1|clockcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|clockcounter[14]~60_combout\,
	sclr => \m1|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(14));

-- Location: LCCOMB_X57_Y39_N30
\m1|clockcounter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[15]~62_combout\ = (\m1|clockcounter\(15) & (!\m1|clockcounter[14]~61\)) # (!\m1|clockcounter\(15) & ((\m1|clockcounter[14]~61\) # (GND)))
-- \m1|clockcounter[15]~63\ = CARRY((!\m1|clockcounter[14]~61\) # (!\m1|clockcounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(15),
	datad => VCC,
	cin => \m1|clockcounter[14]~61\,
	combout => \m1|clockcounter[15]~62_combout\,
	cout => \m1|clockcounter[15]~63\);

-- Location: FF_X57_Y39_N31
\m1|clockcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[15]~62_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(15));

-- Location: LCCOMB_X57_Y38_N0
\m1|clockcounter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[16]~64_combout\ = (\m1|clockcounter\(16) & (\m1|clockcounter[15]~63\ $ (GND))) # (!\m1|clockcounter\(16) & (!\m1|clockcounter[15]~63\ & VCC))
-- \m1|clockcounter[16]~65\ = CARRY((\m1|clockcounter\(16) & !\m1|clockcounter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(16),
	datad => VCC,
	cin => \m1|clockcounter[15]~63\,
	combout => \m1|clockcounter[16]~64_combout\,
	cout => \m1|clockcounter[16]~65\);

-- Location: FF_X58_Y39_N9
\m1|clockcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|clockcounter[16]~64_combout\,
	sclr => \m1|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(16));

-- Location: LCCOMB_X57_Y38_N2
\m1|clockcounter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[17]~66_combout\ = (\m1|clockcounter\(17) & (!\m1|clockcounter[16]~65\)) # (!\m1|clockcounter\(17) & ((\m1|clockcounter[16]~65\) # (GND)))
-- \m1|clockcounter[17]~67\ = CARRY((!\m1|clockcounter[16]~65\) # (!\m1|clockcounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(17),
	datad => VCC,
	cin => \m1|clockcounter[16]~65\,
	combout => \m1|clockcounter[17]~66_combout\,
	cout => \m1|clockcounter[17]~67\);

-- Location: FF_X57_Y38_N3
\m1|clockcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[17]~66_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(17));

-- Location: LCCOMB_X57_Y38_N4
\m1|clockcounter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[18]~68_combout\ = (\m1|clockcounter\(18) & (\m1|clockcounter[17]~67\ $ (GND))) # (!\m1|clockcounter\(18) & (!\m1|clockcounter[17]~67\ & VCC))
-- \m1|clockcounter[18]~69\ = CARRY((\m1|clockcounter\(18) & !\m1|clockcounter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(18),
	datad => VCC,
	cin => \m1|clockcounter[17]~67\,
	combout => \m1|clockcounter[18]~68_combout\,
	cout => \m1|clockcounter[18]~69\);

-- Location: FF_X58_Y39_N31
\m1|clockcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|clockcounter[18]~68_combout\,
	sclr => \m1|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(18));

-- Location: LCCOMB_X57_Y38_N6
\m1|clockcounter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[19]~70_combout\ = (\m1|clockcounter\(19) & (!\m1|clockcounter[18]~69\)) # (!\m1|clockcounter\(19) & ((\m1|clockcounter[18]~69\) # (GND)))
-- \m1|clockcounter[19]~71\ = CARRY((!\m1|clockcounter[18]~69\) # (!\m1|clockcounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(19),
	datad => VCC,
	cin => \m1|clockcounter[18]~69\,
	combout => \m1|clockcounter[19]~70_combout\,
	cout => \m1|clockcounter[19]~71\);

-- Location: FF_X58_Y39_N7
\m1|clockcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|clockcounter[19]~70_combout\,
	sclr => \m1|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(19));

-- Location: LCCOMB_X57_Y38_N8
\m1|clockcounter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[20]~72_combout\ = (\m1|clockcounter\(20) & (\m1|clockcounter[19]~71\ $ (GND))) # (!\m1|clockcounter\(20) & (!\m1|clockcounter[19]~71\ & VCC))
-- \m1|clockcounter[20]~73\ = CARRY((\m1|clockcounter\(20) & !\m1|clockcounter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(20),
	datad => VCC,
	cin => \m1|clockcounter[19]~71\,
	combout => \m1|clockcounter[20]~72_combout\,
	cout => \m1|clockcounter[20]~73\);

-- Location: FF_X58_Y39_N19
\m1|clockcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|clockcounter[20]~72_combout\,
	sclr => \m1|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(20));

-- Location: LCCOMB_X57_Y38_N10
\m1|clockcounter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[21]~74_combout\ = (\m1|clockcounter\(21) & (!\m1|clockcounter[20]~73\)) # (!\m1|clockcounter\(21) & ((\m1|clockcounter[20]~73\) # (GND)))
-- \m1|clockcounter[21]~75\ = CARRY((!\m1|clockcounter[20]~73\) # (!\m1|clockcounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(21),
	datad => VCC,
	cin => \m1|clockcounter[20]~73\,
	combout => \m1|clockcounter[21]~74_combout\,
	cout => \m1|clockcounter[21]~75\);

-- Location: FF_X57_Y38_N11
\m1|clockcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[21]~74_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(21));

-- Location: LCCOMB_X57_Y38_N12
\m1|clockcounter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[22]~76_combout\ = (\m1|clockcounter\(22) & (\m1|clockcounter[21]~75\ $ (GND))) # (!\m1|clockcounter\(22) & (!\m1|clockcounter[21]~75\ & VCC))
-- \m1|clockcounter[22]~77\ = CARRY((\m1|clockcounter\(22) & !\m1|clockcounter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(22),
	datad => VCC,
	cin => \m1|clockcounter[21]~75\,
	combout => \m1|clockcounter[22]~76_combout\,
	cout => \m1|clockcounter[22]~77\);

-- Location: FF_X57_Y38_N13
\m1|clockcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[22]~76_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(22));

-- Location: LCCOMB_X57_Y38_N14
\m1|clockcounter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[23]~78_combout\ = (\m1|clockcounter\(23) & (!\m1|clockcounter[22]~77\)) # (!\m1|clockcounter\(23) & ((\m1|clockcounter[22]~77\) # (GND)))
-- \m1|clockcounter[23]~79\ = CARRY((!\m1|clockcounter[22]~77\) # (!\m1|clockcounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(23),
	datad => VCC,
	cin => \m1|clockcounter[22]~77\,
	combout => \m1|clockcounter[23]~78_combout\,
	cout => \m1|clockcounter[23]~79\);

-- Location: FF_X57_Y38_N15
\m1|clockcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[23]~78_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(23));

-- Location: LCCOMB_X57_Y38_N16
\m1|clockcounter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[24]~80_combout\ = (\m1|clockcounter\(24) & (\m1|clockcounter[23]~79\ $ (GND))) # (!\m1|clockcounter\(24) & (!\m1|clockcounter[23]~79\ & VCC))
-- \m1|clockcounter[24]~81\ = CARRY((\m1|clockcounter\(24) & !\m1|clockcounter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(24),
	datad => VCC,
	cin => \m1|clockcounter[23]~79\,
	combout => \m1|clockcounter[24]~80_combout\,
	cout => \m1|clockcounter[24]~81\);

-- Location: FF_X57_Y38_N17
\m1|clockcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[24]~80_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(24));

-- Location: LCCOMB_X57_Y38_N18
\m1|clockcounter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[25]~82_combout\ = (\m1|clockcounter\(25) & (!\m1|clockcounter[24]~81\)) # (!\m1|clockcounter\(25) & ((\m1|clockcounter[24]~81\) # (GND)))
-- \m1|clockcounter[25]~83\ = CARRY((!\m1|clockcounter[24]~81\) # (!\m1|clockcounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(25),
	datad => VCC,
	cin => \m1|clockcounter[24]~81\,
	combout => \m1|clockcounter[25]~82_combout\,
	cout => \m1|clockcounter[25]~83\);

-- Location: FF_X57_Y38_N19
\m1|clockcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[25]~82_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(25));

-- Location: LCCOMB_X57_Y38_N20
\m1|clockcounter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[26]~84_combout\ = (\m1|clockcounter\(26) & (\m1|clockcounter[25]~83\ $ (GND))) # (!\m1|clockcounter\(26) & (!\m1|clockcounter[25]~83\ & VCC))
-- \m1|clockcounter[26]~85\ = CARRY((\m1|clockcounter\(26) & !\m1|clockcounter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(26),
	datad => VCC,
	cin => \m1|clockcounter[25]~83\,
	combout => \m1|clockcounter[26]~84_combout\,
	cout => \m1|clockcounter[26]~85\);

-- Location: FF_X57_Y38_N21
\m1|clockcounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[26]~84_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(26));

-- Location: LCCOMB_X57_Y38_N22
\m1|clockcounter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[27]~86_combout\ = (\m1|clockcounter\(27) & (!\m1|clockcounter[26]~85\)) # (!\m1|clockcounter\(27) & ((\m1|clockcounter[26]~85\) # (GND)))
-- \m1|clockcounter[27]~87\ = CARRY((!\m1|clockcounter[26]~85\) # (!\m1|clockcounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(27),
	datad => VCC,
	cin => \m1|clockcounter[26]~85\,
	combout => \m1|clockcounter[27]~86_combout\,
	cout => \m1|clockcounter[27]~87\);

-- Location: FF_X57_Y38_N23
\m1|clockcounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[27]~86_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(27));

-- Location: LCCOMB_X57_Y38_N24
\m1|clockcounter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[28]~88_combout\ = (\m1|clockcounter\(28) & (\m1|clockcounter[27]~87\ $ (GND))) # (!\m1|clockcounter\(28) & (!\m1|clockcounter[27]~87\ & VCC))
-- \m1|clockcounter[28]~89\ = CARRY((\m1|clockcounter\(28) & !\m1|clockcounter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(28),
	datad => VCC,
	cin => \m1|clockcounter[27]~87\,
	combout => \m1|clockcounter[28]~88_combout\,
	cout => \m1|clockcounter[28]~89\);

-- Location: FF_X57_Y38_N25
\m1|clockcounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[28]~88_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(28));

-- Location: LCCOMB_X57_Y38_N26
\m1|clockcounter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[29]~90_combout\ = (\m1|clockcounter\(29) & (!\m1|clockcounter[28]~89\)) # (!\m1|clockcounter\(29) & ((\m1|clockcounter[28]~89\) # (GND)))
-- \m1|clockcounter[29]~91\ = CARRY((!\m1|clockcounter[28]~89\) # (!\m1|clockcounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(29),
	datad => VCC,
	cin => \m1|clockcounter[28]~89\,
	combout => \m1|clockcounter[29]~90_combout\,
	cout => \m1|clockcounter[29]~91\);

-- Location: FF_X57_Y38_N27
\m1|clockcounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[29]~90_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(29));

-- Location: LCCOMB_X57_Y38_N28
\m1|clockcounter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[30]~92_combout\ = (\m1|clockcounter\(30) & (\m1|clockcounter[29]~91\ $ (GND))) # (!\m1|clockcounter\(30) & (!\m1|clockcounter[29]~91\ & VCC))
-- \m1|clockcounter[30]~93\ = CARRY((\m1|clockcounter\(30) & !\m1|clockcounter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(30),
	datad => VCC,
	cin => \m1|clockcounter[29]~91\,
	combout => \m1|clockcounter[30]~92_combout\,
	cout => \m1|clockcounter[30]~93\);

-- Location: FF_X57_Y38_N29
\m1|clockcounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[30]~92_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(30));

-- Location: LCCOMB_X57_Y38_N30
\m1|clockcounter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clockcounter[31]~94_combout\ = \m1|clockcounter\(31) $ (\m1|clockcounter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(31),
	cin => \m1|clockcounter[30]~93\,
	combout => \m1|clockcounter[31]~94_combout\);

-- Location: FF_X57_Y38_N31
\m1|clockcounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clockcounter[31]~94_combout\,
	sclr => \m1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clockcounter\(31));

-- Location: LCCOMB_X58_Y39_N0
\m1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~0_combout\ = (!\m1|clockcounter\(27) & (!\m1|clockcounter\(29) & (!\m1|clockcounter\(28) & !\m1|clockcounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(27),
	datab => \m1|clockcounter\(29),
	datac => \m1|clockcounter\(28),
	datad => \m1|clockcounter\(26),
	combout => \m1|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y39_N14
\m1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~1_combout\ = (((!\m1|clockcounter\(18) & !\m1|clockcounter\(17))) # (!\m1|clockcounter\(20))) # (!\m1|clockcounter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(19),
	datab => \m1|clockcounter\(20),
	datac => \m1|clockcounter\(18),
	datad => \m1|clockcounter\(17),
	combout => \m1|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y39_N4
\m1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~2_combout\ = (((\m1|LessThan0~1_combout\) # (!\m1|clockcounter\(23))) # (!\m1|clockcounter\(21))) # (!\m1|clockcounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(22),
	datab => \m1|clockcounter\(21),
	datac => \m1|LessThan0~1_combout\,
	datad => \m1|clockcounter\(23),
	combout => \m1|LessThan0~2_combout\);

-- Location: LCCOMB_X58_Y39_N26
\m1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~3_combout\ = (((!\m1|clockcounter\(15)) # (!\m1|clockcounter\(13))) # (!\m1|clockcounter\(12))) # (!\m1|clockcounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(14),
	datab => \m1|clockcounter\(12),
	datac => \m1|clockcounter\(13),
	datad => \m1|clockcounter\(15),
	combout => \m1|LessThan0~3_combout\);

-- Location: LCCOMB_X58_Y39_N24
\m1|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~4_combout\ = (!\m1|clockcounter\(7) & (!\m1|clockcounter\(9) & (!\m1|clockcounter\(8) & !\m1|clockcounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(7),
	datab => \m1|clockcounter\(9),
	datac => \m1|clockcounter\(8),
	datad => \m1|clockcounter\(10),
	combout => \m1|LessThan0~4_combout\);

-- Location: LCCOMB_X58_Y39_N16
\m1|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~5_combout\ = (\m1|LessThan0~3_combout\) # ((!\m1|clockcounter\(11) & \m1|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(11),
	datac => \m1|LessThan0~3_combout\,
	datad => \m1|LessThan0~4_combout\,
	combout => \m1|LessThan0~5_combout\);

-- Location: LCCOMB_X58_Y39_N12
\m1|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~6_combout\ = (!\m1|clockcounter\(16) & (!\m1|clockcounter\(18) & \m1|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1|clockcounter\(16),
	datac => \m1|clockcounter\(18),
	datad => \m1|LessThan0~5_combout\,
	combout => \m1|LessThan0~6_combout\);

-- Location: LCCOMB_X58_Y39_N2
\m1|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~7_combout\ = (\m1|clockcounter\(25) & ((\m1|clockcounter\(24)) # ((!\m1|LessThan0~2_combout\ & !\m1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(25),
	datab => \m1|clockcounter\(24),
	datac => \m1|LessThan0~2_combout\,
	datad => \m1|LessThan0~6_combout\,
	combout => \m1|LessThan0~7_combout\);

-- Location: LCCOMB_X58_Y39_N28
\m1|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|LessThan0~8_combout\ = (!\m1|clockcounter\(31) & (((\m1|clockcounter\(30)) # (\m1|LessThan0~7_combout\)) # (!\m1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|clockcounter\(31),
	datab => \m1|LessThan0~0_combout\,
	datac => \m1|clockcounter\(30),
	datad => \m1|LessThan0~7_combout\,
	combout => \m1|LessThan0~8_combout\);

-- Location: LCCOMB_X58_Y39_N22
\m1|clk_1Hz_temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m1|clk_1Hz_temp~feeder_combout\ = \m1|LessThan0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m1|LessThan0~8_combout\,
	combout => \m1|clk_1Hz_temp~feeder_combout\);

-- Location: FF_X58_Y39_N23
\m1|clk_1Hz_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m1|clk_1Hz_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|clk_1Hz_temp~q\);

-- Location: CLKCTRL_G9
\m1|clk_1Hz_temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m1|clk_1Hz_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m1|clk_1Hz_temp~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y51_N2
\m2|m[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[1]~31_combout\ = (\m2|m\(0) & (\m2|m\(1) $ (VCC))) # (!\m2|m\(0) & (\m2|m\(1) & VCC))
-- \m2|m[1]~32\ = CARRY((\m2|m\(0) & \m2|m\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(1),
	datad => VCC,
	combout => \m2|m[1]~31_combout\,
	cout => \m2|m[1]~32\);

-- Location: IOIBUF_X51_Y54_N29
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X58_Y49_N24
\m2|m[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[0]~35_combout\ = (\m2|Equal1~10_combout\ & ((!\m2|process_0~4_combout\) # (!\m2|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|process_0~9_combout\,
	datac => \m2|Equal1~10_combout\,
	datad => \m2|process_0~4_combout\,
	combout => \m2|m[0]~35_combout\);

-- Location: FF_X58_Y51_N3
\m2|m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[1]~31_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(1));

-- Location: LCCOMB_X59_Y49_N6
\m2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~0_combout\ = (!\m2|m\(1) & (!\m2|m\(3) & (\m2|m\(0) & \m2|m\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(1),
	datab => \m2|m\(3),
	datac => \m2|m\(0),
	datad => \m2|m\(2),
	combout => \m2|process_0~0_combout\);

-- Location: LCCOMB_X59_Y49_N16
\m2|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~1_combout\ = (!\m2|m\(6) & (!\m2|m\(4) & (!\m2|m\(5) & !\m2|m\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(6),
	datab => \m2|m\(4),
	datac => \m2|m\(5),
	datad => \m2|m\(7),
	combout => \m2|process_0~1_combout\);

-- Location: LCCOMB_X59_Y49_N22
\m2|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~3_combout\ = (!\m2|m\(13) & (!\m2|m\(15) & (!\m2|m\(12) & !\m2|m\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(13),
	datab => \m2|m\(15),
	datac => \m2|m\(12),
	datad => \m2|m\(14),
	combout => \m2|process_0~3_combout\);

-- Location: LCCOMB_X58_Y51_N0
\m2|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~2_combout\ = (!\m2|m\(11) & (!\m2|m\(9) & (!\m2|m\(10) & !\m2|m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(11),
	datab => \m2|m\(9),
	datac => \m2|m\(10),
	datad => \m2|m\(8),
	combout => \m2|process_0~2_combout\);

-- Location: LCCOMB_X59_Y49_N28
\m2|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~4_combout\ = (\m2|process_0~0_combout\ & (\m2|process_0~1_combout\ & (\m2|process_0~3_combout\ & \m2|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|process_0~0_combout\,
	datab => \m2|process_0~1_combout\,
	datac => \m2|process_0~3_combout\,
	datad => \m2|process_0~2_combout\,
	combout => \m2|process_0~4_combout\);

-- Location: LCCOMB_X58_Y49_N14
\m2|m[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[0]~36_combout\ = \m2|m\(0) $ (((\m2|Equal1~10_combout\ & ((!\m2|process_0~4_combout\) # (!\m2|process_0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|Equal1~10_combout\,
	datab => \m2|process_0~9_combout\,
	datac => \m2|m\(0),
	datad => \m2|process_0~4_combout\,
	combout => \m2|m[0]~36_combout\);

-- Location: FF_X58_Y49_N15
\m2|m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[0]~36_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(0));

-- Location: LCCOMB_X58_Y51_N4
\m2|m[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[2]~33_combout\ = (\m2|m\(2) & (!\m2|m[1]~32\)) # (!\m2|m\(2) & ((\m2|m[1]~32\) # (GND)))
-- \m2|m[2]~34\ = CARRY((!\m2|m[1]~32\) # (!\m2|m\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(2),
	datad => VCC,
	cin => \m2|m[1]~32\,
	combout => \m2|m[2]~33_combout\,
	cout => \m2|m[2]~34\);

-- Location: FF_X58_Y51_N5
\m2|m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[2]~33_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(2));

-- Location: LCCOMB_X58_Y51_N6
\m2|m[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[3]~37_combout\ = (\m2|m\(3) & (\m2|m[2]~34\ $ (GND))) # (!\m2|m\(3) & (!\m2|m[2]~34\ & VCC))
-- \m2|m[3]~38\ = CARRY((\m2|m\(3) & !\m2|m[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(3),
	datad => VCC,
	cin => \m2|m[2]~34\,
	combout => \m2|m[3]~37_combout\,
	cout => \m2|m[3]~38\);

-- Location: FF_X58_Y51_N7
\m2|m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[3]~37_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(3));

-- Location: LCCOMB_X58_Y51_N8
\m2|m[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[4]~39_combout\ = (\m2|m\(4) & (!\m2|m[3]~38\)) # (!\m2|m\(4) & ((\m2|m[3]~38\) # (GND)))
-- \m2|m[4]~40\ = CARRY((!\m2|m[3]~38\) # (!\m2|m\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(4),
	datad => VCC,
	cin => \m2|m[3]~38\,
	combout => \m2|m[4]~39_combout\,
	cout => \m2|m[4]~40\);

-- Location: FF_X58_Y51_N9
\m2|m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[4]~39_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(4));

-- Location: LCCOMB_X58_Y51_N10
\m2|m[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[5]~41_combout\ = (\m2|m\(5) & (\m2|m[4]~40\ $ (GND))) # (!\m2|m\(5) & (!\m2|m[4]~40\ & VCC))
-- \m2|m[5]~42\ = CARRY((\m2|m\(5) & !\m2|m[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(5),
	datad => VCC,
	cin => \m2|m[4]~40\,
	combout => \m2|m[5]~41_combout\,
	cout => \m2|m[5]~42\);

-- Location: FF_X58_Y51_N11
\m2|m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[5]~41_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(5));

-- Location: LCCOMB_X58_Y51_N12
\m2|m[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[6]~43_combout\ = (\m2|m\(6) & (!\m2|m[5]~42\)) # (!\m2|m\(6) & ((\m2|m[5]~42\) # (GND)))
-- \m2|m[6]~44\ = CARRY((!\m2|m[5]~42\) # (!\m2|m\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(6),
	datad => VCC,
	cin => \m2|m[5]~42\,
	combout => \m2|m[6]~43_combout\,
	cout => \m2|m[6]~44\);

-- Location: FF_X58_Y51_N13
\m2|m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[6]~43_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(6));

-- Location: LCCOMB_X58_Y51_N14
\m2|m[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[7]~45_combout\ = (\m2|m\(7) & (\m2|m[6]~44\ $ (GND))) # (!\m2|m\(7) & (!\m2|m[6]~44\ & VCC))
-- \m2|m[7]~46\ = CARRY((\m2|m\(7) & !\m2|m[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(7),
	datad => VCC,
	cin => \m2|m[6]~44\,
	combout => \m2|m[7]~45_combout\,
	cout => \m2|m[7]~46\);

-- Location: FF_X58_Y51_N15
\m2|m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[7]~45_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(7));

-- Location: LCCOMB_X58_Y51_N16
\m2|m[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[8]~47_combout\ = (\m2|m\(8) & (!\m2|m[7]~46\)) # (!\m2|m\(8) & ((\m2|m[7]~46\) # (GND)))
-- \m2|m[8]~48\ = CARRY((!\m2|m[7]~46\) # (!\m2|m\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(8),
	datad => VCC,
	cin => \m2|m[7]~46\,
	combout => \m2|m[8]~47_combout\,
	cout => \m2|m[8]~48\);

-- Location: FF_X58_Y51_N17
\m2|m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[8]~47_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(8));

-- Location: LCCOMB_X58_Y51_N18
\m2|m[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[9]~49_combout\ = (\m2|m\(9) & (\m2|m[8]~48\ $ (GND))) # (!\m2|m\(9) & (!\m2|m[8]~48\ & VCC))
-- \m2|m[9]~50\ = CARRY((\m2|m\(9) & !\m2|m[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(9),
	datad => VCC,
	cin => \m2|m[8]~48\,
	combout => \m2|m[9]~49_combout\,
	cout => \m2|m[9]~50\);

-- Location: FF_X58_Y51_N19
\m2|m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[9]~49_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(9));

-- Location: LCCOMB_X58_Y51_N20
\m2|m[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[10]~51_combout\ = (\m2|m\(10) & (!\m2|m[9]~50\)) # (!\m2|m\(10) & ((\m2|m[9]~50\) # (GND)))
-- \m2|m[10]~52\ = CARRY((!\m2|m[9]~50\) # (!\m2|m\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(10),
	datad => VCC,
	cin => \m2|m[9]~50\,
	combout => \m2|m[10]~51_combout\,
	cout => \m2|m[10]~52\);

-- Location: FF_X58_Y51_N21
\m2|m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[10]~51_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(10));

-- Location: LCCOMB_X58_Y51_N22
\m2|m[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[11]~53_combout\ = (\m2|m\(11) & (\m2|m[10]~52\ $ (GND))) # (!\m2|m\(11) & (!\m2|m[10]~52\ & VCC))
-- \m2|m[11]~54\ = CARRY((\m2|m\(11) & !\m2|m[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(11),
	datad => VCC,
	cin => \m2|m[10]~52\,
	combout => \m2|m[11]~53_combout\,
	cout => \m2|m[11]~54\);

-- Location: FF_X58_Y51_N23
\m2|m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[11]~53_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(11));

-- Location: LCCOMB_X58_Y51_N24
\m2|m[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[12]~55_combout\ = (\m2|m\(12) & (!\m2|m[11]~54\)) # (!\m2|m\(12) & ((\m2|m[11]~54\) # (GND)))
-- \m2|m[12]~56\ = CARRY((!\m2|m[11]~54\) # (!\m2|m\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(12),
	datad => VCC,
	cin => \m2|m[11]~54\,
	combout => \m2|m[12]~55_combout\,
	cout => \m2|m[12]~56\);

-- Location: FF_X58_Y51_N25
\m2|m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[12]~55_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(12));

-- Location: LCCOMB_X58_Y51_N26
\m2|m[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[13]~57_combout\ = (\m2|m\(13) & (\m2|m[12]~56\ $ (GND))) # (!\m2|m\(13) & (!\m2|m[12]~56\ & VCC))
-- \m2|m[13]~58\ = CARRY((\m2|m\(13) & !\m2|m[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(13),
	datad => VCC,
	cin => \m2|m[12]~56\,
	combout => \m2|m[13]~57_combout\,
	cout => \m2|m[13]~58\);

-- Location: FF_X58_Y51_N27
\m2|m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[13]~57_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(13));

-- Location: LCCOMB_X58_Y51_N28
\m2|m[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[14]~59_combout\ = (\m2|m\(14) & (!\m2|m[13]~58\)) # (!\m2|m\(14) & ((\m2|m[13]~58\) # (GND)))
-- \m2|m[14]~60\ = CARRY((!\m2|m[13]~58\) # (!\m2|m\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(14),
	datad => VCC,
	cin => \m2|m[13]~58\,
	combout => \m2|m[14]~59_combout\,
	cout => \m2|m[14]~60\);

-- Location: FF_X58_Y51_N29
\m2|m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[14]~59_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(14));

-- Location: LCCOMB_X58_Y51_N30
\m2|m[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[15]~61_combout\ = (\m2|m\(15) & (\m2|m[14]~60\ $ (GND))) # (!\m2|m\(15) & (!\m2|m[14]~60\ & VCC))
-- \m2|m[15]~62\ = CARRY((\m2|m\(15) & !\m2|m[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(15),
	datad => VCC,
	cin => \m2|m[14]~60\,
	combout => \m2|m[15]~61_combout\,
	cout => \m2|m[15]~62\);

-- Location: FF_X58_Y51_N31
\m2|m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[15]~61_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(15));

-- Location: LCCOMB_X58_Y50_N0
\m2|m[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[16]~63_combout\ = (\m2|m\(16) & (!\m2|m[15]~62\)) # (!\m2|m\(16) & ((\m2|m[15]~62\) # (GND)))
-- \m2|m[16]~64\ = CARRY((!\m2|m[15]~62\) # (!\m2|m\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(16),
	datad => VCC,
	cin => \m2|m[15]~62\,
	combout => \m2|m[16]~63_combout\,
	cout => \m2|m[16]~64\);

-- Location: FF_X58_Y50_N1
\m2|m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[16]~63_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(16));

-- Location: LCCOMB_X58_Y50_N2
\m2|m[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[17]~65_combout\ = (\m2|m\(17) & (\m2|m[16]~64\ $ (GND))) # (!\m2|m\(17) & (!\m2|m[16]~64\ & VCC))
-- \m2|m[17]~66\ = CARRY((\m2|m\(17) & !\m2|m[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(17),
	datad => VCC,
	cin => \m2|m[16]~64\,
	combout => \m2|m[17]~65_combout\,
	cout => \m2|m[17]~66\);

-- Location: FF_X58_Y50_N3
\m2|m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[17]~65_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(17));

-- Location: LCCOMB_X58_Y50_N4
\m2|m[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[18]~67_combout\ = (\m2|m\(18) & (!\m2|m[17]~66\)) # (!\m2|m\(18) & ((\m2|m[17]~66\) # (GND)))
-- \m2|m[18]~68\ = CARRY((!\m2|m[17]~66\) # (!\m2|m\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(18),
	datad => VCC,
	cin => \m2|m[17]~66\,
	combout => \m2|m[18]~67_combout\,
	cout => \m2|m[18]~68\);

-- Location: FF_X58_Y50_N5
\m2|m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[18]~67_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(18));

-- Location: LCCOMB_X58_Y50_N6
\m2|m[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[19]~69_combout\ = (\m2|m\(19) & (\m2|m[18]~68\ $ (GND))) # (!\m2|m\(19) & (!\m2|m[18]~68\ & VCC))
-- \m2|m[19]~70\ = CARRY((\m2|m\(19) & !\m2|m[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(19),
	datad => VCC,
	cin => \m2|m[18]~68\,
	combout => \m2|m[19]~69_combout\,
	cout => \m2|m[19]~70\);

-- Location: FF_X58_Y50_N7
\m2|m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[19]~69_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(19));

-- Location: LCCOMB_X58_Y50_N8
\m2|m[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[20]~71_combout\ = (\m2|m\(20) & (!\m2|m[19]~70\)) # (!\m2|m\(20) & ((\m2|m[19]~70\) # (GND)))
-- \m2|m[20]~72\ = CARRY((!\m2|m[19]~70\) # (!\m2|m\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(20),
	datad => VCC,
	cin => \m2|m[19]~70\,
	combout => \m2|m[20]~71_combout\,
	cout => \m2|m[20]~72\);

-- Location: FF_X58_Y50_N9
\m2|m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[20]~71_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(20));

-- Location: LCCOMB_X58_Y50_N10
\m2|m[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[21]~73_combout\ = (\m2|m\(21) & (\m2|m[20]~72\ $ (GND))) # (!\m2|m\(21) & (!\m2|m[20]~72\ & VCC))
-- \m2|m[21]~74\ = CARRY((\m2|m\(21) & !\m2|m[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(21),
	datad => VCC,
	cin => \m2|m[20]~72\,
	combout => \m2|m[21]~73_combout\,
	cout => \m2|m[21]~74\);

-- Location: FF_X58_Y50_N11
\m2|m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[21]~73_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(21));

-- Location: LCCOMB_X58_Y50_N12
\m2|m[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[22]~75_combout\ = (\m2|m\(22) & (!\m2|m[21]~74\)) # (!\m2|m\(22) & ((\m2|m[21]~74\) # (GND)))
-- \m2|m[22]~76\ = CARRY((!\m2|m[21]~74\) # (!\m2|m\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(22),
	datad => VCC,
	cin => \m2|m[21]~74\,
	combout => \m2|m[22]~75_combout\,
	cout => \m2|m[22]~76\);

-- Location: FF_X58_Y50_N13
\m2|m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[22]~75_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(22));

-- Location: LCCOMB_X58_Y50_N14
\m2|m[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[23]~77_combout\ = (\m2|m\(23) & (\m2|m[22]~76\ $ (GND))) # (!\m2|m\(23) & (!\m2|m[22]~76\ & VCC))
-- \m2|m[23]~78\ = CARRY((\m2|m\(23) & !\m2|m[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(23),
	datad => VCC,
	cin => \m2|m[22]~76\,
	combout => \m2|m[23]~77_combout\,
	cout => \m2|m[23]~78\);

-- Location: FF_X58_Y50_N15
\m2|m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[23]~77_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(23));

-- Location: LCCOMB_X57_Y50_N6
\m2|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~6_combout\ = (!\m2|m\(22) & (!\m2|m\(23) & (!\m2|m\(20) & !\m2|m\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(22),
	datab => \m2|m\(23),
	datac => \m2|m\(20),
	datad => \m2|m\(21),
	combout => \m2|process_0~6_combout\);

-- Location: LCCOMB_X57_Y50_N4
\m2|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~5_combout\ = (!\m2|m\(19) & (!\m2|m\(16) & (!\m2|m\(17) & !\m2|m\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(19),
	datab => \m2|m\(16),
	datac => \m2|m\(17),
	datad => \m2|m\(18),
	combout => \m2|process_0~5_combout\);

-- Location: LCCOMB_X58_Y50_N16
\m2|m[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[24]~79_combout\ = (\m2|m\(24) & (!\m2|m[23]~78\)) # (!\m2|m\(24) & ((\m2|m[23]~78\) # (GND)))
-- \m2|m[24]~80\ = CARRY((!\m2|m[23]~78\) # (!\m2|m\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(24),
	datad => VCC,
	cin => \m2|m[23]~78\,
	combout => \m2|m[24]~79_combout\,
	cout => \m2|m[24]~80\);

-- Location: FF_X58_Y50_N17
\m2|m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[24]~79_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(24));

-- Location: LCCOMB_X58_Y50_N18
\m2|m[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[25]~81_combout\ = (\m2|m\(25) & (\m2|m[24]~80\ $ (GND))) # (!\m2|m\(25) & (!\m2|m[24]~80\ & VCC))
-- \m2|m[25]~82\ = CARRY((\m2|m\(25) & !\m2|m[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(25),
	datad => VCC,
	cin => \m2|m[24]~80\,
	combout => \m2|m[25]~81_combout\,
	cout => \m2|m[25]~82\);

-- Location: FF_X58_Y50_N19
\m2|m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[25]~81_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(25));

-- Location: LCCOMB_X58_Y50_N20
\m2|m[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[26]~83_combout\ = (\m2|m\(26) & (!\m2|m[25]~82\)) # (!\m2|m\(26) & ((\m2|m[25]~82\) # (GND)))
-- \m2|m[26]~84\ = CARRY((!\m2|m[25]~82\) # (!\m2|m\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(26),
	datad => VCC,
	cin => \m2|m[25]~82\,
	combout => \m2|m[26]~83_combout\,
	cout => \m2|m[26]~84\);

-- Location: FF_X58_Y50_N21
\m2|m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[26]~83_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(26));

-- Location: LCCOMB_X58_Y50_N22
\m2|m[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[27]~85_combout\ = (\m2|m\(27) & (\m2|m[26]~84\ $ (GND))) # (!\m2|m\(27) & (!\m2|m[26]~84\ & VCC))
-- \m2|m[27]~86\ = CARRY((\m2|m\(27) & !\m2|m[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(27),
	datad => VCC,
	cin => \m2|m[26]~84\,
	combout => \m2|m[27]~85_combout\,
	cout => \m2|m[27]~86\);

-- Location: FF_X58_Y50_N23
\m2|m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[27]~85_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(27));

-- Location: LCCOMB_X57_Y50_N8
\m2|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~7_combout\ = (!\m2|m\(26) & (!\m2|m\(25) & (!\m2|m\(27) & !\m2|m\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(26),
	datab => \m2|m\(25),
	datac => \m2|m\(27),
	datad => \m2|m\(24),
	combout => \m2|process_0~7_combout\);

-- Location: LCCOMB_X58_Y50_N24
\m2|m[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[28]~87_combout\ = (\m2|m\(28) & (!\m2|m[27]~86\)) # (!\m2|m\(28) & ((\m2|m[27]~86\) # (GND)))
-- \m2|m[28]~88\ = CARRY((!\m2|m[27]~86\) # (!\m2|m\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(28),
	datad => VCC,
	cin => \m2|m[27]~86\,
	combout => \m2|m[28]~87_combout\,
	cout => \m2|m[28]~88\);

-- Location: FF_X58_Y50_N25
\m2|m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[28]~87_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(28));

-- Location: LCCOMB_X58_Y50_N26
\m2|m[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[29]~89_combout\ = (\m2|m\(29) & (\m2|m[28]~88\ $ (GND))) # (!\m2|m\(29) & (!\m2|m[28]~88\ & VCC))
-- \m2|m[29]~90\ = CARRY((\m2|m\(29) & !\m2|m[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(29),
	datad => VCC,
	cin => \m2|m[28]~88\,
	combout => \m2|m[29]~89_combout\,
	cout => \m2|m[29]~90\);

-- Location: FF_X58_Y50_N27
\m2|m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[29]~89_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(29));

-- Location: LCCOMB_X58_Y50_N28
\m2|m[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[30]~91_combout\ = (\m2|m\(30) & (!\m2|m[29]~90\)) # (!\m2|m\(30) & ((\m2|m[29]~90\) # (GND)))
-- \m2|m[30]~92\ = CARRY((!\m2|m[29]~90\) # (!\m2|m\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|m\(30),
	datad => VCC,
	cin => \m2|m[29]~90\,
	combout => \m2|m[30]~91_combout\,
	cout => \m2|m[30]~92\);

-- Location: FF_X58_Y50_N29
\m2|m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[30]~91_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(30));

-- Location: LCCOMB_X58_Y50_N30
\m2|m[31]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|m[31]~93_combout\ = \m2|m\(31) $ (!\m2|m[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(31),
	cin => \m2|m[30]~92\,
	combout => \m2|m[31]~93_combout\);

-- Location: FF_X58_Y50_N31
\m2|m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|m[31]~93_combout\,
	clrn => \start~input_o\,
	ena => \m2|m[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|m\(31));

-- Location: LCCOMB_X57_Y50_N10
\m2|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~8_combout\ = (!\m2|m\(31) & (!\m2|m\(28) & (!\m2|m\(29) & !\m2|m\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(31),
	datab => \m2|m\(28),
	datac => \m2|m\(29),
	datad => \m2|m\(30),
	combout => \m2|process_0~8_combout\);

-- Location: LCCOMB_X57_Y50_N20
\m2|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|process_0~9_combout\ = (\m2|process_0~6_combout\ & (\m2|process_0~5_combout\ & (\m2|process_0~7_combout\ & \m2|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|process_0~6_combout\,
	datab => \m2|process_0~5_combout\,
	datac => \m2|process_0~7_combout\,
	datad => \m2|process_0~8_combout\,
	combout => \m2|process_0~9_combout\);

-- Location: LCCOMB_X57_Y49_N4
\m2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~4_combout\ = (\m2|l\(2) & (\m2|Add1~3\ $ (GND))) # (!\m2|l\(2) & (!\m2|Add1~3\ & VCC))
-- \m2|Add1~5\ = CARRY((\m2|l\(2) & !\m2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(2),
	datad => VCC,
	cin => \m2|Add1~3\,
	combout => \m2|Add1~4_combout\,
	cout => \m2|Add1~5\);

-- Location: LCCOMB_X57_Y49_N6
\m2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~6_combout\ = (\m2|l\(3) & (!\m2|Add1~5\)) # (!\m2|l\(3) & ((\m2|Add1~5\) # (GND)))
-- \m2|Add1~7\ = CARRY((!\m2|Add1~5\) # (!\m2|l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(3),
	datad => VCC,
	cin => \m2|Add1~5\,
	combout => \m2|Add1~6_combout\,
	cout => \m2|Add1~7\);

-- Location: LCCOMB_X58_Y49_N16
\m2|l[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|l[3]~2_combout\ = (\m2|Equal1~10_combout\ & (\m2|process_0~9_combout\ & ((\m2|process_0~4_combout\)))) # (!\m2|Equal1~10_combout\ & (((\m2|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|Equal1~10_combout\,
	datab => \m2|process_0~9_combout\,
	datac => \m2|Add1~6_combout\,
	datad => \m2|process_0~4_combout\,
	combout => \m2|l[3]~2_combout\);

-- Location: FF_X58_Y49_N17
\m2|l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|l[3]~2_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(3));

-- Location: LCCOMB_X57_Y49_N8
\m2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~8_combout\ = (\m2|l\(4) & (\m2|Add1~7\ $ (GND))) # (!\m2|l\(4) & (!\m2|Add1~7\ & VCC))
-- \m2|Add1~9\ = CARRY((\m2|l\(4) & !\m2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(4),
	datad => VCC,
	cin => \m2|Add1~7\,
	combout => \m2|Add1~8_combout\,
	cout => \m2|Add1~9\);

-- Location: FF_X57_Y49_N9
\m2|l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~8_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(4));

-- Location: LCCOMB_X57_Y49_N10
\m2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~10_combout\ = (\m2|l\(5) & (!\m2|Add1~9\)) # (!\m2|l\(5) & ((\m2|Add1~9\) # (GND)))
-- \m2|Add1~11\ = CARRY((!\m2|Add1~9\) # (!\m2|l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(5),
	datad => VCC,
	cin => \m2|Add1~9\,
	combout => \m2|Add1~10_combout\,
	cout => \m2|Add1~11\);

-- Location: FF_X57_Y49_N11
\m2|l[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~10_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(5));

-- Location: LCCOMB_X57_Y49_N12
\m2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~12_combout\ = (\m2|l\(6) & (\m2|Add1~11\ $ (GND))) # (!\m2|l\(6) & (!\m2|Add1~11\ & VCC))
-- \m2|Add1~13\ = CARRY((\m2|l\(6) & !\m2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(6),
	datad => VCC,
	cin => \m2|Add1~11\,
	combout => \m2|Add1~12_combout\,
	cout => \m2|Add1~13\);

-- Location: FF_X57_Y49_N13
\m2|l[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~12_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(6));

-- Location: LCCOMB_X57_Y49_N14
\m2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~14_combout\ = (\m2|l\(7) & (!\m2|Add1~13\)) # (!\m2|l\(7) & ((\m2|Add1~13\) # (GND)))
-- \m2|Add1~15\ = CARRY((!\m2|Add1~13\) # (!\m2|l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(7),
	datad => VCC,
	cin => \m2|Add1~13\,
	combout => \m2|Add1~14_combout\,
	cout => \m2|Add1~15\);

-- Location: FF_X57_Y49_N15
\m2|l[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~14_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(7));

-- Location: LCCOMB_X57_Y49_N16
\m2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~16_combout\ = (\m2|l\(8) & (\m2|Add1~15\ $ (GND))) # (!\m2|l\(8) & (!\m2|Add1~15\ & VCC))
-- \m2|Add1~17\ = CARRY((\m2|l\(8) & !\m2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(8),
	datad => VCC,
	cin => \m2|Add1~15\,
	combout => \m2|Add1~16_combout\,
	cout => \m2|Add1~17\);

-- Location: FF_X57_Y49_N17
\m2|l[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~16_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(8));

-- Location: LCCOMB_X57_Y49_N18
\m2|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~18_combout\ = (\m2|l\(9) & (!\m2|Add1~17\)) # (!\m2|l\(9) & ((\m2|Add1~17\) # (GND)))
-- \m2|Add1~19\ = CARRY((!\m2|Add1~17\) # (!\m2|l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(9),
	datad => VCC,
	cin => \m2|Add1~17\,
	combout => \m2|Add1~18_combout\,
	cout => \m2|Add1~19\);

-- Location: FF_X57_Y49_N19
\m2|l[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~18_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(9));

-- Location: LCCOMB_X57_Y49_N20
\m2|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~20_combout\ = (\m2|l\(10) & (\m2|Add1~19\ $ (GND))) # (!\m2|l\(10) & (!\m2|Add1~19\ & VCC))
-- \m2|Add1~21\ = CARRY((\m2|l\(10) & !\m2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(10),
	datad => VCC,
	cin => \m2|Add1~19\,
	combout => \m2|Add1~20_combout\,
	cout => \m2|Add1~21\);

-- Location: FF_X57_Y49_N21
\m2|l[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~20_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(10));

-- Location: LCCOMB_X57_Y49_N22
\m2|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~22_combout\ = (\m2|l\(11) & (!\m2|Add1~21\)) # (!\m2|l\(11) & ((\m2|Add1~21\) # (GND)))
-- \m2|Add1~23\ = CARRY((!\m2|Add1~21\) # (!\m2|l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(11),
	datad => VCC,
	cin => \m2|Add1~21\,
	combout => \m2|Add1~22_combout\,
	cout => \m2|Add1~23\);

-- Location: FF_X57_Y49_N23
\m2|l[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~22_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(11));

-- Location: LCCOMB_X56_Y49_N20
\m2|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~8_combout\ = (!\m2|l\(10) & (!\m2|l\(8) & (!\m2|l\(11) & !\m2|l\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(10),
	datab => \m2|l\(8),
	datac => \m2|l\(11),
	datad => \m2|l\(9),
	combout => \m2|Equal1~8_combout\);

-- Location: LCCOMB_X58_Y49_N28
\m2|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~9_combout\ = (!\m2|l\(4) & (!\m2|l\(7) & (!\m2|l\(6) & !\m2|l\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(4),
	datab => \m2|l\(7),
	datac => \m2|l\(6),
	datad => \m2|l\(5),
	combout => \m2|Equal1~9_combout\);

-- Location: LCCOMB_X57_Y49_N24
\m2|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~24_combout\ = (\m2|l\(12) & (\m2|Add1~23\ $ (GND))) # (!\m2|l\(12) & (!\m2|Add1~23\ & VCC))
-- \m2|Add1~25\ = CARRY((\m2|l\(12) & !\m2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(12),
	datad => VCC,
	cin => \m2|Add1~23\,
	combout => \m2|Add1~24_combout\,
	cout => \m2|Add1~25\);

-- Location: FF_X57_Y49_N25
\m2|l[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~24_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(12));

-- Location: LCCOMB_X57_Y49_N26
\m2|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~26_combout\ = (\m2|l\(13) & (!\m2|Add1~25\)) # (!\m2|l\(13) & ((\m2|Add1~25\) # (GND)))
-- \m2|Add1~27\ = CARRY((!\m2|Add1~25\) # (!\m2|l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(13),
	datad => VCC,
	cin => \m2|Add1~25\,
	combout => \m2|Add1~26_combout\,
	cout => \m2|Add1~27\);

-- Location: FF_X57_Y49_N27
\m2|l[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~26_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(13));

-- Location: LCCOMB_X57_Y49_N28
\m2|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~28_combout\ = (\m2|l\(14) & (\m2|Add1~27\ $ (GND))) # (!\m2|l\(14) & (!\m2|Add1~27\ & VCC))
-- \m2|Add1~29\ = CARRY((\m2|l\(14) & !\m2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(14),
	datad => VCC,
	cin => \m2|Add1~27\,
	combout => \m2|Add1~28_combout\,
	cout => \m2|Add1~29\);

-- Location: FF_X57_Y49_N29
\m2|l[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~28_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(14));

-- Location: LCCOMB_X57_Y49_N30
\m2|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~30_combout\ = (\m2|l\(15) & (!\m2|Add1~29\)) # (!\m2|l\(15) & ((\m2|Add1~29\) # (GND)))
-- \m2|Add1~31\ = CARRY((!\m2|Add1~29\) # (!\m2|l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(15),
	datad => VCC,
	cin => \m2|Add1~29\,
	combout => \m2|Add1~30_combout\,
	cout => \m2|Add1~31\);

-- Location: FF_X57_Y49_N31
\m2|l[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~30_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(15));

-- Location: LCCOMB_X57_Y48_N0
\m2|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~32_combout\ = (\m2|l\(16) & (\m2|Add1~31\ $ (GND))) # (!\m2|l\(16) & (!\m2|Add1~31\ & VCC))
-- \m2|Add1~33\ = CARRY((\m2|l\(16) & !\m2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(16),
	datad => VCC,
	cin => \m2|Add1~31\,
	combout => \m2|Add1~32_combout\,
	cout => \m2|Add1~33\);

-- Location: FF_X57_Y48_N1
\m2|l[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~32_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(16));

-- Location: LCCOMB_X57_Y48_N2
\m2|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~34_combout\ = (\m2|l\(17) & (!\m2|Add1~33\)) # (!\m2|l\(17) & ((\m2|Add1~33\) # (GND)))
-- \m2|Add1~35\ = CARRY((!\m2|Add1~33\) # (!\m2|l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(17),
	datad => VCC,
	cin => \m2|Add1~33\,
	combout => \m2|Add1~34_combout\,
	cout => \m2|Add1~35\);

-- Location: FF_X57_Y48_N3
\m2|l[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~34_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(17));

-- Location: LCCOMB_X57_Y48_N4
\m2|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~36_combout\ = (\m2|l\(18) & (\m2|Add1~35\ $ (GND))) # (!\m2|l\(18) & (!\m2|Add1~35\ & VCC))
-- \m2|Add1~37\ = CARRY((\m2|l\(18) & !\m2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(18),
	datad => VCC,
	cin => \m2|Add1~35\,
	combout => \m2|Add1~36_combout\,
	cout => \m2|Add1~37\);

-- Location: FF_X57_Y48_N5
\m2|l[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~36_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(18));

-- Location: LCCOMB_X58_Y49_N0
\m2|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~6_combout\ = (!\m2|l\(13) & (!\m2|l\(12) & (!\m2|l\(15) & !\m2|l\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(13),
	datab => \m2|l\(12),
	datac => \m2|l\(15),
	datad => \m2|l\(14),
	combout => \m2|Equal1~6_combout\);

-- Location: LCCOMB_X57_Y48_N6
\m2|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~38_combout\ = (\m2|l\(19) & (!\m2|Add1~37\)) # (!\m2|l\(19) & ((\m2|Add1~37\) # (GND)))
-- \m2|Add1~39\ = CARRY((!\m2|Add1~37\) # (!\m2|l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(19),
	datad => VCC,
	cin => \m2|Add1~37\,
	combout => \m2|Add1~38_combout\,
	cout => \m2|Add1~39\);

-- Location: FF_X57_Y48_N7
\m2|l[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~38_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(19));

-- Location: LCCOMB_X58_Y49_N18
\m2|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~5_combout\ = (!\m2|l\(16) & !\m2|l\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|l\(16),
	datad => \m2|l\(17),
	combout => \m2|Equal1~5_combout\);

-- Location: LCCOMB_X58_Y49_N30
\m2|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~7_combout\ = (!\m2|l\(18) & (\m2|Equal1~6_combout\ & (!\m2|l\(19) & \m2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(18),
	datab => \m2|Equal1~6_combout\,
	datac => \m2|l\(19),
	datad => \m2|Equal1~5_combout\,
	combout => \m2|Equal1~7_combout\);

-- Location: LCCOMB_X57_Y48_N8
\m2|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~40_combout\ = (\m2|l\(20) & (\m2|Add1~39\ $ (GND))) # (!\m2|l\(20) & (!\m2|Add1~39\ & VCC))
-- \m2|Add1~41\ = CARRY((\m2|l\(20) & !\m2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(20),
	datad => VCC,
	cin => \m2|Add1~39\,
	combout => \m2|Add1~40_combout\,
	cout => \m2|Add1~41\);

-- Location: FF_X57_Y48_N9
\m2|l[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~40_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(20));

-- Location: LCCOMB_X57_Y48_N10
\m2|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~42_combout\ = (\m2|l\(21) & (!\m2|Add1~41\)) # (!\m2|l\(21) & ((\m2|Add1~41\) # (GND)))
-- \m2|Add1~43\ = CARRY((!\m2|Add1~41\) # (!\m2|l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(21),
	datad => VCC,
	cin => \m2|Add1~41\,
	combout => \m2|Add1~42_combout\,
	cout => \m2|Add1~43\);

-- Location: FF_X57_Y48_N11
\m2|l[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~42_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(21));

-- Location: LCCOMB_X57_Y48_N12
\m2|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~44_combout\ = (\m2|l\(22) & (\m2|Add1~43\ $ (GND))) # (!\m2|l\(22) & (!\m2|Add1~43\ & VCC))
-- \m2|Add1~45\ = CARRY((\m2|l\(22) & !\m2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(22),
	datad => VCC,
	cin => \m2|Add1~43\,
	combout => \m2|Add1~44_combout\,
	cout => \m2|Add1~45\);

-- Location: FF_X57_Y48_N13
\m2|l[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~44_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(22));

-- Location: LCCOMB_X57_Y48_N14
\m2|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~46_combout\ = (\m2|l\(23) & (!\m2|Add1~45\)) # (!\m2|l\(23) & ((\m2|Add1~45\) # (GND)))
-- \m2|Add1~47\ = CARRY((!\m2|Add1~45\) # (!\m2|l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(23),
	datad => VCC,
	cin => \m2|Add1~45\,
	combout => \m2|Add1~46_combout\,
	cout => \m2|Add1~47\);

-- Location: FF_X57_Y48_N15
\m2|l[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~46_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(23));

-- Location: LCCOMB_X57_Y48_N16
\m2|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~48_combout\ = (\m2|l\(24) & (\m2|Add1~47\ $ (GND))) # (!\m2|l\(24) & (!\m2|Add1~47\ & VCC))
-- \m2|Add1~49\ = CARRY((\m2|l\(24) & !\m2|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(24),
	datad => VCC,
	cin => \m2|Add1~47\,
	combout => \m2|Add1~48_combout\,
	cout => \m2|Add1~49\);

-- Location: FF_X57_Y48_N17
\m2|l[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~48_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(24));

-- Location: LCCOMB_X57_Y48_N18
\m2|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~50_combout\ = (\m2|l\(25) & (!\m2|Add1~49\)) # (!\m2|l\(25) & ((\m2|Add1~49\) # (GND)))
-- \m2|Add1~51\ = CARRY((!\m2|Add1~49\) # (!\m2|l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(25),
	datad => VCC,
	cin => \m2|Add1~49\,
	combout => \m2|Add1~50_combout\,
	cout => \m2|Add1~51\);

-- Location: FF_X57_Y48_N19
\m2|l[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~50_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(25));

-- Location: LCCOMB_X57_Y48_N20
\m2|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~52_combout\ = (\m2|l\(26) & (\m2|Add1~51\ $ (GND))) # (!\m2|l\(26) & (!\m2|Add1~51\ & VCC))
-- \m2|Add1~53\ = CARRY((\m2|l\(26) & !\m2|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(26),
	datad => VCC,
	cin => \m2|Add1~51\,
	combout => \m2|Add1~52_combout\,
	cout => \m2|Add1~53\);

-- Location: FF_X57_Y48_N21
\m2|l[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~52_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(26));

-- Location: LCCOMB_X57_Y48_N22
\m2|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~54_combout\ = (\m2|l\(27) & (!\m2|Add1~53\)) # (!\m2|l\(27) & ((\m2|Add1~53\) # (GND)))
-- \m2|Add1~55\ = CARRY((!\m2|Add1~53\) # (!\m2|l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(27),
	datad => VCC,
	cin => \m2|Add1~53\,
	combout => \m2|Add1~54_combout\,
	cout => \m2|Add1~55\);

-- Location: FF_X57_Y48_N23
\m2|l[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~54_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(27));

-- Location: LCCOMB_X57_Y48_N24
\m2|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~56_combout\ = (\m2|l\(28) & (\m2|Add1~55\ $ (GND))) # (!\m2|l\(28) & (!\m2|Add1~55\ & VCC))
-- \m2|Add1~57\ = CARRY((\m2|l\(28) & !\m2|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(28),
	datad => VCC,
	cin => \m2|Add1~55\,
	combout => \m2|Add1~56_combout\,
	cout => \m2|Add1~57\);

-- Location: FF_X57_Y48_N25
\m2|l[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~56_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(28));

-- Location: LCCOMB_X57_Y48_N26
\m2|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~58_combout\ = (\m2|l\(29) & (!\m2|Add1~57\)) # (!\m2|l\(29) & ((\m2|Add1~57\) # (GND)))
-- \m2|Add1~59\ = CARRY((!\m2|Add1~57\) # (!\m2|l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(29),
	datad => VCC,
	cin => \m2|Add1~57\,
	combout => \m2|Add1~58_combout\,
	cout => \m2|Add1~59\);

-- Location: FF_X57_Y48_N27
\m2|l[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~58_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(29));

-- Location: LCCOMB_X57_Y48_N28
\m2|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~60_combout\ = (\m2|l\(30) & (\m2|Add1~59\ $ (GND))) # (!\m2|l\(30) & (!\m2|Add1~59\ & VCC))
-- \m2|Add1~61\ = CARRY((\m2|l\(30) & !\m2|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(30),
	datad => VCC,
	cin => \m2|Add1~59\,
	combout => \m2|Add1~60_combout\,
	cout => \m2|Add1~61\);

-- Location: FF_X57_Y48_N29
\m2|l[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~60_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(30));

-- Location: LCCOMB_X57_Y48_N30
\m2|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~62_combout\ = \m2|l\(31) $ (\m2|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(31),
	cin => \m2|Add1~61\,
	combout => \m2|Add1~62_combout\);

-- Location: FF_X57_Y48_N31
\m2|l[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~62_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(31));

-- Location: LCCOMB_X58_Y49_N22
\m2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~1_combout\ = (!\m2|l\(28) & (!\m2|l\(31) & (!\m2|l\(29) & !\m2|l\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(28),
	datab => \m2|l\(31),
	datac => \m2|l\(29),
	datad => \m2|l\(30),
	combout => \m2|Equal1~1_combout\);

-- Location: LCCOMB_X57_Y49_N0
\m2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~0_combout\ = \m2|l\(0) $ (VCC)
-- \m2|Add1~1\ = CARRY(\m2|l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m2|l\(0),
	datad => VCC,
	combout => \m2|Add1~0_combout\,
	cout => \m2|Add1~1\);

-- Location: LCCOMB_X58_Y49_N12
\m2|l[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|l[0]~0_combout\ = (\m2|Add1~0_combout\) # ((\m2|Equal1~10_combout\ & (\m2|process_0~9_combout\ & \m2|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|Add1~0_combout\,
	datab => \m2|Equal1~10_combout\,
	datac => \m2|process_0~9_combout\,
	datad => \m2|process_0~4_combout\,
	combout => \m2|l[0]~0_combout\);

-- Location: FF_X58_Y49_N13
\m2|l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|l[0]~0_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(0));

-- Location: LCCOMB_X58_Y49_N4
\m2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~0_combout\ = (!\m2|l\(1) & (\m2|l\(3) & (!\m2|l\(2) & \m2|l\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(1),
	datab => \m2|l\(3),
	datac => \m2|l\(2),
	datad => \m2|l\(0),
	combout => \m2|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y49_N8
\m2|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~2_combout\ = (!\m2|l\(27) & (!\m2|l\(25) & (!\m2|l\(24) & !\m2|l\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(27),
	datab => \m2|l\(25),
	datac => \m2|l\(24),
	datad => \m2|l\(26),
	combout => \m2|Equal1~2_combout\);

-- Location: LCCOMB_X58_Y49_N10
\m2|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~3_combout\ = (!\m2|l\(23) & (!\m2|l\(22) & (!\m2|l\(21) & !\m2|l\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(23),
	datab => \m2|l\(22),
	datac => \m2|l\(21),
	datad => \m2|l\(20),
	combout => \m2|Equal1~3_combout\);

-- Location: LCCOMB_X58_Y49_N20
\m2|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~4_combout\ = (\m2|Equal1~1_combout\ & (\m2|Equal1~0_combout\ & (\m2|Equal1~2_combout\ & \m2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|Equal1~1_combout\,
	datab => \m2|Equal1~0_combout\,
	datac => \m2|Equal1~2_combout\,
	datad => \m2|Equal1~3_combout\,
	combout => \m2|Equal1~4_combout\);

-- Location: LCCOMB_X58_Y49_N26
\m2|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Equal1~10_combout\ = (\m2|Equal1~8_combout\ & (\m2|Equal1~9_combout\ & (\m2|Equal1~7_combout\ & \m2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|Equal1~8_combout\,
	datab => \m2|Equal1~9_combout\,
	datac => \m2|Equal1~7_combout\,
	datad => \m2|Equal1~4_combout\,
	combout => \m2|Equal1~10_combout\);

-- Location: LCCOMB_X57_Y49_N2
\m2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|Add1~2_combout\ = (\m2|l\(1) & (!\m2|Add1~1\)) # (!\m2|l\(1) & ((\m2|Add1~1\) # (GND)))
-- \m2|Add1~3\ = CARRY((!\m2|Add1~1\) # (!\m2|l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(1),
	datad => VCC,
	cin => \m2|Add1~1\,
	combout => \m2|Add1~2_combout\,
	cout => \m2|Add1~3\);

-- Location: LCCOMB_X58_Y49_N6
\m2|l[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m2|l[1]~1_combout\ = (!\m2|Equal1~10_combout\ & \m2|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|Equal1~10_combout\,
	datad => \m2|Add1~2_combout\,
	combout => \m2|l[1]~1_combout\);

-- Location: FF_X58_Y49_N7
\m2|l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|l[1]~1_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(1));

-- Location: FF_X57_Y49_N5
\m2|l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m1|clk_1Hz_temp~clkctrl_outclk\,
	d => \m2|Add1~4_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|l\(2));

-- Location: LCCOMB_X59_Y48_N26
\m3|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|process_0~1_combout\ = (\m2|l\(0) & !\m2|l\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|l\(0),
	datad => \m2|l\(1),
	combout => \m3|process_0~1_combout\);

-- Location: LCCOMB_X59_Y48_N12
\m3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|process_0~0_combout\ = (!\m2|m\(1) & (\m2|m\(0) & (!\m2|m\(3) & \m2|l\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(1),
	datab => \m2|m\(0),
	datac => \m2|m\(3),
	datad => \m2|l\(3),
	combout => \m3|process_0~0_combout\);

-- Location: LCCOMB_X59_Y48_N20
\m3|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|process_0~2_combout\ = (!\m2|l\(2) & (\m2|m\(2) & (\m3|process_0~1_combout\ & \m3|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|m\(2),
	datac => \m3|process_0~1_combout\,
	datad => \m3|process_0~0_combout\,
	combout => \m3|process_0~2_combout\);

-- Location: LCCOMB_X61_Y47_N2
\m3|m2r[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[1]~37_combout\ = \m3|m2r\(1) $ (VCC)
-- \m3|m2r[1]~38\ = CARRY(\m3|m2r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(1),
	datad => VCC,
	combout => \m3|m2r[1]~37_combout\,
	cout => \m3|m2r[1]~38\);

-- Location: IOIBUF_X20_Y0_N15
\p1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1,
	o => \p1~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\p2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2,
	o => \p2~input_o\);

-- Location: LCCOMB_X59_Y49_N10
\m3|point2[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[0]~31_combout\ = (\start~input_o\ & ((!\m2|process_0~0_combout\) # (!\m2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \m2|Equal1~0_combout\,
	datad => \m2|process_0~0_combout\,
	combout => \m3|point2[0]~31_combout\);

-- Location: LCCOMB_X59_Y51_N10
\m3|f2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|f2~0_combout\ = (\m3|f2~q\ & ((\p1~input_o\ $ (!\m3|f1~q\)) # (!\m3|point2[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~input_o\,
	datab => \m3|point2[0]~31_combout\,
	datac => \m3|f2~q\,
	datad => \m3|f1~q\,
	combout => \m3|f2~0_combout\);

-- Location: LCCOMB_X59_Y51_N8
\m3|f2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|f2~1_combout\ = (\m3|f2~0_combout\) # ((!\p2~input_o\ & (\m3|point2[0]~31_combout\ & \m3|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~input_o\,
	datab => \m3|point2[0]~31_combout\,
	datac => \m3|process_0~3_combout\,
	datad => \m3|f2~0_combout\,
	combout => \m3|f2~1_combout\);

-- Location: FF_X59_Y51_N9
\m3|f2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|f2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|f2~q\);

-- Location: LCCOMB_X59_Y51_N14
\m3|m2r~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~45_combout\ = (!\p2~input_o\ & !\m3|f2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~input_o\,
	datac => \m3|f2~q\,
	combout => \m3|m2r~45_combout\);

-- Location: LCCOMB_X59_Y51_N28
\m3|f1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|f1~0_combout\ = (\m3|point2[0]~31_combout\ & (((\m3|m2r~45_combout\ & \m3|f1~q\)) # (!\p1~input_o\))) # (!\m3|point2[0]~31_combout\ & (((\m3|f1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r~45_combout\,
	datab => \m3|point2[0]~31_combout\,
	datac => \m3|f1~q\,
	datad => \p1~input_o\,
	combout => \m3|f1~0_combout\);

-- Location: FF_X59_Y51_N29
\m3|f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|f1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|f1~q\);

-- Location: LCCOMB_X59_Y51_N18
\m3|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|process_0~3_combout\ = (\p1~input_o\) # (\m3|f1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1~input_o\,
	datad => \m3|f1~q\,
	combout => \m3|process_0~3_combout\);

-- Location: LCCOMB_X59_Y51_N26
\m3|point2[0]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[0]~99_combout\ = \m3|point2\(0) $ (((!\m3|process_0~3_combout\ & (\m3|point2[0]~31_combout\ & \m3|m2r~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|point2[0]~31_combout\,
	datac => \m3|point2\(0),
	datad => \m3|m2r~34_combout\,
	combout => \m3|point2[0]~99_combout\);

-- Location: FF_X59_Y51_N27
\m3|point2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[0]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(0));

-- Location: LCCOMB_X59_Y51_N4
\m3|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add2~0_combout\ = (!\p1~input_o\ & (\m3|point2\(0) & !\m3|f1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1~input_o\,
	datac => \m3|point2\(0),
	datad => \m3|f1~q\,
	combout => \m3|Add2~0_combout\);

-- Location: LCCOMB_X59_Y47_N0
\m3|point2[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[1]~33_cout\ = CARRY((!\m3|process_0~3_combout\ & \m3|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|Add2~0_combout\,
	datad => VCC,
	cout => \m3|point2[1]~33_cout\);

-- Location: LCCOMB_X59_Y47_N2
\m3|point2[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[1]~34_combout\ = (\m3|process_0~3_combout\ & ((\m3|point2\(1) & (\m3|point2[1]~33_cout\ & VCC)) # (!\m3|point2\(1) & (!\m3|point2[1]~33_cout\)))) # (!\m3|process_0~3_combout\ & ((\m3|point2\(1) & (!\m3|point2[1]~33_cout\)) # (!\m3|point2\(1) & 
-- ((\m3|point2[1]~33_cout\) # (GND)))))
-- \m3|point2[1]~35\ = CARRY((\m3|process_0~3_combout\ & (!\m3|point2\(1) & !\m3|point2[1]~33_cout\)) # (!\m3|process_0~3_combout\ & ((!\m3|point2[1]~33_cout\) # (!\m3|point2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|point2\(1),
	datad => VCC,
	cin => \m3|point2[1]~33_cout\,
	combout => \m3|point2[1]~34_combout\,
	cout => \m3|point2[1]~35\);

-- Location: LCCOMB_X59_Y51_N24
\m3|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~0_combout\ = (!\m3|point2\(1)) # (!\m3|point2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m3|point2\(2),
	datad => \m3|point2\(1),
	combout => \m3|LessThan7~0_combout\);

-- Location: LCCOMB_X59_Y51_N20
\m3|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~1_combout\ = (!\m3|point2\(4) & (((\m3|LessThan7~0_combout\) # (!\m3|point2\(0))) # (!\m3|point2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(3),
	datab => \m3|point2\(4),
	datac => \m3|point2\(0),
	datad => \m3|LessThan7~0_combout\,
	combout => \m3|LessThan7~1_combout\);

-- Location: LCCOMB_X60_Y47_N22
\m3|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~7_combout\ = (!\m3|point2\(23) & (!\m3|point2\(24) & (!\m3|point2\(21) & !\m3|point2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(23),
	datab => \m3|point2\(24),
	datac => \m3|point2\(21),
	datad => \m3|point2\(22),
	combout => \m3|LessThan7~7_combout\);

-- Location: LCCOMB_X60_Y47_N0
\m3|LessThan7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~8_combout\ = (!\m3|point2\(27) & (!\m3|point2\(26) & (!\m3|point2\(25) & !\m3|point2\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(27),
	datab => \m3|point2\(26),
	datac => \m3|point2\(25),
	datad => \m3|point2\(28),
	combout => \m3|LessThan7~8_combout\);

-- Location: LCCOMB_X60_Y47_N10
\m3|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~3_combout\ = (!\m3|point2\(12) & (!\m3|point2\(11) & (!\m3|point2\(10) & !\m3|point2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(12),
	datab => \m3|point2\(11),
	datac => \m3|point2\(10),
	datad => \m3|point2\(9),
	combout => \m3|LessThan7~3_combout\);

-- Location: LCCOMB_X60_Y47_N28
\m3|LessThan7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~2_combout\ = (!\m3|point2\(7) & (!\m3|point2\(6) & (!\m3|point2\(8) & !\m3|point2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(7),
	datab => \m3|point2\(6),
	datac => \m3|point2\(8),
	datad => \m3|point2\(5),
	combout => \m3|LessThan7~2_combout\);

-- Location: LCCOMB_X60_Y47_N4
\m3|LessThan7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~4_combout\ = (!\m3|point2\(13) & (!\m3|point2\(15) & (!\m3|point2\(14) & !\m3|point2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(13),
	datab => \m3|point2\(15),
	datac => \m3|point2\(14),
	datad => \m3|point2\(16),
	combout => \m3|LessThan7~4_combout\);

-- Location: LCCOMB_X60_Y47_N6
\m3|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~5_combout\ = (!\m3|point2\(18) & (!\m3|point2\(19) & (!\m3|point2\(17) & !\m3|point2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(18),
	datab => \m3|point2\(19),
	datac => \m3|point2\(17),
	datad => \m3|point2\(20),
	combout => \m3|LessThan7~5_combout\);

-- Location: LCCOMB_X60_Y47_N8
\m3|LessThan7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~6_combout\ = (\m3|LessThan7~3_combout\ & (\m3|LessThan7~2_combout\ & (\m3|LessThan7~4_combout\ & \m3|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|LessThan7~3_combout\,
	datab => \m3|LessThan7~2_combout\,
	datac => \m3|LessThan7~4_combout\,
	datad => \m3|LessThan7~5_combout\,
	combout => \m3|LessThan7~6_combout\);

-- Location: LCCOMB_X60_Y47_N2
\m3|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~9_combout\ = (!\m3|point2\(29) & !\m3|point2\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m3|point2\(29),
	datad => \m3|point2\(30),
	combout => \m3|LessThan7~9_combout\);

-- Location: LCCOMB_X60_Y47_N24
\m3|LessThan7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan7~10_combout\ = (\m3|LessThan7~7_combout\ & (\m3|LessThan7~8_combout\ & (\m3|LessThan7~6_combout\ & \m3|LessThan7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|LessThan7~7_combout\,
	datab => \m3|LessThan7~8_combout\,
	datac => \m3|LessThan7~6_combout\,
	datad => \m3|LessThan7~9_combout\,
	combout => \m3|LessThan7~10_combout\);

-- Location: LCCOMB_X60_Y47_N18
\m3|point2[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[31]~96_combout\ = (\m3|LessThan7~10_combout\ & ((\m3|process_0~3_combout\ & (\m3|LessThan7~1_combout\)) # (!\m3|process_0~3_combout\ & ((!\m3|point2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|LessThan7~1_combout\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|point2\(4),
	datad => \m3|LessThan7~10_combout\,
	combout => \m3|point2[31]~96_combout\);

-- Location: LCCOMB_X60_Y47_N12
\m3|point2[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[31]~97_combout\ = (\m3|point2\(31) & ((\m3|m2r~45_combout\) # ((!\m3|process_0~3_combout\)))) # (!\m3|point2\(31) & (\m3|point2[31]~96_combout\ & ((\m3|m2r~45_combout\) # (!\m3|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(31),
	datab => \m3|m2r~45_combout\,
	datac => \m3|process_0~3_combout\,
	datad => \m3|point2[31]~96_combout\,
	combout => \m3|point2[31]~97_combout\);

-- Location: IOIBUF_X16_Y0_N29
\c1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: LCCOMB_X60_Y47_N30
\m3|point2[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[31]~98_combout\ = (\m3|point2[31]~97_combout\ & (\c1~input_o\ & \m3|point2[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2[31]~97_combout\,
	datac => \c1~input_o\,
	datad => \m3|point2[0]~31_combout\,
	combout => \m3|point2[31]~98_combout\);

-- Location: FF_X59_Y47_N3
\m3|point2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[1]~34_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(1));

-- Location: LCCOMB_X59_Y47_N4
\m3|point2[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[2]~36_combout\ = (\m3|point2\(2) & (\m3|point2[1]~35\ $ (GND))) # (!\m3|point2\(2) & (!\m3|point2[1]~35\ & VCC))
-- \m3|point2[2]~37\ = CARRY((\m3|point2\(2) & !\m3|point2[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(2),
	datad => VCC,
	cin => \m3|point2[1]~35\,
	combout => \m3|point2[2]~36_combout\,
	cout => \m3|point2[2]~37\);

-- Location: FF_X59_Y47_N5
\m3|point2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[2]~36_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(2));

-- Location: LCCOMB_X59_Y47_N6
\m3|point2[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[3]~38_combout\ = (\m3|point2\(3) & (!\m3|point2[2]~37\)) # (!\m3|point2\(3) & ((\m3|point2[2]~37\) # (GND)))
-- \m3|point2[3]~39\ = CARRY((!\m3|point2[2]~37\) # (!\m3|point2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(3),
	datad => VCC,
	cin => \m3|point2[2]~37\,
	combout => \m3|point2[3]~38_combout\,
	cout => \m3|point2[3]~39\);

-- Location: FF_X59_Y47_N7
\m3|point2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[3]~38_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(3));

-- Location: LCCOMB_X59_Y47_N8
\m3|point2[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[4]~40_combout\ = (\m3|point2\(4) & (\m3|point2[3]~39\ $ (GND))) # (!\m3|point2\(4) & (!\m3|point2[3]~39\ & VCC))
-- \m3|point2[4]~41\ = CARRY((\m3|point2\(4) & !\m3|point2[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(4),
	datad => VCC,
	cin => \m3|point2[3]~39\,
	combout => \m3|point2[4]~40_combout\,
	cout => \m3|point2[4]~41\);

-- Location: FF_X59_Y47_N9
\m3|point2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[4]~40_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(4));

-- Location: LCCOMB_X59_Y47_N10
\m3|point2[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[5]~42_combout\ = (\m3|point2\(5) & (!\m3|point2[4]~41\)) # (!\m3|point2\(5) & ((\m3|point2[4]~41\) # (GND)))
-- \m3|point2[5]~43\ = CARRY((!\m3|point2[4]~41\) # (!\m3|point2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(5),
	datad => VCC,
	cin => \m3|point2[4]~41\,
	combout => \m3|point2[5]~42_combout\,
	cout => \m3|point2[5]~43\);

-- Location: FF_X59_Y47_N11
\m3|point2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[5]~42_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(5));

-- Location: LCCOMB_X59_Y47_N12
\m3|point2[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[6]~44_combout\ = (\m3|point2\(6) & (\m3|point2[5]~43\ $ (GND))) # (!\m3|point2\(6) & (!\m3|point2[5]~43\ & VCC))
-- \m3|point2[6]~45\ = CARRY((\m3|point2\(6) & !\m3|point2[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(6),
	datad => VCC,
	cin => \m3|point2[5]~43\,
	combout => \m3|point2[6]~44_combout\,
	cout => \m3|point2[6]~45\);

-- Location: FF_X59_Y47_N13
\m3|point2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[6]~44_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(6));

-- Location: LCCOMB_X59_Y47_N14
\m3|point2[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[7]~46_combout\ = (\m3|point2\(7) & (!\m3|point2[6]~45\)) # (!\m3|point2\(7) & ((\m3|point2[6]~45\) # (GND)))
-- \m3|point2[7]~47\ = CARRY((!\m3|point2[6]~45\) # (!\m3|point2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(7),
	datad => VCC,
	cin => \m3|point2[6]~45\,
	combout => \m3|point2[7]~46_combout\,
	cout => \m3|point2[7]~47\);

-- Location: FF_X59_Y47_N15
\m3|point2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[7]~46_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(7));

-- Location: LCCOMB_X59_Y47_N16
\m3|point2[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[8]~48_combout\ = (\m3|point2\(8) & (\m3|point2[7]~47\ $ (GND))) # (!\m3|point2\(8) & (!\m3|point2[7]~47\ & VCC))
-- \m3|point2[8]~49\ = CARRY((\m3|point2\(8) & !\m3|point2[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(8),
	datad => VCC,
	cin => \m3|point2[7]~47\,
	combout => \m3|point2[8]~48_combout\,
	cout => \m3|point2[8]~49\);

-- Location: FF_X59_Y47_N17
\m3|point2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[8]~48_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(8));

-- Location: LCCOMB_X59_Y47_N18
\m3|point2[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[9]~50_combout\ = (\m3|point2\(9) & (!\m3|point2[8]~49\)) # (!\m3|point2\(9) & ((\m3|point2[8]~49\) # (GND)))
-- \m3|point2[9]~51\ = CARRY((!\m3|point2[8]~49\) # (!\m3|point2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(9),
	datad => VCC,
	cin => \m3|point2[8]~49\,
	combout => \m3|point2[9]~50_combout\,
	cout => \m3|point2[9]~51\);

-- Location: FF_X59_Y47_N19
\m3|point2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[9]~50_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(9));

-- Location: LCCOMB_X59_Y47_N20
\m3|point2[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[10]~52_combout\ = (\m3|point2\(10) & (\m3|point2[9]~51\ $ (GND))) # (!\m3|point2\(10) & (!\m3|point2[9]~51\ & VCC))
-- \m3|point2[10]~53\ = CARRY((\m3|point2\(10) & !\m3|point2[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(10),
	datad => VCC,
	cin => \m3|point2[9]~51\,
	combout => \m3|point2[10]~52_combout\,
	cout => \m3|point2[10]~53\);

-- Location: FF_X59_Y47_N21
\m3|point2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[10]~52_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(10));

-- Location: LCCOMB_X59_Y47_N22
\m3|point2[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[11]~54_combout\ = (\m3|point2\(11) & (!\m3|point2[10]~53\)) # (!\m3|point2\(11) & ((\m3|point2[10]~53\) # (GND)))
-- \m3|point2[11]~55\ = CARRY((!\m3|point2[10]~53\) # (!\m3|point2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(11),
	datad => VCC,
	cin => \m3|point2[10]~53\,
	combout => \m3|point2[11]~54_combout\,
	cout => \m3|point2[11]~55\);

-- Location: FF_X59_Y47_N23
\m3|point2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[11]~54_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(11));

-- Location: LCCOMB_X59_Y47_N24
\m3|point2[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[12]~56_combout\ = (\m3|point2\(12) & (\m3|point2[11]~55\ $ (GND))) # (!\m3|point2\(12) & (!\m3|point2[11]~55\ & VCC))
-- \m3|point2[12]~57\ = CARRY((\m3|point2\(12) & !\m3|point2[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(12),
	datad => VCC,
	cin => \m3|point2[11]~55\,
	combout => \m3|point2[12]~56_combout\,
	cout => \m3|point2[12]~57\);

-- Location: FF_X59_Y47_N25
\m3|point2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[12]~56_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(12));

-- Location: LCCOMB_X59_Y47_N26
\m3|point2[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[13]~58_combout\ = (\m3|point2\(13) & (!\m3|point2[12]~57\)) # (!\m3|point2\(13) & ((\m3|point2[12]~57\) # (GND)))
-- \m3|point2[13]~59\ = CARRY((!\m3|point2[12]~57\) # (!\m3|point2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(13),
	datad => VCC,
	cin => \m3|point2[12]~57\,
	combout => \m3|point2[13]~58_combout\,
	cout => \m3|point2[13]~59\);

-- Location: FF_X59_Y47_N27
\m3|point2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[13]~58_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(13));

-- Location: LCCOMB_X59_Y47_N28
\m3|point2[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[14]~60_combout\ = (\m3|point2\(14) & (\m3|point2[13]~59\ $ (GND))) # (!\m3|point2\(14) & (!\m3|point2[13]~59\ & VCC))
-- \m3|point2[14]~61\ = CARRY((\m3|point2\(14) & !\m3|point2[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(14),
	datad => VCC,
	cin => \m3|point2[13]~59\,
	combout => \m3|point2[14]~60_combout\,
	cout => \m3|point2[14]~61\);

-- Location: FF_X59_Y47_N29
\m3|point2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[14]~60_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(14));

-- Location: LCCOMB_X59_Y47_N30
\m3|point2[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[15]~62_combout\ = (\m3|point2\(15) & (!\m3|point2[14]~61\)) # (!\m3|point2\(15) & ((\m3|point2[14]~61\) # (GND)))
-- \m3|point2[15]~63\ = CARRY((!\m3|point2[14]~61\) # (!\m3|point2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(15),
	datad => VCC,
	cin => \m3|point2[14]~61\,
	combout => \m3|point2[15]~62_combout\,
	cout => \m3|point2[15]~63\);

-- Location: FF_X59_Y47_N31
\m3|point2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[15]~62_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(15));

-- Location: LCCOMB_X59_Y46_N0
\m3|point2[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[16]~64_combout\ = (\m3|point2\(16) & (\m3|point2[15]~63\ $ (GND))) # (!\m3|point2\(16) & (!\m3|point2[15]~63\ & VCC))
-- \m3|point2[16]~65\ = CARRY((\m3|point2\(16) & !\m3|point2[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(16),
	datad => VCC,
	cin => \m3|point2[15]~63\,
	combout => \m3|point2[16]~64_combout\,
	cout => \m3|point2[16]~65\);

-- Location: FF_X59_Y46_N1
\m3|point2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[16]~64_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(16));

-- Location: LCCOMB_X59_Y46_N2
\m3|point2[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[17]~66_combout\ = (\m3|point2\(17) & (!\m3|point2[16]~65\)) # (!\m3|point2\(17) & ((\m3|point2[16]~65\) # (GND)))
-- \m3|point2[17]~67\ = CARRY((!\m3|point2[16]~65\) # (!\m3|point2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(17),
	datad => VCC,
	cin => \m3|point2[16]~65\,
	combout => \m3|point2[17]~66_combout\,
	cout => \m3|point2[17]~67\);

-- Location: FF_X59_Y46_N3
\m3|point2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[17]~66_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(17));

-- Location: LCCOMB_X59_Y46_N4
\m3|point2[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[18]~68_combout\ = (\m3|point2\(18) & (\m3|point2[17]~67\ $ (GND))) # (!\m3|point2\(18) & (!\m3|point2[17]~67\ & VCC))
-- \m3|point2[18]~69\ = CARRY((\m3|point2\(18) & !\m3|point2[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(18),
	datad => VCC,
	cin => \m3|point2[17]~67\,
	combout => \m3|point2[18]~68_combout\,
	cout => \m3|point2[18]~69\);

-- Location: FF_X59_Y46_N5
\m3|point2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[18]~68_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(18));

-- Location: LCCOMB_X59_Y46_N6
\m3|point2[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[19]~70_combout\ = (\m3|point2\(19) & (!\m3|point2[18]~69\)) # (!\m3|point2\(19) & ((\m3|point2[18]~69\) # (GND)))
-- \m3|point2[19]~71\ = CARRY((!\m3|point2[18]~69\) # (!\m3|point2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(19),
	datad => VCC,
	cin => \m3|point2[18]~69\,
	combout => \m3|point2[19]~70_combout\,
	cout => \m3|point2[19]~71\);

-- Location: FF_X59_Y46_N7
\m3|point2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[19]~70_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(19));

-- Location: LCCOMB_X59_Y46_N8
\m3|point2[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[20]~72_combout\ = (\m3|point2\(20) & (\m3|point2[19]~71\ $ (GND))) # (!\m3|point2\(20) & (!\m3|point2[19]~71\ & VCC))
-- \m3|point2[20]~73\ = CARRY((\m3|point2\(20) & !\m3|point2[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(20),
	datad => VCC,
	cin => \m3|point2[19]~71\,
	combout => \m3|point2[20]~72_combout\,
	cout => \m3|point2[20]~73\);

-- Location: FF_X59_Y46_N9
\m3|point2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[20]~72_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(20));

-- Location: LCCOMB_X59_Y46_N10
\m3|point2[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[21]~74_combout\ = (\m3|point2\(21) & (!\m3|point2[20]~73\)) # (!\m3|point2\(21) & ((\m3|point2[20]~73\) # (GND)))
-- \m3|point2[21]~75\ = CARRY((!\m3|point2[20]~73\) # (!\m3|point2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(21),
	datad => VCC,
	cin => \m3|point2[20]~73\,
	combout => \m3|point2[21]~74_combout\,
	cout => \m3|point2[21]~75\);

-- Location: FF_X59_Y46_N11
\m3|point2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[21]~74_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(21));

-- Location: LCCOMB_X59_Y46_N12
\m3|point2[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[22]~76_combout\ = (\m3|point2\(22) & (\m3|point2[21]~75\ $ (GND))) # (!\m3|point2\(22) & (!\m3|point2[21]~75\ & VCC))
-- \m3|point2[22]~77\ = CARRY((\m3|point2\(22) & !\m3|point2[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(22),
	datad => VCC,
	cin => \m3|point2[21]~75\,
	combout => \m3|point2[22]~76_combout\,
	cout => \m3|point2[22]~77\);

-- Location: FF_X59_Y46_N13
\m3|point2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[22]~76_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(22));

-- Location: LCCOMB_X59_Y46_N14
\m3|point2[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[23]~78_combout\ = (\m3|point2\(23) & (!\m3|point2[22]~77\)) # (!\m3|point2\(23) & ((\m3|point2[22]~77\) # (GND)))
-- \m3|point2[23]~79\ = CARRY((!\m3|point2[22]~77\) # (!\m3|point2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(23),
	datad => VCC,
	cin => \m3|point2[22]~77\,
	combout => \m3|point2[23]~78_combout\,
	cout => \m3|point2[23]~79\);

-- Location: FF_X59_Y46_N15
\m3|point2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[23]~78_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(23));

-- Location: LCCOMB_X59_Y46_N16
\m3|point2[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[24]~80_combout\ = (\m3|point2\(24) & (\m3|point2[23]~79\ $ (GND))) # (!\m3|point2\(24) & (!\m3|point2[23]~79\ & VCC))
-- \m3|point2[24]~81\ = CARRY((\m3|point2\(24) & !\m3|point2[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(24),
	datad => VCC,
	cin => \m3|point2[23]~79\,
	combout => \m3|point2[24]~80_combout\,
	cout => \m3|point2[24]~81\);

-- Location: FF_X59_Y46_N17
\m3|point2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[24]~80_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(24));

-- Location: LCCOMB_X59_Y46_N18
\m3|point2[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[25]~82_combout\ = (\m3|point2\(25) & (!\m3|point2[24]~81\)) # (!\m3|point2\(25) & ((\m3|point2[24]~81\) # (GND)))
-- \m3|point2[25]~83\ = CARRY((!\m3|point2[24]~81\) # (!\m3|point2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(25),
	datad => VCC,
	cin => \m3|point2[24]~81\,
	combout => \m3|point2[25]~82_combout\,
	cout => \m3|point2[25]~83\);

-- Location: FF_X59_Y46_N19
\m3|point2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[25]~82_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(25));

-- Location: LCCOMB_X59_Y46_N20
\m3|point2[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[26]~84_combout\ = (\m3|point2\(26) & (\m3|point2[25]~83\ $ (GND))) # (!\m3|point2\(26) & (!\m3|point2[25]~83\ & VCC))
-- \m3|point2[26]~85\ = CARRY((\m3|point2\(26) & !\m3|point2[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(26),
	datad => VCC,
	cin => \m3|point2[25]~83\,
	combout => \m3|point2[26]~84_combout\,
	cout => \m3|point2[26]~85\);

-- Location: FF_X59_Y46_N21
\m3|point2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[26]~84_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(26));

-- Location: LCCOMB_X59_Y46_N22
\m3|point2[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[27]~86_combout\ = (\m3|point2\(27) & (!\m3|point2[26]~85\)) # (!\m3|point2\(27) & ((\m3|point2[26]~85\) # (GND)))
-- \m3|point2[27]~87\ = CARRY((!\m3|point2[26]~85\) # (!\m3|point2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(27),
	datad => VCC,
	cin => \m3|point2[26]~85\,
	combout => \m3|point2[27]~86_combout\,
	cout => \m3|point2[27]~87\);

-- Location: FF_X59_Y46_N23
\m3|point2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[27]~86_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(27));

-- Location: LCCOMB_X59_Y46_N24
\m3|point2[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[28]~88_combout\ = (\m3|point2\(28) & (\m3|point2[27]~87\ $ (GND))) # (!\m3|point2\(28) & (!\m3|point2[27]~87\ & VCC))
-- \m3|point2[28]~89\ = CARRY((\m3|point2\(28) & !\m3|point2[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(28),
	datad => VCC,
	cin => \m3|point2[27]~87\,
	combout => \m3|point2[28]~88_combout\,
	cout => \m3|point2[28]~89\);

-- Location: FF_X59_Y46_N25
\m3|point2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[28]~88_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(28));

-- Location: LCCOMB_X59_Y46_N26
\m3|point2[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[29]~90_combout\ = (\m3|point2\(29) & (!\m3|point2[28]~89\)) # (!\m3|point2\(29) & ((\m3|point2[28]~89\) # (GND)))
-- \m3|point2[29]~91\ = CARRY((!\m3|point2[28]~89\) # (!\m3|point2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(29),
	datad => VCC,
	cin => \m3|point2[28]~89\,
	combout => \m3|point2[29]~90_combout\,
	cout => \m3|point2[29]~91\);

-- Location: FF_X59_Y46_N27
\m3|point2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[29]~90_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(29));

-- Location: LCCOMB_X59_Y46_N28
\m3|point2[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[30]~92_combout\ = (\m3|point2\(30) & (\m3|point2[29]~91\ $ (GND))) # (!\m3|point2\(30) & (!\m3|point2[29]~91\ & VCC))
-- \m3|point2[30]~93\ = CARRY((\m3|point2\(30) & !\m3|point2[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2\(30),
	datad => VCC,
	cin => \m3|point2[29]~91\,
	combout => \m3|point2[30]~92_combout\,
	cout => \m3|point2[30]~93\);

-- Location: FF_X59_Y46_N29
\m3|point2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[30]~92_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(30));

-- Location: LCCOMB_X59_Y46_N30
\m3|point2[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point2[31]~94_combout\ = \m3|point2\(31) $ (\m3|point2[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(31),
	cin => \m3|point2[30]~93\,
	combout => \m3|point2[31]~94_combout\);

-- Location: FF_X59_Y46_N31
\m3|point2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point2[31]~94_combout\,
	ena => \m3|point2[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point2\(31));

-- Location: LCCOMB_X60_Y47_N20
\m3|m2r~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~34_combout\ = (\c1~input_o\ & ((\m3|point2\(31)) # ((!\m3|point2\(4) & \m3|LessThan7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(31),
	datab => \m3|point2\(4),
	datac => \c1~input_o\,
	datad => \m3|LessThan7~10_combout\,
	combout => \m3|m2r~34_combout\);

-- Location: LCCOMB_X59_Y51_N6
\m3|m2r~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~32_combout\ = (!\p2~input_o\ & (!\m3|f2~q\ & \c1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~input_o\,
	datac => \m3|f2~q\,
	datad => \c1~input_o\,
	combout => \m3|m2r~32_combout\);

-- Location: LCCOMB_X60_Y47_N26
\m3|m2r~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~33_combout\ = (\m3|m2r~32_combout\ & ((\m3|point2\(31)) # ((\m3|LessThan7~1_combout\ & \m3|LessThan7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point2\(31),
	datab => \m3|m2r~32_combout\,
	datac => \m3|LessThan7~1_combout\,
	datad => \m3|LessThan7~10_combout\,
	combout => \m3|m2r~33_combout\);

-- Location: LCCOMB_X60_Y47_N14
\m3|m2r~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~35_combout\ = (!\m3|process_0~2_combout\ & ((\m3|process_0~3_combout\ & ((\m3|m2r~33_combout\))) # (!\m3|process_0~3_combout\ & (\m3|m2r~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|m2r~34_combout\,
	datac => \m3|m2r~33_combout\,
	datad => \m3|process_0~2_combout\,
	combout => \m3|m2r~35_combout\);

-- Location: LCCOMB_X63_Y47_N0
\m3|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~0_combout\ = \m3|m2r\(0) $ (VCC)
-- \m3|Add3~1\ = CARRY(\m3|m2r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(0),
	datad => VCC,
	combout => \m3|Add3~0_combout\,
	cout => \m3|Add3~1\);

-- Location: LCCOMB_X61_Y45_N12
\m3|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~6_combout\ = (!\m3|m2r\(21) & (!\m3|m2r\(24) & (!\m3|m2r\(22) & !\m3|m2r\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(21),
	datab => \m3|m2r\(24),
	datac => \m3|m2r\(22),
	datad => \m3|m2r\(23),
	combout => \m3|Equal4~6_combout\);

-- Location: LCCOMB_X61_Y45_N26
\m3|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~5_combout\ = (!\m3|m2r\(19) & (!\m3|m2r\(20) & (!\m3|m2r\(17) & !\m3|m2r\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(19),
	datab => \m3|m2r\(20),
	datac => \m3|m2r\(17),
	datad => \m3|m2r\(18),
	combout => \m3|Equal4~5_combout\);

-- Location: LCCOMB_X61_Y45_N18
\m3|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~7_combout\ = (!\m3|m2r\(28) & (!\m3|m2r\(27) & (!\m3|m2r\(26) & !\m3|m2r\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(28),
	datab => \m3|m2r\(27),
	datac => \m3|m2r\(26),
	datad => \m3|m2r\(25),
	combout => \m3|Equal4~7_combout\);

-- Location: LCCOMB_X61_Y45_N28
\m3|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~8_combout\ = (!\m3|m2r\(31) & (!\m3|m2r\(29) & (!\m3|m2r\(30) & \m3|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(31),
	datab => \m3|m2r\(29),
	datac => \m3|m2r\(30),
	datad => \m3|Equal4~7_combout\,
	combout => \m3|Equal4~8_combout\);

-- Location: LCCOMB_X61_Y48_N22
\m3|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~2_combout\ = (!\m3|m2r\(10) & (!\m3|m2r\(9) & (!\m3|m2r\(11) & !\m3|m2r\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(10),
	datab => \m3|m2r\(9),
	datac => \m3|m2r\(11),
	datad => \m3|m2r\(12),
	combout => \m3|Equal4~2_combout\);

-- Location: LCCOMB_X61_Y48_N24
\m3|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~3_combout\ = (!\m3|m2r\(14) & (!\m3|m2r\(13) & (!\m3|m2r\(15) & !\m3|m2r\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(14),
	datab => \m3|m2r\(13),
	datac => \m3|m2r\(15),
	datad => \m3|m2r\(16),
	combout => \m3|Equal4~3_combout\);

-- Location: LCCOMB_X60_Y48_N6
\m3|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~1_combout\ = (!\m3|m2r\(5) & (!\m3|m2r\(7) & (!\m3|m2r\(8) & !\m3|m2r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(5),
	datab => \m3|m2r\(7),
	datac => \m3|m2r\(8),
	datad => \m3|m2r\(6),
	combout => \m3|Equal4~1_combout\);

-- Location: LCCOMB_X61_Y48_N16
\m3|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~0_combout\ = (\m3|m2r\(3) & (!\m3|m2r\(1) & (!\m3|m2r\(4) & !\m3|m2r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(3),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(4),
	datad => \m3|m2r\(2),
	combout => \m3|Equal4~0_combout\);

-- Location: LCCOMB_X61_Y48_N18
\m3|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~4_combout\ = (\m3|Equal4~2_combout\ & (\m3|Equal4~3_combout\ & (\m3|Equal4~1_combout\ & \m3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Equal4~2_combout\,
	datab => \m3|Equal4~3_combout\,
	datac => \m3|Equal4~1_combout\,
	datad => \m3|Equal4~0_combout\,
	combout => \m3|Equal4~4_combout\);

-- Location: LCCOMB_X61_Y48_N28
\m3|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal4~9_combout\ = (\m3|Equal4~6_combout\ & (\m3|Equal4~5_combout\ & (\m3|Equal4~8_combout\ & \m3|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Equal4~6_combout\,
	datab => \m3|Equal4~5_combout\,
	datac => \m3|Equal4~8_combout\,
	datad => \m3|Equal4~4_combout\,
	combout => \m3|Equal4~9_combout\);

-- Location: LCCOMB_X61_Y48_N14
\m3|m2r~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~31_combout\ = (\m3|process_0~3_combout\ & (((\m3|m2r\(0) & \m3|Equal4~9_combout\)))) # (!\m3|process_0~3_combout\ & (\m3|Add3~0_combout\ & ((!\m3|Equal4~9_combout\) # (!\m3|m2r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Add3~0_combout\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|m2r\(0),
	datad => \m3|Equal4~9_combout\,
	combout => \m3|m2r~31_combout\);

-- Location: LCCOMB_X61_Y48_N8
\m3|m2r~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r~36_combout\ = (\m3|m2r~35_combout\ & ((\m3|m2r~31_combout\) # ((\m3|m2r\(0) & \m3|process_0~3_combout\)))) # (!\m3|m2r~35_combout\ & (((\m3|m2r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r~35_combout\,
	datab => \m3|m2r~31_combout\,
	datac => \m3|m2r\(0),
	datad => \m3|process_0~3_combout\,
	combout => \m3|m2r~36_combout\);

-- Location: FF_X61_Y48_N9
\m3|m2r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r~36_combout\,
	sclr => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(0));

-- Location: LCCOMB_X63_Y47_N2
\m3|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~2_combout\ = (\m3|m2r\(1) & (!\m3|Add3~1\)) # (!\m3|m2r\(1) & ((\m3|Add3~1\) # (GND)))
-- \m3|Add3~3\ = CARRY((!\m3|Add3~1\) # (!\m3|m2r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(1),
	datad => VCC,
	cin => \m3|Add3~1\,
	combout => \m3|Add3~2_combout\,
	cout => \m3|Add3~3\);

-- Location: LCCOMB_X61_Y48_N4
\m3|m2r[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[3]~41_combout\ = ((\m3|Equal4~9_combout\ & ((\m3|process_0~3_combout\) # (\m3|m2r\(0))))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|m2r\(0),
	datad => \m3|Equal4~9_combout\,
	combout => \m3|m2r[3]~41_combout\);

-- Location: LCCOMB_X61_Y47_N0
\m3|m2r[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[3]~42_combout\ = (\m3|m2r~35_combout\) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datad => \m3|m2r~35_combout\,
	combout => \m3|m2r[3]~42_combout\);

-- Location: FF_X61_Y47_N3
\m3|m2r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[1]~37_combout\,
	asdata => \m3|Add3~2_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(1));

-- Location: LCCOMB_X61_Y47_N4
\m3|m2r[2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[2]~39_combout\ = (\m3|m2r\(2) & (!\m3|m2r[1]~38\)) # (!\m3|m2r\(2) & ((\m3|m2r[1]~38\) # (GND)))
-- \m3|m2r[2]~40\ = CARRY((!\m3|m2r[1]~38\) # (!\m3|m2r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(2),
	datad => VCC,
	cin => \m3|m2r[1]~38\,
	combout => \m3|m2r[2]~39_combout\,
	cout => \m3|m2r[2]~40\);

-- Location: LCCOMB_X63_Y47_N4
\m3|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~4_combout\ = (\m3|m2r\(2) & (\m3|Add3~3\ $ (GND))) # (!\m3|m2r\(2) & (!\m3|Add3~3\ & VCC))
-- \m3|Add3~5\ = CARRY((\m3|m2r\(2) & !\m3|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(2),
	datad => VCC,
	cin => \m3|Add3~3\,
	combout => \m3|Add3~4_combout\,
	cout => \m3|Add3~5\);

-- Location: FF_X61_Y47_N5
\m3|m2r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[2]~39_combout\,
	asdata => \m3|Add3~4_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(2));

-- Location: LCCOMB_X61_Y47_N6
\m3|m2r[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[3]~43_combout\ = (\m3|m2r\(3) & (\m3|m2r[2]~40\ $ (GND))) # (!\m3|m2r\(3) & (!\m3|m2r[2]~40\ & VCC))
-- \m3|m2r[3]~44\ = CARRY((\m3|m2r\(3) & !\m3|m2r[2]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(3),
	datad => VCC,
	cin => \m3|m2r[2]~40\,
	combout => \m3|m2r[3]~43_combout\,
	cout => \m3|m2r[3]~44\);

-- Location: LCCOMB_X63_Y47_N6
\m3|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~6_combout\ = (\m3|m2r\(3) & (!\m3|Add3~5\)) # (!\m3|m2r\(3) & ((\m3|Add3~5\) # (GND)))
-- \m3|Add3~7\ = CARRY((!\m3|Add3~5\) # (!\m3|m2r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(3),
	datad => VCC,
	cin => \m3|Add3~5\,
	combout => \m3|Add3~6_combout\,
	cout => \m3|Add3~7\);

-- Location: FF_X61_Y47_N7
\m3|m2r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[3]~43_combout\,
	asdata => \m3|Add3~6_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(3));

-- Location: LCCOMB_X61_Y47_N8
\m3|m2r[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[4]~46_combout\ = (\m3|m2r\(4) & (!\m3|m2r[3]~44\)) # (!\m3|m2r\(4) & ((\m3|m2r[3]~44\) # (GND)))
-- \m3|m2r[4]~47\ = CARRY((!\m3|m2r[3]~44\) # (!\m3|m2r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(4),
	datad => VCC,
	cin => \m3|m2r[3]~44\,
	combout => \m3|m2r[4]~46_combout\,
	cout => \m3|m2r[4]~47\);

-- Location: LCCOMB_X63_Y47_N8
\m3|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~8_combout\ = (\m3|m2r\(4) & (\m3|Add3~7\ $ (GND))) # (!\m3|m2r\(4) & (!\m3|Add3~7\ & VCC))
-- \m3|Add3~9\ = CARRY((\m3|m2r\(4) & !\m3|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(4),
	datad => VCC,
	cin => \m3|Add3~7\,
	combout => \m3|Add3~8_combout\,
	cout => \m3|Add3~9\);

-- Location: FF_X61_Y47_N9
\m3|m2r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[4]~46_combout\,
	asdata => \m3|Add3~8_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(4));

-- Location: LCCOMB_X61_Y47_N10
\m3|m2r[5]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[5]~48_combout\ = (\m3|m2r\(5) & (\m3|m2r[4]~47\ $ (GND))) # (!\m3|m2r\(5) & (!\m3|m2r[4]~47\ & VCC))
-- \m3|m2r[5]~49\ = CARRY((\m3|m2r\(5) & !\m3|m2r[4]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(5),
	datad => VCC,
	cin => \m3|m2r[4]~47\,
	combout => \m3|m2r[5]~48_combout\,
	cout => \m3|m2r[5]~49\);

-- Location: LCCOMB_X63_Y47_N10
\m3|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~10_combout\ = (\m3|m2r\(5) & (!\m3|Add3~9\)) # (!\m3|m2r\(5) & ((\m3|Add3~9\) # (GND)))
-- \m3|Add3~11\ = CARRY((!\m3|Add3~9\) # (!\m3|m2r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(5),
	datad => VCC,
	cin => \m3|Add3~9\,
	combout => \m3|Add3~10_combout\,
	cout => \m3|Add3~11\);

-- Location: FF_X61_Y47_N11
\m3|m2r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[5]~48_combout\,
	asdata => \m3|Add3~10_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(5));

-- Location: LCCOMB_X61_Y47_N12
\m3|m2r[6]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[6]~50_combout\ = (\m3|m2r\(6) & (!\m3|m2r[5]~49\)) # (!\m3|m2r\(6) & ((\m3|m2r[5]~49\) # (GND)))
-- \m3|m2r[6]~51\ = CARRY((!\m3|m2r[5]~49\) # (!\m3|m2r\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(6),
	datad => VCC,
	cin => \m3|m2r[5]~49\,
	combout => \m3|m2r[6]~50_combout\,
	cout => \m3|m2r[6]~51\);

-- Location: LCCOMB_X63_Y47_N12
\m3|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~12_combout\ = (\m3|m2r\(6) & (\m3|Add3~11\ $ (GND))) # (!\m3|m2r\(6) & (!\m3|Add3~11\ & VCC))
-- \m3|Add3~13\ = CARRY((\m3|m2r\(6) & !\m3|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(6),
	datad => VCC,
	cin => \m3|Add3~11\,
	combout => \m3|Add3~12_combout\,
	cout => \m3|Add3~13\);

-- Location: FF_X61_Y47_N13
\m3|m2r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[6]~50_combout\,
	asdata => \m3|Add3~12_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(6));

-- Location: LCCOMB_X61_Y47_N14
\m3|m2r[7]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[7]~52_combout\ = (\m3|m2r\(7) & (\m3|m2r[6]~51\ $ (GND))) # (!\m3|m2r\(7) & (!\m3|m2r[6]~51\ & VCC))
-- \m3|m2r[7]~53\ = CARRY((\m3|m2r\(7) & !\m3|m2r[6]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(7),
	datad => VCC,
	cin => \m3|m2r[6]~51\,
	combout => \m3|m2r[7]~52_combout\,
	cout => \m3|m2r[7]~53\);

-- Location: LCCOMB_X63_Y47_N14
\m3|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~14_combout\ = (\m3|m2r\(7) & (!\m3|Add3~13\)) # (!\m3|m2r\(7) & ((\m3|Add3~13\) # (GND)))
-- \m3|Add3~15\ = CARRY((!\m3|Add3~13\) # (!\m3|m2r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(7),
	datad => VCC,
	cin => \m3|Add3~13\,
	combout => \m3|Add3~14_combout\,
	cout => \m3|Add3~15\);

-- Location: FF_X61_Y47_N15
\m3|m2r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[7]~52_combout\,
	asdata => \m3|Add3~14_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(7));

-- Location: LCCOMB_X61_Y47_N16
\m3|m2r[8]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[8]~54_combout\ = (\m3|m2r\(8) & (!\m3|m2r[7]~53\)) # (!\m3|m2r\(8) & ((\m3|m2r[7]~53\) # (GND)))
-- \m3|m2r[8]~55\ = CARRY((!\m3|m2r[7]~53\) # (!\m3|m2r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(8),
	datad => VCC,
	cin => \m3|m2r[7]~53\,
	combout => \m3|m2r[8]~54_combout\,
	cout => \m3|m2r[8]~55\);

-- Location: LCCOMB_X63_Y47_N16
\m3|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~16_combout\ = (\m3|m2r\(8) & (\m3|Add3~15\ $ (GND))) # (!\m3|m2r\(8) & (!\m3|Add3~15\ & VCC))
-- \m3|Add3~17\ = CARRY((\m3|m2r\(8) & !\m3|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(8),
	datad => VCC,
	cin => \m3|Add3~15\,
	combout => \m3|Add3~16_combout\,
	cout => \m3|Add3~17\);

-- Location: FF_X61_Y47_N17
\m3|m2r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[8]~54_combout\,
	asdata => \m3|Add3~16_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(8));

-- Location: LCCOMB_X61_Y47_N18
\m3|m2r[9]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[9]~56_combout\ = (\m3|m2r\(9) & (\m3|m2r[8]~55\ $ (GND))) # (!\m3|m2r\(9) & (!\m3|m2r[8]~55\ & VCC))
-- \m3|m2r[9]~57\ = CARRY((\m3|m2r\(9) & !\m3|m2r[8]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(9),
	datad => VCC,
	cin => \m3|m2r[8]~55\,
	combout => \m3|m2r[9]~56_combout\,
	cout => \m3|m2r[9]~57\);

-- Location: LCCOMB_X63_Y47_N18
\m3|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~18_combout\ = (\m3|m2r\(9) & (!\m3|Add3~17\)) # (!\m3|m2r\(9) & ((\m3|Add3~17\) # (GND)))
-- \m3|Add3~19\ = CARRY((!\m3|Add3~17\) # (!\m3|m2r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(9),
	datad => VCC,
	cin => \m3|Add3~17\,
	combout => \m3|Add3~18_combout\,
	cout => \m3|Add3~19\);

-- Location: FF_X61_Y47_N19
\m3|m2r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[9]~56_combout\,
	asdata => \m3|Add3~18_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(9));

-- Location: LCCOMB_X61_Y47_N20
\m3|m2r[10]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[10]~58_combout\ = (\m3|m2r\(10) & (!\m3|m2r[9]~57\)) # (!\m3|m2r\(10) & ((\m3|m2r[9]~57\) # (GND)))
-- \m3|m2r[10]~59\ = CARRY((!\m3|m2r[9]~57\) # (!\m3|m2r\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(10),
	datad => VCC,
	cin => \m3|m2r[9]~57\,
	combout => \m3|m2r[10]~58_combout\,
	cout => \m3|m2r[10]~59\);

-- Location: LCCOMB_X63_Y47_N20
\m3|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~20_combout\ = (\m3|m2r\(10) & (\m3|Add3~19\ $ (GND))) # (!\m3|m2r\(10) & (!\m3|Add3~19\ & VCC))
-- \m3|Add3~21\ = CARRY((\m3|m2r\(10) & !\m3|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(10),
	datad => VCC,
	cin => \m3|Add3~19\,
	combout => \m3|Add3~20_combout\,
	cout => \m3|Add3~21\);

-- Location: FF_X61_Y47_N21
\m3|m2r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[10]~58_combout\,
	asdata => \m3|Add3~20_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(10));

-- Location: LCCOMB_X61_Y47_N22
\m3|m2r[11]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[11]~60_combout\ = (\m3|m2r\(11) & (\m3|m2r[10]~59\ $ (GND))) # (!\m3|m2r\(11) & (!\m3|m2r[10]~59\ & VCC))
-- \m3|m2r[11]~61\ = CARRY((\m3|m2r\(11) & !\m3|m2r[10]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(11),
	datad => VCC,
	cin => \m3|m2r[10]~59\,
	combout => \m3|m2r[11]~60_combout\,
	cout => \m3|m2r[11]~61\);

-- Location: LCCOMB_X63_Y47_N22
\m3|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~22_combout\ = (\m3|m2r\(11) & (!\m3|Add3~21\)) # (!\m3|m2r\(11) & ((\m3|Add3~21\) # (GND)))
-- \m3|Add3~23\ = CARRY((!\m3|Add3~21\) # (!\m3|m2r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(11),
	datad => VCC,
	cin => \m3|Add3~21\,
	combout => \m3|Add3~22_combout\,
	cout => \m3|Add3~23\);

-- Location: FF_X61_Y47_N23
\m3|m2r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[11]~60_combout\,
	asdata => \m3|Add3~22_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(11));

-- Location: LCCOMB_X61_Y47_N24
\m3|m2r[12]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[12]~62_combout\ = (\m3|m2r\(12) & (!\m3|m2r[11]~61\)) # (!\m3|m2r\(12) & ((\m3|m2r[11]~61\) # (GND)))
-- \m3|m2r[12]~63\ = CARRY((!\m3|m2r[11]~61\) # (!\m3|m2r\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(12),
	datad => VCC,
	cin => \m3|m2r[11]~61\,
	combout => \m3|m2r[12]~62_combout\,
	cout => \m3|m2r[12]~63\);

-- Location: LCCOMB_X63_Y47_N24
\m3|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~24_combout\ = (\m3|m2r\(12) & (\m3|Add3~23\ $ (GND))) # (!\m3|m2r\(12) & (!\m3|Add3~23\ & VCC))
-- \m3|Add3~25\ = CARRY((\m3|m2r\(12) & !\m3|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(12),
	datad => VCC,
	cin => \m3|Add3~23\,
	combout => \m3|Add3~24_combout\,
	cout => \m3|Add3~25\);

-- Location: FF_X61_Y47_N25
\m3|m2r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[12]~62_combout\,
	asdata => \m3|Add3~24_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(12));

-- Location: LCCOMB_X61_Y47_N26
\m3|m2r[13]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[13]~64_combout\ = (\m3|m2r\(13) & (\m3|m2r[12]~63\ $ (GND))) # (!\m3|m2r\(13) & (!\m3|m2r[12]~63\ & VCC))
-- \m3|m2r[13]~65\ = CARRY((\m3|m2r\(13) & !\m3|m2r[12]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(13),
	datad => VCC,
	cin => \m3|m2r[12]~63\,
	combout => \m3|m2r[13]~64_combout\,
	cout => \m3|m2r[13]~65\);

-- Location: LCCOMB_X63_Y47_N26
\m3|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~26_combout\ = (\m3|m2r\(13) & (!\m3|Add3~25\)) # (!\m3|m2r\(13) & ((\m3|Add3~25\) # (GND)))
-- \m3|Add3~27\ = CARRY((!\m3|Add3~25\) # (!\m3|m2r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(13),
	datad => VCC,
	cin => \m3|Add3~25\,
	combout => \m3|Add3~26_combout\,
	cout => \m3|Add3~27\);

-- Location: FF_X61_Y47_N27
\m3|m2r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[13]~64_combout\,
	asdata => \m3|Add3~26_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(13));

-- Location: LCCOMB_X61_Y47_N28
\m3|m2r[14]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[14]~66_combout\ = (\m3|m2r\(14) & (!\m3|m2r[13]~65\)) # (!\m3|m2r\(14) & ((\m3|m2r[13]~65\) # (GND)))
-- \m3|m2r[14]~67\ = CARRY((!\m3|m2r[13]~65\) # (!\m3|m2r\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(14),
	datad => VCC,
	cin => \m3|m2r[13]~65\,
	combout => \m3|m2r[14]~66_combout\,
	cout => \m3|m2r[14]~67\);

-- Location: LCCOMB_X63_Y47_N28
\m3|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~28_combout\ = (\m3|m2r\(14) & (\m3|Add3~27\ $ (GND))) # (!\m3|m2r\(14) & (!\m3|Add3~27\ & VCC))
-- \m3|Add3~29\ = CARRY((\m3|m2r\(14) & !\m3|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(14),
	datad => VCC,
	cin => \m3|Add3~27\,
	combout => \m3|Add3~28_combout\,
	cout => \m3|Add3~29\);

-- Location: FF_X61_Y47_N29
\m3|m2r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[14]~66_combout\,
	asdata => \m3|Add3~28_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(14));

-- Location: LCCOMB_X61_Y47_N30
\m3|m2r[15]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[15]~68_combout\ = (\m3|m2r\(15) & (\m3|m2r[14]~67\ $ (GND))) # (!\m3|m2r\(15) & (!\m3|m2r[14]~67\ & VCC))
-- \m3|m2r[15]~69\ = CARRY((\m3|m2r\(15) & !\m3|m2r[14]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(15),
	datad => VCC,
	cin => \m3|m2r[14]~67\,
	combout => \m3|m2r[15]~68_combout\,
	cout => \m3|m2r[15]~69\);

-- Location: LCCOMB_X63_Y47_N30
\m3|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~30_combout\ = (\m3|m2r\(15) & (!\m3|Add3~29\)) # (!\m3|m2r\(15) & ((\m3|Add3~29\) # (GND)))
-- \m3|Add3~31\ = CARRY((!\m3|Add3~29\) # (!\m3|m2r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(15),
	datad => VCC,
	cin => \m3|Add3~29\,
	combout => \m3|Add3~30_combout\,
	cout => \m3|Add3~31\);

-- Location: FF_X61_Y47_N31
\m3|m2r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[15]~68_combout\,
	asdata => \m3|Add3~30_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(15));

-- Location: LCCOMB_X61_Y46_N0
\m3|m2r[16]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[16]~70_combout\ = (\m3|m2r\(16) & (!\m3|m2r[15]~69\)) # (!\m3|m2r\(16) & ((\m3|m2r[15]~69\) # (GND)))
-- \m3|m2r[16]~71\ = CARRY((!\m3|m2r[15]~69\) # (!\m3|m2r\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(16),
	datad => VCC,
	cin => \m3|m2r[15]~69\,
	combout => \m3|m2r[16]~70_combout\,
	cout => \m3|m2r[16]~71\);

-- Location: LCCOMB_X63_Y46_N0
\m3|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~32_combout\ = (\m3|m2r\(16) & (\m3|Add3~31\ $ (GND))) # (!\m3|m2r\(16) & (!\m3|Add3~31\ & VCC))
-- \m3|Add3~33\ = CARRY((\m3|m2r\(16) & !\m3|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(16),
	datad => VCC,
	cin => \m3|Add3~31\,
	combout => \m3|Add3~32_combout\,
	cout => \m3|Add3~33\);

-- Location: FF_X61_Y46_N1
\m3|m2r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[16]~70_combout\,
	asdata => \m3|Add3~32_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(16));

-- Location: LCCOMB_X61_Y46_N2
\m3|m2r[17]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[17]~72_combout\ = (\m3|m2r\(17) & (\m3|m2r[16]~71\ $ (GND))) # (!\m3|m2r\(17) & (!\m3|m2r[16]~71\ & VCC))
-- \m3|m2r[17]~73\ = CARRY((\m3|m2r\(17) & !\m3|m2r[16]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(17),
	datad => VCC,
	cin => \m3|m2r[16]~71\,
	combout => \m3|m2r[17]~72_combout\,
	cout => \m3|m2r[17]~73\);

-- Location: LCCOMB_X63_Y46_N2
\m3|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~34_combout\ = (\m3|m2r\(17) & (!\m3|Add3~33\)) # (!\m3|m2r\(17) & ((\m3|Add3~33\) # (GND)))
-- \m3|Add3~35\ = CARRY((!\m3|Add3~33\) # (!\m3|m2r\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(17),
	datad => VCC,
	cin => \m3|Add3~33\,
	combout => \m3|Add3~34_combout\,
	cout => \m3|Add3~35\);

-- Location: FF_X61_Y46_N3
\m3|m2r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[17]~72_combout\,
	asdata => \m3|Add3~34_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(17));

-- Location: LCCOMB_X61_Y46_N4
\m3|m2r[18]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[18]~74_combout\ = (\m3|m2r\(18) & (!\m3|m2r[17]~73\)) # (!\m3|m2r\(18) & ((\m3|m2r[17]~73\) # (GND)))
-- \m3|m2r[18]~75\ = CARRY((!\m3|m2r[17]~73\) # (!\m3|m2r\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(18),
	datad => VCC,
	cin => \m3|m2r[17]~73\,
	combout => \m3|m2r[18]~74_combout\,
	cout => \m3|m2r[18]~75\);

-- Location: LCCOMB_X63_Y46_N4
\m3|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~36_combout\ = (\m3|m2r\(18) & (\m3|Add3~35\ $ (GND))) # (!\m3|m2r\(18) & (!\m3|Add3~35\ & VCC))
-- \m3|Add3~37\ = CARRY((\m3|m2r\(18) & !\m3|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(18),
	datad => VCC,
	cin => \m3|Add3~35\,
	combout => \m3|Add3~36_combout\,
	cout => \m3|Add3~37\);

-- Location: FF_X61_Y46_N5
\m3|m2r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[18]~74_combout\,
	asdata => \m3|Add3~36_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(18));

-- Location: LCCOMB_X61_Y46_N6
\m3|m2r[19]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[19]~76_combout\ = (\m3|m2r\(19) & (\m3|m2r[18]~75\ $ (GND))) # (!\m3|m2r\(19) & (!\m3|m2r[18]~75\ & VCC))
-- \m3|m2r[19]~77\ = CARRY((\m3|m2r\(19) & !\m3|m2r[18]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(19),
	datad => VCC,
	cin => \m3|m2r[18]~75\,
	combout => \m3|m2r[19]~76_combout\,
	cout => \m3|m2r[19]~77\);

-- Location: LCCOMB_X63_Y46_N6
\m3|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~38_combout\ = (\m3|m2r\(19) & (!\m3|Add3~37\)) # (!\m3|m2r\(19) & ((\m3|Add3~37\) # (GND)))
-- \m3|Add3~39\ = CARRY((!\m3|Add3~37\) # (!\m3|m2r\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(19),
	datad => VCC,
	cin => \m3|Add3~37\,
	combout => \m3|Add3~38_combout\,
	cout => \m3|Add3~39\);

-- Location: FF_X61_Y46_N7
\m3|m2r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[19]~76_combout\,
	asdata => \m3|Add3~38_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(19));

-- Location: LCCOMB_X61_Y46_N8
\m3|m2r[20]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[20]~78_combout\ = (\m3|m2r\(20) & (!\m3|m2r[19]~77\)) # (!\m3|m2r\(20) & ((\m3|m2r[19]~77\) # (GND)))
-- \m3|m2r[20]~79\ = CARRY((!\m3|m2r[19]~77\) # (!\m3|m2r\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(20),
	datad => VCC,
	cin => \m3|m2r[19]~77\,
	combout => \m3|m2r[20]~78_combout\,
	cout => \m3|m2r[20]~79\);

-- Location: LCCOMB_X63_Y46_N8
\m3|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~40_combout\ = (\m3|m2r\(20) & (\m3|Add3~39\ $ (GND))) # (!\m3|m2r\(20) & (!\m3|Add3~39\ & VCC))
-- \m3|Add3~41\ = CARRY((\m3|m2r\(20) & !\m3|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(20),
	datad => VCC,
	cin => \m3|Add3~39\,
	combout => \m3|Add3~40_combout\,
	cout => \m3|Add3~41\);

-- Location: FF_X61_Y46_N9
\m3|m2r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[20]~78_combout\,
	asdata => \m3|Add3~40_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(20));

-- Location: LCCOMB_X61_Y46_N10
\m3|m2r[21]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[21]~80_combout\ = (\m3|m2r\(21) & (\m3|m2r[20]~79\ $ (GND))) # (!\m3|m2r\(21) & (!\m3|m2r[20]~79\ & VCC))
-- \m3|m2r[21]~81\ = CARRY((\m3|m2r\(21) & !\m3|m2r[20]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(21),
	datad => VCC,
	cin => \m3|m2r[20]~79\,
	combout => \m3|m2r[21]~80_combout\,
	cout => \m3|m2r[21]~81\);

-- Location: LCCOMB_X63_Y46_N10
\m3|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~42_combout\ = (\m3|m2r\(21) & (!\m3|Add3~41\)) # (!\m3|m2r\(21) & ((\m3|Add3~41\) # (GND)))
-- \m3|Add3~43\ = CARRY((!\m3|Add3~41\) # (!\m3|m2r\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(21),
	datad => VCC,
	cin => \m3|Add3~41\,
	combout => \m3|Add3~42_combout\,
	cout => \m3|Add3~43\);

-- Location: FF_X61_Y46_N11
\m3|m2r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[21]~80_combout\,
	asdata => \m3|Add3~42_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(21));

-- Location: LCCOMB_X61_Y46_N12
\m3|m2r[22]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[22]~82_combout\ = (\m3|m2r\(22) & (!\m3|m2r[21]~81\)) # (!\m3|m2r\(22) & ((\m3|m2r[21]~81\) # (GND)))
-- \m3|m2r[22]~83\ = CARRY((!\m3|m2r[21]~81\) # (!\m3|m2r\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(22),
	datad => VCC,
	cin => \m3|m2r[21]~81\,
	combout => \m3|m2r[22]~82_combout\,
	cout => \m3|m2r[22]~83\);

-- Location: LCCOMB_X63_Y46_N12
\m3|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~44_combout\ = (\m3|m2r\(22) & (\m3|Add3~43\ $ (GND))) # (!\m3|m2r\(22) & (!\m3|Add3~43\ & VCC))
-- \m3|Add3~45\ = CARRY((\m3|m2r\(22) & !\m3|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(22),
	datad => VCC,
	cin => \m3|Add3~43\,
	combout => \m3|Add3~44_combout\,
	cout => \m3|Add3~45\);

-- Location: FF_X61_Y46_N13
\m3|m2r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[22]~82_combout\,
	asdata => \m3|Add3~44_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(22));

-- Location: LCCOMB_X61_Y46_N14
\m3|m2r[23]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[23]~84_combout\ = (\m3|m2r\(23) & (\m3|m2r[22]~83\ $ (GND))) # (!\m3|m2r\(23) & (!\m3|m2r[22]~83\ & VCC))
-- \m3|m2r[23]~85\ = CARRY((\m3|m2r\(23) & !\m3|m2r[22]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(23),
	datad => VCC,
	cin => \m3|m2r[22]~83\,
	combout => \m3|m2r[23]~84_combout\,
	cout => \m3|m2r[23]~85\);

-- Location: LCCOMB_X63_Y46_N14
\m3|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~46_combout\ = (\m3|m2r\(23) & (!\m3|Add3~45\)) # (!\m3|m2r\(23) & ((\m3|Add3~45\) # (GND)))
-- \m3|Add3~47\ = CARRY((!\m3|Add3~45\) # (!\m3|m2r\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(23),
	datad => VCC,
	cin => \m3|Add3~45\,
	combout => \m3|Add3~46_combout\,
	cout => \m3|Add3~47\);

-- Location: FF_X61_Y46_N15
\m3|m2r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[23]~84_combout\,
	asdata => \m3|Add3~46_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(23));

-- Location: LCCOMB_X61_Y46_N16
\m3|m2r[24]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[24]~86_combout\ = (\m3|m2r\(24) & (!\m3|m2r[23]~85\)) # (!\m3|m2r\(24) & ((\m3|m2r[23]~85\) # (GND)))
-- \m3|m2r[24]~87\ = CARRY((!\m3|m2r[23]~85\) # (!\m3|m2r\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(24),
	datad => VCC,
	cin => \m3|m2r[23]~85\,
	combout => \m3|m2r[24]~86_combout\,
	cout => \m3|m2r[24]~87\);

-- Location: LCCOMB_X63_Y46_N16
\m3|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~48_combout\ = (\m3|m2r\(24) & (\m3|Add3~47\ $ (GND))) # (!\m3|m2r\(24) & (!\m3|Add3~47\ & VCC))
-- \m3|Add3~49\ = CARRY((\m3|m2r\(24) & !\m3|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(24),
	datad => VCC,
	cin => \m3|Add3~47\,
	combout => \m3|Add3~48_combout\,
	cout => \m3|Add3~49\);

-- Location: FF_X61_Y46_N17
\m3|m2r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[24]~86_combout\,
	asdata => \m3|Add3~48_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(24));

-- Location: LCCOMB_X61_Y46_N18
\m3|m2r[25]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[25]~88_combout\ = (\m3|m2r\(25) & (\m3|m2r[24]~87\ $ (GND))) # (!\m3|m2r\(25) & (!\m3|m2r[24]~87\ & VCC))
-- \m3|m2r[25]~89\ = CARRY((\m3|m2r\(25) & !\m3|m2r[24]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(25),
	datad => VCC,
	cin => \m3|m2r[24]~87\,
	combout => \m3|m2r[25]~88_combout\,
	cout => \m3|m2r[25]~89\);

-- Location: LCCOMB_X63_Y46_N18
\m3|Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~50_combout\ = (\m3|m2r\(25) & (!\m3|Add3~49\)) # (!\m3|m2r\(25) & ((\m3|Add3~49\) # (GND)))
-- \m3|Add3~51\ = CARRY((!\m3|Add3~49\) # (!\m3|m2r\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(25),
	datad => VCC,
	cin => \m3|Add3~49\,
	combout => \m3|Add3~50_combout\,
	cout => \m3|Add3~51\);

-- Location: FF_X61_Y46_N19
\m3|m2r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[25]~88_combout\,
	asdata => \m3|Add3~50_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(25));

-- Location: LCCOMB_X61_Y46_N20
\m3|m2r[26]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[26]~90_combout\ = (\m3|m2r\(26) & (!\m3|m2r[25]~89\)) # (!\m3|m2r\(26) & ((\m3|m2r[25]~89\) # (GND)))
-- \m3|m2r[26]~91\ = CARRY((!\m3|m2r[25]~89\) # (!\m3|m2r\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(26),
	datad => VCC,
	cin => \m3|m2r[25]~89\,
	combout => \m3|m2r[26]~90_combout\,
	cout => \m3|m2r[26]~91\);

-- Location: LCCOMB_X63_Y46_N20
\m3|Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~52_combout\ = (\m3|m2r\(26) & (\m3|Add3~51\ $ (GND))) # (!\m3|m2r\(26) & (!\m3|Add3~51\ & VCC))
-- \m3|Add3~53\ = CARRY((\m3|m2r\(26) & !\m3|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(26),
	datad => VCC,
	cin => \m3|Add3~51\,
	combout => \m3|Add3~52_combout\,
	cout => \m3|Add3~53\);

-- Location: FF_X61_Y46_N21
\m3|m2r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[26]~90_combout\,
	asdata => \m3|Add3~52_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(26));

-- Location: LCCOMB_X61_Y46_N22
\m3|m2r[27]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[27]~92_combout\ = (\m3|m2r\(27) & (\m3|m2r[26]~91\ $ (GND))) # (!\m3|m2r\(27) & (!\m3|m2r[26]~91\ & VCC))
-- \m3|m2r[27]~93\ = CARRY((\m3|m2r\(27) & !\m3|m2r[26]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(27),
	datad => VCC,
	cin => \m3|m2r[26]~91\,
	combout => \m3|m2r[27]~92_combout\,
	cout => \m3|m2r[27]~93\);

-- Location: LCCOMB_X63_Y46_N22
\m3|Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~54_combout\ = (\m3|m2r\(27) & (!\m3|Add3~53\)) # (!\m3|m2r\(27) & ((\m3|Add3~53\) # (GND)))
-- \m3|Add3~55\ = CARRY((!\m3|Add3~53\) # (!\m3|m2r\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(27),
	datad => VCC,
	cin => \m3|Add3~53\,
	combout => \m3|Add3~54_combout\,
	cout => \m3|Add3~55\);

-- Location: FF_X61_Y46_N23
\m3|m2r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[27]~92_combout\,
	asdata => \m3|Add3~54_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(27));

-- Location: LCCOMB_X61_Y46_N24
\m3|m2r[28]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[28]~94_combout\ = (\m3|m2r\(28) & (!\m3|m2r[27]~93\)) # (!\m3|m2r\(28) & ((\m3|m2r[27]~93\) # (GND)))
-- \m3|m2r[28]~95\ = CARRY((!\m3|m2r[27]~93\) # (!\m3|m2r\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(28),
	datad => VCC,
	cin => \m3|m2r[27]~93\,
	combout => \m3|m2r[28]~94_combout\,
	cout => \m3|m2r[28]~95\);

-- Location: LCCOMB_X63_Y46_N24
\m3|Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~56_combout\ = (\m3|m2r\(28) & (\m3|Add3~55\ $ (GND))) # (!\m3|m2r\(28) & (!\m3|Add3~55\ & VCC))
-- \m3|Add3~57\ = CARRY((\m3|m2r\(28) & !\m3|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(28),
	datad => VCC,
	cin => \m3|Add3~55\,
	combout => \m3|Add3~56_combout\,
	cout => \m3|Add3~57\);

-- Location: FF_X61_Y46_N25
\m3|m2r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[28]~94_combout\,
	asdata => \m3|Add3~56_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(28));

-- Location: LCCOMB_X61_Y46_N26
\m3|m2r[29]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[29]~96_combout\ = (\m3|m2r\(29) & (\m3|m2r[28]~95\ $ (GND))) # (!\m3|m2r\(29) & (!\m3|m2r[28]~95\ & VCC))
-- \m3|m2r[29]~97\ = CARRY((\m3|m2r\(29) & !\m3|m2r[28]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(29),
	datad => VCC,
	cin => \m3|m2r[28]~95\,
	combout => \m3|m2r[29]~96_combout\,
	cout => \m3|m2r[29]~97\);

-- Location: LCCOMB_X63_Y46_N26
\m3|Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~58_combout\ = (\m3|m2r\(29) & (!\m3|Add3~57\)) # (!\m3|m2r\(29) & ((\m3|Add3~57\) # (GND)))
-- \m3|Add3~59\ = CARRY((!\m3|Add3~57\) # (!\m3|m2r\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(29),
	datad => VCC,
	cin => \m3|Add3~57\,
	combout => \m3|Add3~58_combout\,
	cout => \m3|Add3~59\);

-- Location: FF_X61_Y46_N27
\m3|m2r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[29]~96_combout\,
	asdata => \m3|Add3~58_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(29));

-- Location: LCCOMB_X61_Y46_N28
\m3|m2r[30]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[30]~98_combout\ = (\m3|m2r\(30) & (!\m3|m2r[29]~97\)) # (!\m3|m2r\(30) & ((\m3|m2r[29]~97\) # (GND)))
-- \m3|m2r[30]~99\ = CARRY((!\m3|m2r[29]~97\) # (!\m3|m2r\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(30),
	datad => VCC,
	cin => \m3|m2r[29]~97\,
	combout => \m3|m2r[30]~98_combout\,
	cout => \m3|m2r[30]~99\);

-- Location: LCCOMB_X63_Y46_N28
\m3|Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~60_combout\ = (\m3|m2r\(30) & (\m3|Add3~59\ $ (GND))) # (!\m3|m2r\(30) & (!\m3|Add3~59\ & VCC))
-- \m3|Add3~61\ = CARRY((\m3|m2r\(30) & !\m3|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(30),
	datad => VCC,
	cin => \m3|Add3~59\,
	combout => \m3|Add3~60_combout\,
	cout => \m3|Add3~61\);

-- Location: FF_X61_Y46_N29
\m3|m2r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[30]~98_combout\,
	asdata => \m3|Add3~60_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(30));

-- Location: LCCOMB_X61_Y46_N30
\m3|m2r[31]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2r[31]~100_combout\ = \m3|m2r\(31) $ (!\m3|m2r[30]~99\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(31),
	cin => \m3|m2r[30]~99\,
	combout => \m3|m2r[31]~100_combout\);

-- Location: LCCOMB_X63_Y46_N30
\m3|Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add3~62_combout\ = \m3|Add3~61\ $ (\m3|m2r\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \m3|m2r\(31),
	cin => \m3|Add3~61\,
	combout => \m3|Add3~62_combout\);

-- Location: FF_X61_Y46_N31
\m3|m2r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2r[31]~100_combout\,
	asdata => \m3|Add3~62_combout\,
	sclr => \m3|m2r[3]~41_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m2r[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2r\(31));

-- Location: LCCOMB_X58_Y47_N2
\m3|m1r[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[1]~36_combout\ = \m3|m1r\(1) $ (VCC)
-- \m3|m1r[1]~37\ = CARRY(\m3|m1r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(1),
	datad => VCC,
	combout => \m3|m1r[1]~36_combout\,
	cout => \m3|m1r[1]~37\);

-- Location: LCCOMB_X58_Y45_N10
\m3|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~6_combout\ = (!\m3|m1r\(23) & (!\m3|m1r\(22) & (!\m3|m1r\(24) & !\m3|m1r\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(23),
	datab => \m3|m1r\(22),
	datac => \m3|m1r\(24),
	datad => \m3|m1r\(21),
	combout => \m3|Equal3~6_combout\);

-- Location: LCCOMB_X58_Y45_N20
\m3|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~5_combout\ = (!\m3|m1r\(18) & (!\m3|m1r\(20) & (!\m3|m1r\(17) & !\m3|m1r\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(18),
	datab => \m3|m1r\(20),
	datac => \m3|m1r\(17),
	datad => \m3|m1r\(19),
	combout => \m3|Equal3~5_combout\);

-- Location: LCCOMB_X58_Y45_N16
\m3|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~7_combout\ = (!\m3|m1r\(26) & (!\m3|m1r\(27) & (!\m3|m1r\(25) & !\m3|m1r\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(26),
	datab => \m3|m1r\(27),
	datac => \m3|m1r\(25),
	datad => \m3|m1r\(28),
	combout => \m3|Equal3~7_combout\);

-- Location: LCCOMB_X58_Y45_N30
\m3|Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~8_combout\ = (!\m3|m1r\(31) & (!\m3|m1r\(30) & (!\m3|m1r\(29) & \m3|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(31),
	datab => \m3|m1r\(30),
	datac => \m3|m1r\(29),
	datad => \m3|Equal3~7_combout\,
	combout => \m3|Equal3~8_combout\);

-- Location: LCCOMB_X58_Y45_N22
\m3|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~2_combout\ = (!\m3|m1r\(10) & (!\m3|m1r\(9) & (!\m3|m1r\(12) & !\m3|m1r\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(10),
	datab => \m3|m1r\(9),
	datac => \m3|m1r\(12),
	datad => \m3|m1r\(11),
	combout => \m3|Equal3~2_combout\);

-- Location: LCCOMB_X58_Y45_N28
\m3|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~1_combout\ = (!\m3|m1r\(7) & (!\m3|m1r\(5) & (!\m3|m1r\(8) & !\m3|m1r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(7),
	datab => \m3|m1r\(5),
	datac => \m3|m1r\(8),
	datad => \m3|m1r\(6),
	combout => \m3|Equal3~1_combout\);

-- Location: LCCOMB_X58_Y45_N4
\m3|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~3_combout\ = (!\m3|m1r\(13) & (!\m3|m1r\(15) & (!\m3|m1r\(14) & !\m3|m1r\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(13),
	datab => \m3|m1r\(15),
	datac => \m3|m1r\(14),
	datad => \m3|m1r\(16),
	combout => \m3|Equal3~3_combout\);

-- Location: LCCOMB_X58_Y47_N0
\m3|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~0_combout\ = (\m3|m1r\(3) & (!\m3|m1r\(2) & (!\m3|m1r\(4) & !\m3|m1r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(3),
	datab => \m3|m1r\(2),
	datac => \m3|m1r\(4),
	datad => \m3|m1r\(1),
	combout => \m3|Equal3~0_combout\);

-- Location: LCCOMB_X58_Y45_N18
\m3|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~4_combout\ = (\m3|Equal3~2_combout\ & (\m3|Equal3~1_combout\ & (\m3|Equal3~3_combout\ & \m3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Equal3~2_combout\,
	datab => \m3|Equal3~1_combout\,
	datac => \m3|Equal3~3_combout\,
	datad => \m3|Equal3~0_combout\,
	combout => \m3|Equal3~4_combout\);

-- Location: LCCOMB_X58_Y45_N12
\m3|Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Equal3~9_combout\ = (\m3|Equal3~6_combout\ & (\m3|Equal3~5_combout\ & (\m3|Equal3~8_combout\ & \m3|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Equal3~6_combout\,
	datab => \m3|Equal3~5_combout\,
	datac => \m3|Equal3~8_combout\,
	datad => \m3|Equal3~4_combout\,
	combout => \m3|Equal3~9_combout\);

-- Location: LCCOMB_X57_Y47_N0
\m3|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~0_combout\ = \m3|m1r\(0) $ (VCC)
-- \m3|Add1~1\ = CARRY(\m3|m1r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(0),
	datad => VCC,
	combout => \m3|Add1~0_combout\,
	cout => \m3|Add1~1\);

-- Location: LCCOMB_X58_Y45_N14
\m3|m1r~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r~31_combout\ = (\m3|process_0~3_combout\ & (\m3|Equal3~9_combout\ & ((\m3|m1r\(0))))) # (!\m3|process_0~3_combout\ & (\m3|Add1~0_combout\ & ((!\m3|m1r\(0)) # (!\m3|Equal3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Equal3~9_combout\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|Add1~0_combout\,
	datad => \m3|m1r\(0),
	combout => \m3|m1r~31_combout\);

-- Location: LCCOMB_X59_Y51_N16
\m3|m1r~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r~33_combout\ = (!\c1~input_o\ & ((\p1~input_o\) # (\m3|f1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1~input_o\,
	datac => \p1~input_o\,
	datad => \m3|f1~q\,
	combout => \m3|m1r~33_combout\);

-- Location: LCCOMB_X59_Y51_N12
\m3|point1[0]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[0]~98_combout\ = \m3|point1\(0) $ (((\m3|point2[0]~31_combout\ & \m3|point1[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|point2[0]~31_combout\,
	datac => \m3|point1\(0),
	datad => \m3|point1[0]~31_combout\,
	combout => \m3|point1[0]~98_combout\);

-- Location: FF_X59_Y51_N13
\m3|point1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(0));

-- Location: LCCOMB_X59_Y51_N30
\m3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add0~0_combout\ = (\m3|point1\(0) & (!\p1~input_o\ & !\m3|f1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(0),
	datab => \p1~input_o\,
	datad => \m3|f1~q\,
	combout => \m3|Add0~0_combout\);

-- Location: LCCOMB_X60_Y50_N0
\m3|point1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[1]~34_cout\ = CARRY((\m3|Add0~0_combout\ & !\m3|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|Add0~0_combout\,
	datab => \m3|process_0~3_combout\,
	datad => VCC,
	cout => \m3|point1[1]~34_cout\);

-- Location: LCCOMB_X60_Y50_N2
\m3|point1[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[1]~35_combout\ = (\m3|point1\(1) & ((\m3|process_0~3_combout\ & (\m3|point1[1]~34_cout\ & VCC)) # (!\m3|process_0~3_combout\ & (!\m3|point1[1]~34_cout\)))) # (!\m3|point1\(1) & ((\m3|process_0~3_combout\ & (!\m3|point1[1]~34_cout\)) # 
-- (!\m3|process_0~3_combout\ & ((\m3|point1[1]~34_cout\) # (GND)))))
-- \m3|point1[1]~36\ = CARRY((\m3|point1\(1) & (!\m3|process_0~3_combout\ & !\m3|point1[1]~34_cout\)) # (!\m3|point1\(1) & ((!\m3|point1[1]~34_cout\) # (!\m3|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(1),
	datab => \m3|process_0~3_combout\,
	datad => VCC,
	cin => \m3|point1[1]~34_cout\,
	combout => \m3|point1[1]~35_combout\,
	cout => \m3|point1[1]~36\);

-- Location: LCCOMB_X59_Y51_N22
\m3|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~9_combout\ = (((!\m3|point1\(2)) # (!\m3|point1\(3))) # (!\m3|point1\(1))) # (!\m3|point1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(0),
	datab => \m3|point1\(1),
	datac => \m3|point1\(3),
	datad => \m3|point1\(2),
	combout => \m3|LessThan6~9_combout\);

-- Location: LCCOMB_X59_Y48_N22
\m3|LessThan6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~6_combout\ = (!\m3|point1\(27) & (!\m3|point1\(26) & (!\m3|point1\(25) & !\m3|point1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(27),
	datab => \m3|point1\(26),
	datac => \m3|point1\(25),
	datad => \m3|point1\(24),
	combout => \m3|LessThan6~6_combout\);

-- Location: LCCOMB_X60_Y48_N28
\m3|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~5_combout\ = (!\m3|point1\(22) & (!\m3|point1\(20) & (!\m3|point1\(23) & !\m3|point1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(22),
	datab => \m3|point1\(20),
	datac => \m3|point1\(23),
	datad => \m3|point1\(21),
	combout => \m3|LessThan6~5_combout\);

-- Location: LCCOMB_X59_Y49_N30
\m3|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~3_combout\ = (!\m3|point1\(18) & (!\m3|point1\(16) & (!\m3|point1\(17) & !\m3|point1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(18),
	datab => \m3|point1\(16),
	datac => \m3|point1\(17),
	datad => \m3|point1\(19),
	combout => \m3|LessThan6~3_combout\);

-- Location: LCCOMB_X59_Y50_N22
\m3|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~1_combout\ = (!\m3|point1\(10) & (!\m3|point1\(8) & (!\m3|point1\(9) & !\m3|point1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(10),
	datab => \m3|point1\(8),
	datac => \m3|point1\(9),
	datad => \m3|point1\(11),
	combout => \m3|LessThan6~1_combout\);

-- Location: LCCOMB_X59_Y50_N0
\m3|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~0_combout\ = (!\m3|point1\(5) & (!\m3|point1\(7) & (!\m3|point1\(6) & !\m3|point1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(5),
	datab => \m3|point1\(7),
	datac => \m3|point1\(6),
	datad => \m3|point1\(4),
	combout => \m3|LessThan6~0_combout\);

-- Location: LCCOMB_X59_Y48_N10
\m3|LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~2_combout\ = (!\m3|point1\(15) & (!\m3|point1\(14) & (!\m3|point1\(12) & !\m3|point1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(15),
	datab => \m3|point1\(14),
	datac => \m3|point1\(12),
	datad => \m3|point1\(13),
	combout => \m3|LessThan6~2_combout\);

-- Location: LCCOMB_X59_Y48_N8
\m3|LessThan6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~4_combout\ = (\m3|LessThan6~3_combout\ & (\m3|LessThan6~1_combout\ & (\m3|LessThan6~0_combout\ & \m3|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|LessThan6~3_combout\,
	datab => \m3|LessThan6~1_combout\,
	datac => \m3|LessThan6~0_combout\,
	datad => \m3|LessThan6~2_combout\,
	combout => \m3|LessThan6~4_combout\);

-- Location: LCCOMB_X59_Y49_N0
\m3|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~7_combout\ = (!\m3|point1\(28) & (!\m3|point1\(30) & !\m3|point1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(28),
	datac => \m3|point1\(30),
	datad => \m3|point1\(29),
	combout => \m3|LessThan6~7_combout\);

-- Location: LCCOMB_X59_Y48_N0
\m3|LessThan6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan6~8_combout\ = (\m3|LessThan6~6_combout\ & (\m3|LessThan6~5_combout\ & (\m3|LessThan6~4_combout\ & \m3|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|LessThan6~6_combout\,
	datab => \m3|LessThan6~5_combout\,
	datac => \m3|LessThan6~4_combout\,
	datad => \m3|LessThan6~7_combout\,
	combout => \m3|LessThan6~8_combout\);

-- Location: LCCOMB_X59_Y48_N16
\m3|m1r~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r~32_combout\ = (\m3|m2r~45_combout\ & ((\m3|point1\(31)) # ((\m3|LessThan6~9_combout\ & \m3|LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r~45_combout\,
	datab => \m3|LessThan6~9_combout\,
	datac => \m3|point1\(31),
	datad => \m3|LessThan6~8_combout\,
	combout => \m3|m1r~32_combout\);

-- Location: LCCOMB_X59_Y48_N24
\m3|point1[31]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[31]~32_combout\ = (!\c1~input_o\ & ((\m3|process_0~3_combout\) # ((\m3|point1\(31)) # (\m3|LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \c1~input_o\,
	datac => \m3|point1\(31),
	datad => \m3|LessThan6~8_combout\,
	combout => \m3|point1[31]~32_combout\);

-- Location: LCCOMB_X60_Y48_N2
\m3|point1[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[31]~97_combout\ = (\m3|point1[31]~32_combout\ & (\m3|point2[0]~31_combout\ & ((\m3|m1r~32_combout\) # (!\m3|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r~32_combout\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|point1[31]~32_combout\,
	datad => \m3|point2[0]~31_combout\,
	combout => \m3|point1[31]~97_combout\);

-- Location: FF_X60_Y50_N3
\m3|point1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[1]~35_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(1));

-- Location: LCCOMB_X60_Y50_N4
\m3|point1[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[2]~37_combout\ = (\m3|point1\(2) & (\m3|point1[1]~36\ $ (GND))) # (!\m3|point1\(2) & (!\m3|point1[1]~36\ & VCC))
-- \m3|point1[2]~38\ = CARRY((\m3|point1\(2) & !\m3|point1[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(2),
	datad => VCC,
	cin => \m3|point1[1]~36\,
	combout => \m3|point1[2]~37_combout\,
	cout => \m3|point1[2]~38\);

-- Location: FF_X60_Y50_N5
\m3|point1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[2]~37_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(2));

-- Location: LCCOMB_X60_Y50_N6
\m3|point1[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[3]~39_combout\ = (\m3|point1\(3) & (!\m3|point1[2]~38\)) # (!\m3|point1\(3) & ((\m3|point1[2]~38\) # (GND)))
-- \m3|point1[3]~40\ = CARRY((!\m3|point1[2]~38\) # (!\m3|point1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(3),
	datad => VCC,
	cin => \m3|point1[2]~38\,
	combout => \m3|point1[3]~39_combout\,
	cout => \m3|point1[3]~40\);

-- Location: FF_X60_Y50_N7
\m3|point1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[3]~39_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(3));

-- Location: LCCOMB_X60_Y50_N8
\m3|point1[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[4]~41_combout\ = (\m3|point1\(4) & (\m3|point1[3]~40\ $ (GND))) # (!\m3|point1\(4) & (!\m3|point1[3]~40\ & VCC))
-- \m3|point1[4]~42\ = CARRY((\m3|point1\(4) & !\m3|point1[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(4),
	datad => VCC,
	cin => \m3|point1[3]~40\,
	combout => \m3|point1[4]~41_combout\,
	cout => \m3|point1[4]~42\);

-- Location: FF_X60_Y50_N9
\m3|point1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[4]~41_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(4));

-- Location: LCCOMB_X60_Y50_N10
\m3|point1[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[5]~43_combout\ = (\m3|point1\(5) & (!\m3|point1[4]~42\)) # (!\m3|point1\(5) & ((\m3|point1[4]~42\) # (GND)))
-- \m3|point1[5]~44\ = CARRY((!\m3|point1[4]~42\) # (!\m3|point1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(5),
	datad => VCC,
	cin => \m3|point1[4]~42\,
	combout => \m3|point1[5]~43_combout\,
	cout => \m3|point1[5]~44\);

-- Location: FF_X60_Y50_N11
\m3|point1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[5]~43_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(5));

-- Location: LCCOMB_X60_Y50_N12
\m3|point1[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[6]~45_combout\ = (\m3|point1\(6) & (\m3|point1[5]~44\ $ (GND))) # (!\m3|point1\(6) & (!\m3|point1[5]~44\ & VCC))
-- \m3|point1[6]~46\ = CARRY((\m3|point1\(6) & !\m3|point1[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(6),
	datad => VCC,
	cin => \m3|point1[5]~44\,
	combout => \m3|point1[6]~45_combout\,
	cout => \m3|point1[6]~46\);

-- Location: FF_X60_Y50_N13
\m3|point1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[6]~45_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(6));

-- Location: LCCOMB_X60_Y50_N14
\m3|point1[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[7]~47_combout\ = (\m3|point1\(7) & (!\m3|point1[6]~46\)) # (!\m3|point1\(7) & ((\m3|point1[6]~46\) # (GND)))
-- \m3|point1[7]~48\ = CARRY((!\m3|point1[6]~46\) # (!\m3|point1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(7),
	datad => VCC,
	cin => \m3|point1[6]~46\,
	combout => \m3|point1[7]~47_combout\,
	cout => \m3|point1[7]~48\);

-- Location: FF_X60_Y50_N15
\m3|point1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[7]~47_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(7));

-- Location: LCCOMB_X60_Y50_N16
\m3|point1[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[8]~49_combout\ = (\m3|point1\(8) & (\m3|point1[7]~48\ $ (GND))) # (!\m3|point1\(8) & (!\m3|point1[7]~48\ & VCC))
-- \m3|point1[8]~50\ = CARRY((\m3|point1\(8) & !\m3|point1[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(8),
	datad => VCC,
	cin => \m3|point1[7]~48\,
	combout => \m3|point1[8]~49_combout\,
	cout => \m3|point1[8]~50\);

-- Location: FF_X60_Y50_N17
\m3|point1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[8]~49_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(8));

-- Location: LCCOMB_X60_Y50_N18
\m3|point1[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[9]~51_combout\ = (\m3|point1\(9) & (!\m3|point1[8]~50\)) # (!\m3|point1\(9) & ((\m3|point1[8]~50\) # (GND)))
-- \m3|point1[9]~52\ = CARRY((!\m3|point1[8]~50\) # (!\m3|point1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(9),
	datad => VCC,
	cin => \m3|point1[8]~50\,
	combout => \m3|point1[9]~51_combout\,
	cout => \m3|point1[9]~52\);

-- Location: FF_X60_Y50_N19
\m3|point1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[9]~51_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(9));

-- Location: LCCOMB_X60_Y50_N20
\m3|point1[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[10]~53_combout\ = (\m3|point1\(10) & (\m3|point1[9]~52\ $ (GND))) # (!\m3|point1\(10) & (!\m3|point1[9]~52\ & VCC))
-- \m3|point1[10]~54\ = CARRY((\m3|point1\(10) & !\m3|point1[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(10),
	datad => VCC,
	cin => \m3|point1[9]~52\,
	combout => \m3|point1[10]~53_combout\,
	cout => \m3|point1[10]~54\);

-- Location: FF_X60_Y50_N21
\m3|point1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[10]~53_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(10));

-- Location: LCCOMB_X60_Y50_N22
\m3|point1[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[11]~55_combout\ = (\m3|point1\(11) & (!\m3|point1[10]~54\)) # (!\m3|point1\(11) & ((\m3|point1[10]~54\) # (GND)))
-- \m3|point1[11]~56\ = CARRY((!\m3|point1[10]~54\) # (!\m3|point1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(11),
	datad => VCC,
	cin => \m3|point1[10]~54\,
	combout => \m3|point1[11]~55_combout\,
	cout => \m3|point1[11]~56\);

-- Location: FF_X60_Y50_N23
\m3|point1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[11]~55_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(11));

-- Location: LCCOMB_X60_Y50_N24
\m3|point1[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[12]~57_combout\ = (\m3|point1\(12) & (\m3|point1[11]~56\ $ (GND))) # (!\m3|point1\(12) & (!\m3|point1[11]~56\ & VCC))
-- \m3|point1[12]~58\ = CARRY((\m3|point1\(12) & !\m3|point1[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(12),
	datad => VCC,
	cin => \m3|point1[11]~56\,
	combout => \m3|point1[12]~57_combout\,
	cout => \m3|point1[12]~58\);

-- Location: FF_X60_Y50_N25
\m3|point1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[12]~57_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(12));

-- Location: LCCOMB_X60_Y50_N26
\m3|point1[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[13]~59_combout\ = (\m3|point1\(13) & (!\m3|point1[12]~58\)) # (!\m3|point1\(13) & ((\m3|point1[12]~58\) # (GND)))
-- \m3|point1[13]~60\ = CARRY((!\m3|point1[12]~58\) # (!\m3|point1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(13),
	datad => VCC,
	cin => \m3|point1[12]~58\,
	combout => \m3|point1[13]~59_combout\,
	cout => \m3|point1[13]~60\);

-- Location: FF_X60_Y50_N27
\m3|point1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[13]~59_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(13));

-- Location: LCCOMB_X60_Y50_N28
\m3|point1[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[14]~61_combout\ = (\m3|point1\(14) & (\m3|point1[13]~60\ $ (GND))) # (!\m3|point1\(14) & (!\m3|point1[13]~60\ & VCC))
-- \m3|point1[14]~62\ = CARRY((\m3|point1\(14) & !\m3|point1[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(14),
	datad => VCC,
	cin => \m3|point1[13]~60\,
	combout => \m3|point1[14]~61_combout\,
	cout => \m3|point1[14]~62\);

-- Location: FF_X60_Y50_N29
\m3|point1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[14]~61_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(14));

-- Location: LCCOMB_X60_Y50_N30
\m3|point1[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[15]~63_combout\ = (\m3|point1\(15) & (!\m3|point1[14]~62\)) # (!\m3|point1\(15) & ((\m3|point1[14]~62\) # (GND)))
-- \m3|point1[15]~64\ = CARRY((!\m3|point1[14]~62\) # (!\m3|point1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(15),
	datad => VCC,
	cin => \m3|point1[14]~62\,
	combout => \m3|point1[15]~63_combout\,
	cout => \m3|point1[15]~64\);

-- Location: FF_X60_Y50_N31
\m3|point1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[15]~63_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(15));

-- Location: LCCOMB_X60_Y49_N0
\m3|point1[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[16]~65_combout\ = (\m3|point1\(16) & (\m3|point1[15]~64\ $ (GND))) # (!\m3|point1\(16) & (!\m3|point1[15]~64\ & VCC))
-- \m3|point1[16]~66\ = CARRY((\m3|point1\(16) & !\m3|point1[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(16),
	datad => VCC,
	cin => \m3|point1[15]~64\,
	combout => \m3|point1[16]~65_combout\,
	cout => \m3|point1[16]~66\);

-- Location: FF_X60_Y49_N1
\m3|point1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[16]~65_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(16));

-- Location: LCCOMB_X60_Y49_N2
\m3|point1[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[17]~67_combout\ = (\m3|point1\(17) & (!\m3|point1[16]~66\)) # (!\m3|point1\(17) & ((\m3|point1[16]~66\) # (GND)))
-- \m3|point1[17]~68\ = CARRY((!\m3|point1[16]~66\) # (!\m3|point1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(17),
	datad => VCC,
	cin => \m3|point1[16]~66\,
	combout => \m3|point1[17]~67_combout\,
	cout => \m3|point1[17]~68\);

-- Location: FF_X60_Y49_N3
\m3|point1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[17]~67_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(17));

-- Location: LCCOMB_X60_Y49_N4
\m3|point1[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[18]~69_combout\ = (\m3|point1\(18) & (\m3|point1[17]~68\ $ (GND))) # (!\m3|point1\(18) & (!\m3|point1[17]~68\ & VCC))
-- \m3|point1[18]~70\ = CARRY((\m3|point1\(18) & !\m3|point1[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(18),
	datad => VCC,
	cin => \m3|point1[17]~68\,
	combout => \m3|point1[18]~69_combout\,
	cout => \m3|point1[18]~70\);

-- Location: FF_X60_Y49_N5
\m3|point1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[18]~69_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(18));

-- Location: LCCOMB_X60_Y49_N6
\m3|point1[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[19]~71_combout\ = (\m3|point1\(19) & (!\m3|point1[18]~70\)) # (!\m3|point1\(19) & ((\m3|point1[18]~70\) # (GND)))
-- \m3|point1[19]~72\ = CARRY((!\m3|point1[18]~70\) # (!\m3|point1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(19),
	datad => VCC,
	cin => \m3|point1[18]~70\,
	combout => \m3|point1[19]~71_combout\,
	cout => \m3|point1[19]~72\);

-- Location: FF_X60_Y49_N7
\m3|point1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[19]~71_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(19));

-- Location: LCCOMB_X60_Y49_N8
\m3|point1[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[20]~73_combout\ = (\m3|point1\(20) & (\m3|point1[19]~72\ $ (GND))) # (!\m3|point1\(20) & (!\m3|point1[19]~72\ & VCC))
-- \m3|point1[20]~74\ = CARRY((\m3|point1\(20) & !\m3|point1[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(20),
	datad => VCC,
	cin => \m3|point1[19]~72\,
	combout => \m3|point1[20]~73_combout\,
	cout => \m3|point1[20]~74\);

-- Location: FF_X60_Y49_N9
\m3|point1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[20]~73_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(20));

-- Location: LCCOMB_X60_Y49_N10
\m3|point1[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[21]~75_combout\ = (\m3|point1\(21) & (!\m3|point1[20]~74\)) # (!\m3|point1\(21) & ((\m3|point1[20]~74\) # (GND)))
-- \m3|point1[21]~76\ = CARRY((!\m3|point1[20]~74\) # (!\m3|point1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(21),
	datad => VCC,
	cin => \m3|point1[20]~74\,
	combout => \m3|point1[21]~75_combout\,
	cout => \m3|point1[21]~76\);

-- Location: FF_X60_Y49_N11
\m3|point1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[21]~75_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(21));

-- Location: LCCOMB_X60_Y49_N12
\m3|point1[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[22]~77_combout\ = (\m3|point1\(22) & (\m3|point1[21]~76\ $ (GND))) # (!\m3|point1\(22) & (!\m3|point1[21]~76\ & VCC))
-- \m3|point1[22]~78\ = CARRY((\m3|point1\(22) & !\m3|point1[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(22),
	datad => VCC,
	cin => \m3|point1[21]~76\,
	combout => \m3|point1[22]~77_combout\,
	cout => \m3|point1[22]~78\);

-- Location: FF_X60_Y49_N13
\m3|point1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[22]~77_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(22));

-- Location: LCCOMB_X60_Y49_N14
\m3|point1[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[23]~79_combout\ = (\m3|point1\(23) & (!\m3|point1[22]~78\)) # (!\m3|point1\(23) & ((\m3|point1[22]~78\) # (GND)))
-- \m3|point1[23]~80\ = CARRY((!\m3|point1[22]~78\) # (!\m3|point1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(23),
	datad => VCC,
	cin => \m3|point1[22]~78\,
	combout => \m3|point1[23]~79_combout\,
	cout => \m3|point1[23]~80\);

-- Location: FF_X60_Y49_N15
\m3|point1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[23]~79_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(23));

-- Location: LCCOMB_X60_Y49_N16
\m3|point1[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[24]~81_combout\ = (\m3|point1\(24) & (\m3|point1[23]~80\ $ (GND))) # (!\m3|point1\(24) & (!\m3|point1[23]~80\ & VCC))
-- \m3|point1[24]~82\ = CARRY((\m3|point1\(24) & !\m3|point1[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(24),
	datad => VCC,
	cin => \m3|point1[23]~80\,
	combout => \m3|point1[24]~81_combout\,
	cout => \m3|point1[24]~82\);

-- Location: FF_X60_Y49_N17
\m3|point1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[24]~81_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(24));

-- Location: LCCOMB_X60_Y49_N18
\m3|point1[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[25]~83_combout\ = (\m3|point1\(25) & (!\m3|point1[24]~82\)) # (!\m3|point1\(25) & ((\m3|point1[24]~82\) # (GND)))
-- \m3|point1[25]~84\ = CARRY((!\m3|point1[24]~82\) # (!\m3|point1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(25),
	datad => VCC,
	cin => \m3|point1[24]~82\,
	combout => \m3|point1[25]~83_combout\,
	cout => \m3|point1[25]~84\);

-- Location: FF_X60_Y49_N19
\m3|point1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[25]~83_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(25));

-- Location: LCCOMB_X60_Y49_N20
\m3|point1[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[26]~85_combout\ = (\m3|point1\(26) & (\m3|point1[25]~84\ $ (GND))) # (!\m3|point1\(26) & (!\m3|point1[25]~84\ & VCC))
-- \m3|point1[26]~86\ = CARRY((\m3|point1\(26) & !\m3|point1[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(26),
	datad => VCC,
	cin => \m3|point1[25]~84\,
	combout => \m3|point1[26]~85_combout\,
	cout => \m3|point1[26]~86\);

-- Location: FF_X60_Y49_N21
\m3|point1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[26]~85_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(26));

-- Location: LCCOMB_X60_Y49_N22
\m3|point1[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[27]~87_combout\ = (\m3|point1\(27) & (!\m3|point1[26]~86\)) # (!\m3|point1\(27) & ((\m3|point1[26]~86\) # (GND)))
-- \m3|point1[27]~88\ = CARRY((!\m3|point1[26]~86\) # (!\m3|point1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(27),
	datad => VCC,
	cin => \m3|point1[26]~86\,
	combout => \m3|point1[27]~87_combout\,
	cout => \m3|point1[27]~88\);

-- Location: FF_X60_Y49_N23
\m3|point1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[27]~87_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(27));

-- Location: LCCOMB_X60_Y49_N24
\m3|point1[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[28]~89_combout\ = (\m3|point1\(28) & (\m3|point1[27]~88\ $ (GND))) # (!\m3|point1\(28) & (!\m3|point1[27]~88\ & VCC))
-- \m3|point1[28]~90\ = CARRY((\m3|point1\(28) & !\m3|point1[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(28),
	datad => VCC,
	cin => \m3|point1[27]~88\,
	combout => \m3|point1[28]~89_combout\,
	cout => \m3|point1[28]~90\);

-- Location: FF_X60_Y49_N25
\m3|point1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[28]~89_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(28));

-- Location: LCCOMB_X60_Y49_N26
\m3|point1[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[29]~91_combout\ = (\m3|point1\(29) & (!\m3|point1[28]~90\)) # (!\m3|point1\(29) & ((\m3|point1[28]~90\) # (GND)))
-- \m3|point1[29]~92\ = CARRY((!\m3|point1[28]~90\) # (!\m3|point1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(29),
	datad => VCC,
	cin => \m3|point1[28]~90\,
	combout => \m3|point1[29]~91_combout\,
	cout => \m3|point1[29]~92\);

-- Location: FF_X60_Y49_N27
\m3|point1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[29]~91_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(29));

-- Location: LCCOMB_X60_Y49_N28
\m3|point1[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[30]~93_combout\ = (\m3|point1\(30) & (\m3|point1[29]~92\ $ (GND))) # (!\m3|point1\(30) & (!\m3|point1[29]~92\ & VCC))
-- \m3|point1[30]~94\ = CARRY((\m3|point1\(30) & !\m3|point1[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|point1\(30),
	datad => VCC,
	cin => \m3|point1[29]~92\,
	combout => \m3|point1[30]~93_combout\,
	cout => \m3|point1[30]~94\);

-- Location: FF_X60_Y49_N29
\m3|point1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[30]~93_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(30));

-- Location: LCCOMB_X60_Y49_N30
\m3|point1[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[31]~95_combout\ = \m3|point1\(31) $ (\m3|point1[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|point1\(31),
	cin => \m3|point1[30]~94\,
	combout => \m3|point1[31]~95_combout\);

-- Location: FF_X60_Y49_N31
\m3|point1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|point1[31]~95_combout\,
	ena => \m3|point1[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|point1\(31));

-- Location: LCCOMB_X59_Y48_N30
\m3|point1[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|point1[0]~31_combout\ = (!\m3|process_0~3_combout\ & (!\c1~input_o\ & ((\m3|point1\(31)) # (\m3|LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \c1~input_o\,
	datac => \m3|point1\(31),
	datad => \m3|LessThan6~8_combout\,
	combout => \m3|point1[0]~31_combout\);

-- Location: LCCOMB_X59_Y48_N6
\m3|m1r~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r~34_combout\ = (!\m3|process_0~2_combout\ & ((\m3|point1[0]~31_combout\) # ((\m3|m1r~33_combout\ & \m3|m1r~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r~33_combout\,
	datab => \m3|process_0~2_combout\,
	datac => \m3|point1[0]~31_combout\,
	datad => \m3|m1r~32_combout\,
	combout => \m3|m1r~34_combout\);

-- Location: LCCOMB_X59_Y45_N12
\m3|m1r~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r~35_combout\ = (\m3|m1r~34_combout\ & ((\m3|m1r~31_combout\) # ((\m3|process_0~3_combout\ & \m3|m1r\(0))))) # (!\m3|m1r~34_combout\ & (((\m3|m1r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r~31_combout\,
	datab => \m3|process_0~3_combout\,
	datac => \m3|m1r\(0),
	datad => \m3|m1r~34_combout\,
	combout => \m3|m1r~35_combout\);

-- Location: FF_X59_Y45_N13
\m3|m1r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r~35_combout\,
	sclr => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(0));

-- Location: LCCOMB_X57_Y47_N2
\m3|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~2_combout\ = (\m3|m1r\(1) & (!\m3|Add1~1\)) # (!\m3|m1r\(1) & ((\m3|Add1~1\) # (GND)))
-- \m3|Add1~3\ = CARRY((!\m3|Add1~1\) # (!\m3|m1r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datad => VCC,
	cin => \m3|Add1~1\,
	combout => \m3|Add1~2_combout\,
	cout => \m3|Add1~3\);

-- Location: LCCOMB_X58_Y45_N0
\m3|m1r[29]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[29]~40_combout\ = ((\m3|Equal3~9_combout\ & ((\m3|m1r\(0)) # (\m3|process_0~3_combout\)))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(0),
	datab => \m3|process_0~3_combout\,
	datac => \start~input_o\,
	datad => \m3|Equal3~9_combout\,
	combout => \m3|m1r[29]~40_combout\);

-- Location: LCCOMB_X59_Y48_N28
\m3|m1r[29]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[29]~41_combout\ = (\m3|m1r~34_combout\) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \m3|m1r~34_combout\,
	combout => \m3|m1r[29]~41_combout\);

-- Location: FF_X58_Y47_N3
\m3|m1r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[1]~36_combout\,
	asdata => \m3|Add1~2_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(1));

-- Location: LCCOMB_X58_Y47_N4
\m3|m1r[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[2]~38_combout\ = (\m3|m1r\(2) & (!\m3|m1r[1]~37\)) # (!\m3|m1r\(2) & ((\m3|m1r[1]~37\) # (GND)))
-- \m3|m1r[2]~39\ = CARRY((!\m3|m1r[1]~37\) # (!\m3|m1r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(2),
	datad => VCC,
	cin => \m3|m1r[1]~37\,
	combout => \m3|m1r[2]~38_combout\,
	cout => \m3|m1r[2]~39\);

-- Location: LCCOMB_X57_Y47_N4
\m3|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~4_combout\ = (\m3|m1r\(2) & (\m3|Add1~3\ $ (GND))) # (!\m3|m1r\(2) & (!\m3|Add1~3\ & VCC))
-- \m3|Add1~5\ = CARRY((\m3|m1r\(2) & !\m3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(2),
	datad => VCC,
	cin => \m3|Add1~3\,
	combout => \m3|Add1~4_combout\,
	cout => \m3|Add1~5\);

-- Location: FF_X58_Y47_N5
\m3|m1r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[2]~38_combout\,
	asdata => \m3|Add1~4_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(2));

-- Location: LCCOMB_X58_Y47_N6
\m3|m1r[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[3]~42_combout\ = (\m3|m1r\(3) & (\m3|m1r[2]~39\ $ (GND))) # (!\m3|m1r\(3) & (!\m3|m1r[2]~39\ & VCC))
-- \m3|m1r[3]~43\ = CARRY((\m3|m1r\(3) & !\m3|m1r[2]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(3),
	datad => VCC,
	cin => \m3|m1r[2]~39\,
	combout => \m3|m1r[3]~42_combout\,
	cout => \m3|m1r[3]~43\);

-- Location: LCCOMB_X57_Y47_N6
\m3|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~6_combout\ = (\m3|m1r\(3) & (!\m3|Add1~5\)) # (!\m3|m1r\(3) & ((\m3|Add1~5\) # (GND)))
-- \m3|Add1~7\ = CARRY((!\m3|Add1~5\) # (!\m3|m1r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(3),
	datad => VCC,
	cin => \m3|Add1~5\,
	combout => \m3|Add1~6_combout\,
	cout => \m3|Add1~7\);

-- Location: FF_X58_Y47_N7
\m3|m1r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[3]~42_combout\,
	asdata => \m3|Add1~6_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(3));

-- Location: LCCOMB_X58_Y47_N8
\m3|m1r[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[4]~44_combout\ = (\m3|m1r\(4) & (!\m3|m1r[3]~43\)) # (!\m3|m1r\(4) & ((\m3|m1r[3]~43\) # (GND)))
-- \m3|m1r[4]~45\ = CARRY((!\m3|m1r[3]~43\) # (!\m3|m1r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(4),
	datad => VCC,
	cin => \m3|m1r[3]~43\,
	combout => \m3|m1r[4]~44_combout\,
	cout => \m3|m1r[4]~45\);

-- Location: LCCOMB_X57_Y47_N8
\m3|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~8_combout\ = (\m3|m1r\(4) & (\m3|Add1~7\ $ (GND))) # (!\m3|m1r\(4) & (!\m3|Add1~7\ & VCC))
-- \m3|Add1~9\ = CARRY((\m3|m1r\(4) & !\m3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(4),
	datad => VCC,
	cin => \m3|Add1~7\,
	combout => \m3|Add1~8_combout\,
	cout => \m3|Add1~9\);

-- Location: FF_X58_Y47_N9
\m3|m1r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[4]~44_combout\,
	asdata => \m3|Add1~8_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(4));

-- Location: LCCOMB_X58_Y47_N10
\m3|m1r[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[5]~46_combout\ = (\m3|m1r\(5) & (\m3|m1r[4]~45\ $ (GND))) # (!\m3|m1r\(5) & (!\m3|m1r[4]~45\ & VCC))
-- \m3|m1r[5]~47\ = CARRY((\m3|m1r\(5) & !\m3|m1r[4]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(5),
	datad => VCC,
	cin => \m3|m1r[4]~45\,
	combout => \m3|m1r[5]~46_combout\,
	cout => \m3|m1r[5]~47\);

-- Location: LCCOMB_X57_Y47_N10
\m3|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~10_combout\ = (\m3|m1r\(5) & (!\m3|Add1~9\)) # (!\m3|m1r\(5) & ((\m3|Add1~9\) # (GND)))
-- \m3|Add1~11\ = CARRY((!\m3|Add1~9\) # (!\m3|m1r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(5),
	datad => VCC,
	cin => \m3|Add1~9\,
	combout => \m3|Add1~10_combout\,
	cout => \m3|Add1~11\);

-- Location: FF_X58_Y47_N11
\m3|m1r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[5]~46_combout\,
	asdata => \m3|Add1~10_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(5));

-- Location: LCCOMB_X58_Y47_N12
\m3|m1r[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[6]~48_combout\ = (\m3|m1r\(6) & (!\m3|m1r[5]~47\)) # (!\m3|m1r\(6) & ((\m3|m1r[5]~47\) # (GND)))
-- \m3|m1r[6]~49\ = CARRY((!\m3|m1r[5]~47\) # (!\m3|m1r\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(6),
	datad => VCC,
	cin => \m3|m1r[5]~47\,
	combout => \m3|m1r[6]~48_combout\,
	cout => \m3|m1r[6]~49\);

-- Location: LCCOMB_X57_Y47_N12
\m3|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~12_combout\ = (\m3|m1r\(6) & (\m3|Add1~11\ $ (GND))) # (!\m3|m1r\(6) & (!\m3|Add1~11\ & VCC))
-- \m3|Add1~13\ = CARRY((\m3|m1r\(6) & !\m3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(6),
	datad => VCC,
	cin => \m3|Add1~11\,
	combout => \m3|Add1~12_combout\,
	cout => \m3|Add1~13\);

-- Location: FF_X58_Y47_N13
\m3|m1r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[6]~48_combout\,
	asdata => \m3|Add1~12_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(6));

-- Location: LCCOMB_X58_Y47_N14
\m3|m1r[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[7]~50_combout\ = (\m3|m1r\(7) & (\m3|m1r[6]~49\ $ (GND))) # (!\m3|m1r\(7) & (!\m3|m1r[6]~49\ & VCC))
-- \m3|m1r[7]~51\ = CARRY((\m3|m1r\(7) & !\m3|m1r[6]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(7),
	datad => VCC,
	cin => \m3|m1r[6]~49\,
	combout => \m3|m1r[7]~50_combout\,
	cout => \m3|m1r[7]~51\);

-- Location: LCCOMB_X57_Y47_N14
\m3|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~14_combout\ = (\m3|m1r\(7) & (!\m3|Add1~13\)) # (!\m3|m1r\(7) & ((\m3|Add1~13\) # (GND)))
-- \m3|Add1~15\ = CARRY((!\m3|Add1~13\) # (!\m3|m1r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(7),
	datad => VCC,
	cin => \m3|Add1~13\,
	combout => \m3|Add1~14_combout\,
	cout => \m3|Add1~15\);

-- Location: FF_X58_Y47_N15
\m3|m1r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[7]~50_combout\,
	asdata => \m3|Add1~14_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(7));

-- Location: LCCOMB_X58_Y47_N16
\m3|m1r[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[8]~52_combout\ = (\m3|m1r\(8) & (!\m3|m1r[7]~51\)) # (!\m3|m1r\(8) & ((\m3|m1r[7]~51\) # (GND)))
-- \m3|m1r[8]~53\ = CARRY((!\m3|m1r[7]~51\) # (!\m3|m1r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(8),
	datad => VCC,
	cin => \m3|m1r[7]~51\,
	combout => \m3|m1r[8]~52_combout\,
	cout => \m3|m1r[8]~53\);

-- Location: LCCOMB_X57_Y47_N16
\m3|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~16_combout\ = (\m3|m1r\(8) & (\m3|Add1~15\ $ (GND))) # (!\m3|m1r\(8) & (!\m3|Add1~15\ & VCC))
-- \m3|Add1~17\ = CARRY((\m3|m1r\(8) & !\m3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(8),
	datad => VCC,
	cin => \m3|Add1~15\,
	combout => \m3|Add1~16_combout\,
	cout => \m3|Add1~17\);

-- Location: FF_X58_Y47_N17
\m3|m1r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[8]~52_combout\,
	asdata => \m3|Add1~16_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(8));

-- Location: LCCOMB_X58_Y47_N18
\m3|m1r[9]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[9]~54_combout\ = (\m3|m1r\(9) & (\m3|m1r[8]~53\ $ (GND))) # (!\m3|m1r\(9) & (!\m3|m1r[8]~53\ & VCC))
-- \m3|m1r[9]~55\ = CARRY((\m3|m1r\(9) & !\m3|m1r[8]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(9),
	datad => VCC,
	cin => \m3|m1r[8]~53\,
	combout => \m3|m1r[9]~54_combout\,
	cout => \m3|m1r[9]~55\);

-- Location: LCCOMB_X57_Y47_N18
\m3|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~18_combout\ = (\m3|m1r\(9) & (!\m3|Add1~17\)) # (!\m3|m1r\(9) & ((\m3|Add1~17\) # (GND)))
-- \m3|Add1~19\ = CARRY((!\m3|Add1~17\) # (!\m3|m1r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(9),
	datad => VCC,
	cin => \m3|Add1~17\,
	combout => \m3|Add1~18_combout\,
	cout => \m3|Add1~19\);

-- Location: FF_X58_Y47_N19
\m3|m1r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[9]~54_combout\,
	asdata => \m3|Add1~18_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(9));

-- Location: LCCOMB_X58_Y47_N20
\m3|m1r[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[10]~56_combout\ = (\m3|m1r\(10) & (!\m3|m1r[9]~55\)) # (!\m3|m1r\(10) & ((\m3|m1r[9]~55\) # (GND)))
-- \m3|m1r[10]~57\ = CARRY((!\m3|m1r[9]~55\) # (!\m3|m1r\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(10),
	datad => VCC,
	cin => \m3|m1r[9]~55\,
	combout => \m3|m1r[10]~56_combout\,
	cout => \m3|m1r[10]~57\);

-- Location: LCCOMB_X57_Y47_N20
\m3|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~20_combout\ = (\m3|m1r\(10) & (\m3|Add1~19\ $ (GND))) # (!\m3|m1r\(10) & (!\m3|Add1~19\ & VCC))
-- \m3|Add1~21\ = CARRY((\m3|m1r\(10) & !\m3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(10),
	datad => VCC,
	cin => \m3|Add1~19\,
	combout => \m3|Add1~20_combout\,
	cout => \m3|Add1~21\);

-- Location: FF_X58_Y47_N21
\m3|m1r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[10]~56_combout\,
	asdata => \m3|Add1~20_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(10));

-- Location: LCCOMB_X58_Y47_N22
\m3|m1r[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[11]~58_combout\ = (\m3|m1r\(11) & (\m3|m1r[10]~57\ $ (GND))) # (!\m3|m1r\(11) & (!\m3|m1r[10]~57\ & VCC))
-- \m3|m1r[11]~59\ = CARRY((\m3|m1r\(11) & !\m3|m1r[10]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(11),
	datad => VCC,
	cin => \m3|m1r[10]~57\,
	combout => \m3|m1r[11]~58_combout\,
	cout => \m3|m1r[11]~59\);

-- Location: LCCOMB_X57_Y47_N22
\m3|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~22_combout\ = (\m3|m1r\(11) & (!\m3|Add1~21\)) # (!\m3|m1r\(11) & ((\m3|Add1~21\) # (GND)))
-- \m3|Add1~23\ = CARRY((!\m3|Add1~21\) # (!\m3|m1r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(11),
	datad => VCC,
	cin => \m3|Add1~21\,
	combout => \m3|Add1~22_combout\,
	cout => \m3|Add1~23\);

-- Location: FF_X58_Y47_N23
\m3|m1r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[11]~58_combout\,
	asdata => \m3|Add1~22_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(11));

-- Location: LCCOMB_X58_Y47_N24
\m3|m1r[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[12]~60_combout\ = (\m3|m1r\(12) & (!\m3|m1r[11]~59\)) # (!\m3|m1r\(12) & ((\m3|m1r[11]~59\) # (GND)))
-- \m3|m1r[12]~61\ = CARRY((!\m3|m1r[11]~59\) # (!\m3|m1r\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(12),
	datad => VCC,
	cin => \m3|m1r[11]~59\,
	combout => \m3|m1r[12]~60_combout\,
	cout => \m3|m1r[12]~61\);

-- Location: LCCOMB_X57_Y47_N24
\m3|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~24_combout\ = (\m3|m1r\(12) & (\m3|Add1~23\ $ (GND))) # (!\m3|m1r\(12) & (!\m3|Add1~23\ & VCC))
-- \m3|Add1~25\ = CARRY((\m3|m1r\(12) & !\m3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(12),
	datad => VCC,
	cin => \m3|Add1~23\,
	combout => \m3|Add1~24_combout\,
	cout => \m3|Add1~25\);

-- Location: FF_X58_Y47_N25
\m3|m1r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[12]~60_combout\,
	asdata => \m3|Add1~24_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(12));

-- Location: LCCOMB_X58_Y47_N26
\m3|m1r[13]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[13]~62_combout\ = (\m3|m1r\(13) & (\m3|m1r[12]~61\ $ (GND))) # (!\m3|m1r\(13) & (!\m3|m1r[12]~61\ & VCC))
-- \m3|m1r[13]~63\ = CARRY((\m3|m1r\(13) & !\m3|m1r[12]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(13),
	datad => VCC,
	cin => \m3|m1r[12]~61\,
	combout => \m3|m1r[13]~62_combout\,
	cout => \m3|m1r[13]~63\);

-- Location: LCCOMB_X57_Y47_N26
\m3|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~26_combout\ = (\m3|m1r\(13) & (!\m3|Add1~25\)) # (!\m3|m1r\(13) & ((\m3|Add1~25\) # (GND)))
-- \m3|Add1~27\ = CARRY((!\m3|Add1~25\) # (!\m3|m1r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(13),
	datad => VCC,
	cin => \m3|Add1~25\,
	combout => \m3|Add1~26_combout\,
	cout => \m3|Add1~27\);

-- Location: FF_X58_Y47_N27
\m3|m1r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[13]~62_combout\,
	asdata => \m3|Add1~26_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(13));

-- Location: LCCOMB_X58_Y47_N28
\m3|m1r[14]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[14]~64_combout\ = (\m3|m1r\(14) & (!\m3|m1r[13]~63\)) # (!\m3|m1r\(14) & ((\m3|m1r[13]~63\) # (GND)))
-- \m3|m1r[14]~65\ = CARRY((!\m3|m1r[13]~63\) # (!\m3|m1r\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(14),
	datad => VCC,
	cin => \m3|m1r[13]~63\,
	combout => \m3|m1r[14]~64_combout\,
	cout => \m3|m1r[14]~65\);

-- Location: LCCOMB_X57_Y47_N28
\m3|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~28_combout\ = (\m3|m1r\(14) & (\m3|Add1~27\ $ (GND))) # (!\m3|m1r\(14) & (!\m3|Add1~27\ & VCC))
-- \m3|Add1~29\ = CARRY((\m3|m1r\(14) & !\m3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(14),
	datad => VCC,
	cin => \m3|Add1~27\,
	combout => \m3|Add1~28_combout\,
	cout => \m3|Add1~29\);

-- Location: FF_X58_Y47_N29
\m3|m1r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[14]~64_combout\,
	asdata => \m3|Add1~28_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(14));

-- Location: LCCOMB_X58_Y47_N30
\m3|m1r[15]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[15]~66_combout\ = (\m3|m1r\(15) & (\m3|m1r[14]~65\ $ (GND))) # (!\m3|m1r\(15) & (!\m3|m1r[14]~65\ & VCC))
-- \m3|m1r[15]~67\ = CARRY((\m3|m1r\(15) & !\m3|m1r[14]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(15),
	datad => VCC,
	cin => \m3|m1r[14]~65\,
	combout => \m3|m1r[15]~66_combout\,
	cout => \m3|m1r[15]~67\);

-- Location: LCCOMB_X57_Y47_N30
\m3|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~30_combout\ = (\m3|m1r\(15) & (!\m3|Add1~29\)) # (!\m3|m1r\(15) & ((\m3|Add1~29\) # (GND)))
-- \m3|Add1~31\ = CARRY((!\m3|Add1~29\) # (!\m3|m1r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(15),
	datad => VCC,
	cin => \m3|Add1~29\,
	combout => \m3|Add1~30_combout\,
	cout => \m3|Add1~31\);

-- Location: FF_X58_Y47_N31
\m3|m1r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[15]~66_combout\,
	asdata => \m3|Add1~30_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(15));

-- Location: LCCOMB_X58_Y46_N0
\m3|m1r[16]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[16]~68_combout\ = (\m3|m1r\(16) & (!\m3|m1r[15]~67\)) # (!\m3|m1r\(16) & ((\m3|m1r[15]~67\) # (GND)))
-- \m3|m1r[16]~69\ = CARRY((!\m3|m1r[15]~67\) # (!\m3|m1r\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(16),
	datad => VCC,
	cin => \m3|m1r[15]~67\,
	combout => \m3|m1r[16]~68_combout\,
	cout => \m3|m1r[16]~69\);

-- Location: LCCOMB_X57_Y46_N0
\m3|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~32_combout\ = (\m3|m1r\(16) & (\m3|Add1~31\ $ (GND))) # (!\m3|m1r\(16) & (!\m3|Add1~31\ & VCC))
-- \m3|Add1~33\ = CARRY((\m3|m1r\(16) & !\m3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(16),
	datad => VCC,
	cin => \m3|Add1~31\,
	combout => \m3|Add1~32_combout\,
	cout => \m3|Add1~33\);

-- Location: FF_X58_Y46_N1
\m3|m1r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[16]~68_combout\,
	asdata => \m3|Add1~32_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(16));

-- Location: LCCOMB_X58_Y46_N2
\m3|m1r[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[17]~70_combout\ = (\m3|m1r\(17) & (\m3|m1r[16]~69\ $ (GND))) # (!\m3|m1r\(17) & (!\m3|m1r[16]~69\ & VCC))
-- \m3|m1r[17]~71\ = CARRY((\m3|m1r\(17) & !\m3|m1r[16]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(17),
	datad => VCC,
	cin => \m3|m1r[16]~69\,
	combout => \m3|m1r[17]~70_combout\,
	cout => \m3|m1r[17]~71\);

-- Location: LCCOMB_X57_Y46_N2
\m3|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~34_combout\ = (\m3|m1r\(17) & (!\m3|Add1~33\)) # (!\m3|m1r\(17) & ((\m3|Add1~33\) # (GND)))
-- \m3|Add1~35\ = CARRY((!\m3|Add1~33\) # (!\m3|m1r\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(17),
	datad => VCC,
	cin => \m3|Add1~33\,
	combout => \m3|Add1~34_combout\,
	cout => \m3|Add1~35\);

-- Location: FF_X58_Y46_N3
\m3|m1r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[17]~70_combout\,
	asdata => \m3|Add1~34_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(17));

-- Location: LCCOMB_X58_Y46_N4
\m3|m1r[18]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[18]~72_combout\ = (\m3|m1r\(18) & (!\m3|m1r[17]~71\)) # (!\m3|m1r\(18) & ((\m3|m1r[17]~71\) # (GND)))
-- \m3|m1r[18]~73\ = CARRY((!\m3|m1r[17]~71\) # (!\m3|m1r\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(18),
	datad => VCC,
	cin => \m3|m1r[17]~71\,
	combout => \m3|m1r[18]~72_combout\,
	cout => \m3|m1r[18]~73\);

-- Location: LCCOMB_X57_Y46_N4
\m3|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~36_combout\ = (\m3|m1r\(18) & (\m3|Add1~35\ $ (GND))) # (!\m3|m1r\(18) & (!\m3|Add1~35\ & VCC))
-- \m3|Add1~37\ = CARRY((\m3|m1r\(18) & !\m3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(18),
	datad => VCC,
	cin => \m3|Add1~35\,
	combout => \m3|Add1~36_combout\,
	cout => \m3|Add1~37\);

-- Location: FF_X58_Y46_N5
\m3|m1r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[18]~72_combout\,
	asdata => \m3|Add1~36_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(18));

-- Location: LCCOMB_X58_Y46_N6
\m3|m1r[19]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[19]~74_combout\ = (\m3|m1r\(19) & (\m3|m1r[18]~73\ $ (GND))) # (!\m3|m1r\(19) & (!\m3|m1r[18]~73\ & VCC))
-- \m3|m1r[19]~75\ = CARRY((\m3|m1r\(19) & !\m3|m1r[18]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(19),
	datad => VCC,
	cin => \m3|m1r[18]~73\,
	combout => \m3|m1r[19]~74_combout\,
	cout => \m3|m1r[19]~75\);

-- Location: LCCOMB_X57_Y46_N6
\m3|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~38_combout\ = (\m3|m1r\(19) & (!\m3|Add1~37\)) # (!\m3|m1r\(19) & ((\m3|Add1~37\) # (GND)))
-- \m3|Add1~39\ = CARRY((!\m3|Add1~37\) # (!\m3|m1r\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(19),
	datad => VCC,
	cin => \m3|Add1~37\,
	combout => \m3|Add1~38_combout\,
	cout => \m3|Add1~39\);

-- Location: FF_X58_Y46_N7
\m3|m1r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[19]~74_combout\,
	asdata => \m3|Add1~38_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(19));

-- Location: LCCOMB_X58_Y46_N8
\m3|m1r[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[20]~76_combout\ = (\m3|m1r\(20) & (!\m3|m1r[19]~75\)) # (!\m3|m1r\(20) & ((\m3|m1r[19]~75\) # (GND)))
-- \m3|m1r[20]~77\ = CARRY((!\m3|m1r[19]~75\) # (!\m3|m1r\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(20),
	datad => VCC,
	cin => \m3|m1r[19]~75\,
	combout => \m3|m1r[20]~76_combout\,
	cout => \m3|m1r[20]~77\);

-- Location: LCCOMB_X57_Y46_N8
\m3|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~40_combout\ = (\m3|m1r\(20) & (\m3|Add1~39\ $ (GND))) # (!\m3|m1r\(20) & (!\m3|Add1~39\ & VCC))
-- \m3|Add1~41\ = CARRY((\m3|m1r\(20) & !\m3|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(20),
	datad => VCC,
	cin => \m3|Add1~39\,
	combout => \m3|Add1~40_combout\,
	cout => \m3|Add1~41\);

-- Location: FF_X58_Y46_N9
\m3|m1r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[20]~76_combout\,
	asdata => \m3|Add1~40_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(20));

-- Location: LCCOMB_X58_Y46_N10
\m3|m1r[21]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[21]~78_combout\ = (\m3|m1r\(21) & (\m3|m1r[20]~77\ $ (GND))) # (!\m3|m1r\(21) & (!\m3|m1r[20]~77\ & VCC))
-- \m3|m1r[21]~79\ = CARRY((\m3|m1r\(21) & !\m3|m1r[20]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(21),
	datad => VCC,
	cin => \m3|m1r[20]~77\,
	combout => \m3|m1r[21]~78_combout\,
	cout => \m3|m1r[21]~79\);

-- Location: LCCOMB_X57_Y46_N10
\m3|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~42_combout\ = (\m3|m1r\(21) & (!\m3|Add1~41\)) # (!\m3|m1r\(21) & ((\m3|Add1~41\) # (GND)))
-- \m3|Add1~43\ = CARRY((!\m3|Add1~41\) # (!\m3|m1r\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(21),
	datad => VCC,
	cin => \m3|Add1~41\,
	combout => \m3|Add1~42_combout\,
	cout => \m3|Add1~43\);

-- Location: FF_X58_Y46_N11
\m3|m1r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[21]~78_combout\,
	asdata => \m3|Add1~42_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(21));

-- Location: LCCOMB_X58_Y46_N12
\m3|m1r[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[22]~80_combout\ = (\m3|m1r\(22) & (!\m3|m1r[21]~79\)) # (!\m3|m1r\(22) & ((\m3|m1r[21]~79\) # (GND)))
-- \m3|m1r[22]~81\ = CARRY((!\m3|m1r[21]~79\) # (!\m3|m1r\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(22),
	datad => VCC,
	cin => \m3|m1r[21]~79\,
	combout => \m3|m1r[22]~80_combout\,
	cout => \m3|m1r[22]~81\);

-- Location: LCCOMB_X57_Y46_N12
\m3|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~44_combout\ = (\m3|m1r\(22) & (\m3|Add1~43\ $ (GND))) # (!\m3|m1r\(22) & (!\m3|Add1~43\ & VCC))
-- \m3|Add1~45\ = CARRY((\m3|m1r\(22) & !\m3|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(22),
	datad => VCC,
	cin => \m3|Add1~43\,
	combout => \m3|Add1~44_combout\,
	cout => \m3|Add1~45\);

-- Location: FF_X58_Y46_N13
\m3|m1r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[22]~80_combout\,
	asdata => \m3|Add1~44_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(22));

-- Location: LCCOMB_X58_Y46_N14
\m3|m1r[23]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[23]~82_combout\ = (\m3|m1r\(23) & (\m3|m1r[22]~81\ $ (GND))) # (!\m3|m1r\(23) & (!\m3|m1r[22]~81\ & VCC))
-- \m3|m1r[23]~83\ = CARRY((\m3|m1r\(23) & !\m3|m1r[22]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(23),
	datad => VCC,
	cin => \m3|m1r[22]~81\,
	combout => \m3|m1r[23]~82_combout\,
	cout => \m3|m1r[23]~83\);

-- Location: LCCOMB_X57_Y46_N14
\m3|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~46_combout\ = (\m3|m1r\(23) & (!\m3|Add1~45\)) # (!\m3|m1r\(23) & ((\m3|Add1~45\) # (GND)))
-- \m3|Add1~47\ = CARRY((!\m3|Add1~45\) # (!\m3|m1r\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(23),
	datad => VCC,
	cin => \m3|Add1~45\,
	combout => \m3|Add1~46_combout\,
	cout => \m3|Add1~47\);

-- Location: FF_X58_Y46_N15
\m3|m1r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[23]~82_combout\,
	asdata => \m3|Add1~46_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(23));

-- Location: LCCOMB_X58_Y46_N16
\m3|m1r[24]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[24]~84_combout\ = (\m3|m1r\(24) & (!\m3|m1r[23]~83\)) # (!\m3|m1r\(24) & ((\m3|m1r[23]~83\) # (GND)))
-- \m3|m1r[24]~85\ = CARRY((!\m3|m1r[23]~83\) # (!\m3|m1r\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(24),
	datad => VCC,
	cin => \m3|m1r[23]~83\,
	combout => \m3|m1r[24]~84_combout\,
	cout => \m3|m1r[24]~85\);

-- Location: LCCOMB_X57_Y46_N16
\m3|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~48_combout\ = (\m3|m1r\(24) & (\m3|Add1~47\ $ (GND))) # (!\m3|m1r\(24) & (!\m3|Add1~47\ & VCC))
-- \m3|Add1~49\ = CARRY((\m3|m1r\(24) & !\m3|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(24),
	datad => VCC,
	cin => \m3|Add1~47\,
	combout => \m3|Add1~48_combout\,
	cout => \m3|Add1~49\);

-- Location: FF_X58_Y46_N17
\m3|m1r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[24]~84_combout\,
	asdata => \m3|Add1~48_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(24));

-- Location: LCCOMB_X58_Y46_N18
\m3|m1r[25]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[25]~86_combout\ = (\m3|m1r\(25) & (\m3|m1r[24]~85\ $ (GND))) # (!\m3|m1r\(25) & (!\m3|m1r[24]~85\ & VCC))
-- \m3|m1r[25]~87\ = CARRY((\m3|m1r\(25) & !\m3|m1r[24]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(25),
	datad => VCC,
	cin => \m3|m1r[24]~85\,
	combout => \m3|m1r[25]~86_combout\,
	cout => \m3|m1r[25]~87\);

-- Location: LCCOMB_X57_Y46_N18
\m3|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~50_combout\ = (\m3|m1r\(25) & (!\m3|Add1~49\)) # (!\m3|m1r\(25) & ((\m3|Add1~49\) # (GND)))
-- \m3|Add1~51\ = CARRY((!\m3|Add1~49\) # (!\m3|m1r\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(25),
	datad => VCC,
	cin => \m3|Add1~49\,
	combout => \m3|Add1~50_combout\,
	cout => \m3|Add1~51\);

-- Location: FF_X58_Y46_N19
\m3|m1r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[25]~86_combout\,
	asdata => \m3|Add1~50_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(25));

-- Location: LCCOMB_X58_Y46_N20
\m3|m1r[26]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[26]~88_combout\ = (\m3|m1r\(26) & (!\m3|m1r[25]~87\)) # (!\m3|m1r\(26) & ((\m3|m1r[25]~87\) # (GND)))
-- \m3|m1r[26]~89\ = CARRY((!\m3|m1r[25]~87\) # (!\m3|m1r\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(26),
	datad => VCC,
	cin => \m3|m1r[25]~87\,
	combout => \m3|m1r[26]~88_combout\,
	cout => \m3|m1r[26]~89\);

-- Location: LCCOMB_X57_Y46_N20
\m3|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~52_combout\ = (\m3|m1r\(26) & (\m3|Add1~51\ $ (GND))) # (!\m3|m1r\(26) & (!\m3|Add1~51\ & VCC))
-- \m3|Add1~53\ = CARRY((\m3|m1r\(26) & !\m3|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(26),
	datad => VCC,
	cin => \m3|Add1~51\,
	combout => \m3|Add1~52_combout\,
	cout => \m3|Add1~53\);

-- Location: FF_X58_Y46_N21
\m3|m1r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[26]~88_combout\,
	asdata => \m3|Add1~52_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(26));

-- Location: LCCOMB_X58_Y46_N22
\m3|m1r[27]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[27]~90_combout\ = (\m3|m1r\(27) & (\m3|m1r[26]~89\ $ (GND))) # (!\m3|m1r\(27) & (!\m3|m1r[26]~89\ & VCC))
-- \m3|m1r[27]~91\ = CARRY((\m3|m1r\(27) & !\m3|m1r[26]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(27),
	datad => VCC,
	cin => \m3|m1r[26]~89\,
	combout => \m3|m1r[27]~90_combout\,
	cout => \m3|m1r[27]~91\);

-- Location: LCCOMB_X57_Y46_N22
\m3|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~54_combout\ = (\m3|m1r\(27) & (!\m3|Add1~53\)) # (!\m3|m1r\(27) & ((\m3|Add1~53\) # (GND)))
-- \m3|Add1~55\ = CARRY((!\m3|Add1~53\) # (!\m3|m1r\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(27),
	datad => VCC,
	cin => \m3|Add1~53\,
	combout => \m3|Add1~54_combout\,
	cout => \m3|Add1~55\);

-- Location: FF_X58_Y46_N23
\m3|m1r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[27]~90_combout\,
	asdata => \m3|Add1~54_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(27));

-- Location: LCCOMB_X58_Y46_N24
\m3|m1r[28]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[28]~92_combout\ = (\m3|m1r\(28) & (!\m3|m1r[27]~91\)) # (!\m3|m1r\(28) & ((\m3|m1r[27]~91\) # (GND)))
-- \m3|m1r[28]~93\ = CARRY((!\m3|m1r[27]~91\) # (!\m3|m1r\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(28),
	datad => VCC,
	cin => \m3|m1r[27]~91\,
	combout => \m3|m1r[28]~92_combout\,
	cout => \m3|m1r[28]~93\);

-- Location: LCCOMB_X57_Y46_N24
\m3|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~56_combout\ = (\m3|m1r\(28) & (\m3|Add1~55\ $ (GND))) # (!\m3|m1r\(28) & (!\m3|Add1~55\ & VCC))
-- \m3|Add1~57\ = CARRY((\m3|m1r\(28) & !\m3|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(28),
	datad => VCC,
	cin => \m3|Add1~55\,
	combout => \m3|Add1~56_combout\,
	cout => \m3|Add1~57\);

-- Location: FF_X58_Y46_N25
\m3|m1r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[28]~92_combout\,
	asdata => \m3|Add1~56_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(28));

-- Location: LCCOMB_X58_Y46_N26
\m3|m1r[29]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[29]~94_combout\ = (\m3|m1r\(29) & (\m3|m1r[28]~93\ $ (GND))) # (!\m3|m1r\(29) & (!\m3|m1r[28]~93\ & VCC))
-- \m3|m1r[29]~95\ = CARRY((\m3|m1r\(29) & !\m3|m1r[28]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(29),
	datad => VCC,
	cin => \m3|m1r[28]~93\,
	combout => \m3|m1r[29]~94_combout\,
	cout => \m3|m1r[29]~95\);

-- Location: LCCOMB_X57_Y46_N26
\m3|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~58_combout\ = (\m3|m1r\(29) & (!\m3|Add1~57\)) # (!\m3|m1r\(29) & ((\m3|Add1~57\) # (GND)))
-- \m3|Add1~59\ = CARRY((!\m3|Add1~57\) # (!\m3|m1r\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(29),
	datad => VCC,
	cin => \m3|Add1~57\,
	combout => \m3|Add1~58_combout\,
	cout => \m3|Add1~59\);

-- Location: FF_X58_Y46_N27
\m3|m1r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[29]~94_combout\,
	asdata => \m3|Add1~58_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(29));

-- Location: LCCOMB_X58_Y46_N28
\m3|m1r[30]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[30]~96_combout\ = (\m3|m1r\(30) & (!\m3|m1r[29]~95\)) # (!\m3|m1r\(30) & ((\m3|m1r[29]~95\) # (GND)))
-- \m3|m1r[30]~97\ = CARRY((!\m3|m1r[29]~95\) # (!\m3|m1r\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(30),
	datad => VCC,
	cin => \m3|m1r[29]~95\,
	combout => \m3|m1r[30]~96_combout\,
	cout => \m3|m1r[30]~97\);

-- Location: LCCOMB_X57_Y46_N28
\m3|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~60_combout\ = (\m3|m1r\(30) & (\m3|Add1~59\ $ (GND))) # (!\m3|m1r\(30) & (!\m3|Add1~59\ & VCC))
-- \m3|Add1~61\ = CARRY((\m3|m1r\(30) & !\m3|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(30),
	datad => VCC,
	cin => \m3|Add1~59\,
	combout => \m3|Add1~60_combout\,
	cout => \m3|Add1~61\);

-- Location: FF_X58_Y46_N29
\m3|m1r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[30]~96_combout\,
	asdata => \m3|Add1~60_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(30));

-- Location: LCCOMB_X58_Y46_N30
\m3|m1r[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1r[31]~98_combout\ = \m3|m1r\(31) $ (!\m3|m1r[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(31),
	cin => \m3|m1r[30]~97\,
	combout => \m3|m1r[31]~98_combout\);

-- Location: LCCOMB_X57_Y46_N30
\m3|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|Add1~62_combout\ = \m3|m1r\(31) $ (\m3|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(31),
	cin => \m3|Add1~61\,
	combout => \m3|Add1~62_combout\);

-- Location: FF_X58_Y46_N31
\m3|m1r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1r[31]~98_combout\,
	asdata => \m3|Add1~62_combout\,
	sclr => \m3|m1r[29]~40_combout\,
	sload => \m3|ALT_INV_process_0~3_combout\,
	ena => \m3|m1r[29]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1r\(31));

-- Location: LCCOMB_X60_Y46_N0
\m3|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~1_cout\ = CARRY((\m3|m1r\(0) & !\m3|m2r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(0),
	datab => \m3|m2r\(0),
	datad => VCC,
	cout => \m3|LessThan2~1_cout\);

-- Location: LCCOMB_X60_Y46_N2
\m3|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~3_cout\ = CARRY((\m3|m1r\(1) & (\m3|m2r\(1) & !\m3|LessThan2~1_cout\)) # (!\m3|m1r\(1) & ((\m3|m2r\(1)) # (!\m3|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m2r\(1),
	datad => VCC,
	cin => \m3|LessThan2~1_cout\,
	cout => \m3|LessThan2~3_cout\);

-- Location: LCCOMB_X60_Y46_N4
\m3|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~5_cout\ = CARRY((\m3|m1r\(2) & ((!\m3|LessThan2~3_cout\) # (!\m3|m2r\(2)))) # (!\m3|m1r\(2) & (!\m3|m2r\(2) & !\m3|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(2),
	datab => \m3|m2r\(2),
	datad => VCC,
	cin => \m3|LessThan2~3_cout\,
	cout => \m3|LessThan2~5_cout\);

-- Location: LCCOMB_X60_Y46_N6
\m3|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~7_cout\ = CARRY((\m3|m1r\(3) & (\m3|m2r\(3) & !\m3|LessThan2~5_cout\)) # (!\m3|m1r\(3) & ((\m3|m2r\(3)) # (!\m3|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(3),
	datab => \m3|m2r\(3),
	datad => VCC,
	cin => \m3|LessThan2~5_cout\,
	cout => \m3|LessThan2~7_cout\);

-- Location: LCCOMB_X60_Y46_N8
\m3|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~9_cout\ = CARRY((\m3|m1r\(4) & ((!\m3|LessThan2~7_cout\) # (!\m3|m2r\(4)))) # (!\m3|m1r\(4) & (!\m3|m2r\(4) & !\m3|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(4),
	datab => \m3|m2r\(4),
	datad => VCC,
	cin => \m3|LessThan2~7_cout\,
	cout => \m3|LessThan2~9_cout\);

-- Location: LCCOMB_X60_Y46_N10
\m3|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~11_cout\ = CARRY((\m3|m2r\(5) & ((!\m3|LessThan2~9_cout\) # (!\m3|m1r\(5)))) # (!\m3|m2r\(5) & (!\m3|m1r\(5) & !\m3|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(5),
	datab => \m3|m1r\(5),
	datad => VCC,
	cin => \m3|LessThan2~9_cout\,
	cout => \m3|LessThan2~11_cout\);

-- Location: LCCOMB_X60_Y46_N12
\m3|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~13_cout\ = CARRY((\m3|m2r\(6) & (\m3|m1r\(6) & !\m3|LessThan2~11_cout\)) # (!\m3|m2r\(6) & ((\m3|m1r\(6)) # (!\m3|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(6),
	datab => \m3|m1r\(6),
	datad => VCC,
	cin => \m3|LessThan2~11_cout\,
	cout => \m3|LessThan2~13_cout\);

-- Location: LCCOMB_X60_Y46_N14
\m3|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~15_cout\ = CARRY((\m3|m1r\(7) & (\m3|m2r\(7) & !\m3|LessThan2~13_cout\)) # (!\m3|m1r\(7) & ((\m3|m2r\(7)) # (!\m3|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(7),
	datab => \m3|m2r\(7),
	datad => VCC,
	cin => \m3|LessThan2~13_cout\,
	cout => \m3|LessThan2~15_cout\);

-- Location: LCCOMB_X60_Y46_N16
\m3|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~17_cout\ = CARRY((\m3|m2r\(8) & (\m3|m1r\(8) & !\m3|LessThan2~15_cout\)) # (!\m3|m2r\(8) & ((\m3|m1r\(8)) # (!\m3|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(8),
	datab => \m3|m1r\(8),
	datad => VCC,
	cin => \m3|LessThan2~15_cout\,
	cout => \m3|LessThan2~17_cout\);

-- Location: LCCOMB_X60_Y46_N18
\m3|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~19_cout\ = CARRY((\m3|m1r\(9) & (\m3|m2r\(9) & !\m3|LessThan2~17_cout\)) # (!\m3|m1r\(9) & ((\m3|m2r\(9)) # (!\m3|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(9),
	datab => \m3|m2r\(9),
	datad => VCC,
	cin => \m3|LessThan2~17_cout\,
	cout => \m3|LessThan2~19_cout\);

-- Location: LCCOMB_X60_Y46_N20
\m3|LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~21_cout\ = CARRY((\m3|m2r\(10) & (\m3|m1r\(10) & !\m3|LessThan2~19_cout\)) # (!\m3|m2r\(10) & ((\m3|m1r\(10)) # (!\m3|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(10),
	datab => \m3|m1r\(10),
	datad => VCC,
	cin => \m3|LessThan2~19_cout\,
	cout => \m3|LessThan2~21_cout\);

-- Location: LCCOMB_X60_Y46_N22
\m3|LessThan2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~23_cout\ = CARRY((\m3|m2r\(11) & ((!\m3|LessThan2~21_cout\) # (!\m3|m1r\(11)))) # (!\m3|m2r\(11) & (!\m3|m1r\(11) & !\m3|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(11),
	datab => \m3|m1r\(11),
	datad => VCC,
	cin => \m3|LessThan2~21_cout\,
	cout => \m3|LessThan2~23_cout\);

-- Location: LCCOMB_X60_Y46_N24
\m3|LessThan2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~25_cout\ = CARRY((\m3|m2r\(12) & (\m3|m1r\(12) & !\m3|LessThan2~23_cout\)) # (!\m3|m2r\(12) & ((\m3|m1r\(12)) # (!\m3|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(12),
	datab => \m3|m1r\(12),
	datad => VCC,
	cin => \m3|LessThan2~23_cout\,
	cout => \m3|LessThan2~25_cout\);

-- Location: LCCOMB_X60_Y46_N26
\m3|LessThan2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~27_cout\ = CARRY((\m3|m2r\(13) & ((!\m3|LessThan2~25_cout\) # (!\m3|m1r\(13)))) # (!\m3|m2r\(13) & (!\m3|m1r\(13) & !\m3|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(13),
	datab => \m3|m1r\(13),
	datad => VCC,
	cin => \m3|LessThan2~25_cout\,
	cout => \m3|LessThan2~27_cout\);

-- Location: LCCOMB_X60_Y46_N28
\m3|LessThan2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~29_cout\ = CARRY((\m3|m1r\(14) & ((!\m3|LessThan2~27_cout\) # (!\m3|m2r\(14)))) # (!\m3|m1r\(14) & (!\m3|m2r\(14) & !\m3|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(14),
	datab => \m3|m2r\(14),
	datad => VCC,
	cin => \m3|LessThan2~27_cout\,
	cout => \m3|LessThan2~29_cout\);

-- Location: LCCOMB_X60_Y46_N30
\m3|LessThan2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~31_cout\ = CARRY((\m3|m2r\(15) & ((!\m3|LessThan2~29_cout\) # (!\m3|m1r\(15)))) # (!\m3|m2r\(15) & (!\m3|m1r\(15) & !\m3|LessThan2~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(15),
	datab => \m3|m1r\(15),
	datad => VCC,
	cin => \m3|LessThan2~29_cout\,
	cout => \m3|LessThan2~31_cout\);

-- Location: LCCOMB_X60_Y45_N0
\m3|LessThan2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~33_cout\ = CARRY((\m3|m1r\(16) & ((!\m3|LessThan2~31_cout\) # (!\m3|m2r\(16)))) # (!\m3|m1r\(16) & (!\m3|m2r\(16) & !\m3|LessThan2~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(16),
	datab => \m3|m2r\(16),
	datad => VCC,
	cin => \m3|LessThan2~31_cout\,
	cout => \m3|LessThan2~33_cout\);

-- Location: LCCOMB_X60_Y45_N2
\m3|LessThan2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~35_cout\ = CARRY((\m3|m1r\(17) & (\m3|m2r\(17) & !\m3|LessThan2~33_cout\)) # (!\m3|m1r\(17) & ((\m3|m2r\(17)) # (!\m3|LessThan2~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(17),
	datab => \m3|m2r\(17),
	datad => VCC,
	cin => \m3|LessThan2~33_cout\,
	cout => \m3|LessThan2~35_cout\);

-- Location: LCCOMB_X60_Y45_N4
\m3|LessThan2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~37_cout\ = CARRY((\m3|m1r\(18) & ((!\m3|LessThan2~35_cout\) # (!\m3|m2r\(18)))) # (!\m3|m1r\(18) & (!\m3|m2r\(18) & !\m3|LessThan2~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(18),
	datab => \m3|m2r\(18),
	datad => VCC,
	cin => \m3|LessThan2~35_cout\,
	cout => \m3|LessThan2~37_cout\);

-- Location: LCCOMB_X60_Y45_N6
\m3|LessThan2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~39_cout\ = CARRY((\m3|m1r\(19) & (\m3|m2r\(19) & !\m3|LessThan2~37_cout\)) # (!\m3|m1r\(19) & ((\m3|m2r\(19)) # (!\m3|LessThan2~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(19),
	datab => \m3|m2r\(19),
	datad => VCC,
	cin => \m3|LessThan2~37_cout\,
	cout => \m3|LessThan2~39_cout\);

-- Location: LCCOMB_X60_Y45_N8
\m3|LessThan2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~41_cout\ = CARRY((\m3|m1r\(20) & ((!\m3|LessThan2~39_cout\) # (!\m3|m2r\(20)))) # (!\m3|m1r\(20) & (!\m3|m2r\(20) & !\m3|LessThan2~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(20),
	datab => \m3|m2r\(20),
	datad => VCC,
	cin => \m3|LessThan2~39_cout\,
	cout => \m3|LessThan2~41_cout\);

-- Location: LCCOMB_X60_Y45_N10
\m3|LessThan2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~43_cout\ = CARRY((\m3|m2r\(21) & ((!\m3|LessThan2~41_cout\) # (!\m3|m1r\(21)))) # (!\m3|m2r\(21) & (!\m3|m1r\(21) & !\m3|LessThan2~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(21),
	datab => \m3|m1r\(21),
	datad => VCC,
	cin => \m3|LessThan2~41_cout\,
	cout => \m3|LessThan2~43_cout\);

-- Location: LCCOMB_X60_Y45_N12
\m3|LessThan2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~45_cout\ = CARRY((\m3|m2r\(22) & (\m3|m1r\(22) & !\m3|LessThan2~43_cout\)) # (!\m3|m2r\(22) & ((\m3|m1r\(22)) # (!\m3|LessThan2~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(22),
	datab => \m3|m1r\(22),
	datad => VCC,
	cin => \m3|LessThan2~43_cout\,
	cout => \m3|LessThan2~45_cout\);

-- Location: LCCOMB_X60_Y45_N14
\m3|LessThan2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~47_cout\ = CARRY((\m3|m2r\(23) & ((!\m3|LessThan2~45_cout\) # (!\m3|m1r\(23)))) # (!\m3|m2r\(23) & (!\m3|m1r\(23) & !\m3|LessThan2~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(23),
	datab => \m3|m1r\(23),
	datad => VCC,
	cin => \m3|LessThan2~45_cout\,
	cout => \m3|LessThan2~47_cout\);

-- Location: LCCOMB_X60_Y45_N16
\m3|LessThan2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~49_cout\ = CARRY((\m3|m1r\(24) & ((!\m3|LessThan2~47_cout\) # (!\m3|m2r\(24)))) # (!\m3|m1r\(24) & (!\m3|m2r\(24) & !\m3|LessThan2~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(24),
	datab => \m3|m2r\(24),
	datad => VCC,
	cin => \m3|LessThan2~47_cout\,
	cout => \m3|LessThan2~49_cout\);

-- Location: LCCOMB_X60_Y45_N18
\m3|LessThan2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~51_cout\ = CARRY((\m3|m1r\(25) & (\m3|m2r\(25) & !\m3|LessThan2~49_cout\)) # (!\m3|m1r\(25) & ((\m3|m2r\(25)) # (!\m3|LessThan2~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(25),
	datab => \m3|m2r\(25),
	datad => VCC,
	cin => \m3|LessThan2~49_cout\,
	cout => \m3|LessThan2~51_cout\);

-- Location: LCCOMB_X60_Y45_N20
\m3|LessThan2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~53_cout\ = CARRY((\m3|m1r\(26) & ((!\m3|LessThan2~51_cout\) # (!\m3|m2r\(26)))) # (!\m3|m1r\(26) & (!\m3|m2r\(26) & !\m3|LessThan2~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(26),
	datab => \m3|m2r\(26),
	datad => VCC,
	cin => \m3|LessThan2~51_cout\,
	cout => \m3|LessThan2~53_cout\);

-- Location: LCCOMB_X60_Y45_N22
\m3|LessThan2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~55_cout\ = CARRY((\m3|m2r\(27) & ((!\m3|LessThan2~53_cout\) # (!\m3|m1r\(27)))) # (!\m3|m2r\(27) & (!\m3|m1r\(27) & !\m3|LessThan2~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(27),
	datab => \m3|m1r\(27),
	datad => VCC,
	cin => \m3|LessThan2~53_cout\,
	cout => \m3|LessThan2~55_cout\);

-- Location: LCCOMB_X60_Y45_N24
\m3|LessThan2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~57_cout\ = CARRY((\m3|m2r\(28) & (\m3|m1r\(28) & !\m3|LessThan2~55_cout\)) # (!\m3|m2r\(28) & ((\m3|m1r\(28)) # (!\m3|LessThan2~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(28),
	datab => \m3|m1r\(28),
	datad => VCC,
	cin => \m3|LessThan2~55_cout\,
	cout => \m3|LessThan2~57_cout\);

-- Location: LCCOMB_X60_Y45_N26
\m3|LessThan2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~59_cout\ = CARRY((\m3|m2r\(29) & ((!\m3|LessThan2~57_cout\) # (!\m3|m1r\(29)))) # (!\m3|m2r\(29) & (!\m3|m1r\(29) & !\m3|LessThan2~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(29),
	datab => \m3|m1r\(29),
	datad => VCC,
	cin => \m3|LessThan2~57_cout\,
	cout => \m3|LessThan2~59_cout\);

-- Location: LCCOMB_X60_Y45_N28
\m3|LessThan2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~61_cout\ = CARRY((\m3|m2r\(30) & (\m3|m1r\(30) & !\m3|LessThan2~59_cout\)) # (!\m3|m2r\(30) & ((\m3|m1r\(30)) # (!\m3|LessThan2~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(30),
	datab => \m3|m1r\(30),
	datad => VCC,
	cin => \m3|LessThan2~59_cout\,
	cout => \m3|LessThan2~61_cout\);

-- Location: LCCOMB_X60_Y45_N30
\m3|LessThan2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan2~62_combout\ = (\m3|m2r\(31) & ((\m3|LessThan2~61_cout\) # (!\m3|m1r\(31)))) # (!\m3|m2r\(31) & (\m3|LessThan2~61_cout\ & !\m3|m1r\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2r\(31),
	datad => \m3|m1r\(31),
	cin => \m3|LessThan2~61_cout\,
	combout => \m3|LessThan2~62_combout\);

-- Location: LCCOMB_X62_Y49_N0
\m3|m2l[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[0]~32_combout\ = \m3|m2l\(0) $ (VCC)
-- \m3|m2l[0]~33\ = CARRY(\m3|m2l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(0),
	datad => VCC,
	combout => \m3|m2l[0]~32_combout\,
	cout => \m3|m2l[0]~33\);

-- Location: LCCOMB_X60_Y47_N16
\m3|m2l[21]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[21]~38_combout\ = (\m3|process_0~3_combout\ & (((\m3|m2r~33_combout\)))) # (!\m3|process_0~3_combout\ & (\m3|m2r\(0) & ((\m3|m2r~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|m2r\(0),
	datac => \m3|m2r~33_combout\,
	datad => \m3|m2r~34_combout\,
	combout => \m3|m2l[21]~38_combout\);

-- Location: LCCOMB_X61_Y48_N26
\m3|m2l[21]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[21]~39_combout\ = ((\m3|Equal4~9_combout\ & (!\m3|process_0~2_combout\ & \m3|m2l[21]~38_combout\))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \m3|Equal4~9_combout\,
	datac => \m3|process_0~2_combout\,
	datad => \m3|m2l[21]~38_combout\,
	combout => \m3|m2l[21]~39_combout\);

-- Location: FF_X62_Y49_N1
\m3|m2l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[0]~32_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(0));

-- Location: LCCOMB_X62_Y49_N2
\m3|m2l[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[1]~34_combout\ = (\m3|m2l\(1) & (!\m3|m2l[0]~33\)) # (!\m3|m2l\(1) & ((\m3|m2l[0]~33\) # (GND)))
-- \m3|m2l[1]~35\ = CARRY((!\m3|m2l[0]~33\) # (!\m3|m2l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(1),
	datad => VCC,
	cin => \m3|m2l[0]~33\,
	combout => \m3|m2l[1]~34_combout\,
	cout => \m3|m2l[1]~35\);

-- Location: FF_X62_Y49_N3
\m3|m2l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[1]~34_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(1));

-- Location: LCCOMB_X62_Y49_N4
\m3|m2l[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[2]~36_combout\ = (\m3|m2l\(2) & (\m3|m2l[1]~35\ $ (GND))) # (!\m3|m2l\(2) & (!\m3|m2l[1]~35\ & VCC))
-- \m3|m2l[2]~37\ = CARRY((\m3|m2l\(2) & !\m3|m2l[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(2),
	datad => VCC,
	cin => \m3|m2l[1]~35\,
	combout => \m3|m2l[2]~36_combout\,
	cout => \m3|m2l[2]~37\);

-- Location: FF_X62_Y49_N5
\m3|m2l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[2]~36_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(2));

-- Location: LCCOMB_X62_Y49_N6
\m3|m2l[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[3]~40_combout\ = (\m3|m2l\(3) & (!\m3|m2l[2]~37\)) # (!\m3|m2l\(3) & ((\m3|m2l[2]~37\) # (GND)))
-- \m3|m2l[3]~41\ = CARRY((!\m3|m2l[2]~37\) # (!\m3|m2l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datad => VCC,
	cin => \m3|m2l[2]~37\,
	combout => \m3|m2l[3]~40_combout\,
	cout => \m3|m2l[3]~41\);

-- Location: FF_X62_Y49_N7
\m3|m2l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[3]~40_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(3));

-- Location: LCCOMB_X62_Y49_N8
\m3|m2l[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[4]~42_combout\ = (\m3|m2l\(4) & (\m3|m2l[3]~41\ $ (GND))) # (!\m3|m2l\(4) & (!\m3|m2l[3]~41\ & VCC))
-- \m3|m2l[4]~43\ = CARRY((\m3|m2l\(4) & !\m3|m2l[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(4),
	datad => VCC,
	cin => \m3|m2l[3]~41\,
	combout => \m3|m2l[4]~42_combout\,
	cout => \m3|m2l[4]~43\);

-- Location: FF_X62_Y49_N9
\m3|m2l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[4]~42_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(4));

-- Location: LCCOMB_X62_Y49_N10
\m3|m2l[5]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[5]~44_combout\ = (\m3|m2l\(5) & (!\m3|m2l[4]~43\)) # (!\m3|m2l\(5) & ((\m3|m2l[4]~43\) # (GND)))
-- \m3|m2l[5]~45\ = CARRY((!\m3|m2l[4]~43\) # (!\m3|m2l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(5),
	datad => VCC,
	cin => \m3|m2l[4]~43\,
	combout => \m3|m2l[5]~44_combout\,
	cout => \m3|m2l[5]~45\);

-- Location: FF_X62_Y49_N11
\m3|m2l[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[5]~44_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(5));

-- Location: LCCOMB_X62_Y49_N12
\m3|m2l[6]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[6]~46_combout\ = (\m3|m2l\(6) & (\m3|m2l[5]~45\ $ (GND))) # (!\m3|m2l\(6) & (!\m3|m2l[5]~45\ & VCC))
-- \m3|m2l[6]~47\ = CARRY((\m3|m2l\(6) & !\m3|m2l[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(6),
	datad => VCC,
	cin => \m3|m2l[5]~45\,
	combout => \m3|m2l[6]~46_combout\,
	cout => \m3|m2l[6]~47\);

-- Location: FF_X62_Y49_N13
\m3|m2l[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[6]~46_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(6));

-- Location: LCCOMB_X62_Y49_N14
\m3|m2l[7]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[7]~48_combout\ = (\m3|m2l\(7) & (!\m3|m2l[6]~47\)) # (!\m3|m2l\(7) & ((\m3|m2l[6]~47\) # (GND)))
-- \m3|m2l[7]~49\ = CARRY((!\m3|m2l[6]~47\) # (!\m3|m2l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(7),
	datad => VCC,
	cin => \m3|m2l[6]~47\,
	combout => \m3|m2l[7]~48_combout\,
	cout => \m3|m2l[7]~49\);

-- Location: FF_X62_Y49_N15
\m3|m2l[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[7]~48_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(7));

-- Location: LCCOMB_X62_Y49_N16
\m3|m2l[8]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[8]~50_combout\ = (\m3|m2l\(8) & (\m3|m2l[7]~49\ $ (GND))) # (!\m3|m2l\(8) & (!\m3|m2l[7]~49\ & VCC))
-- \m3|m2l[8]~51\ = CARRY((\m3|m2l\(8) & !\m3|m2l[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(8),
	datad => VCC,
	cin => \m3|m2l[7]~49\,
	combout => \m3|m2l[8]~50_combout\,
	cout => \m3|m2l[8]~51\);

-- Location: FF_X62_Y49_N17
\m3|m2l[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[8]~50_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(8));

-- Location: LCCOMB_X62_Y49_N18
\m3|m2l[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[9]~52_combout\ = (\m3|m2l\(9) & (!\m3|m2l[8]~51\)) # (!\m3|m2l\(9) & ((\m3|m2l[8]~51\) # (GND)))
-- \m3|m2l[9]~53\ = CARRY((!\m3|m2l[8]~51\) # (!\m3|m2l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(9),
	datad => VCC,
	cin => \m3|m2l[8]~51\,
	combout => \m3|m2l[9]~52_combout\,
	cout => \m3|m2l[9]~53\);

-- Location: FF_X62_Y49_N19
\m3|m2l[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[9]~52_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(9));

-- Location: LCCOMB_X62_Y49_N20
\m3|m2l[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[10]~54_combout\ = (\m3|m2l\(10) & (\m3|m2l[9]~53\ $ (GND))) # (!\m3|m2l\(10) & (!\m3|m2l[9]~53\ & VCC))
-- \m3|m2l[10]~55\ = CARRY((\m3|m2l\(10) & !\m3|m2l[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(10),
	datad => VCC,
	cin => \m3|m2l[9]~53\,
	combout => \m3|m2l[10]~54_combout\,
	cout => \m3|m2l[10]~55\);

-- Location: FF_X62_Y49_N21
\m3|m2l[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[10]~54_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(10));

-- Location: LCCOMB_X62_Y49_N22
\m3|m2l[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[11]~56_combout\ = (\m3|m2l\(11) & (!\m3|m2l[10]~55\)) # (!\m3|m2l\(11) & ((\m3|m2l[10]~55\) # (GND)))
-- \m3|m2l[11]~57\ = CARRY((!\m3|m2l[10]~55\) # (!\m3|m2l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(11),
	datad => VCC,
	cin => \m3|m2l[10]~55\,
	combout => \m3|m2l[11]~56_combout\,
	cout => \m3|m2l[11]~57\);

-- Location: FF_X62_Y49_N23
\m3|m2l[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[11]~56_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(11));

-- Location: LCCOMB_X62_Y49_N24
\m3|m2l[12]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[12]~58_combout\ = (\m3|m2l\(12) & (\m3|m2l[11]~57\ $ (GND))) # (!\m3|m2l\(12) & (!\m3|m2l[11]~57\ & VCC))
-- \m3|m2l[12]~59\ = CARRY((\m3|m2l\(12) & !\m3|m2l[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(12),
	datad => VCC,
	cin => \m3|m2l[11]~57\,
	combout => \m3|m2l[12]~58_combout\,
	cout => \m3|m2l[12]~59\);

-- Location: FF_X62_Y49_N25
\m3|m2l[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[12]~58_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(12));

-- Location: LCCOMB_X62_Y49_N26
\m3|m2l[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[13]~60_combout\ = (\m3|m2l\(13) & (!\m3|m2l[12]~59\)) # (!\m3|m2l\(13) & ((\m3|m2l[12]~59\) # (GND)))
-- \m3|m2l[13]~61\ = CARRY((!\m3|m2l[12]~59\) # (!\m3|m2l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(13),
	datad => VCC,
	cin => \m3|m2l[12]~59\,
	combout => \m3|m2l[13]~60_combout\,
	cout => \m3|m2l[13]~61\);

-- Location: FF_X62_Y49_N27
\m3|m2l[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[13]~60_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(13));

-- Location: LCCOMB_X62_Y49_N28
\m3|m2l[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[14]~62_combout\ = (\m3|m2l\(14) & (\m3|m2l[13]~61\ $ (GND))) # (!\m3|m2l\(14) & (!\m3|m2l[13]~61\ & VCC))
-- \m3|m2l[14]~63\ = CARRY((\m3|m2l\(14) & !\m3|m2l[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(14),
	datad => VCC,
	cin => \m3|m2l[13]~61\,
	combout => \m3|m2l[14]~62_combout\,
	cout => \m3|m2l[14]~63\);

-- Location: FF_X62_Y49_N29
\m3|m2l[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[14]~62_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(14));

-- Location: LCCOMB_X62_Y49_N30
\m3|m2l[15]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[15]~64_combout\ = (\m3|m2l\(15) & (!\m3|m2l[14]~63\)) # (!\m3|m2l\(15) & ((\m3|m2l[14]~63\) # (GND)))
-- \m3|m2l[15]~65\ = CARRY((!\m3|m2l[14]~63\) # (!\m3|m2l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(15),
	datad => VCC,
	cin => \m3|m2l[14]~63\,
	combout => \m3|m2l[15]~64_combout\,
	cout => \m3|m2l[15]~65\);

-- Location: FF_X62_Y49_N31
\m3|m2l[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[15]~64_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(15));

-- Location: LCCOMB_X62_Y48_N0
\m3|m2l[16]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[16]~66_combout\ = (\m3|m2l\(16) & (\m3|m2l[15]~65\ $ (GND))) # (!\m3|m2l\(16) & (!\m3|m2l[15]~65\ & VCC))
-- \m3|m2l[16]~67\ = CARRY((\m3|m2l\(16) & !\m3|m2l[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(16),
	datad => VCC,
	cin => \m3|m2l[15]~65\,
	combout => \m3|m2l[16]~66_combout\,
	cout => \m3|m2l[16]~67\);

-- Location: FF_X62_Y48_N1
\m3|m2l[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[16]~66_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(16));

-- Location: LCCOMB_X62_Y48_N2
\m3|m2l[17]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[17]~68_combout\ = (\m3|m2l\(17) & (!\m3|m2l[16]~67\)) # (!\m3|m2l\(17) & ((\m3|m2l[16]~67\) # (GND)))
-- \m3|m2l[17]~69\ = CARRY((!\m3|m2l[16]~67\) # (!\m3|m2l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(17),
	datad => VCC,
	cin => \m3|m2l[16]~67\,
	combout => \m3|m2l[17]~68_combout\,
	cout => \m3|m2l[17]~69\);

-- Location: FF_X62_Y48_N3
\m3|m2l[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[17]~68_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(17));

-- Location: LCCOMB_X62_Y48_N4
\m3|m2l[18]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[18]~70_combout\ = (\m3|m2l\(18) & (\m3|m2l[17]~69\ $ (GND))) # (!\m3|m2l\(18) & (!\m3|m2l[17]~69\ & VCC))
-- \m3|m2l[18]~71\ = CARRY((\m3|m2l\(18) & !\m3|m2l[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(18),
	datad => VCC,
	cin => \m3|m2l[17]~69\,
	combout => \m3|m2l[18]~70_combout\,
	cout => \m3|m2l[18]~71\);

-- Location: FF_X62_Y48_N5
\m3|m2l[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[18]~70_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(18));

-- Location: LCCOMB_X62_Y48_N6
\m3|m2l[19]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[19]~72_combout\ = (\m3|m2l\(19) & (!\m3|m2l[18]~71\)) # (!\m3|m2l\(19) & ((\m3|m2l[18]~71\) # (GND)))
-- \m3|m2l[19]~73\ = CARRY((!\m3|m2l[18]~71\) # (!\m3|m2l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(19),
	datad => VCC,
	cin => \m3|m2l[18]~71\,
	combout => \m3|m2l[19]~72_combout\,
	cout => \m3|m2l[19]~73\);

-- Location: FF_X62_Y48_N7
\m3|m2l[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[19]~72_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(19));

-- Location: LCCOMB_X62_Y48_N8
\m3|m2l[20]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[20]~74_combout\ = (\m3|m2l\(20) & (\m3|m2l[19]~73\ $ (GND))) # (!\m3|m2l\(20) & (!\m3|m2l[19]~73\ & VCC))
-- \m3|m2l[20]~75\ = CARRY((\m3|m2l\(20) & !\m3|m2l[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(20),
	datad => VCC,
	cin => \m3|m2l[19]~73\,
	combout => \m3|m2l[20]~74_combout\,
	cout => \m3|m2l[20]~75\);

-- Location: FF_X62_Y48_N9
\m3|m2l[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[20]~74_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(20));

-- Location: LCCOMB_X62_Y48_N10
\m3|m2l[21]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[21]~76_combout\ = (\m3|m2l\(21) & (!\m3|m2l[20]~75\)) # (!\m3|m2l\(21) & ((\m3|m2l[20]~75\) # (GND)))
-- \m3|m2l[21]~77\ = CARRY((!\m3|m2l[20]~75\) # (!\m3|m2l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(21),
	datad => VCC,
	cin => \m3|m2l[20]~75\,
	combout => \m3|m2l[21]~76_combout\,
	cout => \m3|m2l[21]~77\);

-- Location: FF_X62_Y48_N11
\m3|m2l[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[21]~76_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(21));

-- Location: LCCOMB_X62_Y48_N12
\m3|m2l[22]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[22]~78_combout\ = (\m3|m2l\(22) & (\m3|m2l[21]~77\ $ (GND))) # (!\m3|m2l\(22) & (!\m3|m2l[21]~77\ & VCC))
-- \m3|m2l[22]~79\ = CARRY((\m3|m2l\(22) & !\m3|m2l[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(22),
	datad => VCC,
	cin => \m3|m2l[21]~77\,
	combout => \m3|m2l[22]~78_combout\,
	cout => \m3|m2l[22]~79\);

-- Location: FF_X62_Y48_N13
\m3|m2l[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[22]~78_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(22));

-- Location: LCCOMB_X62_Y48_N14
\m3|m2l[23]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[23]~80_combout\ = (\m3|m2l\(23) & (!\m3|m2l[22]~79\)) # (!\m3|m2l\(23) & ((\m3|m2l[22]~79\) # (GND)))
-- \m3|m2l[23]~81\ = CARRY((!\m3|m2l[22]~79\) # (!\m3|m2l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(23),
	datad => VCC,
	cin => \m3|m2l[22]~79\,
	combout => \m3|m2l[23]~80_combout\,
	cout => \m3|m2l[23]~81\);

-- Location: FF_X62_Y48_N15
\m3|m2l[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[23]~80_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(23));

-- Location: LCCOMB_X62_Y48_N16
\m3|m2l[24]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[24]~82_combout\ = (\m3|m2l\(24) & (\m3|m2l[23]~81\ $ (GND))) # (!\m3|m2l\(24) & (!\m3|m2l[23]~81\ & VCC))
-- \m3|m2l[24]~83\ = CARRY((\m3|m2l\(24) & !\m3|m2l[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(24),
	datad => VCC,
	cin => \m3|m2l[23]~81\,
	combout => \m3|m2l[24]~82_combout\,
	cout => \m3|m2l[24]~83\);

-- Location: FF_X62_Y48_N17
\m3|m2l[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[24]~82_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(24));

-- Location: LCCOMB_X62_Y48_N18
\m3|m2l[25]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[25]~84_combout\ = (\m3|m2l\(25) & (!\m3|m2l[24]~83\)) # (!\m3|m2l\(25) & ((\m3|m2l[24]~83\) # (GND)))
-- \m3|m2l[25]~85\ = CARRY((!\m3|m2l[24]~83\) # (!\m3|m2l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(25),
	datad => VCC,
	cin => \m3|m2l[24]~83\,
	combout => \m3|m2l[25]~84_combout\,
	cout => \m3|m2l[25]~85\);

-- Location: FF_X62_Y48_N19
\m3|m2l[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[25]~84_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(25));

-- Location: LCCOMB_X62_Y48_N20
\m3|m2l[26]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[26]~86_combout\ = (\m3|m2l\(26) & (\m3|m2l[25]~85\ $ (GND))) # (!\m3|m2l\(26) & (!\m3|m2l[25]~85\ & VCC))
-- \m3|m2l[26]~87\ = CARRY((\m3|m2l\(26) & !\m3|m2l[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(26),
	datad => VCC,
	cin => \m3|m2l[25]~85\,
	combout => \m3|m2l[26]~86_combout\,
	cout => \m3|m2l[26]~87\);

-- Location: FF_X62_Y48_N21
\m3|m2l[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[26]~86_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(26));

-- Location: LCCOMB_X62_Y48_N22
\m3|m2l[27]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[27]~88_combout\ = (\m3|m2l\(27) & (!\m3|m2l[26]~87\)) # (!\m3|m2l\(27) & ((\m3|m2l[26]~87\) # (GND)))
-- \m3|m2l[27]~89\ = CARRY((!\m3|m2l[26]~87\) # (!\m3|m2l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(27),
	datad => VCC,
	cin => \m3|m2l[26]~87\,
	combout => \m3|m2l[27]~88_combout\,
	cout => \m3|m2l[27]~89\);

-- Location: FF_X62_Y48_N23
\m3|m2l[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[27]~88_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(27));

-- Location: LCCOMB_X62_Y48_N24
\m3|m2l[28]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[28]~90_combout\ = (\m3|m2l\(28) & (\m3|m2l[27]~89\ $ (GND))) # (!\m3|m2l\(28) & (!\m3|m2l[27]~89\ & VCC))
-- \m3|m2l[28]~91\ = CARRY((\m3|m2l\(28) & !\m3|m2l[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(28),
	datad => VCC,
	cin => \m3|m2l[27]~89\,
	combout => \m3|m2l[28]~90_combout\,
	cout => \m3|m2l[28]~91\);

-- Location: FF_X62_Y48_N25
\m3|m2l[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[28]~90_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(28));

-- Location: LCCOMB_X62_Y48_N26
\m3|m2l[29]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[29]~92_combout\ = (\m3|m2l\(29) & (!\m3|m2l[28]~91\)) # (!\m3|m2l\(29) & ((\m3|m2l[28]~91\) # (GND)))
-- \m3|m2l[29]~93\ = CARRY((!\m3|m2l[28]~91\) # (!\m3|m2l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(29),
	datad => VCC,
	cin => \m3|m2l[28]~91\,
	combout => \m3|m2l[29]~92_combout\,
	cout => \m3|m2l[29]~93\);

-- Location: FF_X62_Y48_N27
\m3|m2l[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[29]~92_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(29));

-- Location: LCCOMB_X62_Y48_N28
\m3|m2l[30]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[30]~94_combout\ = (\m3|m2l\(30) & (\m3|m2l[29]~93\ $ (GND))) # (!\m3|m2l\(30) & (!\m3|m2l[29]~93\ & VCC))
-- \m3|m2l[30]~95\ = CARRY((\m3|m2l\(30) & !\m3|m2l[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m2l\(30),
	datad => VCC,
	cin => \m3|m2l[29]~93\,
	combout => \m3|m2l[30]~94_combout\,
	cout => \m3|m2l[30]~95\);

-- Location: FF_X62_Y48_N29
\m3|m2l[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[30]~94_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(30));

-- Location: LCCOMB_X62_Y48_N30
\m3|m2l[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m2l[31]~96_combout\ = \m3|m2l\(31) $ (\m3|m2l[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(31),
	cin => \m3|m2l[30]~95\,
	combout => \m3|m2l[31]~96_combout\);

-- Location: FF_X62_Y48_N31
\m3|m2l[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m2l[31]~96_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m2l[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m2l\(31));

-- Location: LCCOMB_X60_Y52_N0
\m3|m1l[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[0]~32_combout\ = \m3|m1l\(0) $ (VCC)
-- \m3|m1l[0]~33\ = CARRY(\m3|m1l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(0),
	datad => VCC,
	combout => \m3|m1l[0]~32_combout\,
	cout => \m3|m1l[0]~33\);

-- Location: LCCOMB_X59_Y48_N2
\m3|m1l[26]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[26]~38_combout\ = (\m3|process_0~3_combout\ & (!\m3|point1\(31) & ((!\m3|LessThan6~9_combout\) # (!\m3|LessThan6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|LessThan6~8_combout\,
	datac => \m3|point1\(31),
	datad => \m3|LessThan6~9_combout\,
	combout => \m3|m1l[26]~38_combout\);

-- Location: LCCOMB_X59_Y48_N4
\m3|m1l[26]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[26]~39_combout\ = (\m3|process_0~2_combout\) # ((\m3|process_0~3_combout\ & ((\m3|f2~q\) # (\p2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|f2~q\,
	datab => \p2~input_o\,
	datac => \m3|process_0~3_combout\,
	datad => \m3|process_0~2_combout\,
	combout => \m3|m1l[26]~39_combout\);

-- Location: LCCOMB_X59_Y48_N14
\m3|m1l[26]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[26]~40_combout\ = (\m3|m1l[26]~39_combout\) # (((!\m3|process_0~3_combout\ & !\m3|m1r\(0))) # (!\m3|Equal3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~3_combout\,
	datab => \m3|m1r\(0),
	datac => \m3|m1l[26]~39_combout\,
	datad => \m3|Equal3~9_combout\,
	combout => \m3|m1l[26]~40_combout\);

-- Location: LCCOMB_X59_Y48_N18
\m3|m1l[26]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[26]~41_combout\ = ((!\m3|m1l[26]~38_combout\ & (!\m3|m1l[26]~40_combout\ & \m3|point1[31]~32_combout\))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \m3|m1l[26]~38_combout\,
	datac => \m3|m1l[26]~40_combout\,
	datad => \m3|point1[31]~32_combout\,
	combout => \m3|m1l[26]~41_combout\);

-- Location: FF_X60_Y52_N1
\m3|m1l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[0]~32_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(0));

-- Location: LCCOMB_X60_Y52_N2
\m3|m1l[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[1]~34_combout\ = (\m3|m1l\(1) & (!\m3|m1l[0]~33\)) # (!\m3|m1l\(1) & ((\m3|m1l[0]~33\) # (GND)))
-- \m3|m1l[1]~35\ = CARRY((!\m3|m1l[0]~33\) # (!\m3|m1l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(1),
	datad => VCC,
	cin => \m3|m1l[0]~33\,
	combout => \m3|m1l[1]~34_combout\,
	cout => \m3|m1l[1]~35\);

-- Location: FF_X60_Y52_N3
\m3|m1l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[1]~34_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(1));

-- Location: LCCOMB_X60_Y52_N4
\m3|m1l[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[2]~36_combout\ = (\m3|m1l\(2) & (\m3|m1l[1]~35\ $ (GND))) # (!\m3|m1l\(2) & (!\m3|m1l[1]~35\ & VCC))
-- \m3|m1l[2]~37\ = CARRY((\m3|m1l\(2) & !\m3|m1l[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(2),
	datad => VCC,
	cin => \m3|m1l[1]~35\,
	combout => \m3|m1l[2]~36_combout\,
	cout => \m3|m1l[2]~37\);

-- Location: FF_X60_Y52_N5
\m3|m1l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[2]~36_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(2));

-- Location: LCCOMB_X60_Y52_N6
\m3|m1l[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[3]~42_combout\ = (\m3|m1l\(3) & (!\m3|m1l[2]~37\)) # (!\m3|m1l\(3) & ((\m3|m1l[2]~37\) # (GND)))
-- \m3|m1l[3]~43\ = CARRY((!\m3|m1l[2]~37\) # (!\m3|m1l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(3),
	datad => VCC,
	cin => \m3|m1l[2]~37\,
	combout => \m3|m1l[3]~42_combout\,
	cout => \m3|m1l[3]~43\);

-- Location: FF_X60_Y52_N7
\m3|m1l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[3]~42_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(3));

-- Location: LCCOMB_X60_Y52_N8
\m3|m1l[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[4]~44_combout\ = (\m3|m1l\(4) & (\m3|m1l[3]~43\ $ (GND))) # (!\m3|m1l\(4) & (!\m3|m1l[3]~43\ & VCC))
-- \m3|m1l[4]~45\ = CARRY((\m3|m1l\(4) & !\m3|m1l[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(4),
	datad => VCC,
	cin => \m3|m1l[3]~43\,
	combout => \m3|m1l[4]~44_combout\,
	cout => \m3|m1l[4]~45\);

-- Location: FF_X60_Y52_N9
\m3|m1l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[4]~44_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(4));

-- Location: LCCOMB_X60_Y52_N10
\m3|m1l[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[5]~46_combout\ = (\m3|m1l\(5) & (!\m3|m1l[4]~45\)) # (!\m3|m1l\(5) & ((\m3|m1l[4]~45\) # (GND)))
-- \m3|m1l[5]~47\ = CARRY((!\m3|m1l[4]~45\) # (!\m3|m1l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(5),
	datad => VCC,
	cin => \m3|m1l[4]~45\,
	combout => \m3|m1l[5]~46_combout\,
	cout => \m3|m1l[5]~47\);

-- Location: FF_X60_Y52_N11
\m3|m1l[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[5]~46_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(5));

-- Location: LCCOMB_X60_Y52_N12
\m3|m1l[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[6]~48_combout\ = (\m3|m1l\(6) & (\m3|m1l[5]~47\ $ (GND))) # (!\m3|m1l\(6) & (!\m3|m1l[5]~47\ & VCC))
-- \m3|m1l[6]~49\ = CARRY((\m3|m1l\(6) & !\m3|m1l[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(6),
	datad => VCC,
	cin => \m3|m1l[5]~47\,
	combout => \m3|m1l[6]~48_combout\,
	cout => \m3|m1l[6]~49\);

-- Location: FF_X60_Y52_N13
\m3|m1l[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[6]~48_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(6));

-- Location: LCCOMB_X60_Y52_N14
\m3|m1l[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[7]~50_combout\ = (\m3|m1l\(7) & (!\m3|m1l[6]~49\)) # (!\m3|m1l\(7) & ((\m3|m1l[6]~49\) # (GND)))
-- \m3|m1l[7]~51\ = CARRY((!\m3|m1l[6]~49\) # (!\m3|m1l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(7),
	datad => VCC,
	cin => \m3|m1l[6]~49\,
	combout => \m3|m1l[7]~50_combout\,
	cout => \m3|m1l[7]~51\);

-- Location: FF_X60_Y52_N15
\m3|m1l[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[7]~50_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(7));

-- Location: LCCOMB_X60_Y52_N16
\m3|m1l[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[8]~52_combout\ = (\m3|m1l\(8) & (\m3|m1l[7]~51\ $ (GND))) # (!\m3|m1l\(8) & (!\m3|m1l[7]~51\ & VCC))
-- \m3|m1l[8]~53\ = CARRY((\m3|m1l\(8) & !\m3|m1l[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(8),
	datad => VCC,
	cin => \m3|m1l[7]~51\,
	combout => \m3|m1l[8]~52_combout\,
	cout => \m3|m1l[8]~53\);

-- Location: FF_X60_Y52_N17
\m3|m1l[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[8]~52_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(8));

-- Location: LCCOMB_X60_Y52_N18
\m3|m1l[9]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[9]~54_combout\ = (\m3|m1l\(9) & (!\m3|m1l[8]~53\)) # (!\m3|m1l\(9) & ((\m3|m1l[8]~53\) # (GND)))
-- \m3|m1l[9]~55\ = CARRY((!\m3|m1l[8]~53\) # (!\m3|m1l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(9),
	datad => VCC,
	cin => \m3|m1l[8]~53\,
	combout => \m3|m1l[9]~54_combout\,
	cout => \m3|m1l[9]~55\);

-- Location: FF_X60_Y52_N19
\m3|m1l[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[9]~54_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(9));

-- Location: LCCOMB_X60_Y52_N20
\m3|m1l[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[10]~56_combout\ = (\m3|m1l\(10) & (\m3|m1l[9]~55\ $ (GND))) # (!\m3|m1l\(10) & (!\m3|m1l[9]~55\ & VCC))
-- \m3|m1l[10]~57\ = CARRY((\m3|m1l\(10) & !\m3|m1l[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(10),
	datad => VCC,
	cin => \m3|m1l[9]~55\,
	combout => \m3|m1l[10]~56_combout\,
	cout => \m3|m1l[10]~57\);

-- Location: FF_X60_Y52_N21
\m3|m1l[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[10]~56_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(10));

-- Location: LCCOMB_X60_Y52_N22
\m3|m1l[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[11]~58_combout\ = (\m3|m1l\(11) & (!\m3|m1l[10]~57\)) # (!\m3|m1l\(11) & ((\m3|m1l[10]~57\) # (GND)))
-- \m3|m1l[11]~59\ = CARRY((!\m3|m1l[10]~57\) # (!\m3|m1l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(11),
	datad => VCC,
	cin => \m3|m1l[10]~57\,
	combout => \m3|m1l[11]~58_combout\,
	cout => \m3|m1l[11]~59\);

-- Location: FF_X60_Y52_N23
\m3|m1l[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[11]~58_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(11));

-- Location: LCCOMB_X60_Y52_N24
\m3|m1l[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[12]~60_combout\ = (\m3|m1l\(12) & (\m3|m1l[11]~59\ $ (GND))) # (!\m3|m1l\(12) & (!\m3|m1l[11]~59\ & VCC))
-- \m3|m1l[12]~61\ = CARRY((\m3|m1l\(12) & !\m3|m1l[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(12),
	datad => VCC,
	cin => \m3|m1l[11]~59\,
	combout => \m3|m1l[12]~60_combout\,
	cout => \m3|m1l[12]~61\);

-- Location: FF_X60_Y52_N25
\m3|m1l[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[12]~60_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(12));

-- Location: LCCOMB_X60_Y52_N26
\m3|m1l[13]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[13]~62_combout\ = (\m3|m1l\(13) & (!\m3|m1l[12]~61\)) # (!\m3|m1l\(13) & ((\m3|m1l[12]~61\) # (GND)))
-- \m3|m1l[13]~63\ = CARRY((!\m3|m1l[12]~61\) # (!\m3|m1l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(13),
	datad => VCC,
	cin => \m3|m1l[12]~61\,
	combout => \m3|m1l[13]~62_combout\,
	cout => \m3|m1l[13]~63\);

-- Location: FF_X60_Y52_N27
\m3|m1l[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[13]~62_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(13));

-- Location: LCCOMB_X60_Y52_N28
\m3|m1l[14]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[14]~64_combout\ = (\m3|m1l\(14) & (\m3|m1l[13]~63\ $ (GND))) # (!\m3|m1l\(14) & (!\m3|m1l[13]~63\ & VCC))
-- \m3|m1l[14]~65\ = CARRY((\m3|m1l\(14) & !\m3|m1l[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(14),
	datad => VCC,
	cin => \m3|m1l[13]~63\,
	combout => \m3|m1l[14]~64_combout\,
	cout => \m3|m1l[14]~65\);

-- Location: FF_X60_Y52_N29
\m3|m1l[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[14]~64_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(14));

-- Location: LCCOMB_X60_Y52_N30
\m3|m1l[15]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[15]~66_combout\ = (\m3|m1l\(15) & (!\m3|m1l[14]~65\)) # (!\m3|m1l\(15) & ((\m3|m1l[14]~65\) # (GND)))
-- \m3|m1l[15]~67\ = CARRY((!\m3|m1l[14]~65\) # (!\m3|m1l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(15),
	datad => VCC,
	cin => \m3|m1l[14]~65\,
	combout => \m3|m1l[15]~66_combout\,
	cout => \m3|m1l[15]~67\);

-- Location: FF_X60_Y52_N31
\m3|m1l[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[15]~66_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(15));

-- Location: LCCOMB_X60_Y51_N0
\m3|m1l[16]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[16]~68_combout\ = (\m3|m1l\(16) & (\m3|m1l[15]~67\ $ (GND))) # (!\m3|m1l\(16) & (!\m3|m1l[15]~67\ & VCC))
-- \m3|m1l[16]~69\ = CARRY((\m3|m1l\(16) & !\m3|m1l[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(16),
	datad => VCC,
	cin => \m3|m1l[15]~67\,
	combout => \m3|m1l[16]~68_combout\,
	cout => \m3|m1l[16]~69\);

-- Location: FF_X60_Y51_N1
\m3|m1l[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[16]~68_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(16));

-- Location: LCCOMB_X60_Y51_N2
\m3|m1l[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[17]~70_combout\ = (\m3|m1l\(17) & (!\m3|m1l[16]~69\)) # (!\m3|m1l\(17) & ((\m3|m1l[16]~69\) # (GND)))
-- \m3|m1l[17]~71\ = CARRY((!\m3|m1l[16]~69\) # (!\m3|m1l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(17),
	datad => VCC,
	cin => \m3|m1l[16]~69\,
	combout => \m3|m1l[17]~70_combout\,
	cout => \m3|m1l[17]~71\);

-- Location: FF_X60_Y51_N3
\m3|m1l[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[17]~70_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(17));

-- Location: LCCOMB_X60_Y51_N4
\m3|m1l[18]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[18]~72_combout\ = (\m3|m1l\(18) & (\m3|m1l[17]~71\ $ (GND))) # (!\m3|m1l\(18) & (!\m3|m1l[17]~71\ & VCC))
-- \m3|m1l[18]~73\ = CARRY((\m3|m1l\(18) & !\m3|m1l[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(18),
	datad => VCC,
	cin => \m3|m1l[17]~71\,
	combout => \m3|m1l[18]~72_combout\,
	cout => \m3|m1l[18]~73\);

-- Location: FF_X60_Y51_N5
\m3|m1l[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[18]~72_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(18));

-- Location: LCCOMB_X60_Y51_N6
\m3|m1l[19]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[19]~74_combout\ = (\m3|m1l\(19) & (!\m3|m1l[18]~73\)) # (!\m3|m1l\(19) & ((\m3|m1l[18]~73\) # (GND)))
-- \m3|m1l[19]~75\ = CARRY((!\m3|m1l[18]~73\) # (!\m3|m1l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(19),
	datad => VCC,
	cin => \m3|m1l[18]~73\,
	combout => \m3|m1l[19]~74_combout\,
	cout => \m3|m1l[19]~75\);

-- Location: FF_X60_Y51_N7
\m3|m1l[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[19]~74_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(19));

-- Location: LCCOMB_X60_Y51_N8
\m3|m1l[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[20]~76_combout\ = (\m3|m1l\(20) & (\m3|m1l[19]~75\ $ (GND))) # (!\m3|m1l\(20) & (!\m3|m1l[19]~75\ & VCC))
-- \m3|m1l[20]~77\ = CARRY((\m3|m1l\(20) & !\m3|m1l[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(20),
	datad => VCC,
	cin => \m3|m1l[19]~75\,
	combout => \m3|m1l[20]~76_combout\,
	cout => \m3|m1l[20]~77\);

-- Location: FF_X60_Y51_N9
\m3|m1l[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[20]~76_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(20));

-- Location: LCCOMB_X60_Y51_N10
\m3|m1l[21]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[21]~78_combout\ = (\m3|m1l\(21) & (!\m3|m1l[20]~77\)) # (!\m3|m1l\(21) & ((\m3|m1l[20]~77\) # (GND)))
-- \m3|m1l[21]~79\ = CARRY((!\m3|m1l[20]~77\) # (!\m3|m1l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(21),
	datad => VCC,
	cin => \m3|m1l[20]~77\,
	combout => \m3|m1l[21]~78_combout\,
	cout => \m3|m1l[21]~79\);

-- Location: FF_X60_Y51_N11
\m3|m1l[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[21]~78_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(21));

-- Location: LCCOMB_X60_Y51_N12
\m3|m1l[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[22]~80_combout\ = (\m3|m1l\(22) & (\m3|m1l[21]~79\ $ (GND))) # (!\m3|m1l\(22) & (!\m3|m1l[21]~79\ & VCC))
-- \m3|m1l[22]~81\ = CARRY((\m3|m1l\(22) & !\m3|m1l[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(22),
	datad => VCC,
	cin => \m3|m1l[21]~79\,
	combout => \m3|m1l[22]~80_combout\,
	cout => \m3|m1l[22]~81\);

-- Location: FF_X60_Y51_N13
\m3|m1l[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[22]~80_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(22));

-- Location: LCCOMB_X60_Y51_N14
\m3|m1l[23]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[23]~82_combout\ = (\m3|m1l\(23) & (!\m3|m1l[22]~81\)) # (!\m3|m1l\(23) & ((\m3|m1l[22]~81\) # (GND)))
-- \m3|m1l[23]~83\ = CARRY((!\m3|m1l[22]~81\) # (!\m3|m1l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(23),
	datad => VCC,
	cin => \m3|m1l[22]~81\,
	combout => \m3|m1l[23]~82_combout\,
	cout => \m3|m1l[23]~83\);

-- Location: FF_X60_Y51_N15
\m3|m1l[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[23]~82_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(23));

-- Location: LCCOMB_X60_Y51_N16
\m3|m1l[24]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[24]~84_combout\ = (\m3|m1l\(24) & (\m3|m1l[23]~83\ $ (GND))) # (!\m3|m1l\(24) & (!\m3|m1l[23]~83\ & VCC))
-- \m3|m1l[24]~85\ = CARRY((\m3|m1l\(24) & !\m3|m1l[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(24),
	datad => VCC,
	cin => \m3|m1l[23]~83\,
	combout => \m3|m1l[24]~84_combout\,
	cout => \m3|m1l[24]~85\);

-- Location: FF_X60_Y51_N17
\m3|m1l[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[24]~84_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(24));

-- Location: LCCOMB_X60_Y51_N18
\m3|m1l[25]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[25]~86_combout\ = (\m3|m1l\(25) & (!\m3|m1l[24]~85\)) # (!\m3|m1l\(25) & ((\m3|m1l[24]~85\) # (GND)))
-- \m3|m1l[25]~87\ = CARRY((!\m3|m1l[24]~85\) # (!\m3|m1l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(25),
	datad => VCC,
	cin => \m3|m1l[24]~85\,
	combout => \m3|m1l[25]~86_combout\,
	cout => \m3|m1l[25]~87\);

-- Location: FF_X60_Y51_N19
\m3|m1l[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[25]~86_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(25));

-- Location: LCCOMB_X60_Y51_N20
\m3|m1l[26]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[26]~88_combout\ = (\m3|m1l\(26) & (\m3|m1l[25]~87\ $ (GND))) # (!\m3|m1l\(26) & (!\m3|m1l[25]~87\ & VCC))
-- \m3|m1l[26]~89\ = CARRY((\m3|m1l\(26) & !\m3|m1l[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(26),
	datad => VCC,
	cin => \m3|m1l[25]~87\,
	combout => \m3|m1l[26]~88_combout\,
	cout => \m3|m1l[26]~89\);

-- Location: FF_X60_Y51_N21
\m3|m1l[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[26]~88_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(26));

-- Location: LCCOMB_X60_Y51_N22
\m3|m1l[27]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[27]~90_combout\ = (\m3|m1l\(27) & (!\m3|m1l[26]~89\)) # (!\m3|m1l\(27) & ((\m3|m1l[26]~89\) # (GND)))
-- \m3|m1l[27]~91\ = CARRY((!\m3|m1l[26]~89\) # (!\m3|m1l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(27),
	datad => VCC,
	cin => \m3|m1l[26]~89\,
	combout => \m3|m1l[27]~90_combout\,
	cout => \m3|m1l[27]~91\);

-- Location: FF_X60_Y51_N23
\m3|m1l[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[27]~90_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(27));

-- Location: LCCOMB_X60_Y51_N24
\m3|m1l[28]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[28]~92_combout\ = (\m3|m1l\(28) & (\m3|m1l[27]~91\ $ (GND))) # (!\m3|m1l\(28) & (!\m3|m1l[27]~91\ & VCC))
-- \m3|m1l[28]~93\ = CARRY((\m3|m1l\(28) & !\m3|m1l[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(28),
	datad => VCC,
	cin => \m3|m1l[27]~91\,
	combout => \m3|m1l[28]~92_combout\,
	cout => \m3|m1l[28]~93\);

-- Location: FF_X60_Y51_N25
\m3|m1l[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[28]~92_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(28));

-- Location: LCCOMB_X60_Y51_N26
\m3|m1l[29]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[29]~94_combout\ = (\m3|m1l\(29) & (!\m3|m1l[28]~93\)) # (!\m3|m1l\(29) & ((\m3|m1l[28]~93\) # (GND)))
-- \m3|m1l[29]~95\ = CARRY((!\m3|m1l[28]~93\) # (!\m3|m1l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(29),
	datad => VCC,
	cin => \m3|m1l[28]~93\,
	combout => \m3|m1l[29]~94_combout\,
	cout => \m3|m1l[29]~95\);

-- Location: FF_X60_Y51_N27
\m3|m1l[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[29]~94_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(29));

-- Location: LCCOMB_X60_Y51_N28
\m3|m1l[30]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[30]~96_combout\ = (\m3|m1l\(30) & (\m3|m1l[29]~95\ $ (GND))) # (!\m3|m1l\(30) & (!\m3|m1l[29]~95\ & VCC))
-- \m3|m1l[30]~97\ = CARRY((\m3|m1l\(30) & !\m3|m1l[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1l\(30),
	datad => VCC,
	cin => \m3|m1l[29]~95\,
	combout => \m3|m1l[30]~96_combout\,
	cout => \m3|m1l[30]~97\);

-- Location: FF_X60_Y51_N29
\m3|m1l[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[30]~96_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(30));

-- Location: LCCOMB_X60_Y51_N30
\m3|m1l[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|m1l[31]~98_combout\ = \m3|m1l\(31) $ (\m3|m1l[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(31),
	cin => \m3|m1l[30]~97\,
	combout => \m3|m1l[31]~98_combout\);

-- Location: FF_X60_Y51_N31
\m3|m1l[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|m1l[31]~98_combout\,
	sclr => \ALT_INV_start~input_o\,
	ena => \m3|m1l[26]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|m1l\(31));

-- Location: LCCOMB_X62_Y52_N0
\m3|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~1_cout\ = CARRY((\m3|m2l\(0) & !\m3|m1l\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(0),
	datab => \m3|m1l\(0),
	datad => VCC,
	cout => \m3|LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y52_N2
\m3|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~3_cout\ = CARRY((\m3|m1l\(1) & ((!\m3|LessThan0~1_cout\) # (!\m3|m2l\(1)))) # (!\m3|m1l\(1) & (!\m3|m2l\(1) & !\m3|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(1),
	datab => \m3|m2l\(1),
	datad => VCC,
	cin => \m3|LessThan0~1_cout\,
	cout => \m3|LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y52_N4
\m3|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~5_cout\ = CARRY((\m3|m1l\(2) & (\m3|m2l\(2) & !\m3|LessThan0~3_cout\)) # (!\m3|m1l\(2) & ((\m3|m2l\(2)) # (!\m3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(2),
	datab => \m3|m2l\(2),
	datad => VCC,
	cin => \m3|LessThan0~3_cout\,
	cout => \m3|LessThan0~5_cout\);

-- Location: LCCOMB_X62_Y52_N6
\m3|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~7_cout\ = CARRY((\m3|m2l\(3) & (\m3|m1l\(3) & !\m3|LessThan0~5_cout\)) # (!\m3|m2l\(3) & ((\m3|m1l\(3)) # (!\m3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m1l\(3),
	datad => VCC,
	cin => \m3|LessThan0~5_cout\,
	cout => \m3|LessThan0~7_cout\);

-- Location: LCCOMB_X62_Y52_N8
\m3|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~9_cout\ = CARRY((\m3|m2l\(4) & ((!\m3|LessThan0~7_cout\) # (!\m3|m1l\(4)))) # (!\m3|m2l\(4) & (!\m3|m1l\(4) & !\m3|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(4),
	datab => \m3|m1l\(4),
	datad => VCC,
	cin => \m3|LessThan0~7_cout\,
	cout => \m3|LessThan0~9_cout\);

-- Location: LCCOMB_X62_Y52_N10
\m3|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~11_cout\ = CARRY((\m3|m1l\(5) & ((!\m3|LessThan0~9_cout\) # (!\m3|m2l\(5)))) # (!\m3|m1l\(5) & (!\m3|m2l\(5) & !\m3|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(5),
	datab => \m3|m2l\(5),
	datad => VCC,
	cin => \m3|LessThan0~9_cout\,
	cout => \m3|LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y52_N12
\m3|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~13_cout\ = CARRY((\m3|m1l\(6) & (\m3|m2l\(6) & !\m3|LessThan0~11_cout\)) # (!\m3|m1l\(6) & ((\m3|m2l\(6)) # (!\m3|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(6),
	datab => \m3|m2l\(6),
	datad => VCC,
	cin => \m3|LessThan0~11_cout\,
	cout => \m3|LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y52_N14
\m3|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~15_cout\ = CARRY((\m3|m2l\(7) & (\m3|m1l\(7) & !\m3|LessThan0~13_cout\)) # (!\m3|m2l\(7) & ((\m3|m1l\(7)) # (!\m3|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(7),
	datab => \m3|m1l\(7),
	datad => VCC,
	cin => \m3|LessThan0~13_cout\,
	cout => \m3|LessThan0~15_cout\);

-- Location: LCCOMB_X62_Y52_N16
\m3|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~17_cout\ = CARRY((\m3|m2l\(8) & ((!\m3|LessThan0~15_cout\) # (!\m3|m1l\(8)))) # (!\m3|m2l\(8) & (!\m3|m1l\(8) & !\m3|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(8),
	datab => \m3|m1l\(8),
	datad => VCC,
	cin => \m3|LessThan0~15_cout\,
	cout => \m3|LessThan0~17_cout\);

-- Location: LCCOMB_X62_Y52_N18
\m3|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~19_cout\ = CARRY((\m3|m1l\(9) & ((!\m3|LessThan0~17_cout\) # (!\m3|m2l\(9)))) # (!\m3|m1l\(9) & (!\m3|m2l\(9) & !\m3|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(9),
	datab => \m3|m2l\(9),
	datad => VCC,
	cin => \m3|LessThan0~17_cout\,
	cout => \m3|LessThan0~19_cout\);

-- Location: LCCOMB_X62_Y52_N20
\m3|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~21_cout\ = CARRY((\m3|m1l\(10) & (\m3|m2l\(10) & !\m3|LessThan0~19_cout\)) # (!\m3|m1l\(10) & ((\m3|m2l\(10)) # (!\m3|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(10),
	datab => \m3|m2l\(10),
	datad => VCC,
	cin => \m3|LessThan0~19_cout\,
	cout => \m3|LessThan0~21_cout\);

-- Location: LCCOMB_X62_Y52_N22
\m3|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~23_cout\ = CARRY((\m3|m1l\(11) & ((!\m3|LessThan0~21_cout\) # (!\m3|m2l\(11)))) # (!\m3|m1l\(11) & (!\m3|m2l\(11) & !\m3|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(11),
	datab => \m3|m2l\(11),
	datad => VCC,
	cin => \m3|LessThan0~21_cout\,
	cout => \m3|LessThan0~23_cout\);

-- Location: LCCOMB_X62_Y52_N24
\m3|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~25_cout\ = CARRY((\m3|m1l\(12) & (\m3|m2l\(12) & !\m3|LessThan0~23_cout\)) # (!\m3|m1l\(12) & ((\m3|m2l\(12)) # (!\m3|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(12),
	datab => \m3|m2l\(12),
	datad => VCC,
	cin => \m3|LessThan0~23_cout\,
	cout => \m3|LessThan0~25_cout\);

-- Location: LCCOMB_X62_Y52_N26
\m3|LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~27_cout\ = CARRY((\m3|m2l\(13) & (\m3|m1l\(13) & !\m3|LessThan0~25_cout\)) # (!\m3|m2l\(13) & ((\m3|m1l\(13)) # (!\m3|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(13),
	datab => \m3|m1l\(13),
	datad => VCC,
	cin => \m3|LessThan0~25_cout\,
	cout => \m3|LessThan0~27_cout\);

-- Location: LCCOMB_X62_Y52_N28
\m3|LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~29_cout\ = CARRY((\m3|m2l\(14) & ((!\m3|LessThan0~27_cout\) # (!\m3|m1l\(14)))) # (!\m3|m2l\(14) & (!\m3|m1l\(14) & !\m3|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(14),
	datab => \m3|m1l\(14),
	datad => VCC,
	cin => \m3|LessThan0~27_cout\,
	cout => \m3|LessThan0~29_cout\);

-- Location: LCCOMB_X62_Y52_N30
\m3|LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~31_cout\ = CARRY((\m3|m1l\(15) & ((!\m3|LessThan0~29_cout\) # (!\m3|m2l\(15)))) # (!\m3|m1l\(15) & (!\m3|m2l\(15) & !\m3|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(15),
	datab => \m3|m2l\(15),
	datad => VCC,
	cin => \m3|LessThan0~29_cout\,
	cout => \m3|LessThan0~31_cout\);

-- Location: LCCOMB_X62_Y51_N0
\m3|LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~33_cout\ = CARRY((\m3|m2l\(16) & ((!\m3|LessThan0~31_cout\) # (!\m3|m1l\(16)))) # (!\m3|m2l\(16) & (!\m3|m1l\(16) & !\m3|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(16),
	datab => \m3|m1l\(16),
	datad => VCC,
	cin => \m3|LessThan0~31_cout\,
	cout => \m3|LessThan0~33_cout\);

-- Location: LCCOMB_X62_Y51_N2
\m3|LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~35_cout\ = CARRY((\m3|m2l\(17) & (\m3|m1l\(17) & !\m3|LessThan0~33_cout\)) # (!\m3|m2l\(17) & ((\m3|m1l\(17)) # (!\m3|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(17),
	datab => \m3|m1l\(17),
	datad => VCC,
	cin => \m3|LessThan0~33_cout\,
	cout => \m3|LessThan0~35_cout\);

-- Location: LCCOMB_X62_Y51_N4
\m3|LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~37_cout\ = CARRY((\m3|m1l\(18) & (\m3|m2l\(18) & !\m3|LessThan0~35_cout\)) # (!\m3|m1l\(18) & ((\m3|m2l\(18)) # (!\m3|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(18),
	datab => \m3|m2l\(18),
	datad => VCC,
	cin => \m3|LessThan0~35_cout\,
	cout => \m3|LessThan0~37_cout\);

-- Location: LCCOMB_X62_Y51_N6
\m3|LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~39_cout\ = CARRY((\m3|m1l\(19) & ((!\m3|LessThan0~37_cout\) # (!\m3|m2l\(19)))) # (!\m3|m1l\(19) & (!\m3|m2l\(19) & !\m3|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(19),
	datab => \m3|m2l\(19),
	datad => VCC,
	cin => \m3|LessThan0~37_cout\,
	cout => \m3|LessThan0~39_cout\);

-- Location: LCCOMB_X62_Y51_N8
\m3|LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~41_cout\ = CARRY((\m3|m2l\(20) & ((!\m3|LessThan0~39_cout\) # (!\m3|m1l\(20)))) # (!\m3|m2l\(20) & (!\m3|m1l\(20) & !\m3|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(20),
	datab => \m3|m1l\(20),
	datad => VCC,
	cin => \m3|LessThan0~39_cout\,
	cout => \m3|LessThan0~41_cout\);

-- Location: LCCOMB_X62_Y51_N10
\m3|LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~43_cout\ = CARRY((\m3|m1l\(21) & ((!\m3|LessThan0~41_cout\) # (!\m3|m2l\(21)))) # (!\m3|m1l\(21) & (!\m3|m2l\(21) & !\m3|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(21),
	datab => \m3|m2l\(21),
	datad => VCC,
	cin => \m3|LessThan0~41_cout\,
	cout => \m3|LessThan0~43_cout\);

-- Location: LCCOMB_X62_Y51_N12
\m3|LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~45_cout\ = CARRY((\m3|m2l\(22) & ((!\m3|LessThan0~43_cout\) # (!\m3|m1l\(22)))) # (!\m3|m2l\(22) & (!\m3|m1l\(22) & !\m3|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(22),
	datab => \m3|m1l\(22),
	datad => VCC,
	cin => \m3|LessThan0~43_cout\,
	cout => \m3|LessThan0~45_cout\);

-- Location: LCCOMB_X62_Y51_N14
\m3|LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~47_cout\ = CARRY((\m3|m1l\(23) & ((!\m3|LessThan0~45_cout\) # (!\m3|m2l\(23)))) # (!\m3|m1l\(23) & (!\m3|m2l\(23) & !\m3|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(23),
	datab => \m3|m2l\(23),
	datad => VCC,
	cin => \m3|LessThan0~45_cout\,
	cout => \m3|LessThan0~47_cout\);

-- Location: LCCOMB_X62_Y51_N16
\m3|LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~49_cout\ = CARRY((\m3|m2l\(24) & ((!\m3|LessThan0~47_cout\) # (!\m3|m1l\(24)))) # (!\m3|m2l\(24) & (!\m3|m1l\(24) & !\m3|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(24),
	datab => \m3|m1l\(24),
	datad => VCC,
	cin => \m3|LessThan0~47_cout\,
	cout => \m3|LessThan0~49_cout\);

-- Location: LCCOMB_X62_Y51_N18
\m3|LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~51_cout\ = CARRY((\m3|m1l\(25) & ((!\m3|LessThan0~49_cout\) # (!\m3|m2l\(25)))) # (!\m3|m1l\(25) & (!\m3|m2l\(25) & !\m3|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(25),
	datab => \m3|m2l\(25),
	datad => VCC,
	cin => \m3|LessThan0~49_cout\,
	cout => \m3|LessThan0~51_cout\);

-- Location: LCCOMB_X62_Y51_N20
\m3|LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~53_cout\ = CARRY((\m3|m1l\(26) & (\m3|m2l\(26) & !\m3|LessThan0~51_cout\)) # (!\m3|m1l\(26) & ((\m3|m2l\(26)) # (!\m3|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(26),
	datab => \m3|m2l\(26),
	datad => VCC,
	cin => \m3|LessThan0~51_cout\,
	cout => \m3|LessThan0~53_cout\);

-- Location: LCCOMB_X62_Y51_N22
\m3|LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~55_cout\ = CARRY((\m3|m1l\(27) & ((!\m3|LessThan0~53_cout\) # (!\m3|m2l\(27)))) # (!\m3|m1l\(27) & (!\m3|m2l\(27) & !\m3|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(27),
	datab => \m3|m2l\(27),
	datad => VCC,
	cin => \m3|LessThan0~53_cout\,
	cout => \m3|LessThan0~55_cout\);

-- Location: LCCOMB_X62_Y51_N24
\m3|LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~57_cout\ = CARRY((\m3|m1l\(28) & (\m3|m2l\(28) & !\m3|LessThan0~55_cout\)) # (!\m3|m1l\(28) & ((\m3|m2l\(28)) # (!\m3|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(28),
	datab => \m3|m2l\(28),
	datad => VCC,
	cin => \m3|LessThan0~55_cout\,
	cout => \m3|LessThan0~57_cout\);

-- Location: LCCOMB_X62_Y51_N26
\m3|LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~59_cout\ = CARRY((\m3|m2l\(29) & (\m3|m1l\(29) & !\m3|LessThan0~57_cout\)) # (!\m3|m2l\(29) & ((\m3|m1l\(29)) # (!\m3|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(29),
	datab => \m3|m1l\(29),
	datad => VCC,
	cin => \m3|LessThan0~57_cout\,
	cout => \m3|LessThan0~59_cout\);

-- Location: LCCOMB_X62_Y51_N28
\m3|LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~61_cout\ = CARRY((\m3|m2l\(30) & ((!\m3|LessThan0~59_cout\) # (!\m3|m1l\(30)))) # (!\m3|m2l\(30) & (!\m3|m1l\(30) & !\m3|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(30),
	datab => \m3|m1l\(30),
	datad => VCC,
	cin => \m3|LessThan0~59_cout\,
	cout => \m3|LessThan0~61_cout\);

-- Location: LCCOMB_X62_Y51_N30
\m3|LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan0~62_combout\ = (\m3|m2l\(31) & (\m3|LessThan0~61_cout\ & \m3|m1l\(31))) # (!\m3|m2l\(31) & ((\m3|LessThan0~61_cout\) # (\m3|m1l\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(31),
	datad => \m3|m1l\(31),
	cin => \m3|LessThan0~61_cout\,
	combout => \m3|LessThan0~62_combout\);

-- Location: LCCOMB_X62_Y47_N0
\m3|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~1_cout\ = CARRY((!\m3|m1r\(0) & \m3|m2r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(0),
	datab => \m3|m2r\(0),
	datad => VCC,
	cout => \m3|LessThan3~1_cout\);

-- Location: LCCOMB_X62_Y47_N2
\m3|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~3_cout\ = CARRY((\m3|m1r\(1) & ((!\m3|LessThan3~1_cout\) # (!\m3|m2r\(1)))) # (!\m3|m1r\(1) & (!\m3|m2r\(1) & !\m3|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m2r\(1),
	datad => VCC,
	cin => \m3|LessThan3~1_cout\,
	cout => \m3|LessThan3~3_cout\);

-- Location: LCCOMB_X62_Y47_N4
\m3|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~5_cout\ = CARRY((\m3|m1r\(2) & (\m3|m2r\(2) & !\m3|LessThan3~3_cout\)) # (!\m3|m1r\(2) & ((\m3|m2r\(2)) # (!\m3|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(2),
	datab => \m3|m2r\(2),
	datad => VCC,
	cin => \m3|LessThan3~3_cout\,
	cout => \m3|LessThan3~5_cout\);

-- Location: LCCOMB_X62_Y47_N6
\m3|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~7_cout\ = CARRY((\m3|m1r\(3) & ((!\m3|LessThan3~5_cout\) # (!\m3|m2r\(3)))) # (!\m3|m1r\(3) & (!\m3|m2r\(3) & !\m3|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(3),
	datab => \m3|m2r\(3),
	datad => VCC,
	cin => \m3|LessThan3~5_cout\,
	cout => \m3|LessThan3~7_cout\);

-- Location: LCCOMB_X62_Y47_N8
\m3|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~9_cout\ = CARRY((\m3|m2r\(4) & ((!\m3|LessThan3~7_cout\) # (!\m3|m1r\(4)))) # (!\m3|m2r\(4) & (!\m3|m1r\(4) & !\m3|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(4),
	datab => \m3|m1r\(4),
	datad => VCC,
	cin => \m3|LessThan3~7_cout\,
	cout => \m3|LessThan3~9_cout\);

-- Location: LCCOMB_X62_Y47_N10
\m3|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~11_cout\ = CARRY((\m3|m1r\(5) & ((!\m3|LessThan3~9_cout\) # (!\m3|m2r\(5)))) # (!\m3|m1r\(5) & (!\m3|m2r\(5) & !\m3|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(5),
	datab => \m3|m2r\(5),
	datad => VCC,
	cin => \m3|LessThan3~9_cout\,
	cout => \m3|LessThan3~11_cout\);

-- Location: LCCOMB_X62_Y47_N12
\m3|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~13_cout\ = CARRY((\m3|m2r\(6) & ((!\m3|LessThan3~11_cout\) # (!\m3|m1r\(6)))) # (!\m3|m2r\(6) & (!\m3|m1r\(6) & !\m3|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(6),
	datab => \m3|m1r\(6),
	datad => VCC,
	cin => \m3|LessThan3~11_cout\,
	cout => \m3|LessThan3~13_cout\);

-- Location: LCCOMB_X62_Y47_N14
\m3|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~15_cout\ = CARRY((\m3|m2r\(7) & (\m3|m1r\(7) & !\m3|LessThan3~13_cout\)) # (!\m3|m2r\(7) & ((\m3|m1r\(7)) # (!\m3|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(7),
	datab => \m3|m1r\(7),
	datad => VCC,
	cin => \m3|LessThan3~13_cout\,
	cout => \m3|LessThan3~15_cout\);

-- Location: LCCOMB_X62_Y47_N16
\m3|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~17_cout\ = CARRY((\m3|m2r\(8) & ((!\m3|LessThan3~15_cout\) # (!\m3|m1r\(8)))) # (!\m3|m2r\(8) & (!\m3|m1r\(8) & !\m3|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(8),
	datab => \m3|m1r\(8),
	datad => VCC,
	cin => \m3|LessThan3~15_cout\,
	cout => \m3|LessThan3~17_cout\);

-- Location: LCCOMB_X62_Y47_N18
\m3|LessThan3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~19_cout\ = CARRY((\m3|m1r\(9) & ((!\m3|LessThan3~17_cout\) # (!\m3|m2r\(9)))) # (!\m3|m1r\(9) & (!\m3|m2r\(9) & !\m3|LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(9),
	datab => \m3|m2r\(9),
	datad => VCC,
	cin => \m3|LessThan3~17_cout\,
	cout => \m3|LessThan3~19_cout\);

-- Location: LCCOMB_X62_Y47_N20
\m3|LessThan3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~21_cout\ = CARRY((\m3|m2r\(10) & ((!\m3|LessThan3~19_cout\) # (!\m3|m1r\(10)))) # (!\m3|m2r\(10) & (!\m3|m1r\(10) & !\m3|LessThan3~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(10),
	datab => \m3|m1r\(10),
	datad => VCC,
	cin => \m3|LessThan3~19_cout\,
	cout => \m3|LessThan3~21_cout\);

-- Location: LCCOMB_X62_Y47_N22
\m3|LessThan3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~23_cout\ = CARRY((\m3|m2r\(11) & (\m3|m1r\(11) & !\m3|LessThan3~21_cout\)) # (!\m3|m2r\(11) & ((\m3|m1r\(11)) # (!\m3|LessThan3~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(11),
	datab => \m3|m1r\(11),
	datad => VCC,
	cin => \m3|LessThan3~21_cout\,
	cout => \m3|LessThan3~23_cout\);

-- Location: LCCOMB_X62_Y47_N24
\m3|LessThan3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~25_cout\ = CARRY((\m3|m1r\(12) & (\m3|m2r\(12) & !\m3|LessThan3~23_cout\)) # (!\m3|m1r\(12) & ((\m3|m2r\(12)) # (!\m3|LessThan3~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(12),
	datab => \m3|m2r\(12),
	datad => VCC,
	cin => \m3|LessThan3~23_cout\,
	cout => \m3|LessThan3~25_cout\);

-- Location: LCCOMB_X62_Y47_N26
\m3|LessThan3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~27_cout\ = CARRY((\m3|m2r\(13) & (\m3|m1r\(13) & !\m3|LessThan3~25_cout\)) # (!\m3|m2r\(13) & ((\m3|m1r\(13)) # (!\m3|LessThan3~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(13),
	datab => \m3|m1r\(13),
	datad => VCC,
	cin => \m3|LessThan3~25_cout\,
	cout => \m3|LessThan3~27_cout\);

-- Location: LCCOMB_X62_Y47_N28
\m3|LessThan3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~29_cout\ = CARRY((\m3|m1r\(14) & (\m3|m2r\(14) & !\m3|LessThan3~27_cout\)) # (!\m3|m1r\(14) & ((\m3|m2r\(14)) # (!\m3|LessThan3~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(14),
	datab => \m3|m2r\(14),
	datad => VCC,
	cin => \m3|LessThan3~27_cout\,
	cout => \m3|LessThan3~29_cout\);

-- Location: LCCOMB_X62_Y47_N30
\m3|LessThan3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~31_cout\ = CARRY((\m3|m1r\(15) & ((!\m3|LessThan3~29_cout\) # (!\m3|m2r\(15)))) # (!\m3|m1r\(15) & (!\m3|m2r\(15) & !\m3|LessThan3~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(15),
	datab => \m3|m2r\(15),
	datad => VCC,
	cin => \m3|LessThan3~29_cout\,
	cout => \m3|LessThan3~31_cout\);

-- Location: LCCOMB_X62_Y46_N0
\m3|LessThan3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~33_cout\ = CARRY((\m3|m2r\(16) & ((!\m3|LessThan3~31_cout\) # (!\m3|m1r\(16)))) # (!\m3|m2r\(16) & (!\m3|m1r\(16) & !\m3|LessThan3~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(16),
	datab => \m3|m1r\(16),
	datad => VCC,
	cin => \m3|LessThan3~31_cout\,
	cout => \m3|LessThan3~33_cout\);

-- Location: LCCOMB_X62_Y46_N2
\m3|LessThan3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~35_cout\ = CARRY((\m3|m2r\(17) & (\m3|m1r\(17) & !\m3|LessThan3~33_cout\)) # (!\m3|m2r\(17) & ((\m3|m1r\(17)) # (!\m3|LessThan3~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(17),
	datab => \m3|m1r\(17),
	datad => VCC,
	cin => \m3|LessThan3~33_cout\,
	cout => \m3|LessThan3~35_cout\);

-- Location: LCCOMB_X62_Y46_N4
\m3|LessThan3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~37_cout\ = CARRY((\m3|m1r\(18) & (\m3|m2r\(18) & !\m3|LessThan3~35_cout\)) # (!\m3|m1r\(18) & ((\m3|m2r\(18)) # (!\m3|LessThan3~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(18),
	datab => \m3|m2r\(18),
	datad => VCC,
	cin => \m3|LessThan3~35_cout\,
	cout => \m3|LessThan3~37_cout\);

-- Location: LCCOMB_X62_Y46_N6
\m3|LessThan3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~39_cout\ = CARRY((\m3|m1r\(19) & ((!\m3|LessThan3~37_cout\) # (!\m3|m2r\(19)))) # (!\m3|m1r\(19) & (!\m3|m2r\(19) & !\m3|LessThan3~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(19),
	datab => \m3|m2r\(19),
	datad => VCC,
	cin => \m3|LessThan3~37_cout\,
	cout => \m3|LessThan3~39_cout\);

-- Location: LCCOMB_X62_Y46_N8
\m3|LessThan3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~41_cout\ = CARRY((\m3|m2r\(20) & ((!\m3|LessThan3~39_cout\) # (!\m3|m1r\(20)))) # (!\m3|m2r\(20) & (!\m3|m1r\(20) & !\m3|LessThan3~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(20),
	datab => \m3|m1r\(20),
	datad => VCC,
	cin => \m3|LessThan3~39_cout\,
	cout => \m3|LessThan3~41_cout\);

-- Location: LCCOMB_X62_Y46_N10
\m3|LessThan3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~43_cout\ = CARRY((\m3|m2r\(21) & (\m3|m1r\(21) & !\m3|LessThan3~41_cout\)) # (!\m3|m2r\(21) & ((\m3|m1r\(21)) # (!\m3|LessThan3~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(21),
	datab => \m3|m1r\(21),
	datad => VCC,
	cin => \m3|LessThan3~41_cout\,
	cout => \m3|LessThan3~43_cout\);

-- Location: LCCOMB_X62_Y46_N12
\m3|LessThan3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~45_cout\ = CARRY((\m3|m2r\(22) & ((!\m3|LessThan3~43_cout\) # (!\m3|m1r\(22)))) # (!\m3|m2r\(22) & (!\m3|m1r\(22) & !\m3|LessThan3~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(22),
	datab => \m3|m1r\(22),
	datad => VCC,
	cin => \m3|LessThan3~43_cout\,
	cout => \m3|LessThan3~45_cout\);

-- Location: LCCOMB_X62_Y46_N14
\m3|LessThan3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~47_cout\ = CARRY((\m3|m2r\(23) & (\m3|m1r\(23) & !\m3|LessThan3~45_cout\)) # (!\m3|m2r\(23) & ((\m3|m1r\(23)) # (!\m3|LessThan3~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(23),
	datab => \m3|m1r\(23),
	datad => VCC,
	cin => \m3|LessThan3~45_cout\,
	cout => \m3|LessThan3~47_cout\);

-- Location: LCCOMB_X62_Y46_N16
\m3|LessThan3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~49_cout\ = CARRY((\m3|m2r\(24) & ((!\m3|LessThan3~47_cout\) # (!\m3|m1r\(24)))) # (!\m3|m2r\(24) & (!\m3|m1r\(24) & !\m3|LessThan3~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(24),
	datab => \m3|m1r\(24),
	datad => VCC,
	cin => \m3|LessThan3~47_cout\,
	cout => \m3|LessThan3~49_cout\);

-- Location: LCCOMB_X62_Y46_N18
\m3|LessThan3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~51_cout\ = CARRY((\m3|m1r\(25) & ((!\m3|LessThan3~49_cout\) # (!\m3|m2r\(25)))) # (!\m3|m1r\(25) & (!\m3|m2r\(25) & !\m3|LessThan3~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(25),
	datab => \m3|m2r\(25),
	datad => VCC,
	cin => \m3|LessThan3~49_cout\,
	cout => \m3|LessThan3~51_cout\);

-- Location: LCCOMB_X62_Y46_N20
\m3|LessThan3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~53_cout\ = CARRY((\m3|m1r\(26) & (\m3|m2r\(26) & !\m3|LessThan3~51_cout\)) # (!\m3|m1r\(26) & ((\m3|m2r\(26)) # (!\m3|LessThan3~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(26),
	datab => \m3|m2r\(26),
	datad => VCC,
	cin => \m3|LessThan3~51_cout\,
	cout => \m3|LessThan3~53_cout\);

-- Location: LCCOMB_X62_Y46_N22
\m3|LessThan3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~55_cout\ = CARRY((\m3|m1r\(27) & ((!\m3|LessThan3~53_cout\) # (!\m3|m2r\(27)))) # (!\m3|m1r\(27) & (!\m3|m2r\(27) & !\m3|LessThan3~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(27),
	datab => \m3|m2r\(27),
	datad => VCC,
	cin => \m3|LessThan3~53_cout\,
	cout => \m3|LessThan3~55_cout\);

-- Location: LCCOMB_X62_Y46_N24
\m3|LessThan3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~57_cout\ = CARRY((\m3|m1r\(28) & (\m3|m2r\(28) & !\m3|LessThan3~55_cout\)) # (!\m3|m1r\(28) & ((\m3|m2r\(28)) # (!\m3|LessThan3~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(28),
	datab => \m3|m2r\(28),
	datad => VCC,
	cin => \m3|LessThan3~55_cout\,
	cout => \m3|LessThan3~57_cout\);

-- Location: LCCOMB_X62_Y46_N26
\m3|LessThan3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~59_cout\ = CARRY((\m3|m2r\(29) & (\m3|m1r\(29) & !\m3|LessThan3~57_cout\)) # (!\m3|m2r\(29) & ((\m3|m1r\(29)) # (!\m3|LessThan3~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(29),
	datab => \m3|m1r\(29),
	datad => VCC,
	cin => \m3|LessThan3~57_cout\,
	cout => \m3|LessThan3~59_cout\);

-- Location: LCCOMB_X62_Y46_N28
\m3|LessThan3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~61_cout\ = CARRY((\m3|m1r\(30) & (\m3|m2r\(30) & !\m3|LessThan3~59_cout\)) # (!\m3|m1r\(30) & ((\m3|m2r\(30)) # (!\m3|LessThan3~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(30),
	datab => \m3|m2r\(30),
	datad => VCC,
	cin => \m3|LessThan3~59_cout\,
	cout => \m3|LessThan3~61_cout\);

-- Location: LCCOMB_X62_Y46_N30
\m3|LessThan3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan3~62_combout\ = (\m3|m1r\(31) & ((\m3|LessThan3~61_cout\) # (!\m3|m2r\(31)))) # (!\m3|m1r\(31) & (\m3|LessThan3~61_cout\ & !\m3|m2r\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m3|m1r\(31),
	datad => \m3|m2r\(31),
	cin => \m3|LessThan3~61_cout\,
	combout => \m3|LessThan3~62_combout\);

-- Location: LCCOMB_X61_Y52_N0
\m3|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~1_cout\ = CARRY((\m3|m1l\(0) & !\m3|m2l\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m2l\(0),
	datad => VCC,
	cout => \m3|LessThan1~1_cout\);

-- Location: LCCOMB_X61_Y52_N2
\m3|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~3_cout\ = CARRY((\m3|m2l\(1) & ((!\m3|LessThan1~1_cout\) # (!\m3|m1l\(1)))) # (!\m3|m2l\(1) & (!\m3|m1l\(1) & !\m3|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(1),
	datab => \m3|m1l\(1),
	datad => VCC,
	cin => \m3|LessThan1~1_cout\,
	cout => \m3|LessThan1~3_cout\);

-- Location: LCCOMB_X61_Y52_N4
\m3|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~5_cout\ = CARRY((\m3|m2l\(2) & (\m3|m1l\(2) & !\m3|LessThan1~3_cout\)) # (!\m3|m2l\(2) & ((\m3|m1l\(2)) # (!\m3|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(2),
	datab => \m3|m1l\(2),
	datad => VCC,
	cin => \m3|LessThan1~3_cout\,
	cout => \m3|LessThan1~5_cout\);

-- Location: LCCOMB_X61_Y52_N6
\m3|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~7_cout\ = CARRY((\m3|m2l\(3) & ((!\m3|LessThan1~5_cout\) # (!\m3|m1l\(3)))) # (!\m3|m2l\(3) & (!\m3|m1l\(3) & !\m3|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m1l\(3),
	datad => VCC,
	cin => \m3|LessThan1~5_cout\,
	cout => \m3|LessThan1~7_cout\);

-- Location: LCCOMB_X61_Y52_N8
\m3|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~9_cout\ = CARRY((\m3|m1l\(4) & ((!\m3|LessThan1~7_cout\) # (!\m3|m2l\(4)))) # (!\m3|m1l\(4) & (!\m3|m2l\(4) & !\m3|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(4),
	datab => \m3|m2l\(4),
	datad => VCC,
	cin => \m3|LessThan1~7_cout\,
	cout => \m3|LessThan1~9_cout\);

-- Location: LCCOMB_X61_Y52_N10
\m3|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~11_cout\ = CARRY((\m3|m1l\(5) & (\m3|m2l\(5) & !\m3|LessThan1~9_cout\)) # (!\m3|m1l\(5) & ((\m3|m2l\(5)) # (!\m3|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(5),
	datab => \m3|m2l\(5),
	datad => VCC,
	cin => \m3|LessThan1~9_cout\,
	cout => \m3|LessThan1~11_cout\);

-- Location: LCCOMB_X61_Y52_N12
\m3|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~13_cout\ = CARRY((\m3|m2l\(6) & (\m3|m1l\(6) & !\m3|LessThan1~11_cout\)) # (!\m3|m2l\(6) & ((\m3|m1l\(6)) # (!\m3|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(6),
	datab => \m3|m1l\(6),
	datad => VCC,
	cin => \m3|LessThan1~11_cout\,
	cout => \m3|LessThan1~13_cout\);

-- Location: LCCOMB_X61_Y52_N14
\m3|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~15_cout\ = CARRY((\m3|m1l\(7) & (\m3|m2l\(7) & !\m3|LessThan1~13_cout\)) # (!\m3|m1l\(7) & ((\m3|m2l\(7)) # (!\m3|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(7),
	datab => \m3|m2l\(7),
	datad => VCC,
	cin => \m3|LessThan1~13_cout\,
	cout => \m3|LessThan1~15_cout\);

-- Location: LCCOMB_X61_Y52_N16
\m3|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~17_cout\ = CARRY((\m3|m1l\(8) & ((!\m3|LessThan1~15_cout\) # (!\m3|m2l\(8)))) # (!\m3|m1l\(8) & (!\m3|m2l\(8) & !\m3|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(8),
	datab => \m3|m2l\(8),
	datad => VCC,
	cin => \m3|LessThan1~15_cout\,
	cout => \m3|LessThan1~17_cout\);

-- Location: LCCOMB_X61_Y52_N18
\m3|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~19_cout\ = CARRY((\m3|m2l\(9) & ((!\m3|LessThan1~17_cout\) # (!\m3|m1l\(9)))) # (!\m3|m2l\(9) & (!\m3|m1l\(9) & !\m3|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(9),
	datab => \m3|m1l\(9),
	datad => VCC,
	cin => \m3|LessThan1~17_cout\,
	cout => \m3|LessThan1~19_cout\);

-- Location: LCCOMB_X61_Y52_N20
\m3|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~21_cout\ = CARRY((\m3|m2l\(10) & (\m3|m1l\(10) & !\m3|LessThan1~19_cout\)) # (!\m3|m2l\(10) & ((\m3|m1l\(10)) # (!\m3|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(10),
	datab => \m3|m1l\(10),
	datad => VCC,
	cin => \m3|LessThan1~19_cout\,
	cout => \m3|LessThan1~21_cout\);

-- Location: LCCOMB_X61_Y52_N22
\m3|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~23_cout\ = CARRY((\m3|m1l\(11) & (\m3|m2l\(11) & !\m3|LessThan1~21_cout\)) # (!\m3|m1l\(11) & ((\m3|m2l\(11)) # (!\m3|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(11),
	datab => \m3|m2l\(11),
	datad => VCC,
	cin => \m3|LessThan1~21_cout\,
	cout => \m3|LessThan1~23_cout\);

-- Location: LCCOMB_X61_Y52_N24
\m3|LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~25_cout\ = CARRY((\m3|m2l\(12) & (\m3|m1l\(12) & !\m3|LessThan1~23_cout\)) # (!\m3|m2l\(12) & ((\m3|m1l\(12)) # (!\m3|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(12),
	datab => \m3|m1l\(12),
	datad => VCC,
	cin => \m3|LessThan1~23_cout\,
	cout => \m3|LessThan1~25_cout\);

-- Location: LCCOMB_X61_Y52_N26
\m3|LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~27_cout\ = CARRY((\m3|m1l\(13) & (\m3|m2l\(13) & !\m3|LessThan1~25_cout\)) # (!\m3|m1l\(13) & ((\m3|m2l\(13)) # (!\m3|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(13),
	datab => \m3|m2l\(13),
	datad => VCC,
	cin => \m3|LessThan1~25_cout\,
	cout => \m3|LessThan1~27_cout\);

-- Location: LCCOMB_X61_Y52_N28
\m3|LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~29_cout\ = CARRY((\m3|m2l\(14) & (\m3|m1l\(14) & !\m3|LessThan1~27_cout\)) # (!\m3|m2l\(14) & ((\m3|m1l\(14)) # (!\m3|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(14),
	datab => \m3|m1l\(14),
	datad => VCC,
	cin => \m3|LessThan1~27_cout\,
	cout => \m3|LessThan1~29_cout\);

-- Location: LCCOMB_X61_Y52_N30
\m3|LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~31_cout\ = CARRY((\m3|m2l\(15) & ((!\m3|LessThan1~29_cout\) # (!\m3|m1l\(15)))) # (!\m3|m2l\(15) & (!\m3|m1l\(15) & !\m3|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(15),
	datab => \m3|m1l\(15),
	datad => VCC,
	cin => \m3|LessThan1~29_cout\,
	cout => \m3|LessThan1~31_cout\);

-- Location: LCCOMB_X61_Y51_N0
\m3|LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~33_cout\ = CARRY((\m3|m1l\(16) & ((!\m3|LessThan1~31_cout\) # (!\m3|m2l\(16)))) # (!\m3|m1l\(16) & (!\m3|m2l\(16) & !\m3|LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(16),
	datab => \m3|m2l\(16),
	datad => VCC,
	cin => \m3|LessThan1~31_cout\,
	cout => \m3|LessThan1~33_cout\);

-- Location: LCCOMB_X61_Y51_N2
\m3|LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~35_cout\ = CARRY((\m3|m1l\(17) & (\m3|m2l\(17) & !\m3|LessThan1~33_cout\)) # (!\m3|m1l\(17) & ((\m3|m2l\(17)) # (!\m3|LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(17),
	datab => \m3|m2l\(17),
	datad => VCC,
	cin => \m3|LessThan1~33_cout\,
	cout => \m3|LessThan1~35_cout\);

-- Location: LCCOMB_X61_Y51_N4
\m3|LessThan1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~37_cout\ = CARRY((\m3|m2l\(18) & (\m3|m1l\(18) & !\m3|LessThan1~35_cout\)) # (!\m3|m2l\(18) & ((\m3|m1l\(18)) # (!\m3|LessThan1~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(18),
	datab => \m3|m1l\(18),
	datad => VCC,
	cin => \m3|LessThan1~35_cout\,
	cout => \m3|LessThan1~37_cout\);

-- Location: LCCOMB_X61_Y51_N6
\m3|LessThan1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~39_cout\ = CARRY((\m3|m2l\(19) & ((!\m3|LessThan1~37_cout\) # (!\m3|m1l\(19)))) # (!\m3|m2l\(19) & (!\m3|m1l\(19) & !\m3|LessThan1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(19),
	datab => \m3|m1l\(19),
	datad => VCC,
	cin => \m3|LessThan1~37_cout\,
	cout => \m3|LessThan1~39_cout\);

-- Location: LCCOMB_X61_Y51_N8
\m3|LessThan1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~41_cout\ = CARRY((\m3|m1l\(20) & ((!\m3|LessThan1~39_cout\) # (!\m3|m2l\(20)))) # (!\m3|m1l\(20) & (!\m3|m2l\(20) & !\m3|LessThan1~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(20),
	datab => \m3|m2l\(20),
	datad => VCC,
	cin => \m3|LessThan1~39_cout\,
	cout => \m3|LessThan1~41_cout\);

-- Location: LCCOMB_X61_Y51_N10
\m3|LessThan1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~43_cout\ = CARRY((\m3|m1l\(21) & (\m3|m2l\(21) & !\m3|LessThan1~41_cout\)) # (!\m3|m1l\(21) & ((\m3|m2l\(21)) # (!\m3|LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(21),
	datab => \m3|m2l\(21),
	datad => VCC,
	cin => \m3|LessThan1~41_cout\,
	cout => \m3|LessThan1~43_cout\);

-- Location: LCCOMB_X61_Y51_N12
\m3|LessThan1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~45_cout\ = CARRY((\m3|m1l\(22) & ((!\m3|LessThan1~43_cout\) # (!\m3|m2l\(22)))) # (!\m3|m1l\(22) & (!\m3|m2l\(22) & !\m3|LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(22),
	datab => \m3|m2l\(22),
	datad => VCC,
	cin => \m3|LessThan1~43_cout\,
	cout => \m3|LessThan1~45_cout\);

-- Location: LCCOMB_X61_Y51_N14
\m3|LessThan1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~47_cout\ = CARRY((\m3|m1l\(23) & (\m3|m2l\(23) & !\m3|LessThan1~45_cout\)) # (!\m3|m1l\(23) & ((\m3|m2l\(23)) # (!\m3|LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(23),
	datab => \m3|m2l\(23),
	datad => VCC,
	cin => \m3|LessThan1~45_cout\,
	cout => \m3|LessThan1~47_cout\);

-- Location: LCCOMB_X61_Y51_N16
\m3|LessThan1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~49_cout\ = CARRY((\m3|m1l\(24) & ((!\m3|LessThan1~47_cout\) # (!\m3|m2l\(24)))) # (!\m3|m1l\(24) & (!\m3|m2l\(24) & !\m3|LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(24),
	datab => \m3|m2l\(24),
	datad => VCC,
	cin => \m3|LessThan1~47_cout\,
	cout => \m3|LessThan1~49_cout\);

-- Location: LCCOMB_X61_Y51_N18
\m3|LessThan1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~51_cout\ = CARRY((\m3|m2l\(25) & ((!\m3|LessThan1~49_cout\) # (!\m3|m1l\(25)))) # (!\m3|m2l\(25) & (!\m3|m1l\(25) & !\m3|LessThan1~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(25),
	datab => \m3|m1l\(25),
	datad => VCC,
	cin => \m3|LessThan1~49_cout\,
	cout => \m3|LessThan1~51_cout\);

-- Location: LCCOMB_X61_Y51_N20
\m3|LessThan1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~53_cout\ = CARRY((\m3|m2l\(26) & (\m3|m1l\(26) & !\m3|LessThan1~51_cout\)) # (!\m3|m2l\(26) & ((\m3|m1l\(26)) # (!\m3|LessThan1~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(26),
	datab => \m3|m1l\(26),
	datad => VCC,
	cin => \m3|LessThan1~51_cout\,
	cout => \m3|LessThan1~53_cout\);

-- Location: LCCOMB_X61_Y51_N22
\m3|LessThan1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~55_cout\ = CARRY((\m3|m2l\(27) & ((!\m3|LessThan1~53_cout\) # (!\m3|m1l\(27)))) # (!\m3|m2l\(27) & (!\m3|m1l\(27) & !\m3|LessThan1~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(27),
	datab => \m3|m1l\(27),
	datad => VCC,
	cin => \m3|LessThan1~53_cout\,
	cout => \m3|LessThan1~55_cout\);

-- Location: LCCOMB_X61_Y51_N24
\m3|LessThan1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~57_cout\ = CARRY((\m3|m1l\(28) & ((!\m3|LessThan1~55_cout\) # (!\m3|m2l\(28)))) # (!\m3|m1l\(28) & (!\m3|m2l\(28) & !\m3|LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(28),
	datab => \m3|m2l\(28),
	datad => VCC,
	cin => \m3|LessThan1~55_cout\,
	cout => \m3|LessThan1~57_cout\);

-- Location: LCCOMB_X61_Y51_N26
\m3|LessThan1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~59_cout\ = CARRY((\m3|m1l\(29) & (\m3|m2l\(29) & !\m3|LessThan1~57_cout\)) # (!\m3|m1l\(29) & ((\m3|m2l\(29)) # (!\m3|LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(29),
	datab => \m3|m2l\(29),
	datad => VCC,
	cin => \m3|LessThan1~57_cout\,
	cout => \m3|LessThan1~59_cout\);

-- Location: LCCOMB_X61_Y51_N28
\m3|LessThan1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~61_cout\ = CARRY((\m3|m2l\(30) & (\m3|m1l\(30) & !\m3|LessThan1~59_cout\)) # (!\m3|m2l\(30) & ((\m3|m1l\(30)) # (!\m3|LessThan1~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(30),
	datab => \m3|m1l\(30),
	datad => VCC,
	cin => \m3|LessThan1~59_cout\,
	cout => \m3|LessThan1~61_cout\);

-- Location: LCCOMB_X61_Y51_N30
\m3|LessThan1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|LessThan1~62_combout\ = (\m3|m2l\(31) & ((\m3|LessThan1~61_cout\) # (!\m3|m1l\(31)))) # (!\m3|m2l\(31) & (\m3|LessThan1~61_cout\ & !\m3|m1l\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(31),
	datad => \m3|m1l\(31),
	cin => \m3|LessThan1~61_cout\,
	combout => \m3|LessThan1~62_combout\);

-- Location: LCCOMB_X61_Y48_N0
\m3|leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|leds~0_combout\ = (\m3|process_0~2_combout\ & (((\m3|LessThan1~62_combout\) # (!\m3|LessThan3~62_combout\)))) # (!\m3|process_0~2_combout\ & (\m3|leds\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|leds\(0),
	datab => \m3|process_0~2_combout\,
	datac => \m3|LessThan3~62_combout\,
	datad => \m3|LessThan1~62_combout\,
	combout => \m3|leds~0_combout\);

-- Location: LCCOMB_X61_Y48_N12
\m3|leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|leds~1_combout\ = (\m3|process_0~2_combout\ & (!\m3|LessThan0~62_combout\ & ((\m3|LessThan2~62_combout\) # (\m3|leds~0_combout\)))) # (!\m3|process_0~2_combout\ & (((\m3|leds~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~2_combout\,
	datab => \m3|LessThan2~62_combout\,
	datac => \m3|LessThan0~62_combout\,
	datad => \m3|leds~0_combout\,
	combout => \m3|leds~1_combout\);

-- Location: FF_X61_Y48_N13
\m3|leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|leds~1_combout\,
	sclr => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|leds\(0));

-- Location: LCCOMB_X61_Y48_N2
\m3|leds~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|leds~2_combout\ = (\m3|process_0~2_combout\ & ((!\m3|LessThan1~62_combout\))) # (!\m3|process_0~2_combout\ & (\m3|leds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|leds\(1),
	datac => \m3|process_0~2_combout\,
	datad => \m3|LessThan1~62_combout\,
	combout => \m3|leds~2_combout\);

-- Location: LCCOMB_X61_Y48_N30
\m3|leds~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m3|leds~3_combout\ = (\m3|process_0~2_combout\ & ((\m3|LessThan0~62_combout\) # ((!\m3|LessThan2~62_combout\ & \m3|leds~2_combout\)))) # (!\m3|process_0~2_combout\ & (((\m3|leds~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|process_0~2_combout\,
	datab => \m3|LessThan2~62_combout\,
	datac => \m3|LessThan0~62_combout\,
	datad => \m3|leds~2_combout\,
	combout => \m3|leds~3_combout\);

-- Location: FF_X61_Y48_N31
\m3|leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \m13|clk_110Hz_temp~clkctrl_outclk\,
	d => \m3|leds~3_combout\,
	sclr => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m3|leds\(1));

-- Location: LCCOMB_X77_Y42_N8
\m11|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[0]~0_combout\ = (!\m2|l\(3) & (!\m2|l\(1) & (\m2|l\(2) $ (\m2|l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(3),
	datac => \m2|l\(1),
	datad => \m2|l\(0),
	combout => \m11|output[0]~0_combout\);

-- Location: LCCOMB_X77_Y40_N16
\m11|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[1]~1_combout\ = (\m2|l\(2) & (!\m2|l\(3) & (\m2|l\(0) $ (\m2|l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(0),
	datac => \m2|l\(1),
	datad => \m2|l\(3),
	combout => \m11|output[1]~1_combout\);

-- Location: LCCOMB_X77_Y40_N14
\m11|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|Equal8~0_combout\ = (!\m2|l\(2) & (!\m2|l\(0) & (\m2|l\(1) & !\m2|l\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(0),
	datac => \m2|l\(1),
	datad => \m2|l\(3),
	combout => \m11|Equal8~0_combout\);

-- Location: LCCOMB_X77_Y42_N14
\m11|output[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[3]~2_combout\ = (!\m2|l\(3) & ((\m2|l\(2) & (\m2|l\(1) $ (!\m2|l\(0)))) # (!\m2|l\(2) & (!\m2|l\(1) & \m2|l\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(3),
	datac => \m2|l\(1),
	datad => \m2|l\(0),
	combout => \m11|output[3]~2_combout\);

-- Location: LCCOMB_X77_Y42_N16
\m11|output[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[4]~3_combout\ = (\m2|l\(0)) # ((\m2|l\(1) & ((\m2|l\(3)))) # (!\m2|l\(1) & (\m2|l\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(3),
	datac => \m2|l\(1),
	datad => \m2|l\(0),
	combout => \m11|output[4]~3_combout\);

-- Location: LCCOMB_X77_Y42_N6
\m11|output[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[5]~4_combout\ = (!\m2|l\(3) & ((\m2|l\(2) & (\m2|l\(1) & \m2|l\(0))) # (!\m2|l\(2) & ((\m2|l\(1)) # (\m2|l\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(3),
	datac => \m2|l\(1),
	datad => \m2|l\(0),
	combout => \m11|output[5]~4_combout\);

-- Location: LCCOMB_X77_Y42_N12
\m11|output[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m11|output[6]~5_combout\ = (!\m2|l\(3) & ((\m2|l\(2) & (\m2|l\(1) & \m2|l\(0))) # (!\m2|l\(2) & (!\m2|l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|l\(2),
	datab => \m2|l\(3),
	datac => \m2|l\(1),
	datad => \m2|l\(0),
	combout => \m11|output[6]~5_combout\);

-- Location: LCCOMB_X59_Y49_N24
\m12|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[0]~0_combout\ = (!\m2|m\(3) & (!\m2|m\(1) & (\m2|m\(0) $ (\m2|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[0]~0_combout\);

-- Location: LCCOMB_X59_Y49_N18
\m12|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[1]~1_combout\ = (!\m2|m\(3) & (\m2|m\(2) & (\m2|m\(0) $ (\m2|m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[1]~1_combout\);

-- Location: LCCOMB_X59_Y49_N12
\m12|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[2]~2_combout\ = (!\m2|m\(0) & (!\m2|m\(3) & (\m2|m\(1) & !\m2|m\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[2]~2_combout\);

-- Location: LCCOMB_X59_Y49_N2
\m12|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[3]~3_combout\ = (!\m2|m\(3) & ((\m2|m\(0) & (\m2|m\(1) $ (!\m2|m\(2)))) # (!\m2|m\(0) & (!\m2|m\(1) & \m2|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[3]~3_combout\);

-- Location: LCCOMB_X59_Y49_N8
\m12|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[4]~4_combout\ = (\m2|m\(0)) # ((\m2|m\(1) & (\m2|m\(3))) # (!\m2|m\(1) & ((\m2|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[4]~4_combout\);

-- Location: LCCOMB_X59_Y49_N26
\m12|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[5]~5_combout\ = (!\m2|m\(3) & ((\m2|m\(0) & ((\m2|m\(1)) # (!\m2|m\(2)))) # (!\m2|m\(0) & (\m2|m\(1) & !\m2|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[5]~5_combout\);

-- Location: LCCOMB_X59_Y49_N20
\m12|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m12|output[6]~6_combout\ = (!\m2|m\(3) & ((\m2|m\(1) & (\m2|m\(0) & \m2|m\(2))) # (!\m2|m\(1) & ((!\m2|m\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|m\(0),
	datab => \m2|m\(3),
	datac => \m2|m\(1),
	datad => \m2|m\(2),
	combout => \m12|output[6]~6_combout\);

-- Location: LCCOMB_X60_Y48_N12
\m8|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[0]~0_combout\ = (!\m3|m2r\(1) & (!\m3|m2r\(3) & (\m3|m2r\(0) $ (\m3|m2r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(0),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(2),
	datad => \m3|m2r\(3),
	combout => \m8|output[0]~0_combout\);

-- Location: LCCOMB_X61_Y48_N6
\m8|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[1]~1_combout\ = (\m3|m2r\(2) & (!\m3|m2r\(3) & (\m3|m2r\(1) $ (\m3|m2r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(2),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(3),
	datad => \m3|m2r\(0),
	combout => \m8|output[1]~1_combout\);

-- Location: LCCOMB_X60_Y48_N10
\m8|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[2]~2_combout\ = (!\m3|m2r\(0) & (\m3|m2r\(1) & (!\m3|m2r\(2) & !\m3|m2r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(0),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(2),
	datad => \m3|m2r\(3),
	combout => \m8|output[2]~2_combout\);

-- Location: LCCOMB_X61_Y48_N20
\m8|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[3]~3_combout\ = (!\m3|m2r\(3) & ((\m3|m2r\(2) & (\m3|m2r\(1) $ (!\m3|m2r\(0)))) # (!\m3|m2r\(2) & (!\m3|m2r\(1) & \m3|m2r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(2),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(3),
	datad => \m3|m2r\(0),
	combout => \m8|output[3]~3_combout\);

-- Location: LCCOMB_X61_Y48_N10
\m8|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[4]~4_combout\ = (\m3|m2r\(0)) # ((\m3|m2r\(1) & ((\m3|m2r\(3)))) # (!\m3|m2r\(1) & (\m3|m2r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(2),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(3),
	datad => \m3|m2r\(0),
	combout => \m8|output[4]~4_combout\);

-- Location: LCCOMB_X60_Y48_N4
\m8|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[5]~5_combout\ = (!\m3|m2r\(3) & ((\m3|m2r\(0) & ((\m3|m2r\(1)) # (!\m3|m2r\(2)))) # (!\m3|m2r\(0) & (\m3|m2r\(1) & !\m3|m2r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(0),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(2),
	datad => \m3|m2r\(3),
	combout => \m8|output[5]~5_combout\);

-- Location: LCCOMB_X61_Y45_N4
\m8|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m8|output[6]~6_combout\ = (!\m3|m2r\(3) & ((\m3|m2r\(2) & (\m3|m2r\(1) & \m3|m2r\(0))) # (!\m3|m2r\(2) & (!\m3|m2r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2r\(2),
	datab => \m3|m2r\(1),
	datac => \m3|m2r\(0),
	datad => \m3|m2r\(3),
	combout => \m8|output[6]~6_combout\);

-- Location: LCCOMB_X65_Y53_N28
\m7|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[0]~0_combout\ = (!\m3|m2l\(3) & (!\m3|m2l\(1) & (\m3|m2l\(0) $ (\m3|m2l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[0]~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\m7|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[1]~1_combout\ = (!\m3|m2l\(3) & (\m3|m2l\(2) & (\m3|m2l\(0) $ (\m3|m2l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[1]~1_combout\);

-- Location: LCCOMB_X65_Y53_N20
\m7|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[2]~2_combout\ = (!\m3|m2l\(3) & (!\m3|m2l\(0) & (!\m3|m2l\(2) & \m3|m2l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[2]~2_combout\);

-- Location: LCCOMB_X65_Y53_N26
\m7|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[3]~3_combout\ = (!\m3|m2l\(3) & ((\m3|m2l\(0) & (\m3|m2l\(2) $ (!\m3|m2l\(1)))) # (!\m3|m2l\(0) & (\m3|m2l\(2) & !\m3|m2l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[3]~3_combout\);

-- Location: LCCOMB_X65_Y53_N24
\m7|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[4]~4_combout\ = (\m3|m2l\(0)) # ((\m3|m2l\(1) & (\m3|m2l\(3))) # (!\m3|m2l\(1) & ((\m3|m2l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[4]~4_combout\);

-- Location: LCCOMB_X65_Y53_N10
\m7|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[5]~5_combout\ = (!\m3|m2l\(3) & ((\m3|m2l\(0) & ((\m3|m2l\(1)) # (!\m3|m2l\(2)))) # (!\m3|m2l\(0) & (!\m3|m2l\(2) & \m3|m2l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[5]~5_combout\);

-- Location: LCCOMB_X65_Y53_N12
\m7|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m7|output[6]~6_combout\ = (!\m3|m2l\(3) & ((\m3|m2l\(2) & (\m3|m2l\(0) & \m3|m2l\(1))) # (!\m3|m2l\(2) & ((!\m3|m2l\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m2l\(3),
	datab => \m3|m2l\(0),
	datac => \m3|m2l\(2),
	datad => \m3|m2l\(1),
	combout => \m7|output[6]~6_combout\);

-- Location: LCCOMB_X59_Y45_N30
\m10|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[0]~0_combout\ = (!\m3|m1r\(1) & (!\m3|m1r\(3) & (\m3|m1r\(2) $ (\m3|m1r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[0]~0_combout\);

-- Location: LCCOMB_X59_Y45_N20
\m10|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[1]~1_combout\ = (!\m3|m1r\(3) & (\m3|m1r\(2) & (\m3|m1r\(1) $ (\m3|m1r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[1]~1_combout\);

-- Location: LCCOMB_X59_Y45_N26
\m10|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[2]~2_combout\ = (\m3|m1r\(1) & (!\m3|m1r\(3) & (!\m3|m1r\(2) & !\m3|m1r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[2]~2_combout\);

-- Location: LCCOMB_X59_Y45_N28
\m10|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[3]~3_combout\ = (!\m3|m1r\(3) & ((\m3|m1r\(1) & (\m3|m1r\(2) & \m3|m1r\(0))) # (!\m3|m1r\(1) & (\m3|m1r\(2) $ (\m3|m1r\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[3]~3_combout\);

-- Location: LCCOMB_X59_Y45_N22
\m10|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[4]~4_combout\ = (\m3|m1r\(0)) # ((\m3|m1r\(1) & (\m3|m1r\(3))) # (!\m3|m1r\(1) & ((\m3|m1r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[4]~4_combout\);

-- Location: LCCOMB_X59_Y45_N24
\m10|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[5]~5_combout\ = (!\m3|m1r\(3) & ((\m3|m1r\(1) & ((\m3|m1r\(0)) # (!\m3|m1r\(2)))) # (!\m3|m1r\(1) & (!\m3|m1r\(2) & \m3|m1r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[5]~5_combout\);

-- Location: LCCOMB_X59_Y45_N18
\m10|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m10|output[6]~6_combout\ = (!\m3|m1r\(3) & ((\m3|m1r\(1) & (\m3|m1r\(2) & \m3|m1r\(0))) # (!\m3|m1r\(1) & (!\m3|m1r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1r\(1),
	datab => \m3|m1r\(3),
	datac => \m3|m1r\(2),
	datad => \m3|m1r\(0),
	combout => \m10|output[6]~6_combout\);

-- Location: LCCOMB_X70_Y52_N24
\m9|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[0]~0_combout\ = (!\m3|m1l\(3) & (!\m3|m1l\(1) & (\m3|m1l\(0) $ (\m3|m1l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[0]~0_combout\);

-- Location: LCCOMB_X70_Y52_N2
\m9|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[1]~1_combout\ = (!\m3|m1l\(3) & (\m3|m1l\(2) & (\m3|m1l\(0) $ (\m3|m1l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[1]~1_combout\);

-- Location: LCCOMB_X70_Y52_N4
\m9|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[2]~2_combout\ = (!\m3|m1l\(0) & (!\m3|m1l\(3) & (\m3|m1l\(1) & !\m3|m1l\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[2]~2_combout\);

-- Location: LCCOMB_X70_Y52_N10
\m9|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[3]~3_combout\ = (!\m3|m1l\(3) & ((\m3|m1l\(0) & (\m3|m1l\(1) $ (!\m3|m1l\(2)))) # (!\m3|m1l\(0) & (!\m3|m1l\(1) & \m3|m1l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[3]~3_combout\);

-- Location: LCCOMB_X70_Y52_N20
\m9|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[4]~4_combout\ = (\m3|m1l\(0)) # ((\m3|m1l\(1) & (\m3|m1l\(3))) # (!\m3|m1l\(1) & ((\m3|m1l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[4]~4_combout\);

-- Location: LCCOMB_X70_Y52_N30
\m9|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[5]~5_combout\ = (!\m3|m1l\(3) & ((\m3|m1l\(0) & ((\m3|m1l\(1)) # (!\m3|m1l\(2)))) # (!\m3|m1l\(0) & (\m3|m1l\(1) & !\m3|m1l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[5]~5_combout\);

-- Location: LCCOMB_X70_Y52_N12
\m9|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \m9|output[6]~6_combout\ = (!\m3|m1l\(3) & ((\m3|m1l\(1) & (\m3|m1l\(0) & \m3|m1l\(2))) # (!\m3|m1l\(1) & ((!\m3|m1l\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|m1l\(0),
	datab => \m3|m1l\(3),
	datac => \m3|m1l\(1),
	datad => \m3|m1l\(2),
	combout => \m9|output[6]~6_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_timer0(0) <= \timer0[0]~output_o\;

ww_timer0(1) <= \timer0[1]~output_o\;

ww_timer0(2) <= \timer0[2]~output_o\;

ww_timer0(3) <= \timer0[3]~output_o\;

ww_timer0(4) <= \timer0[4]~output_o\;

ww_timer0(5) <= \timer0[5]~output_o\;

ww_timer0(6) <= \timer0[6]~output_o\;

ww_timer1(0) <= \timer1[0]~output_o\;

ww_timer1(1) <= \timer1[1]~output_o\;

ww_timer1(2) <= \timer1[2]~output_o\;

ww_timer1(3) <= \timer1[3]~output_o\;

ww_timer1(4) <= \timer1[4]~output_o\;

ww_timer1(5) <= \timer1[5]~output_o\;

ww_timer1(6) <= \timer1[6]~output_o\;

ww_counter_t1(0) <= \counter_t1[0]~output_o\;

ww_counter_t1(1) <= \counter_t1[1]~output_o\;

ww_counter_t1(2) <= \counter_t1[2]~output_o\;

ww_counter_t1(3) <= \counter_t1[3]~output_o\;

ww_counter_t1(4) <= \counter_t1[4]~output_o\;

ww_counter_t1(5) <= \counter_t1[5]~output_o\;

ww_counter_t1(6) <= \counter_t1[6]~output_o\;

ww_counter_t1(7) <= \counter_t1[7]~output_o\;

ww_counter_t1(8) <= \counter_t1[8]~output_o\;

ww_counter_t1(9) <= \counter_t1[9]~output_o\;

ww_counter_t1(10) <= \counter_t1[10]~output_o\;

ww_counter_t1(11) <= \counter_t1[11]~output_o\;

ww_counter_t1(12) <= \counter_t1[12]~output_o\;

ww_counter_t1(13) <= \counter_t1[13]~output_o\;

ww_counter_t2(0) <= \counter_t2[0]~output_o\;

ww_counter_t2(1) <= \counter_t2[1]~output_o\;

ww_counter_t2(2) <= \counter_t2[2]~output_o\;

ww_counter_t2(3) <= \counter_t2[3]~output_o\;

ww_counter_t2(4) <= \counter_t2[4]~output_o\;

ww_counter_t2(5) <= \counter_t2[5]~output_o\;

ww_counter_t2(6) <= \counter_t2[6]~output_o\;

ww_counter_t2(7) <= \counter_t2[7]~output_o\;

ww_counter_t2(8) <= \counter_t2[8]~output_o\;

ww_counter_t2(9) <= \counter_t2[9]~output_o\;

ww_counter_t2(10) <= \counter_t2[10]~output_o\;

ww_counter_t2(11) <= \counter_t2[11]~output_o\;

ww_counter_t2(12) <= \counter_t2[12]~output_o\;

ww_counter_t2(13) <= \counter_t2[13]~output_o\;
END structure;


