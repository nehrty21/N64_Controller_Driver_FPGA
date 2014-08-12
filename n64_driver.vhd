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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Fri Apr 04 23:58:24 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY n64_driver IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		serial_in :  IN  STD_LOGIC;
		serial_out :  OUT  STD_LOGIC;
		LEDR :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END n64_driver;

ARCHITECTURE bdf_type OF n64_driver IS 

COMPONENT polling
GENERIC (J : INTEGER;
			K : INTEGER;
			L : INTEGER;
			M : INTEGER;
			N : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 done_polling : OUT STD_LOGIC;
		 signal_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sampling
GENERIC (bit_count : INTEGER;
			sampling : INTEGER
			);
	PORT(data_in : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 done_polling : IN STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	data_out :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	done_polling :  STD_LOGIC;


BEGIN 



b2v_inst : polling
GENERIC MAP(J => 15000,
			K => 200,
			L => 50,
			M => 150,
			N => 1800
			)
PORT MAP(clk => CLOCK_50,
		 done_polling => done_polling,
		 signal_out => serial_out);


b2v_inst6 : sampling
GENERIC MAP(bit_count => 200,
			sampling => 150
			)
PORT MAP(data_in => serial_in,
		 clk => CLOCK_50,
		 done_polling => done_polling,
		 data_out => data_out);

LEDR(15 DOWNTO 0) <= data_out(31 DOWNTO 16);

END bdf_type;