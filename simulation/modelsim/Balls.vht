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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/06/2019 00:01:21"
                                                            
-- Vhdl Test Bench template for design  :  Balls
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Balls_vhd_tst IS
END Balls_vhd_tst;
ARCHITECTURE Balls_arch OF Balls_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c1 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL counter_t1 : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL counter_t2 : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL leds : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p1 : STD_LOGIC;
SIGNAL p2 : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL timer0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL timer1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Balls
	PORT (
	c1 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	counter_t1 : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	counter_t2 : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	leds : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	p1 : IN STD_LOGIC;
	p2 : IN STD_LOGIC;
	start : IN STD_LOGIC;
	timer0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	timer1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Balls
	PORT MAP (
-- list connections between master ports and signals
	c1 => c1,
	clk => clk,
	counter_t1 => counter_t1,
	counter_t2 => counter_t2,
	leds => leds,
	p1 => p1,
	p2 => p2,
	start => start,
	timer0 => timer0,
	timer1 => timer1
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Balls_arch;
