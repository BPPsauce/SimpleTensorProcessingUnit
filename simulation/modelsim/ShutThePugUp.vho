-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/07/2020 17:18:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MMU IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	hardReset : IN std_logic;
	ld : IN std_logic;
	ld_w : IN std_logic;
	stall : IN std_logic;
	a0 : IN std_logic_vector(7 DOWNTO 0);
	a1 : IN std_logic_vector(7 DOWNTO 0);
	a2 : IN std_logic_vector(7 DOWNTO 0);
	w0 : IN std_logic_vector(7 DOWNTO 0);
	w1 : IN std_logic_vector(7 DOWNTO 0);
	w2 : IN std_logic_vector(7 DOWNTO 0);
	y0 : BUFFER std_logic_vector(7 DOWNTO 0);
	y1 : BUFFER std_logic_vector(7 DOWNTO 0);
	y2 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MMU;

-- Design Ports Information
-- stall	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[0]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[1]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[0]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[2]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[7]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[6]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hardReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[2]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[3]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[4]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[5]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[7]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_w	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[5]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2[7]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[5]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MMU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_hardReset : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_ld_w : std_logic;
SIGNAL ww_stall : std_logic;
SIGNAL ww_a0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \hardReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PE7|resetSig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \stall~input_o\ : std_logic;
SIGNAL \y0[0]~output_o\ : std_logic;
SIGNAL \y0[1]~output_o\ : std_logic;
SIGNAL \y0[2]~output_o\ : std_logic;
SIGNAL \y0[3]~output_o\ : std_logic;
SIGNAL \y0[4]~output_o\ : std_logic;
SIGNAL \y0[5]~output_o\ : std_logic;
SIGNAL \y0[6]~output_o\ : std_logic;
SIGNAL \y0[7]~output_o\ : std_logic;
SIGNAL \y1[0]~output_o\ : std_logic;
SIGNAL \y1[1]~output_o\ : std_logic;
SIGNAL \y1[2]~output_o\ : std_logic;
SIGNAL \y1[3]~output_o\ : std_logic;
SIGNAL \y1[4]~output_o\ : std_logic;
SIGNAL \y1[5]~output_o\ : std_logic;
SIGNAL \y1[6]~output_o\ : std_logic;
SIGNAL \y1[7]~output_o\ : std_logic;
SIGNAL \y2[0]~output_o\ : std_logic;
SIGNAL \y2[1]~output_o\ : std_logic;
SIGNAL \y2[2]~output_o\ : std_logic;
SIGNAL \y2[3]~output_o\ : std_logic;
SIGNAL \y2[4]~output_o\ : std_logic;
SIGNAL \y2[5]~output_o\ : std_logic;
SIGNAL \y2[6]~output_o\ : std_logic;
SIGNAL \y2[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \hardReset~input_o\ : std_logic;
SIGNAL \hardReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld_w~input_o\ : std_logic;
SIGNAL \a2[0]~input_o\ : std_logic;
SIGNAL \a2[1]~input_o\ : std_logic;
SIGNAL \a2[2]~input_o\ : std_logic;
SIGNAL \a2[3]~input_o\ : std_logic;
SIGNAL \a2[4]~input_o\ : std_logic;
SIGNAL \a2[5]~input_o\ : std_logic;
SIGNAL \a2[6]~input_o\ : std_logic;
SIGNAL \a2[7]~input_o\ : std_logic;
SIGNAL \w2[0]~input_o\ : std_logic;
SIGNAL \w13[0]~feeder_combout\ : std_logic;
SIGNAL \state.col0~q\ : std_logic;
SIGNAL \state.col1~q\ : std_logic;
SIGNAL \state.col2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \w13[7]~0_combout\ : std_logic;
SIGNAL \w2[1]~input_o\ : std_logic;
SIGNAL \w13[1]~feeder_combout\ : std_logic;
SIGNAL \w2[2]~input_o\ : std_logic;
SIGNAL \w13[2]~feeder_combout\ : std_logic;
SIGNAL \w2[3]~input_o\ : std_logic;
SIGNAL \w13[3]~feeder_combout\ : std_logic;
SIGNAL \w2[4]~input_o\ : std_logic;
SIGNAL \w13[4]~feeder_combout\ : std_logic;
SIGNAL \w2[5]~input_o\ : std_logic;
SIGNAL \w13[5]~feeder_combout\ : std_logic;
SIGNAL \w2[6]~input_o\ : std_logic;
SIGNAL \w13[6]~feeder_combout\ : std_logic;
SIGNAL \w2[7]~input_o\ : std_logic;
SIGNAL \w13[7]~feeder_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[4]~input_o\ : std_logic;
SIGNAL \a0[5]~input_o\ : std_logic;
SIGNAL \a0[6]~input_o\ : std_logic;
SIGNAL \a0[7]~input_o\ : std_logic;
SIGNAL \w0[0]~input_o\ : std_logic;
SIGNAL \w11[0]~feeder_combout\ : std_logic;
SIGNAL \w0[1]~input_o\ : std_logic;
SIGNAL \w11[1]~feeder_combout\ : std_logic;
SIGNAL \w0[2]~input_o\ : std_logic;
SIGNAL \w11[2]~feeder_combout\ : std_logic;
SIGNAL \w0[3]~input_o\ : std_logic;
SIGNAL \w11[3]~feeder_combout\ : std_logic;
SIGNAL \w0[4]~input_o\ : std_logic;
SIGNAL \w11[4]~feeder_combout\ : std_logic;
SIGNAL \w0[5]~input_o\ : std_logic;
SIGNAL \w11[5]~feeder_combout\ : std_logic;
SIGNAL \w0[6]~input_o\ : std_logic;
SIGNAL \w11[6]~feeder_combout\ : std_logic;
SIGNAL \w0[7]~input_o\ : std_logic;
SIGNAL \w11[7]~feeder_combout\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE1|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE1|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE1|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE1|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE1|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \PE7|resetSig~combout\ : std_logic;
SIGNAL \PE7|resetSig~clkctrl_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \a1[0]~input_o\ : std_logic;
SIGNAL \a1[1]~input_o\ : std_logic;
SIGNAL \a1[2]~input_o\ : std_logic;
SIGNAL \a1[3]~input_o\ : std_logic;
SIGNAL \a1[4]~input_o\ : std_logic;
SIGNAL \a1[5]~input_o\ : std_logic;
SIGNAL \a1[6]~input_o\ : std_logic;
SIGNAL \a1[7]~input_o\ : std_logic;
SIGNAL \w1[0]~input_o\ : std_logic;
SIGNAL \w12[0]~feeder_combout\ : std_logic;
SIGNAL \w1[1]~input_o\ : std_logic;
SIGNAL \w1[2]~input_o\ : std_logic;
SIGNAL \w12[2]~feeder_combout\ : std_logic;
SIGNAL \w1[3]~input_o\ : std_logic;
SIGNAL \w1[4]~input_o\ : std_logic;
SIGNAL \w1[5]~input_o\ : std_logic;
SIGNAL \w12[5]~feeder_combout\ : std_logic;
SIGNAL \w1[6]~input_o\ : std_logic;
SIGNAL \w1[7]~input_o\ : std_logic;
SIGNAL \w12[7]~feeder_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE1|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE4|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE4|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE4|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE4|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE4|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE4|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE7|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE7|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE7|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE7|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE7|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE7|BigMAC|partial_8[7]~8_combout\ : std_logic;
SIGNAL \PE7|A|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PE7|A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \w23[0]~feeder_combout\ : std_logic;
SIGNAL \w23[1]~feeder_combout\ : std_logic;
SIGNAL \w23[2]~feeder_combout\ : std_logic;
SIGNAL \w23[3]~feeder_combout\ : std_logic;
SIGNAL \w23[4]~feeder_combout\ : std_logic;
SIGNAL \w23[5]~feeder_combout\ : std_logic;
SIGNAL \w23[6]~feeder_combout\ : std_logic;
SIGNAL \w23[7]~feeder_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \w22[0]~feeder_combout\ : std_logic;
SIGNAL \w22[3]~feeder_combout\ : std_logic;
SIGNAL \w22[5]~feeder_combout\ : std_logic;
SIGNAL \w22[7]~feeder_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE1|A|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PE1|A|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PE1|A|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PE1|A|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PE1|A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \w21[0]~feeder_combout\ : std_logic;
SIGNAL \w21[1]~feeder_combout\ : std_logic;
SIGNAL \w21[2]~feeder_combout\ : std_logic;
SIGNAL \w21[3]~feeder_combout\ : std_logic;
SIGNAL \w21[4]~feeder_combout\ : std_logic;
SIGNAL \w21[5]~feeder_combout\ : std_logic;
SIGNAL \w21[6]~feeder_combout\ : std_logic;
SIGNAL \w21[7]~feeder_combout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE2|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE2|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE2|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE2|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE2|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE2|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE5|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE5|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE5|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE5|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE5|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[7]~8_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[6]~7_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[5]~6_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE5|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE8|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE8|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE8|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE8|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE8|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE8|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[3]~4_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[4]~5_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[4]~6_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[5]~7_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[5]~8_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[6]~9_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[7]~10_combout\ : std_logic;
SIGNAL \PE8|BigMAC|partial_8[7]~11_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \w33[1]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \w33[2]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \w33[4]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[4]~feeder_combout\ : std_logic;
SIGNAL \w33[5]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \w33[7]~feeder_combout\ : std_logic;
SIGNAL \PE9|Wreg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE6|Wreg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \w32[1]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \w32[2]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \w32[3]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \w32[4]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[4]~feeder_combout\ : std_logic;
SIGNAL \w32[5]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[5]~feeder_combout\ : std_logic;
SIGNAL \w32[6]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \w32[7]~feeder_combout\ : std_logic;
SIGNAL \PE6|Wreg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \w31[0]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \w31[1]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \w31[3]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[4]~feeder_combout\ : std_logic;
SIGNAL \w31[5]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[5]~feeder_combout\ : std_logic;
SIGNAL \w31[6]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PE3|Wreg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE3|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE3|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE3|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE3|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE3|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE3|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE6|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE6|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE6|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE6|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE6|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \PE6|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[0]~1\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[1]~3\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[2]~5\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[3]~7\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[4]~9\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[5]~11\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[6]~13\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[7]~15\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[8]~17\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[9]~19\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[10]~20_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[9]~18_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[10]~21\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[11]~22_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[8]~16_combout\ : std_logic;
SIGNAL \PE9|BigMAC|LessThan1~3_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[0]~0_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[1]~2_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[3]~6_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[2]~4_combout\ : std_logic;
SIGNAL \PE9|BigMAC|LessThan1~0_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[7]~14_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[6]~12_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[5]~10_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[4]~8_combout\ : std_logic;
SIGNAL \PE9|BigMAC|LessThan1~1_combout\ : std_logic;
SIGNAL \PE9|BigMAC|LessThan1~2_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[11]~23\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[12]~25\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[13]~26_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[12]~24_combout\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[13]~27\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[14]~29\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[15]~30_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_16[14]~28_combout\ : std_logic;
SIGNAL \PE9|BigMAC|LessThan1~4_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[0]~0_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[1]~1_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[2]~2_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[3]~3_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[4]~4_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[5]~5_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[6]~6_combout\ : std_logic;
SIGNAL \PE9|BigMAC|partial_8[7]~7_combout\ : std_logic;
SIGNAL \PE3|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE7|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE1|A|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE4|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w22 : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE8|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE9|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE2|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE5|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE6|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE1|Y|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w21 : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE7|A|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE9|Wreg|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w13 : std_logic_vector(7 DOWNTO 0);
SIGNAL w23 : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE3|Wreg|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE4|A|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w33 : std_logic_vector(7 DOWNTO 0);
SIGNAL \PE6|Wreg|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w12 : std_logic_vector(7 DOWNTO 0);
SIGNAL w32 : std_logic_vector(7 DOWNTO 0);
SIGNAL w11 : std_logic_vector(7 DOWNTO 0);
SIGNAL w31 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_hardReset~input_o\ : std_logic;
SIGNAL \PE7|ALT_INV_resetSig~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_hardReset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_hardReset <= hardReset;
ww_ld <= ld;
ww_ld_w <= ld_w;
ww_stall <= stall;
ww_a0 <= a0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_w0 <= w0;
ww_w1 <= w1;
ww_w2 <= w2;
y0 <= ww_y0;
y1 <= ww_y1;
y2 <= ww_y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE7|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE7|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE8|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE8|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE9|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE9|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a2[7]~input_o\ & \a2[6]~input_o\ & \a2[5]~input_o\ & \a2[4]~input_o\ & \a2[3]~input_o\ & \a2[2]~input_o\ & \a2[1]~input_o\ & \a2[0]~input_o\ & gnd);

\PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w13(7) & w13(6) & w13(5) & w13(4) & w13(3) & w13(2) & w13(1) & w13(0) & gnd);

\PE7|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE7|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE4|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE4|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE7|A|Q\(7) & \PE7|A|Q\(6) & \PE7|A|Q\(5) & \PE7|A|Q\(4) & \PE7|A|Q\(3) & \PE7|A|Q\(2) & \PE7|A|Q\(1) & \PE7|A|Q\(0) & gnd);

\PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w23(7) & w23(6) & w23(5) & w23(4) & w23(3) & w23(2) & w23(1) & w23(0) & gnd);

\PE8|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE8|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE5|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE5|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE7|A|Q\(7) & \PE7|A|Q\(6) & \PE7|A|Q\(5) & \PE7|A|Q\(4) & \PE7|A|Q\(3) & \PE7|A|Q\(2) & \PE7|A|Q\(1) & \PE7|A|Q\(0) & gnd);

\PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\PE9|Wreg|Q\(7) & \PE9|Wreg|Q\(6) & \PE9|Wreg|Q\(5) & \PE9|Wreg|Q\(4) & \PE9|Wreg|Q\(3) & \PE9|Wreg|Q\(2) & \PE9|Wreg|Q\(1) & \PE9|Wreg|Q\(0) & gnd);

\PE9|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE9|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE6|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE6|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a1[7]~input_o\ & \a1[6]~input_o\ & \a1[5]~input_o\ & \a1[4]~input_o\ & \a1[3]~input_o\ & \a1[2]~input_o\ & \a1[1]~input_o\ & \a1[0]~input_o\ & gnd);

\PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w12(7) & w12(6) & w12(5) & w12(4) & w12(3) & w12(2) & w12(1) & w12(0) & gnd);

\PE4|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE4|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE1|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE1|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE4|A|Q\(7) & \PE4|A|Q\(6) & \PE4|A|Q\(5) & \PE4|A|Q\(4) & \PE4|A|Q\(3) & \PE4|A|Q\(2) & \PE4|A|Q\(1) & \PE4|A|Q\(0) & gnd);

\PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w22(7) & w22(6) & w22(5) & w22(4) & w22(3) & w22(2) & w22(1) & w22(0) & gnd);

\PE5|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE5|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE2|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE2|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE4|A|Q\(7) & \PE4|A|Q\(6) & \PE4|A|Q\(5) & \PE4|A|Q\(4) & \PE4|A|Q\(3) & \PE4|A|Q\(2) & \PE4|A|Q\(1) & \PE4|A|Q\(0) & gnd);

\PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\PE6|Wreg|Q\(7) & \PE6|Wreg|Q\(6) & \PE6|Wreg|Q\(5) & \PE6|Wreg|Q\(4) & \PE6|Wreg|Q\(3) & \PE6|Wreg|Q\(2) & \PE6|Wreg|Q\(1) & \PE6|Wreg|Q\(0) & gnd);

\PE6|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE6|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~1\ & \PE3|BigMAC|Mult0|auto_generated|mac_mult1~0\);

\PE3|BigMAC|Mult0|auto_generated|mac_out2~0\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~1\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a0[7]~input_o\ & \a0[6]~input_o\ & \a0[5]~input_o\ & \a0[4]~input_o\ & \a0[3]~input_o\ & \a0[2]~input_o\ & \a0[1]~input_o\ & \a0[0]~input_o\ & gnd);

\PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w11(7) & w11(6) & w11(5) & w11(4) & w11(3) & w11(2) & w11(1) & w11(0) & gnd);

\PE1|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE1|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE1|A|Q\(7) & \PE1|A|Q\(6) & \PE1|A|Q\(5) & \PE1|A|Q\(4) & \PE1|A|Q\(3) & \PE1|A|Q\(2) & \PE1|A|Q\(1) & \PE1|A|Q\(0) & gnd);

\PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (w21(7) & w21(6) & w21(5) & w21(4) & w21(3) & w21(2) & w21(1) & w21(0) & gnd);

\PE2|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE2|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\PE1|A|Q\(7) & \PE1|A|Q\(6) & \PE1|A|Q\(5) & \PE1|A|Q\(4) & \PE1|A|Q\(3) & \PE1|A|Q\(2) & \PE1|A|Q\(1) & \PE1|A|Q\(0) & gnd);

\PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\PE3|Wreg|Q\(7) & \PE3|Wreg|Q\(6) & \PE3|Wreg|Q\(5) & \PE3|Wreg|Q\(4) & \PE3|Wreg|Q\(3) & \PE3|Wreg|Q\(2) & \PE3|Wreg|Q\(1) & \PE3|Wreg|Q\(0) & gnd);

\PE3|BigMAC|Mult0|auto_generated|mac_mult1~0\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~1\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~dataout\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\PE3|BigMAC|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\hardReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hardReset~input_o\);

\PE7|resetSig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PE7|resetSig~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_hardReset~input_o\ <= NOT \hardReset~input_o\;
\PE7|ALT_INV_resetSig~clkctrl_outclk\ <= NOT \PE7|resetSig~clkctrl_outclk\;
\ALT_INV_hardReset~inputclkctrl_outclk\ <= NOT \hardReset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y73_N23
\y0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(0),
	devoe => ww_devoe,
	o => \y0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\y0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(1),
	devoe => ww_devoe,
	o => \y0[1]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\y0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(2),
	devoe => ww_devoe,
	o => \y0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\y0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(3),
	devoe => ww_devoe,
	o => \y0[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\y0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(4),
	devoe => ww_devoe,
	o => \y0[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\y0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(5),
	devoe => ww_devoe,
	o => \y0[5]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\y0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(6),
	devoe => ww_devoe,
	o => \y0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\y0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE7|Y|Q\(7),
	devoe => ww_devoe,
	o => \y0[7]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\y1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(0),
	devoe => ww_devoe,
	o => \y1[0]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\y1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(1),
	devoe => ww_devoe,
	o => \y1[1]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\y1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(2),
	devoe => ww_devoe,
	o => \y1[2]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\y1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(3),
	devoe => ww_devoe,
	o => \y1[3]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\y1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(4),
	devoe => ww_devoe,
	o => \y1[4]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\y1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(5),
	devoe => ww_devoe,
	o => \y1[5]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\y1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(6),
	devoe => ww_devoe,
	o => \y1[6]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\y1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE8|Y|Q\(7),
	devoe => ww_devoe,
	o => \y1[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\y2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(0),
	devoe => ww_devoe,
	o => \y2[0]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\y2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(1),
	devoe => ww_devoe,
	o => \y2[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\y2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(2),
	devoe => ww_devoe,
	o => \y2[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\y2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(3),
	devoe => ww_devoe,
	o => \y2[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\y2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(4),
	devoe => ww_devoe,
	o => \y2[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\y2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(5),
	devoe => ww_devoe,
	o => \y2[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\y2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(6),
	devoe => ww_devoe,
	o => \y2[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\y2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PE9|Y|Q\(7),
	devoe => ww_devoe,
	o => \y2[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\hardReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hardReset,
	o => \hardReset~input_o\);

-- Location: CLKCTRL_G4
\hardReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hardReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hardReset~inputclkctrl_outclk\);

-- Location: IOIBUF_X72_Y73_N1
\ld_w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_w,
	o => \ld_w~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\a2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(0),
	o => \a2[0]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\a2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(1),
	o => \a2[1]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\a2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(2),
	o => \a2[2]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\a2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(3),
	o => \a2[3]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\a2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(4),
	o => \a2[4]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\a2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(5),
	o => \a2[5]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\a2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(6),
	o => \a2[6]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\a2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(7),
	o => \a2[7]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\w2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(0),
	o => \w2[0]~input_o\);

-- Location: LCCOMB_X91_Y69_N28
\w13[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[0]~feeder_combout\ = \w2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[0]~input_o\,
	combout => \w13[0]~feeder_combout\);

-- Location: FF_X75_Y68_N15
\state.col0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w13[7]~0_combout\,
	sload => VCC,
	ena => \ALT_INV_hardReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.col0~q\);

-- Location: FF_X75_Y68_N9
\state.col1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.col0~q\,
	sload => VCC,
	ena => \ALT_INV_hardReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.col1~q\);

-- Location: FF_X75_Y68_N1
\state.col2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.col1~q\,
	sload => VCC,
	ena => \ALT_INV_hardReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.col2~q\);

-- Location: LCCOMB_X75_Y68_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.col2~q\ & ((\ld_w~input_o\) # (\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_w~input_o\,
	datac => \state.idle~q\,
	datad => \state.col2~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X75_Y68_N19
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_hardReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X75_Y68_N0
\w13[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[7]~0_combout\ = (\ld_w~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_w~input_o\,
	datad => \state.idle~q\,
	combout => \w13[7]~0_combout\);

-- Location: FF_X91_Y69_N29
\w13[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(0));

-- Location: IOIBUF_X91_Y73_N15
\w2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(1),
	o => \w2[1]~input_o\);

-- Location: LCCOMB_X91_Y69_N22
\w13[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[1]~feeder_combout\ = \w2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[1]~input_o\,
	combout => \w13[1]~feeder_combout\);

-- Location: FF_X91_Y69_N23
\w13[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(1));

-- Location: IOIBUF_X94_Y73_N8
\w2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(2),
	o => \w2[2]~input_o\);

-- Location: LCCOMB_X91_Y69_N12
\w13[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[2]~feeder_combout\ = \w2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[2]~input_o\,
	combout => \w13[2]~feeder_combout\);

-- Location: FF_X91_Y69_N13
\w13[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(2));

-- Location: IOIBUF_X87_Y73_N22
\w2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(3),
	o => \w2[3]~input_o\);

-- Location: LCCOMB_X91_Y69_N14
\w13[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[3]~feeder_combout\ = \w2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[3]~input_o\,
	combout => \w13[3]~feeder_combout\);

-- Location: FF_X91_Y69_N15
\w13[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(3));

-- Location: IOIBUF_X111_Y73_N1
\w2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(4),
	o => \w2[4]~input_o\);

-- Location: LCCOMB_X91_Y69_N4
\w13[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[4]~feeder_combout\ = \w2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[4]~input_o\,
	combout => \w13[4]~feeder_combout\);

-- Location: FF_X91_Y69_N5
\w13[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(4));

-- Location: IOIBUF_X115_Y66_N15
\w2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(5),
	o => \w2[5]~input_o\);

-- Location: LCCOMB_X91_Y69_N30
\w13[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[5]~feeder_combout\ = \w2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[5]~input_o\,
	combout => \w13[5]~feeder_combout\);

-- Location: FF_X91_Y69_N31
\w13[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(5));

-- Location: IOIBUF_X115_Y67_N15
\w2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(6),
	o => \w2[6]~input_o\);

-- Location: LCCOMB_X91_Y69_N20
\w13[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[6]~feeder_combout\ = \w2[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[6]~input_o\,
	combout => \w13[6]~feeder_combout\);

-- Location: FF_X91_Y69_N21
\w13[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(6));

-- Location: IOIBUF_X115_Y66_N22
\w2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(7),
	o => \w2[7]~input_o\);

-- Location: LCCOMB_X91_Y69_N2
\w13[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w13[7]~feeder_combout\ = \w2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[7]~input_o\,
	combout => \w13[7]~feeder_combout\);

-- Location: FF_X91_Y69_N3
\w13[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w13[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w13(7));

-- Location: DSPMULT_X93_Y69_N1
\PE7|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE7|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y69_N3
\PE7|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE7|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X72_Y73_N8
\a0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\a0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\a0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\a0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\a0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(4),
	o => \a0[4]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\a0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(5),
	o => \a0[5]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\a0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(6),
	o => \a0[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\a0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(7),
	o => \a0[7]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\w0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(0),
	o => \w0[0]~input_o\);

-- Location: LCCOMB_X75_Y70_N4
\w11[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[0]~feeder_combout\ = \w0[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[0]~input_o\,
	combout => \w11[0]~feeder_combout\);

-- Location: FF_X75_Y70_N5
\w11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(0));

-- Location: IOIBUF_X83_Y73_N8
\w0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(1),
	o => \w0[1]~input_o\);

-- Location: LCCOMB_X75_Y70_N2
\w11[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[1]~feeder_combout\ = \w0[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[1]~input_o\,
	combout => \w11[1]~feeder_combout\);

-- Location: FF_X75_Y70_N3
\w11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(1));

-- Location: IOIBUF_X83_Y73_N15
\w0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(2),
	o => \w0[2]~input_o\);

-- Location: LCCOMB_X75_Y70_N12
\w11[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[2]~feeder_combout\ = \w0[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[2]~input_o\,
	combout => \w11[2]~feeder_combout\);

-- Location: FF_X75_Y70_N13
\w11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(2));

-- Location: IOIBUF_X60_Y73_N1
\w0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(3),
	o => \w0[3]~input_o\);

-- Location: LCCOMB_X75_Y70_N22
\w11[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[3]~feeder_combout\ = \w0[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[3]~input_o\,
	combout => \w11[3]~feeder_combout\);

-- Location: FF_X75_Y70_N23
\w11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(3));

-- Location: IOIBUF_X58_Y73_N8
\w0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(4),
	o => \w0[4]~input_o\);

-- Location: LCCOMB_X75_Y70_N0
\w11[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[4]~feeder_combout\ = \w0[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[4]~input_o\,
	combout => \w11[4]~feeder_combout\);

-- Location: FF_X75_Y70_N1
\w11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(4));

-- Location: IOIBUF_X83_Y73_N1
\w0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(5),
	o => \w0[5]~input_o\);

-- Location: LCCOMB_X75_Y70_N10
\w11[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[5]~feeder_combout\ = \w0[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[5]~input_o\,
	combout => \w11[5]~feeder_combout\);

-- Location: FF_X75_Y70_N11
\w11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(5));

-- Location: IOIBUF_X81_Y73_N15
\w0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(6),
	o => \w0[6]~input_o\);

-- Location: LCCOMB_X75_Y70_N8
\w11[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[6]~feeder_combout\ = \w0[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[6]~input_o\,
	combout => \w11[6]~feeder_combout\);

-- Location: FF_X75_Y70_N9
\w11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(6));

-- Location: IOIBUF_X83_Y73_N22
\w0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(7),
	o => \w0[7]~input_o\);

-- Location: LCCOMB_X75_Y70_N14
\w11[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w11[7]~feeder_combout\ = \w0[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[7]~input_o\,
	combout => \w11[7]~feeder_combout\);

-- Location: FF_X75_Y70_N15
\w11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w11[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w11(7));

-- Location: DSPMULT_X71_Y70_N1
\PE1|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE1|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y70_N3
\PE1|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE1|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y70_N30
\PE1|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|LessThan1~1_combout\ = (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- !\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \PE1|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X72_Y70_N8
\PE1|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|LessThan1~2_combout\ = (((!\PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\) # (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\)) # 
-- (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	combout => \PE1|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X72_Y70_N26
\PE1|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|LessThan1~3_combout\ = (((!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\)) # 
-- (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \PE1|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X72_Y70_N20
\PE1|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|LessThan1~0_combout\ = (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- !\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \PE1|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X72_Y70_N0
\PE1|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|LessThan1~4_combout\ = (\PE1|BigMAC|LessThan1~1_combout\ & (\PE1|BigMAC|LessThan1~0_combout\ & ((\PE1|BigMAC|LessThan1~2_combout\) # (\PE1|BigMAC|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|LessThan1~1_combout\,
	datab => \PE1|BigMAC|LessThan1~2_combout\,
	datac => \PE1|BigMAC|LessThan1~3_combout\,
	datad => \PE1|BigMAC|LessThan1~0_combout\,
	combout => \PE1|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X72_Y70_N14
\PE1|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[7]~7_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[7]~7_combout\);

-- Location: IOIBUF_X115_Y37_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X75_Y68_N24
\PE7|resetSig\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|resetSig~combout\ = (\hardReset~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hardReset~input_o\,
	datad => \reset~input_o\,
	combout => \PE7|resetSig~combout\);

-- Location: CLKCTRL_G14
\PE7|resetSig~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PE7|resetSig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PE7|resetSig~clkctrl_outclk\);

-- Location: IOIBUF_X69_Y73_N22
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: FF_X72_Y70_N15
\PE1|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(7));

-- Location: IOIBUF_X65_Y73_N8
\a1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(0),
	o => \a1[0]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\a1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(1),
	o => \a1[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\a1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(2),
	o => \a1[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\a1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(3),
	o => \a1[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\a1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(4),
	o => \a1[4]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\a1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(5),
	o => \a1[5]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\a1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(6),
	o => \a1[6]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\a1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(7),
	o => \a1[7]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\w1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(0),
	o => \w1[0]~input_o\);

-- Location: LCCOMB_X76_Y68_N8
\w12[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w12[0]~feeder_combout\ = \w1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[0]~input_o\,
	combout => \w12[0]~feeder_combout\);

-- Location: FF_X76_Y68_N9
\w12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w12[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(0));

-- Location: IOIBUF_X81_Y73_N22
\w1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(1),
	o => \w1[1]~input_o\);

-- Location: FF_X76_Y68_N19
\w12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[1]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(1));

-- Location: IOIBUF_X79_Y73_N1
\w1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(2),
	o => \w1[2]~input_o\);

-- Location: LCCOMB_X74_Y68_N18
\w12[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w12[2]~feeder_combout\ = \w1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[2]~input_o\,
	combout => \w12[2]~feeder_combout\);

-- Location: FF_X74_Y68_N19
\w12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w12[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(2));

-- Location: IOIBUF_X79_Y73_N8
\w1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(3),
	o => \w1[3]~input_o\);

-- Location: FF_X74_Y68_N25
\w12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[3]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(3));

-- Location: IOIBUF_X74_Y73_N15
\w1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(4),
	o => \w1[4]~input_o\);

-- Location: FF_X74_Y68_N27
\w12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[4]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(4));

-- Location: IOIBUF_X105_Y73_N1
\w1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(5),
	o => \w1[5]~input_o\);

-- Location: LCCOMB_X76_Y68_N28
\w12[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w12[5]~feeder_combout\ = \w1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[5]~input_o\,
	combout => \w12[5]~feeder_combout\);

-- Location: FF_X76_Y68_N29
\w12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w12[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(5));

-- Location: IOIBUF_X81_Y73_N8
\w1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(6),
	o => \w1[6]~input_o\);

-- Location: FF_X76_Y68_N11
\w12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[6]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(6));

-- Location: IOIBUF_X74_Y73_N22
\w1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(7),
	o => \w1[7]~input_o\);

-- Location: LCCOMB_X74_Y68_N2
\w12[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w12[7]~feeder_combout\ = \w1[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[7]~input_o\,
	combout => \w12[7]~feeder_combout\);

-- Location: FF_X74_Y68_N3
\w12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w12[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \w13[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w12(7));

-- Location: DSPMULT_X71_Y68_N1
\PE4|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE4|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y68_N3
\PE4|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE4|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y70_N16
\PE1|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[6]~6_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X72_Y70_N17
\PE1|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(6));

-- Location: LCCOMB_X72_Y70_N2
\PE1|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[5]~5_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X72_Y70_N3
\PE1|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(5));

-- Location: LCCOMB_X72_Y70_N4
\PE1|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[4]~4_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X72_Y70_N5
\PE1|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(4));

-- Location: LCCOMB_X72_Y70_N18
\PE1|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[3]~3_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X72_Y70_N19
\PE1|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(3));

-- Location: LCCOMB_X72_Y70_N12
\PE1|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[2]~2_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X72_Y70_N13
\PE1|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(2));

-- Location: LCCOMB_X72_Y70_N22
\PE1|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[1]~1_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X72_Y70_N23
\PE1|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(1));

-- Location: LCCOMB_X72_Y70_N28
\PE1|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|BigMAC|partial_8[0]~0_combout\ = (\PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\) # (!\PE1|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE1|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => \PE1|BigMAC|LessThan1~4_combout\,
	combout => \PE1|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X72_Y70_N29
\PE1|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|Y|Q\(0));

-- Location: LCCOMB_X73_Y68_N0
\PE4|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[0]~0_combout\ = (\PE1|Y|Q\(0) & (\PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\PE1|Y|Q\(0) & (\PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \PE4|BigMAC|partial_16[0]~1\ = CARRY((\PE1|Y|Q\(0) & \PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|Y|Q\(0),
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \PE4|BigMAC|partial_16[0]~0_combout\,
	cout => \PE4|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X73_Y68_N2
\PE4|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[1]~2_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE1|Y|Q\(1) & (\PE4|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE1|Y|Q\(1) & (!\PE4|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE1|Y|Q\(1) & (!\PE4|BigMAC|partial_16[0]~1\)) # (!\PE1|Y|Q\(1) & ((\PE4|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE4|BigMAC|partial_16[1]~3\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE1|Y|Q\(1) & !\PE4|BigMAC|partial_16[0]~1\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\PE4|BigMAC|partial_16[0]~1\) # (!\PE1|Y|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \PE1|Y|Q\(1),
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[0]~1\,
	combout => \PE4|BigMAC|partial_16[1]~2_combout\,
	cout => \PE4|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X73_Y68_N4
\PE4|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[2]~4_combout\ = ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\PE1|Y|Q\(2) $ (!\PE4|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE4|BigMAC|partial_16[2]~5\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\PE1|Y|Q\(2)) # (!\PE4|BigMAC|partial_16[1]~3\))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\PE1|Y|Q\(2) & !\PE4|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \PE1|Y|Q\(2),
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[1]~3\,
	combout => \PE4|BigMAC|partial_16[2]~4_combout\,
	cout => \PE4|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X73_Y68_N6
\PE4|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[3]~6_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE1|Y|Q\(3) & (\PE4|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE1|Y|Q\(3) & (!\PE4|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE1|Y|Q\(3) & (!\PE4|BigMAC|partial_16[2]~5\)) # (!\PE1|Y|Q\(3) & ((\PE4|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE4|BigMAC|partial_16[3]~7\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE1|Y|Q\(3) & !\PE4|BigMAC|partial_16[2]~5\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\PE4|BigMAC|partial_16[2]~5\) # (!\PE1|Y|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \PE1|Y|Q\(3),
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[2]~5\,
	combout => \PE4|BigMAC|partial_16[3]~6_combout\,
	cout => \PE4|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X73_Y68_N8
\PE4|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[4]~8_combout\ = ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\PE1|Y|Q\(4) $ (!\PE4|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE4|BigMAC|partial_16[4]~9\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\PE1|Y|Q\(4)) # (!\PE4|BigMAC|partial_16[3]~7\))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\PE1|Y|Q\(4) & !\PE4|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \PE1|Y|Q\(4),
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[3]~7\,
	combout => \PE4|BigMAC|partial_16[4]~8_combout\,
	cout => \PE4|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X73_Y68_N10
\PE4|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[5]~10_combout\ = (\PE1|Y|Q\(5) & ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\PE4|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE4|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE1|Y|Q\(5) & ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE4|BigMAC|partial_16[4]~9\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE4|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE4|BigMAC|partial_16[5]~11\ = CARRY((\PE1|Y|Q\(5) & (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\PE4|BigMAC|partial_16[4]~9\)) # (!\PE1|Y|Q\(5) & ((!\PE4|BigMAC|partial_16[4]~9\) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|Y|Q\(5),
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[4]~9\,
	combout => \PE4|BigMAC|partial_16[5]~10_combout\,
	cout => \PE4|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X73_Y68_N12
\PE4|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[6]~12_combout\ = ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\PE1|Y|Q\(6) $ (!\PE4|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE4|BigMAC|partial_16[6]~13\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\PE1|Y|Q\(6)) # (!\PE4|BigMAC|partial_16[5]~11\))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\PE1|Y|Q\(6) & !\PE4|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE1|Y|Q\(6),
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[5]~11\,
	combout => \PE4|BigMAC|partial_16[6]~12_combout\,
	cout => \PE4|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X73_Y68_N14
\PE4|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[7]~14_combout\ = (\PE1|Y|Q\(7) & ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\PE4|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE4|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE1|Y|Q\(7) & ((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE4|BigMAC|partial_16[6]~13\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE4|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE4|BigMAC|partial_16[7]~15\ = CARRY((\PE1|Y|Q\(7) & (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\PE4|BigMAC|partial_16[6]~13\)) # (!\PE1|Y|Q\(7) & ((!\PE4|BigMAC|partial_16[6]~13\) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE1|Y|Q\(7),
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[6]~13\,
	combout => \PE4|BigMAC|partial_16[7]~14_combout\,
	cout => \PE4|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X74_Y68_N4
\PE4|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|LessThan1~0_combout\ = (((!\PE4|BigMAC|partial_16[1]~2_combout\) # (!\PE4|BigMAC|partial_16[2]~4_combout\)) # (!\PE4|BigMAC|partial_16[3]~6_combout\)) # (!\PE4|BigMAC|partial_16[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[0]~0_combout\,
	datab => \PE4|BigMAC|partial_16[3]~6_combout\,
	datac => \PE4|BigMAC|partial_16[2]~4_combout\,
	datad => \PE4|BigMAC|partial_16[1]~2_combout\,
	combout => \PE4|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X74_Y68_N26
\PE4|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|LessThan1~1_combout\ = (!\PE4|BigMAC|partial_16[4]~8_combout\) # (!\PE4|BigMAC|partial_16[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[5]~10_combout\,
	datad => \PE4|BigMAC|partial_16[4]~8_combout\,
	combout => \PE4|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X74_Y68_N16
\PE4|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|LessThan1~2_combout\ = ((\PE4|BigMAC|LessThan1~0_combout\) # ((\PE4|BigMAC|LessThan1~1_combout\) # (!\PE4|BigMAC|partial_16[6]~12_combout\))) # (!\PE4|BigMAC|partial_16[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[7]~14_combout\,
	datab => \PE4|BigMAC|LessThan1~0_combout\,
	datac => \PE4|BigMAC|LessThan1~1_combout\,
	datad => \PE4|BigMAC|partial_16[6]~12_combout\,
	combout => \PE4|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X73_Y68_N16
\PE4|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[8]~16_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE4|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE4|BigMAC|partial_16[7]~15\ & VCC))
-- \PE4|BigMAC|partial_16[8]~17\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE4|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[7]~15\,
	combout => \PE4|BigMAC|partial_16[8]~16_combout\,
	cout => \PE4|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X73_Y68_N18
\PE4|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[9]~18_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE4|BigMAC|partial_16[8]~17\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE4|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE4|BigMAC|partial_16[9]~19\ = CARRY((!\PE4|BigMAC|partial_16[8]~17\) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[8]~17\,
	combout => \PE4|BigMAC|partial_16[9]~18_combout\,
	cout => \PE4|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X73_Y68_N20
\PE4|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[10]~20_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE4|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE4|BigMAC|partial_16[9]~19\ & VCC))
-- \PE4|BigMAC|partial_16[10]~21\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE4|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[9]~19\,
	combout => \PE4|BigMAC|partial_16[10]~20_combout\,
	cout => \PE4|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X73_Y68_N22
\PE4|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[11]~22_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE4|BigMAC|partial_16[10]~21\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE4|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE4|BigMAC|partial_16[11]~23\ = CARRY((!\PE4|BigMAC|partial_16[10]~21\) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[10]~21\,
	combout => \PE4|BigMAC|partial_16[11]~22_combout\,
	cout => \PE4|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X74_Y68_N22
\PE4|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|LessThan1~3_combout\ = (!\PE4|BigMAC|partial_16[8]~16_combout\ & (!\PE4|BigMAC|partial_16[10]~20_combout\ & (!\PE4|BigMAC|partial_16[11]~22_combout\ & !\PE4|BigMAC|partial_16[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[8]~16_combout\,
	datab => \PE4|BigMAC|partial_16[10]~20_combout\,
	datac => \PE4|BigMAC|partial_16[11]~22_combout\,
	datad => \PE4|BigMAC|partial_16[9]~18_combout\,
	combout => \PE4|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X73_Y68_N24
\PE4|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[12]~24_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE4|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE4|BigMAC|partial_16[11]~23\ & VCC))
-- \PE4|BigMAC|partial_16[12]~25\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE4|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[11]~23\,
	combout => \PE4|BigMAC|partial_16[12]~24_combout\,
	cout => \PE4|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X73_Y68_N26
\PE4|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[13]~26_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE4|BigMAC|partial_16[12]~25\)) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE4|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE4|BigMAC|partial_16[13]~27\ = CARRY((!\PE4|BigMAC|partial_16[12]~25\) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[12]~25\,
	combout => \PE4|BigMAC|partial_16[13]~26_combout\,
	cout => \PE4|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X73_Y68_N28
\PE4|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[14]~28_combout\ = (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE4|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE4|BigMAC|partial_16[13]~27\ & VCC))
-- \PE4|BigMAC|partial_16[14]~29\ = CARRY((\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE4|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE4|BigMAC|partial_16[13]~27\,
	combout => \PE4|BigMAC|partial_16[14]~28_combout\,
	cout => \PE4|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X73_Y68_N30
\PE4|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_16[15]~30_combout\ = \PE4|BigMAC|partial_16[14]~29\ $ (\PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PE4|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE4|BigMAC|partial_16[14]~29\,
	combout => \PE4|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X74_Y68_N20
\PE4|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|LessThan1~4_combout\ = (!\PE4|BigMAC|partial_16[13]~26_combout\ & (!\PE4|BigMAC|partial_16[15]~30_combout\ & (!\PE4|BigMAC|partial_16[12]~24_combout\ & !\PE4|BigMAC|partial_16[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[13]~26_combout\,
	datab => \PE4|BigMAC|partial_16[15]~30_combout\,
	datac => \PE4|BigMAC|partial_16[12]~24_combout\,
	datad => \PE4|BigMAC|partial_16[14]~28_combout\,
	combout => \PE4|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X74_Y68_N14
\PE4|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[7]~7_combout\ = (\PE4|BigMAC|partial_16[7]~14_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[7]~14_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[7]~7_combout\);

-- Location: FF_X74_Y68_N15
\PE4|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(7));

-- Location: LCCOMB_X74_Y68_N8
\PE4|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[6]~6_combout\ = (\PE4|BigMAC|partial_16[6]~12_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[6]~12_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X74_Y68_N9
\PE4|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(6));

-- Location: LCCOMB_X74_Y68_N6
\PE4|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[5]~5_combout\ = (\PE4|BigMAC|partial_16[5]~10_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[5]~10_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X74_Y68_N7
\PE4|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(5));

-- Location: LCCOMB_X74_Y68_N12
\PE4|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[4]~4_combout\ = (\PE4|BigMAC|partial_16[4]~8_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[4]~8_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X74_Y68_N13
\PE4|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(4));

-- Location: LCCOMB_X74_Y68_N10
\PE4|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[3]~3_combout\ = (((\PE4|BigMAC|partial_16[3]~6_combout\) # (!\PE4|BigMAC|LessThan1~4_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\)) # (!\PE4|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|LessThan1~3_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|partial_16[3]~6_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X74_Y68_N11
\PE4|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(3));

-- Location: LCCOMB_X74_Y68_N28
\PE4|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[2]~2_combout\ = (((\PE4|BigMAC|partial_16[2]~4_combout\) # (!\PE4|BigMAC|LessThan1~4_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\)) # (!\PE4|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|LessThan1~3_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|partial_16[2]~4_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X74_Y68_N29
\PE4|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(2));

-- Location: LCCOMB_X74_Y68_N30
\PE4|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[1]~1_combout\ = (\PE4|BigMAC|partial_16[1]~2_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[1]~2_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X74_Y68_N31
\PE4|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(1));

-- Location: LCCOMB_X74_Y68_N0
\PE4|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE4|BigMAC|partial_8[0]~0_combout\ = (\PE4|BigMAC|partial_16[0]~0_combout\) # (((!\PE4|BigMAC|LessThan1~4_combout\) # (!\PE4|BigMAC|LessThan1~3_combout\)) # (!\PE4|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|BigMAC|partial_16[0]~0_combout\,
	datab => \PE4|BigMAC|LessThan1~2_combout\,
	datac => \PE4|BigMAC|LessThan1~3_combout\,
	datad => \PE4|BigMAC|LessThan1~4_combout\,
	combout => \PE4|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X74_Y68_N1
\PE4|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE4|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|Y|Q\(0));

-- Location: LCCOMB_X97_Y69_N0
\PE7|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[0]~0_combout\ = (\PE4|Y|Q\(0) & (\PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\PE4|Y|Q\(0) & (\PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \PE7|BigMAC|partial_16[0]~1\ = CARRY((\PE4|Y|Q\(0) & \PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|Y|Q\(0),
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \PE7|BigMAC|partial_16[0]~0_combout\,
	cout => \PE7|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X97_Y69_N2
\PE7|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[1]~2_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE4|Y|Q\(1) & (\PE7|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE4|Y|Q\(1) & (!\PE7|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE4|Y|Q\(1) & (!\PE7|BigMAC|partial_16[0]~1\)) # (!\PE4|Y|Q\(1) & ((\PE7|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE7|BigMAC|partial_16[1]~3\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE4|Y|Q\(1) & !\PE7|BigMAC|partial_16[0]~1\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\PE7|BigMAC|partial_16[0]~1\) # (!\PE4|Y|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \PE4|Y|Q\(1),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[0]~1\,
	combout => \PE7|BigMAC|partial_16[1]~2_combout\,
	cout => \PE7|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X97_Y69_N4
\PE7|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[2]~4_combout\ = ((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\PE4|Y|Q\(2) $ (!\PE7|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE7|BigMAC|partial_16[2]~5\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\PE4|Y|Q\(2)) # (!\PE7|BigMAC|partial_16[1]~3\))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\PE4|Y|Q\(2) & !\PE7|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \PE4|Y|Q\(2),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[1]~3\,
	combout => \PE7|BigMAC|partial_16[2]~4_combout\,
	cout => \PE7|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X97_Y69_N6
\PE7|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[3]~6_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE4|Y|Q\(3) & (\PE7|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE4|Y|Q\(3) & (!\PE7|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE4|Y|Q\(3) & (!\PE7|BigMAC|partial_16[2]~5\)) # (!\PE4|Y|Q\(3) & ((\PE7|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE7|BigMAC|partial_16[3]~7\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE4|Y|Q\(3) & !\PE7|BigMAC|partial_16[2]~5\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\PE7|BigMAC|partial_16[2]~5\) # (!\PE4|Y|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \PE4|Y|Q\(3),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[2]~5\,
	combout => \PE7|BigMAC|partial_16[3]~6_combout\,
	cout => \PE7|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X97_Y69_N8
\PE7|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[4]~8_combout\ = ((\PE4|Y|Q\(4) $ (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (!\PE7|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE7|BigMAC|partial_16[4]~9\ = CARRY((\PE4|Y|Q\(4) & ((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE7|BigMAC|partial_16[3]~7\))) # (!\PE4|Y|Q\(4) & (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\PE7|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE4|Y|Q\(4),
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[3]~7\,
	combout => \PE7|BigMAC|partial_16[4]~8_combout\,
	cout => \PE7|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X97_Y69_N10
\PE7|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[5]~10_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE4|Y|Q\(5) & (\PE7|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE4|Y|Q\(5) & (!\PE7|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE4|Y|Q\(5) & (!\PE7|BigMAC|partial_16[4]~9\)) # (!\PE4|Y|Q\(5) & ((\PE7|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE7|BigMAC|partial_16[5]~11\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE4|Y|Q\(5) & !\PE7|BigMAC|partial_16[4]~9\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\PE7|BigMAC|partial_16[4]~9\) # (!\PE4|Y|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE4|Y|Q\(5),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[4]~9\,
	combout => \PE7|BigMAC|partial_16[5]~10_combout\,
	cout => \PE7|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X97_Y69_N12
\PE7|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[6]~12_combout\ = ((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\PE4|Y|Q\(6) $ (!\PE7|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE7|BigMAC|partial_16[6]~13\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\PE4|Y|Q\(6)) # (!\PE7|BigMAC|partial_16[5]~11\))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\PE4|Y|Q\(6) & !\PE7|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE4|Y|Q\(6),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[5]~11\,
	combout => \PE7|BigMAC|partial_16[6]~12_combout\,
	cout => \PE7|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X97_Y69_N14
\PE7|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[7]~14_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE4|Y|Q\(7) & (\PE7|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE4|Y|Q\(7) & (!\PE7|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE4|Y|Q\(7) & (!\PE7|BigMAC|partial_16[6]~13\)) # (!\PE4|Y|Q\(7) & ((\PE7|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE7|BigMAC|partial_16[7]~15\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE4|Y|Q\(7) & !\PE7|BigMAC|partial_16[6]~13\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\PE7|BigMAC|partial_16[6]~13\) # (!\PE4|Y|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \PE4|Y|Q\(7),
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[6]~13\,
	combout => \PE7|BigMAC|partial_16[7]~14_combout\,
	cout => \PE7|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X97_Y69_N16
\PE7|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[8]~16_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE7|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE7|BigMAC|partial_16[7]~15\ & VCC))
-- \PE7|BigMAC|partial_16[8]~17\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE7|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[7]~15\,
	combout => \PE7|BigMAC|partial_16[8]~16_combout\,
	cout => \PE7|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X97_Y69_N18
\PE7|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[9]~18_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE7|BigMAC|partial_16[8]~17\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE7|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE7|BigMAC|partial_16[9]~19\ = CARRY((!\PE7|BigMAC|partial_16[8]~17\) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[8]~17\,
	combout => \PE7|BigMAC|partial_16[9]~18_combout\,
	cout => \PE7|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X97_Y69_N20
\PE7|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[10]~20_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE7|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE7|BigMAC|partial_16[9]~19\ & VCC))
-- \PE7|BigMAC|partial_16[10]~21\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE7|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[9]~19\,
	combout => \PE7|BigMAC|partial_16[10]~20_combout\,
	cout => \PE7|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X97_Y69_N22
\PE7|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[11]~22_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE7|BigMAC|partial_16[10]~21\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE7|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE7|BigMAC|partial_16[11]~23\ = CARRY((!\PE7|BigMAC|partial_16[10]~21\) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[10]~21\,
	combout => \PE7|BigMAC|partial_16[11]~22_combout\,
	cout => \PE7|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X96_Y69_N6
\PE7|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|LessThan1~3_combout\ = (!\PE7|BigMAC|partial_16[8]~16_combout\ & (!\PE7|BigMAC|partial_16[11]~22_combout\ & (!\PE7|BigMAC|partial_16[10]~20_combout\ & !\PE7|BigMAC|partial_16[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[8]~16_combout\,
	datab => \PE7|BigMAC|partial_16[11]~22_combout\,
	datac => \PE7|BigMAC|partial_16[10]~20_combout\,
	datad => \PE7|BigMAC|partial_16[9]~18_combout\,
	combout => \PE7|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X97_Y69_N24
\PE7|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[12]~24_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE7|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE7|BigMAC|partial_16[11]~23\ & VCC))
-- \PE7|BigMAC|partial_16[12]~25\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE7|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[11]~23\,
	combout => \PE7|BigMAC|partial_16[12]~24_combout\,
	cout => \PE7|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X97_Y69_N26
\PE7|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[13]~26_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE7|BigMAC|partial_16[12]~25\)) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE7|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE7|BigMAC|partial_16[13]~27\ = CARRY((!\PE7|BigMAC|partial_16[12]~25\) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[12]~25\,
	combout => \PE7|BigMAC|partial_16[13]~26_combout\,
	cout => \PE7|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X97_Y69_N28
\PE7|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[14]~28_combout\ = (\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE7|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE7|BigMAC|partial_16[13]~27\ & VCC))
-- \PE7|BigMAC|partial_16[14]~29\ = CARRY((\PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE7|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE7|BigMAC|partial_16[13]~27\,
	combout => \PE7|BigMAC|partial_16[14]~28_combout\,
	cout => \PE7|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X97_Y69_N30
\PE7|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_16[15]~30_combout\ = \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\PE7|BigMAC|partial_16[14]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE7|BigMAC|partial_16[14]~29\,
	combout => \PE7|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X96_Y69_N8
\PE7|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|LessThan1~4_combout\ = (!\PE7|BigMAC|partial_16[13]~26_combout\ & (!\PE7|BigMAC|partial_16[14]~28_combout\ & (!\PE7|BigMAC|partial_16[15]~30_combout\ & !\PE7|BigMAC|partial_16[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[13]~26_combout\,
	datab => \PE7|BigMAC|partial_16[14]~28_combout\,
	datac => \PE7|BigMAC|partial_16[15]~30_combout\,
	datad => \PE7|BigMAC|partial_16[12]~24_combout\,
	combout => \PE7|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X96_Y69_N30
\PE7|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|LessThan1~1_combout\ = (!\PE7|BigMAC|partial_16[4]~8_combout\) # (!\PE7|BigMAC|partial_16[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE7|BigMAC|partial_16[5]~10_combout\,
	datac => \PE7|BigMAC|partial_16[4]~8_combout\,
	combout => \PE7|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X96_Y69_N12
\PE7|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|LessThan1~0_combout\ = (((!\PE7|BigMAC|partial_16[2]~4_combout\) # (!\PE7|BigMAC|partial_16[0]~0_combout\)) # (!\PE7|BigMAC|partial_16[3]~6_combout\)) # (!\PE7|BigMAC|partial_16[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[1]~2_combout\,
	datab => \PE7|BigMAC|partial_16[3]~6_combout\,
	datac => \PE7|BigMAC|partial_16[0]~0_combout\,
	datad => \PE7|BigMAC|partial_16[2]~4_combout\,
	combout => \PE7|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X96_Y69_N28
\PE7|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|LessThan1~2_combout\ = (\PE7|BigMAC|LessThan1~1_combout\) # (((\PE7|BigMAC|LessThan1~0_combout\) # (!\PE7|BigMAC|partial_16[6]~12_combout\)) # (!\PE7|BigMAC|partial_16[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~1_combout\,
	datab => \PE7|BigMAC|partial_16[7]~14_combout\,
	datac => \PE7|BigMAC|partial_16[6]~12_combout\,
	datad => \PE7|BigMAC|LessThan1~0_combout\,
	combout => \PE7|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X96_Y69_N0
\PE7|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[0]~0_combout\ = ((\PE7|BigMAC|partial_16[0]~0_combout\) # ((!\PE7|BigMAC|LessThan1~2_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\))) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|partial_16[0]~0_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~2_combout\,
	combout => \PE7|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X96_Y69_N1
\PE7|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(0));

-- Location: LCCOMB_X96_Y69_N18
\PE7|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[1]~1_combout\ = (\PE7|BigMAC|partial_16[1]~2_combout\) # (((!\PE7|BigMAC|LessThan1~3_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\)) # (!\PE7|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[1]~2_combout\,
	datab => \PE7|BigMAC|LessThan1~2_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~3_combout\,
	combout => \PE7|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X96_Y69_N19
\PE7|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(1));

-- Location: LCCOMB_X96_Y69_N4
\PE7|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[2]~2_combout\ = (\PE7|BigMAC|partial_16[2]~4_combout\) # (((!\PE7|BigMAC|LessThan1~3_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\)) # (!\PE7|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[2]~4_combout\,
	datab => \PE7|BigMAC|LessThan1~2_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~3_combout\,
	combout => \PE7|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X96_Y69_N5
\PE7|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(2));

-- Location: LCCOMB_X96_Y69_N22
\PE7|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[3]~3_combout\ = ((\PE7|BigMAC|partial_16[3]~6_combout\) # ((!\PE7|BigMAC|LessThan1~2_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\))) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|partial_16[3]~6_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~2_combout\,
	combout => \PE7|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X96_Y69_N23
\PE7|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(3));

-- Location: LCCOMB_X96_Y69_N20
\PE7|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[4]~4_combout\ = ((\PE7|BigMAC|partial_16[4]~8_combout\) # ((!\PE7|BigMAC|LessThan1~2_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\))) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|partial_16[4]~8_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~2_combout\,
	combout => \PE7|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X96_Y69_N21
\PE7|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(4));

-- Location: LCCOMB_X96_Y69_N10
\PE7|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[5]~5_combout\ = ((\PE7|BigMAC|partial_16[5]~10_combout\) # ((!\PE7|BigMAC|LessThan1~2_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\))) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|partial_16[5]~10_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~2_combout\,
	combout => \PE7|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X96_Y69_N11
\PE7|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(5));

-- Location: LCCOMB_X96_Y69_N16
\PE7|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[6]~6_combout\ = ((\PE7|BigMAC|partial_16[6]~12_combout\) # ((!\PE7|BigMAC|LessThan1~2_combout\) # (!\PE7|BigMAC|LessThan1~4_combout\))) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|partial_16[6]~12_combout\,
	datac => \PE7|BigMAC|LessThan1~4_combout\,
	datad => \PE7|BigMAC|LessThan1~2_combout\,
	combout => \PE7|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X96_Y69_N17
\PE7|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(6));

-- Location: LCCOMB_X96_Y69_N2
\PE7|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[7]~7_combout\ = (((\PE7|BigMAC|partial_16[7]~14_combout\) # (\PE7|BigMAC|partial_16[12]~24_combout\)) # (!\PE7|BigMAC|LessThan1~2_combout\)) # (!\PE7|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|LessThan1~3_combout\,
	datab => \PE7|BigMAC|LessThan1~2_combout\,
	datac => \PE7|BigMAC|partial_16[7]~14_combout\,
	datad => \PE7|BigMAC|partial_16[12]~24_combout\,
	combout => \PE7|BigMAC|partial_8[7]~7_combout\);

-- Location: LCCOMB_X96_Y69_N14
\PE7|BigMAC|partial_8[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|BigMAC|partial_8[7]~8_combout\ = (\PE7|BigMAC|partial_16[15]~30_combout\) # ((\PE7|BigMAC|partial_16[14]~28_combout\) # ((\PE7|BigMAC|partial_16[13]~26_combout\) # (\PE7|BigMAC|partial_8[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE7|BigMAC|partial_16[15]~30_combout\,
	datab => \PE7|BigMAC|partial_16[14]~28_combout\,
	datac => \PE7|BigMAC|partial_16[13]~26_combout\,
	datad => \PE7|BigMAC|partial_8[7]~7_combout\,
	combout => \PE7|BigMAC|partial_8[7]~8_combout\);

-- Location: FF_X96_Y69_N15
\PE7|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|BigMAC|partial_8[7]~8_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|Y|Q\(7));

-- Location: LCCOMB_X92_Y69_N0
\PE7|A|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[0]~feeder_combout\ = \a2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[0]~input_o\,
	combout => \PE7|A|Q[0]~feeder_combout\);

-- Location: FF_X92_Y69_N1
\PE7|A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[0]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(0));

-- Location: FF_X92_Y69_N7
\PE7|A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a2[1]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(1));

-- Location: LCCOMB_X92_Y69_N28
\PE7|A|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[2]~feeder_combout\ = \a2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[2]~input_o\,
	combout => \PE7|A|Q[2]~feeder_combout\);

-- Location: FF_X92_Y69_N29
\PE7|A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[2]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(2));

-- Location: LCCOMB_X92_Y69_N26
\PE7|A|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[3]~feeder_combout\ = \a2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[3]~input_o\,
	combout => \PE7|A|Q[3]~feeder_combout\);

-- Location: FF_X92_Y69_N27
\PE7|A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[3]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(3));

-- Location: LCCOMB_X92_Y69_N24
\PE7|A|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[4]~feeder_combout\ = \a2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[4]~input_o\,
	combout => \PE7|A|Q[4]~feeder_combout\);

-- Location: FF_X92_Y69_N25
\PE7|A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[4]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(4));

-- Location: LCCOMB_X92_Y69_N30
\PE7|A|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[5]~feeder_combout\ = \a2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[5]~input_o\,
	combout => \PE7|A|Q[5]~feeder_combout\);

-- Location: FF_X92_Y69_N31
\PE7|A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[5]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(5));

-- Location: LCCOMB_X92_Y69_N16
\PE7|A|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[6]~feeder_combout\ = \a2[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[6]~input_o\,
	combout => \PE7|A|Q[6]~feeder_combout\);

-- Location: FF_X92_Y69_N17
\PE7|A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[6]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(6));

-- Location: LCCOMB_X92_Y69_N22
\PE7|A|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE7|A|Q[7]~feeder_combout\ = \a2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2[7]~input_o\,
	combout => \PE7|A|Q[7]~feeder_combout\);

-- Location: FF_X92_Y69_N23
\PE7|A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE7|A|Q[7]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE7|A|Q\(7));

-- Location: LCCOMB_X91_Y69_N8
\w23[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[0]~feeder_combout\ = \w2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[0]~input_o\,
	combout => \w23[0]~feeder_combout\);

-- Location: FF_X91_Y69_N9
\w23[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(0));

-- Location: LCCOMB_X91_Y69_N18
\w23[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[1]~feeder_combout\ = \w2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[1]~input_o\,
	combout => \w23[1]~feeder_combout\);

-- Location: FF_X91_Y69_N19
\w23[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(1));

-- Location: LCCOMB_X91_Y69_N24
\w23[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[2]~feeder_combout\ = \w2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[2]~input_o\,
	combout => \w23[2]~feeder_combout\);

-- Location: FF_X91_Y69_N25
\w23[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(2));

-- Location: LCCOMB_X91_Y69_N26
\w23[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[3]~feeder_combout\ = \w2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[3]~input_o\,
	combout => \w23[3]~feeder_combout\);

-- Location: FF_X91_Y69_N27
\w23[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(3));

-- Location: LCCOMB_X91_Y69_N0
\w23[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[4]~feeder_combout\ = \w2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[4]~input_o\,
	combout => \w23[4]~feeder_combout\);

-- Location: FF_X91_Y69_N1
\w23[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(4));

-- Location: LCCOMB_X91_Y69_N6
\w23[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[5]~feeder_combout\ = \w2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[5]~input_o\,
	combout => \w23[5]~feeder_combout\);

-- Location: FF_X91_Y69_N7
\w23[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(5));

-- Location: LCCOMB_X91_Y69_N16
\w23[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[6]~feeder_combout\ = \w2[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[6]~input_o\,
	combout => \w23[6]~feeder_combout\);

-- Location: FF_X91_Y69_N17
\w23[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(6));

-- Location: LCCOMB_X91_Y69_N10
\w23[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w23[7]~feeder_combout\ = \w2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[7]~input_o\,
	combout => \w23[7]~feeder_combout\);

-- Location: FF_X91_Y69_N11
\w23[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w23[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w23(7));

-- Location: DSPMULT_X93_Y69_N0
\PE8|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE8|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y69_N2
\PE8|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE8|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X70_Y68_N1
\PE4|A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[0]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(0));

-- Location: FF_X70_Y68_N9
\PE4|A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[1]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(1));

-- Location: FF_X70_Y68_N27
\PE4|A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[2]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(2));

-- Location: FF_X70_Y68_N15
\PE4|A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[3]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(3));

-- Location: FF_X70_Y68_N21
\PE4|A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[4]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(4));

-- Location: FF_X70_Y68_N11
\PE4|A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[5]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(5));

-- Location: FF_X70_Y68_N23
\PE4|A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[6]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(6));

-- Location: FF_X70_Y68_N29
\PE4|A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a1[7]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE4|A|Q\(7));

-- Location: LCCOMB_X76_Y68_N24
\w22[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[0]~feeder_combout\ = \w1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[0]~input_o\,
	combout => \w22[0]~feeder_combout\);

-- Location: FF_X76_Y68_N25
\w22[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w22[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(0));

-- Location: FF_X76_Y68_N15
\w22[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[1]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(1));

-- Location: FF_X75_Y68_N29
\w22[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[2]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(2));

-- Location: LCCOMB_X75_Y68_N10
\w22[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[3]~feeder_combout\ = \w1[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[3]~input_o\,
	combout => \w22[3]~feeder_combout\);

-- Location: FF_X75_Y68_N11
\w22[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w22[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(3));

-- Location: FF_X75_Y68_N17
\w22[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[4]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(4));

-- Location: LCCOMB_X76_Y68_N0
\w22[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[5]~feeder_combout\ = \w1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[5]~input_o\,
	combout => \w22[5]~feeder_combout\);

-- Location: FF_X76_Y68_N1
\w22[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w22[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(5));

-- Location: FF_X76_Y68_N7
\w22[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[6]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(6));

-- Location: LCCOMB_X75_Y68_N22
\w22[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w22[7]~feeder_combout\ = \w1[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[7]~input_o\,
	combout => \w22[7]~feeder_combout\);

-- Location: FF_X75_Y68_N23
\w22[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w22[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w22(7));

-- Location: DSPMULT_X71_Y68_N0
\PE5|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE5|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y68_N2
\PE5|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE5|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X72_Y70_N7
\PE1|A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a0[0]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(0));

-- Location: LCCOMB_X72_Y70_N24
\PE1|A|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|A|Q[1]~feeder_combout\ = \a0[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0[1]~input_o\,
	combout => \PE1|A|Q[1]~feeder_combout\);

-- Location: FF_X72_Y70_N25
\PE1|A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|A|Q[1]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(1));

-- Location: FF_X70_Y70_N19
\PE1|A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a0[2]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(2));

-- Location: LCCOMB_X70_Y70_N0
\PE1|A|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|A|Q[3]~feeder_combout\ = \a0[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0[3]~input_o\,
	combout => \PE1|A|Q[3]~feeder_combout\);

-- Location: FF_X70_Y70_N1
\PE1|A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|A|Q[3]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(3));

-- Location: LCCOMB_X73_Y70_N8
\PE1|A|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|A|Q[4]~feeder_combout\ = \a0[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0[4]~input_o\,
	combout => \PE1|A|Q[4]~feeder_combout\);

-- Location: FF_X73_Y70_N9
\PE1|A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|A|Q[4]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(4));

-- Location: LCCOMB_X69_Y70_N8
\PE1|A|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|A|Q[5]~feeder_combout\ = \a0[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0[5]~input_o\,
	combout => \PE1|A|Q[5]~feeder_combout\);

-- Location: FF_X69_Y70_N9
\PE1|A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|A|Q[5]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(5));

-- Location: FF_X70_Y70_N3
\PE1|A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \a0[6]~input_o\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(6));

-- Location: LCCOMB_X72_Y70_N10
\PE1|A|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE1|A|Q[7]~feeder_combout\ = \a0[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0[7]~input_o\,
	combout => \PE1|A|Q[7]~feeder_combout\);

-- Location: FF_X72_Y70_N11
\PE1|A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE1|A|Q[7]~feeder_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE1|A|Q\(7));

-- Location: LCCOMB_X75_Y70_N16
\w21[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[0]~feeder_combout\ = \w0[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[0]~input_o\,
	combout => \w21[0]~feeder_combout\);

-- Location: FF_X75_Y70_N17
\w21[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(0));

-- Location: LCCOMB_X75_Y70_N30
\w21[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[1]~feeder_combout\ = \w0[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[1]~input_o\,
	combout => \w21[1]~feeder_combout\);

-- Location: FF_X75_Y70_N31
\w21[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(1));

-- Location: LCCOMB_X75_Y70_N20
\w21[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[2]~feeder_combout\ = \w0[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[2]~input_o\,
	combout => \w21[2]~feeder_combout\);

-- Location: FF_X75_Y70_N21
\w21[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(2));

-- Location: LCCOMB_X75_Y70_N6
\w21[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[3]~feeder_combout\ = \w0[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[3]~input_o\,
	combout => \w21[3]~feeder_combout\);

-- Location: FF_X75_Y70_N7
\w21[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(3));

-- Location: LCCOMB_X75_Y70_N28
\w21[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[4]~feeder_combout\ = \w0[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[4]~input_o\,
	combout => \w21[4]~feeder_combout\);

-- Location: FF_X75_Y70_N29
\w21[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(4));

-- Location: LCCOMB_X75_Y70_N18
\w21[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[5]~feeder_combout\ = \w0[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[5]~input_o\,
	combout => \w21[5]~feeder_combout\);

-- Location: FF_X75_Y70_N19
\w21[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(5));

-- Location: LCCOMB_X75_Y70_N24
\w21[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[6]~feeder_combout\ = \w0[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[6]~input_o\,
	combout => \w21[6]~feeder_combout\);

-- Location: FF_X75_Y70_N25
\w21[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(6));

-- Location: LCCOMB_X75_Y70_N26
\w21[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w21[7]~feeder_combout\ = \w0[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[7]~input_o\,
	combout => \w21[7]~feeder_combout\);

-- Location: FF_X75_Y70_N27
\w21[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w21[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w21(7));

-- Location: DSPMULT_X71_Y70_N0
\PE2|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE2|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y70_N2
\PE2|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE2|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y70_N22
\PE2|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|LessThan1~3_combout\ = (((!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\)) # 
-- (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \PE2|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X70_Y70_N28
\PE2|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|LessThan1~0_combout\ = (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- !\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \PE2|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X70_Y70_N4
\PE2|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|LessThan1~2_combout\ = (((!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\)) # 
-- (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \PE2|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X70_Y70_N10
\PE2|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|LessThan1~1_combout\ = (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- !\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \PE2|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X70_Y70_N24
\PE2|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|LessThan1~4_combout\ = (\PE2|BigMAC|LessThan1~0_combout\ & (\PE2|BigMAC|LessThan1~1_combout\ & ((\PE2|BigMAC|LessThan1~3_combout\) # (\PE2|BigMAC|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|LessThan1~3_combout\,
	datab => \PE2|BigMAC|LessThan1~0_combout\,
	datac => \PE2|BigMAC|LessThan1~2_combout\,
	datad => \PE2|BigMAC|LessThan1~1_combout\,
	combout => \PE2|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X70_Y70_N30
\PE2|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[7]~7_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[7]~7_combout\);

-- Location: FF_X70_Y70_N31
\PE2|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(7));

-- Location: LCCOMB_X70_Y70_N20
\PE2|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[6]~6_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X70_Y70_N21
\PE2|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(6));

-- Location: LCCOMB_X70_Y70_N14
\PE2|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[5]~5_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X70_Y70_N15
\PE2|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(5));

-- Location: LCCOMB_X70_Y70_N8
\PE2|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[4]~4_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X70_Y70_N9
\PE2|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(4));

-- Location: LCCOMB_X70_Y70_N26
\PE2|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[3]~3_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X70_Y70_N27
\PE2|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(3));

-- Location: LCCOMB_X70_Y70_N16
\PE2|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[2]~2_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X70_Y70_N17
\PE2|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(2));

-- Location: LCCOMB_X70_Y70_N6
\PE2|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[1]~1_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE2|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X70_Y70_N7
\PE2|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(1));

-- Location: LCCOMB_X70_Y70_N12
\PE2|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE2|BigMAC|partial_8[0]~0_combout\ = (\PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\) # (!\PE2|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE2|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => \PE2|BigMAC|LessThan1~4_combout\,
	combout => \PE2|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X70_Y70_N13
\PE2|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE2|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE2|Y|Q\(0));

-- Location: LCCOMB_X70_Y68_N0
\PE5|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[0]~0_combout\ = (\PE2|Y|Q\(0) & (\PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\PE2|Y|Q\(0) & (\PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \PE5|BigMAC|partial_16[0]~1\ = CARRY((\PE2|Y|Q\(0) & \PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|Y|Q\(0),
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \PE5|BigMAC|partial_16[0]~0_combout\,
	cout => \PE5|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X70_Y68_N2
\PE5|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[1]~2_combout\ = (\PE2|Y|Q\(1) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\PE5|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE5|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE2|Y|Q\(1) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE5|BigMAC|partial_16[0]~1\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE5|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE5|BigMAC|partial_16[1]~3\ = CARRY((\PE2|Y|Q\(1) & (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\PE5|BigMAC|partial_16[0]~1\)) # (!\PE2|Y|Q\(1) & ((!\PE5|BigMAC|partial_16[0]~1\) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|Y|Q\(1),
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[0]~1\,
	combout => \PE5|BigMAC|partial_16[1]~2_combout\,
	cout => \PE5|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X70_Y68_N4
\PE5|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[2]~4_combout\ = ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\PE2|Y|Q\(2) $ (!\PE5|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE5|BigMAC|partial_16[2]~5\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\PE2|Y|Q\(2)) # (!\PE5|BigMAC|partial_16[1]~3\))) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\PE2|Y|Q\(2) & !\PE5|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \PE2|Y|Q\(2),
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[1]~3\,
	combout => \PE5|BigMAC|partial_16[2]~4_combout\,
	cout => \PE5|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X70_Y68_N6
\PE5|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[3]~6_combout\ = (\PE2|Y|Q\(3) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\PE5|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE5|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE2|Y|Q\(3) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE5|BigMAC|partial_16[2]~5\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE5|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE5|BigMAC|partial_16[3]~7\ = CARRY((\PE2|Y|Q\(3) & (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\PE5|BigMAC|partial_16[2]~5\)) # (!\PE2|Y|Q\(3) & ((!\PE5|BigMAC|partial_16[2]~5\) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|Y|Q\(3),
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[2]~5\,
	combout => \PE5|BigMAC|partial_16[3]~6_combout\,
	cout => \PE5|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X70_Y68_N8
\PE5|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[4]~8_combout\ = ((\PE2|Y|Q\(4) $ (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (!\PE5|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE5|BigMAC|partial_16[4]~9\ = CARRY((\PE2|Y|Q\(4) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE5|BigMAC|partial_16[3]~7\))) # (!\PE2|Y|Q\(4) & (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\PE5|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|Y|Q\(4),
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[3]~7\,
	combout => \PE5|BigMAC|partial_16[4]~8_combout\,
	cout => \PE5|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X70_Y68_N10
\PE5|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[5]~10_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE2|Y|Q\(5) & (\PE5|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE2|Y|Q\(5) & (!\PE5|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE2|Y|Q\(5) & (!\PE5|BigMAC|partial_16[4]~9\)) # (!\PE2|Y|Q\(5) & ((\PE5|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE5|BigMAC|partial_16[5]~11\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE2|Y|Q\(5) & !\PE5|BigMAC|partial_16[4]~9\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\PE5|BigMAC|partial_16[4]~9\) # (!\PE2|Y|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE2|Y|Q\(5),
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[4]~9\,
	combout => \PE5|BigMAC|partial_16[5]~10_combout\,
	cout => \PE5|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X70_Y68_N12
\PE5|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[6]~12_combout\ = ((\PE2|Y|Q\(6) $ (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\PE5|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE5|BigMAC|partial_16[6]~13\ = CARRY((\PE2|Y|Q\(6) & ((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\PE5|BigMAC|partial_16[5]~11\))) # (!\PE2|Y|Q\(6) & (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\PE5|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE2|Y|Q\(6),
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[5]~11\,
	combout => \PE5|BigMAC|partial_16[6]~12_combout\,
	cout => \PE5|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X70_Y68_N14
\PE5|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[7]~14_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE2|Y|Q\(7) & (\PE5|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE2|Y|Q\(7) & (!\PE5|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE2|Y|Q\(7) & (!\PE5|BigMAC|partial_16[6]~13\)) # (!\PE2|Y|Q\(7) & ((\PE5|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE5|BigMAC|partial_16[7]~15\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE2|Y|Q\(7) & !\PE5|BigMAC|partial_16[6]~13\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\PE5|BigMAC|partial_16[6]~13\) # (!\PE2|Y|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \PE2|Y|Q\(7),
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[6]~13\,
	combout => \PE5|BigMAC|partial_16[7]~14_combout\,
	cout => \PE5|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X70_Y68_N16
\PE5|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[8]~16_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE5|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE5|BigMAC|partial_16[7]~15\ & VCC))
-- \PE5|BigMAC|partial_16[8]~17\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE5|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[7]~15\,
	combout => \PE5|BigMAC|partial_16[8]~16_combout\,
	cout => \PE5|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X70_Y68_N18
\PE5|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[9]~18_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE5|BigMAC|partial_16[8]~17\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE5|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE5|BigMAC|partial_16[9]~19\ = CARRY((!\PE5|BigMAC|partial_16[8]~17\) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[8]~17\,
	combout => \PE5|BigMAC|partial_16[9]~18_combout\,
	cout => \PE5|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X70_Y68_N20
\PE5|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[10]~20_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE5|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE5|BigMAC|partial_16[9]~19\ & VCC))
-- \PE5|BigMAC|partial_16[10]~21\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE5|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[9]~19\,
	combout => \PE5|BigMAC|partial_16[10]~20_combout\,
	cout => \PE5|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X70_Y68_N22
\PE5|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[11]~22_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE5|BigMAC|partial_16[10]~21\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE5|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE5|BigMAC|partial_16[11]~23\ = CARRY((!\PE5|BigMAC|partial_16[10]~21\) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[10]~21\,
	combout => \PE5|BigMAC|partial_16[11]~22_combout\,
	cout => \PE5|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X69_Y68_N10
\PE5|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|LessThan1~3_combout\ = (!\PE5|BigMAC|partial_16[10]~20_combout\ & (!\PE5|BigMAC|partial_16[8]~16_combout\ & (!\PE5|BigMAC|partial_16[9]~18_combout\ & !\PE5|BigMAC|partial_16[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[10]~20_combout\,
	datab => \PE5|BigMAC|partial_16[8]~16_combout\,
	datac => \PE5|BigMAC|partial_16[9]~18_combout\,
	datad => \PE5|BigMAC|partial_16[11]~22_combout\,
	combout => \PE5|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X69_Y68_N12
\PE5|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|LessThan1~0_combout\ = (((!\PE5|BigMAC|partial_16[3]~6_combout\) # (!\PE5|BigMAC|partial_16[2]~4_combout\)) # (!\PE5|BigMAC|partial_16[0]~0_combout\)) # (!\PE5|BigMAC|partial_16[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[1]~2_combout\,
	datab => \PE5|BigMAC|partial_16[0]~0_combout\,
	datac => \PE5|BigMAC|partial_16[2]~4_combout\,
	datad => \PE5|BigMAC|partial_16[3]~6_combout\,
	combout => \PE5|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X69_Y68_N18
\PE5|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|LessThan1~1_combout\ = (!\PE5|BigMAC|partial_16[5]~10_combout\) # (!\PE5|BigMAC|partial_16[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE5|BigMAC|partial_16[4]~8_combout\,
	datac => \PE5|BigMAC|partial_16[5]~10_combout\,
	combout => \PE5|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X69_Y68_N4
\PE5|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|LessThan1~2_combout\ = (\PE5|BigMAC|LessThan1~0_combout\) # (((\PE5|BigMAC|LessThan1~1_combout\) # (!\PE5|BigMAC|partial_16[7]~14_combout\)) # (!\PE5|BigMAC|partial_16[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~0_combout\,
	datab => \PE5|BigMAC|partial_16[6]~12_combout\,
	datac => \PE5|BigMAC|partial_16[7]~14_combout\,
	datad => \PE5|BigMAC|LessThan1~1_combout\,
	combout => \PE5|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X70_Y68_N24
\PE5|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[12]~24_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE5|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE5|BigMAC|partial_16[11]~23\ & VCC))
-- \PE5|BigMAC|partial_16[12]~25\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE5|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[11]~23\,
	combout => \PE5|BigMAC|partial_16[12]~24_combout\,
	cout => \PE5|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X70_Y68_N26
\PE5|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[13]~26_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE5|BigMAC|partial_16[12]~25\)) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE5|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE5|BigMAC|partial_16[13]~27\ = CARRY((!\PE5|BigMAC|partial_16[12]~25\) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[12]~25\,
	combout => \PE5|BigMAC|partial_16[13]~26_combout\,
	cout => \PE5|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X70_Y68_N28
\PE5|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[14]~28_combout\ = (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE5|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE5|BigMAC|partial_16[13]~27\ & VCC))
-- \PE5|BigMAC|partial_16[14]~29\ = CARRY((\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE5|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE5|BigMAC|partial_16[13]~27\,
	combout => \PE5|BigMAC|partial_16[14]~28_combout\,
	cout => \PE5|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X70_Y68_N30
\PE5|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_16[15]~30_combout\ = \PE5|BigMAC|partial_16[14]~29\ $ (\PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PE5|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE5|BigMAC|partial_16[14]~29\,
	combout => \PE5|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X69_Y68_N20
\PE5|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|LessThan1~4_combout\ = (!\PE5|BigMAC|partial_16[12]~24_combout\ & (!\PE5|BigMAC|partial_16[13]~26_combout\ & (!\PE5|BigMAC|partial_16[15]~30_combout\ & !\PE5|BigMAC|partial_16[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[12]~24_combout\,
	datab => \PE5|BigMAC|partial_16[13]~26_combout\,
	datac => \PE5|BigMAC|partial_16[15]~30_combout\,
	datad => \PE5|BigMAC|partial_16[14]~28_combout\,
	combout => \PE5|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X69_Y68_N28
\PE5|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[0]~0_combout\ = ((\PE5|BigMAC|partial_16[0]~0_combout\) # ((!\PE5|BigMAC|LessThan1~4_combout\) # (!\PE5|BigMAC|LessThan1~2_combout\))) # (!\PE5|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~3_combout\,
	datab => \PE5|BigMAC|partial_16[0]~0_combout\,
	datac => \PE5|BigMAC|LessThan1~2_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X69_Y68_N29
\PE5|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(0));

-- Location: LCCOMB_X94_Y69_N0
\PE8|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[0]~0_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & (\PE5|Y|Q\(0) $ (VCC))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & (\PE5|Y|Q\(0) & VCC))
-- \PE8|BigMAC|partial_16[0]~1\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & \PE5|Y|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datab => \PE5|Y|Q\(0),
	datad => VCC,
	combout => \PE8|BigMAC|partial_16[0]~0_combout\,
	cout => \PE8|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X69_Y68_N22
\PE5|BigMAC|partial_8[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[7]~8_combout\ = ((\PE5|BigMAC|partial_16[7]~14_combout\) # ((!\PE5|BigMAC|LessThan1~4_combout\) # (!\PE5|BigMAC|LessThan1~2_combout\))) # (!\PE5|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~3_combout\,
	datab => \PE5|BigMAC|partial_16[7]~14_combout\,
	datac => \PE5|BigMAC|LessThan1~2_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[7]~8_combout\);

-- Location: FF_X69_Y68_N23
\PE5|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[7]~8_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(7));

-- Location: LCCOMB_X69_Y68_N24
\PE5|BigMAC|partial_8[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[6]~7_combout\ = (((\PE5|BigMAC|partial_16[6]~12_combout\) # (!\PE5|BigMAC|LessThan1~4_combout\)) # (!\PE5|BigMAC|LessThan1~2_combout\)) # (!\PE5|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~3_combout\,
	datab => \PE5|BigMAC|LessThan1~2_combout\,
	datac => \PE5|BigMAC|partial_16[6]~12_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[6]~7_combout\);

-- Location: FF_X69_Y68_N25
\PE5|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[6]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(6));

-- Location: LCCOMB_X69_Y68_N6
\PE5|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[5]~5_combout\ = (\PE5|BigMAC|partial_16[12]~24_combout\) # ((\PE5|BigMAC|partial_16[5]~10_combout\) # ((!\PE5|BigMAC|LessThan1~3_combout\) # (!\PE5|BigMAC|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[12]~24_combout\,
	datab => \PE5|BigMAC|partial_16[5]~10_combout\,
	datac => \PE5|BigMAC|LessThan1~2_combout\,
	datad => \PE5|BigMAC|LessThan1~3_combout\,
	combout => \PE5|BigMAC|partial_8[5]~5_combout\);

-- Location: LCCOMB_X69_Y68_N14
\PE5|BigMAC|partial_8[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[5]~6_combout\ = (\PE5|BigMAC|partial_16[13]~26_combout\) # ((\PE5|BigMAC|partial_16[14]~28_combout\) # ((\PE5|BigMAC|partial_16[15]~30_combout\) # (\PE5|BigMAC|partial_8[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[13]~26_combout\,
	datab => \PE5|BigMAC|partial_16[14]~28_combout\,
	datac => \PE5|BigMAC|partial_16[15]~30_combout\,
	datad => \PE5|BigMAC|partial_8[5]~5_combout\,
	combout => \PE5|BigMAC|partial_8[5]~6_combout\);

-- Location: FF_X69_Y68_N15
\PE5|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[5]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(5));

-- Location: LCCOMB_X69_Y68_N16
\PE5|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[4]~4_combout\ = (((\PE5|BigMAC|partial_16[4]~8_combout\) # (!\PE5|BigMAC|LessThan1~4_combout\)) # (!\PE5|BigMAC|LessThan1~2_combout\)) # (!\PE5|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~3_combout\,
	datab => \PE5|BigMAC|LessThan1~2_combout\,
	datac => \PE5|BigMAC|partial_16[4]~8_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X69_Y68_N17
\PE5|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(4));

-- Location: LCCOMB_X69_Y68_N30
\PE5|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[3]~3_combout\ = (\PE5|BigMAC|partial_16[3]~6_combout\) # (((!\PE5|BigMAC|LessThan1~4_combout\) # (!\PE5|BigMAC|LessThan1~3_combout\)) # (!\PE5|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[3]~6_combout\,
	datab => \PE5|BigMAC|LessThan1~2_combout\,
	datac => \PE5|BigMAC|LessThan1~3_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X69_Y68_N31
\PE5|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(3));

-- Location: LCCOMB_X69_Y68_N8
\PE5|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[2]~2_combout\ = (((\PE5|BigMAC|partial_16[2]~4_combout\) # (!\PE5|BigMAC|LessThan1~4_combout\)) # (!\PE5|BigMAC|LessThan1~2_combout\)) # (!\PE5|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|LessThan1~3_combout\,
	datab => \PE5|BigMAC|LessThan1~2_combout\,
	datac => \PE5|BigMAC|partial_16[2]~4_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X69_Y68_N9
\PE5|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(2));

-- Location: LCCOMB_X69_Y68_N26
\PE5|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE5|BigMAC|partial_8[1]~1_combout\ = (\PE5|BigMAC|partial_16[1]~2_combout\) # (((!\PE5|BigMAC|LessThan1~4_combout\) # (!\PE5|BigMAC|LessThan1~3_combout\)) # (!\PE5|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|BigMAC|partial_16[1]~2_combout\,
	datab => \PE5|BigMAC|LessThan1~2_combout\,
	datac => \PE5|BigMAC|LessThan1~3_combout\,
	datad => \PE5|BigMAC|LessThan1~4_combout\,
	combout => \PE5|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X69_Y68_N27
\PE5|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE5|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE5|Y|Q\(1));

-- Location: LCCOMB_X94_Y69_N2
\PE8|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[1]~2_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE5|Y|Q\(1) & (\PE8|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE5|Y|Q\(1) & (!\PE8|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE5|Y|Q\(1) & (!\PE8|BigMAC|partial_16[0]~1\)) # (!\PE5|Y|Q\(1) & ((\PE8|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE8|BigMAC|partial_16[1]~3\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE5|Y|Q\(1) & !\PE8|BigMAC|partial_16[0]~1\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\PE8|BigMAC|partial_16[0]~1\) # (!\PE5|Y|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \PE5|Y|Q\(1),
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[0]~1\,
	combout => \PE8|BigMAC|partial_16[1]~2_combout\,
	cout => \PE8|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X94_Y69_N4
\PE8|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[2]~4_combout\ = ((\PE5|Y|Q\(2) $ (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (!\PE8|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE8|BigMAC|partial_16[2]~5\ = CARRY((\PE5|Y|Q\(2) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\PE8|BigMAC|partial_16[1]~3\))) # (!\PE5|Y|Q\(2) & (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & !\PE8|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|Y|Q\(2),
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[1]~3\,
	combout => \PE8|BigMAC|partial_16[2]~4_combout\,
	cout => \PE8|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X94_Y69_N6
\PE8|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[3]~6_combout\ = (\PE5|Y|Q\(3) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\PE8|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE8|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE5|Y|Q\(3) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE8|BigMAC|partial_16[2]~5\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE8|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE8|BigMAC|partial_16[3]~7\ = CARRY((\PE5|Y|Q\(3) & (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\PE8|BigMAC|partial_16[2]~5\)) # (!\PE5|Y|Q\(3) & ((!\PE8|BigMAC|partial_16[2]~5\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|Y|Q\(3),
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[2]~5\,
	combout => \PE8|BigMAC|partial_16[3]~6_combout\,
	cout => \PE8|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X94_Y69_N8
\PE8|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[4]~8_combout\ = ((\PE5|Y|Q\(4) $ (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (!\PE8|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE8|BigMAC|partial_16[4]~9\ = CARRY((\PE5|Y|Q\(4) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE8|BigMAC|partial_16[3]~7\))) # (!\PE5|Y|Q\(4) & (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\PE8|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|Y|Q\(4),
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[3]~7\,
	combout => \PE8|BigMAC|partial_16[4]~8_combout\,
	cout => \PE8|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X94_Y69_N10
\PE8|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[5]~10_combout\ = (\PE5|Y|Q\(5) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\PE8|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE8|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE5|Y|Q\(5) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE8|BigMAC|partial_16[4]~9\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE8|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE8|BigMAC|partial_16[5]~11\ = CARRY((\PE5|Y|Q\(5) & (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\PE8|BigMAC|partial_16[4]~9\)) # (!\PE5|Y|Q\(5) & ((!\PE8|BigMAC|partial_16[4]~9\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|Y|Q\(5),
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[4]~9\,
	combout => \PE8|BigMAC|partial_16[5]~10_combout\,
	cout => \PE8|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X94_Y69_N12
\PE8|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[6]~12_combout\ = ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\PE5|Y|Q\(6) $ (!\PE8|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE8|BigMAC|partial_16[6]~13\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\PE5|Y|Q\(6)) # (!\PE8|BigMAC|partial_16[5]~11\))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\PE5|Y|Q\(6) & !\PE8|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE5|Y|Q\(6),
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[5]~11\,
	combout => \PE8|BigMAC|partial_16[6]~12_combout\,
	cout => \PE8|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X94_Y69_N14
\PE8|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[7]~14_combout\ = (\PE5|Y|Q\(7) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\PE8|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE8|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE5|Y|Q\(7) & ((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE8|BigMAC|partial_16[6]~13\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE8|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE8|BigMAC|partial_16[7]~15\ = CARRY((\PE5|Y|Q\(7) & (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\PE8|BigMAC|partial_16[6]~13\)) # (!\PE5|Y|Q\(7) & ((!\PE8|BigMAC|partial_16[6]~13\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE5|Y|Q\(7),
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[6]~13\,
	combout => \PE8|BigMAC|partial_16[7]~14_combout\,
	cout => \PE8|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X94_Y69_N16
\PE8|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[8]~16_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE8|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE8|BigMAC|partial_16[7]~15\ & VCC))
-- \PE8|BigMAC|partial_16[8]~17\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE8|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[7]~15\,
	combout => \PE8|BigMAC|partial_16[8]~16_combout\,
	cout => \PE8|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X94_Y69_N18
\PE8|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[9]~18_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE8|BigMAC|partial_16[8]~17\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE8|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE8|BigMAC|partial_16[9]~19\ = CARRY((!\PE8|BigMAC|partial_16[8]~17\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[8]~17\,
	combout => \PE8|BigMAC|partial_16[9]~18_combout\,
	cout => \PE8|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X94_Y69_N20
\PE8|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[10]~20_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE8|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE8|BigMAC|partial_16[9]~19\ & VCC))
-- \PE8|BigMAC|partial_16[10]~21\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE8|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[9]~19\,
	combout => \PE8|BigMAC|partial_16[10]~20_combout\,
	cout => \PE8|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X94_Y69_N22
\PE8|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[11]~22_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE8|BigMAC|partial_16[10]~21\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE8|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE8|BigMAC|partial_16[11]~23\ = CARRY((!\PE8|BigMAC|partial_16[10]~21\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[10]~21\,
	combout => \PE8|BigMAC|partial_16[11]~22_combout\,
	cout => \PE8|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X95_Y69_N8
\PE8|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|LessThan1~3_combout\ = (!\PE8|BigMAC|partial_16[8]~16_combout\ & (!\PE8|BigMAC|partial_16[9]~18_combout\ & (!\PE8|BigMAC|partial_16[10]~20_combout\ & !\PE8|BigMAC|partial_16[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[8]~16_combout\,
	datab => \PE8|BigMAC|partial_16[9]~18_combout\,
	datac => \PE8|BigMAC|partial_16[10]~20_combout\,
	datad => \PE8|BigMAC|partial_16[11]~22_combout\,
	combout => \PE8|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X95_Y69_N4
\PE8|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|LessThan1~0_combout\ = (((!\PE8|BigMAC|partial_16[1]~2_combout\) # (!\PE8|BigMAC|partial_16[3]~6_combout\)) # (!\PE8|BigMAC|partial_16[2]~4_combout\)) # (!\PE8|BigMAC|partial_16[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[0]~0_combout\,
	datab => \PE8|BigMAC|partial_16[2]~4_combout\,
	datac => \PE8|BigMAC|partial_16[3]~6_combout\,
	datad => \PE8|BigMAC|partial_16[1]~2_combout\,
	combout => \PE8|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X96_Y69_N24
\PE8|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|LessThan1~1_combout\ = (!\PE8|BigMAC|partial_16[5]~10_combout\) # (!\PE8|BigMAC|partial_16[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE8|BigMAC|partial_16[4]~8_combout\,
	datad => \PE8|BigMAC|partial_16[5]~10_combout\,
	combout => \PE8|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X95_Y69_N10
\PE8|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|LessThan1~2_combout\ = ((\PE8|BigMAC|LessThan1~0_combout\) # ((\PE8|BigMAC|LessThan1~1_combout\) # (!\PE8|BigMAC|partial_16[7]~14_combout\))) # (!\PE8|BigMAC|partial_16[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[6]~12_combout\,
	datab => \PE8|BigMAC|LessThan1~0_combout\,
	datac => \PE8|BigMAC|partial_16[7]~14_combout\,
	datad => \PE8|BigMAC|LessThan1~1_combout\,
	combout => \PE8|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X94_Y69_N24
\PE8|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[12]~24_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE8|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE8|BigMAC|partial_16[11]~23\ & VCC))
-- \PE8|BigMAC|partial_16[12]~25\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE8|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[11]~23\,
	combout => \PE8|BigMAC|partial_16[12]~24_combout\,
	cout => \PE8|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X94_Y69_N26
\PE8|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[13]~26_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE8|BigMAC|partial_16[12]~25\)) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE8|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE8|BigMAC|partial_16[13]~27\ = CARRY((!\PE8|BigMAC|partial_16[12]~25\) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[12]~25\,
	combout => \PE8|BigMAC|partial_16[13]~26_combout\,
	cout => \PE8|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X94_Y69_N28
\PE8|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[14]~28_combout\ = (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE8|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE8|BigMAC|partial_16[13]~27\ & VCC))
-- \PE8|BigMAC|partial_16[14]~29\ = CARRY((\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE8|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE8|BigMAC|partial_16[13]~27\,
	combout => \PE8|BigMAC|partial_16[14]~28_combout\,
	cout => \PE8|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X94_Y69_N30
\PE8|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_16[15]~30_combout\ = \PE8|BigMAC|partial_16[14]~29\ $ (\PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PE8|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE8|BigMAC|partial_16[14]~29\,
	combout => \PE8|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X95_Y69_N2
\PE8|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|LessThan1~4_combout\ = (!\PE8|BigMAC|partial_16[13]~26_combout\ & (!\PE8|BigMAC|partial_16[12]~24_combout\ & (!\PE8|BigMAC|partial_16[14]~28_combout\ & !\PE8|BigMAC|partial_16[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[13]~26_combout\,
	datab => \PE8|BigMAC|partial_16[12]~24_combout\,
	datac => \PE8|BigMAC|partial_16[14]~28_combout\,
	datad => \PE8|BigMAC|partial_16[15]~30_combout\,
	combout => \PE8|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X95_Y69_N12
\PE8|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[0]~0_combout\ = (\PE8|BigMAC|partial_16[0]~0_combout\) # (((!\PE8|BigMAC|LessThan1~4_combout\) # (!\PE8|BigMAC|LessThan1~2_combout\)) # (!\PE8|BigMAC|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[0]~0_combout\,
	datab => \PE8|BigMAC|LessThan1~3_combout\,
	datac => \PE8|BigMAC|LessThan1~2_combout\,
	datad => \PE8|BigMAC|LessThan1~4_combout\,
	combout => \PE8|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X95_Y69_N13
\PE8|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(0));

-- Location: LCCOMB_X95_Y69_N14
\PE8|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[1]~1_combout\ = (\PE8|BigMAC|partial_16[1]~2_combout\) # (((!\PE8|BigMAC|LessThan1~4_combout\) # (!\PE8|BigMAC|LessThan1~2_combout\)) # (!\PE8|BigMAC|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[1]~2_combout\,
	datab => \PE8|BigMAC|LessThan1~3_combout\,
	datac => \PE8|BigMAC|LessThan1~2_combout\,
	datad => \PE8|BigMAC|LessThan1~4_combout\,
	combout => \PE8|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X95_Y69_N15
\PE8|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(1));

-- Location: LCCOMB_X95_Y69_N24
\PE8|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[2]~2_combout\ = ((\PE8|BigMAC|partial_16[2]~4_combout\) # ((!\PE8|BigMAC|LessThan1~4_combout\) # (!\PE8|BigMAC|LessThan1~3_combout\))) # (!\PE8|BigMAC|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|LessThan1~2_combout\,
	datab => \PE8|BigMAC|partial_16[2]~4_combout\,
	datac => \PE8|BigMAC|LessThan1~3_combout\,
	datad => \PE8|BigMAC|LessThan1~4_combout\,
	combout => \PE8|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X95_Y69_N25
\PE8|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(2));

-- Location: LCCOMB_X95_Y69_N20
\PE8|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[3]~3_combout\ = (\PE8|BigMAC|partial_16[3]~6_combout\) # ((\PE8|BigMAC|partial_16[12]~24_combout\) # ((!\PE8|BigMAC|LessThan1~2_combout\) # (!\PE8|BigMAC|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[3]~6_combout\,
	datab => \PE8|BigMAC|partial_16[12]~24_combout\,
	datac => \PE8|BigMAC|LessThan1~3_combout\,
	datad => \PE8|BigMAC|LessThan1~2_combout\,
	combout => \PE8|BigMAC|partial_8[3]~3_combout\);

-- Location: LCCOMB_X95_Y69_N22
\PE8|BigMAC|partial_8[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[3]~4_combout\ = (\PE8|BigMAC|partial_16[14]~28_combout\) # ((\PE8|BigMAC|partial_16[15]~30_combout\) # ((\PE8|BigMAC|partial_16[13]~26_combout\) # (\PE8|BigMAC|partial_8[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[14]~28_combout\,
	datab => \PE8|BigMAC|partial_16[15]~30_combout\,
	datac => \PE8|BigMAC|partial_16[13]~26_combout\,
	datad => \PE8|BigMAC|partial_8[3]~3_combout\,
	combout => \PE8|BigMAC|partial_8[3]~4_combout\);

-- Location: FF_X95_Y69_N23
\PE8|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[3]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(3));

-- Location: LCCOMB_X95_Y69_N18
\PE8|BigMAC|partial_8[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[4]~5_combout\ = (\PE8|BigMAC|partial_16[4]~8_combout\) # ((\PE8|BigMAC|partial_16[12]~24_combout\) # ((\PE8|BigMAC|partial_16[13]~26_combout\) # (!\PE8|BigMAC|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[4]~8_combout\,
	datab => \PE8|BigMAC|partial_16[12]~24_combout\,
	datac => \PE8|BigMAC|partial_16[13]~26_combout\,
	datad => \PE8|BigMAC|LessThan1~2_combout\,
	combout => \PE8|BigMAC|partial_8[4]~5_combout\);

-- Location: LCCOMB_X95_Y69_N0
\PE8|BigMAC|partial_8[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[4]~6_combout\ = (\PE8|BigMAC|partial_16[14]~28_combout\) # ((\PE8|BigMAC|partial_16[15]~30_combout\) # ((\PE8|BigMAC|partial_8[4]~5_combout\) # (!\PE8|BigMAC|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[14]~28_combout\,
	datab => \PE8|BigMAC|partial_16[15]~30_combout\,
	datac => \PE8|BigMAC|LessThan1~3_combout\,
	datad => \PE8|BigMAC|partial_8[4]~5_combout\,
	combout => \PE8|BigMAC|partial_8[4]~6_combout\);

-- Location: FF_X95_Y69_N1
\PE8|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[4]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(4));

-- Location: LCCOMB_X95_Y69_N16
\PE8|BigMAC|partial_8[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[5]~7_combout\ = (\PE8|BigMAC|partial_16[5]~10_combout\) # ((\PE8|BigMAC|partial_16[12]~24_combout\) # ((\PE8|BigMAC|partial_16[13]~26_combout\) # (!\PE8|BigMAC|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[5]~10_combout\,
	datab => \PE8|BigMAC|partial_16[12]~24_combout\,
	datac => \PE8|BigMAC|partial_16[13]~26_combout\,
	datad => \PE8|BigMAC|LessThan1~2_combout\,
	combout => \PE8|BigMAC|partial_8[5]~7_combout\);

-- Location: LCCOMB_X95_Y69_N26
\PE8|BigMAC|partial_8[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[5]~8_combout\ = (\PE8|BigMAC|partial_16[14]~28_combout\) # ((\PE8|BigMAC|partial_16[15]~30_combout\) # ((\PE8|BigMAC|partial_8[5]~7_combout\) # (!\PE8|BigMAC|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[14]~28_combout\,
	datab => \PE8|BigMAC|partial_16[15]~30_combout\,
	datac => \PE8|BigMAC|LessThan1~3_combout\,
	datad => \PE8|BigMAC|partial_8[5]~7_combout\,
	combout => \PE8|BigMAC|partial_8[5]~8_combout\);

-- Location: FF_X95_Y69_N27
\PE8|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[5]~8_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(5));

-- Location: LCCOMB_X95_Y69_N28
\PE8|BigMAC|partial_8[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[6]~9_combout\ = (\PE8|BigMAC|partial_16[6]~12_combout\) # (((!\PE8|BigMAC|LessThan1~4_combout\) # (!\PE8|BigMAC|LessThan1~2_combout\)) # (!\PE8|BigMAC|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[6]~12_combout\,
	datab => \PE8|BigMAC|LessThan1~3_combout\,
	datac => \PE8|BigMAC|LessThan1~2_combout\,
	datad => \PE8|BigMAC|LessThan1~4_combout\,
	combout => \PE8|BigMAC|partial_8[6]~9_combout\);

-- Location: FF_X95_Y69_N29
\PE8|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[6]~9_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(6));

-- Location: LCCOMB_X95_Y69_N6
\PE8|BigMAC|partial_8[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[7]~10_combout\ = (\PE8|BigMAC|partial_16[7]~14_combout\) # ((\PE8|BigMAC|partial_16[12]~24_combout\) # ((!\PE8|BigMAC|LessThan1~2_combout\) # (!\PE8|BigMAC|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[7]~14_combout\,
	datab => \PE8|BigMAC|partial_16[12]~24_combout\,
	datac => \PE8|BigMAC|LessThan1~3_combout\,
	datad => \PE8|BigMAC|LessThan1~2_combout\,
	combout => \PE8|BigMAC|partial_8[7]~10_combout\);

-- Location: LCCOMB_X95_Y69_N30
\PE8|BigMAC|partial_8[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE8|BigMAC|partial_8[7]~11_combout\ = (\PE8|BigMAC|partial_16[14]~28_combout\) # ((\PE8|BigMAC|partial_16[15]~30_combout\) # ((\PE8|BigMAC|partial_16[13]~26_combout\) # (\PE8|BigMAC|partial_8[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE8|BigMAC|partial_16[14]~28_combout\,
	datab => \PE8|BigMAC|partial_16[15]~30_combout\,
	datac => \PE8|BigMAC|partial_16[13]~26_combout\,
	datad => \PE8|BigMAC|partial_8[7]~10_combout\,
	combout => \PE8|BigMAC|partial_8[7]~11_combout\);

-- Location: FF_X95_Y69_N31
\PE8|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE8|BigMAC|partial_8[7]~11_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE8|Y|Q\(7));

-- Location: FF_X94_Y70_N29
\w33[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w2[0]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(0));

-- Location: LCCOMB_X94_Y70_N4
\PE9|Wreg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[0]~feeder_combout\ = w33(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(0),
	combout => \PE9|Wreg|Q[0]~feeder_combout\);

-- Location: FF_X94_Y70_N5
\PE9|Wreg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(0));

-- Location: LCCOMB_X91_Y70_N30
\w33[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w33[1]~feeder_combout\ = \w2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[1]~input_o\,
	combout => \w33[1]~feeder_combout\);

-- Location: FF_X91_Y70_N31
\w33[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w33[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(1));

-- Location: LCCOMB_X94_Y70_N10
\PE9|Wreg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[1]~feeder_combout\ = w33(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(1),
	combout => \PE9|Wreg|Q[1]~feeder_combout\);

-- Location: FF_X94_Y70_N11
\PE9|Wreg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(1));

-- Location: LCCOMB_X94_Y70_N6
\w33[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w33[2]~feeder_combout\ = \w2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[2]~input_o\,
	combout => \w33[2]~feeder_combout\);

-- Location: FF_X94_Y70_N7
\w33[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w33[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(2));

-- Location: LCCOMB_X94_Y70_N12
\PE9|Wreg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[2]~feeder_combout\ = w33(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(2),
	combout => \PE9|Wreg|Q[2]~feeder_combout\);

-- Location: FF_X94_Y70_N13
\PE9|Wreg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(2));

-- Location: FF_X91_Y70_N13
\w33[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w2[3]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(3));

-- Location: LCCOMB_X92_Y70_N10
\PE9|Wreg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[3]~feeder_combout\ = w33(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(3),
	combout => \PE9|Wreg|Q[3]~feeder_combout\);

-- Location: FF_X92_Y70_N11
\PE9|Wreg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(3));

-- Location: LCCOMB_X94_Y70_N24
\w33[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w33[4]~feeder_combout\ = \w2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[4]~input_o\,
	combout => \w33[4]~feeder_combout\);

-- Location: FF_X94_Y70_N25
\w33[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w33[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(4));

-- Location: LCCOMB_X94_Y70_N22
\PE9|Wreg|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[4]~feeder_combout\ = w33(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(4),
	combout => \PE9|Wreg|Q[4]~feeder_combout\);

-- Location: FF_X94_Y70_N23
\PE9|Wreg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(4));

-- Location: LCCOMB_X91_Y70_N6
\w33[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w33[5]~feeder_combout\ = \w2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[5]~input_o\,
	combout => \w33[5]~feeder_combout\);

-- Location: FF_X91_Y70_N7
\w33[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w33[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(5));

-- Location: FF_X92_Y70_N27
\PE9|Wreg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => w33(5),
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(5));

-- Location: FF_X94_Y70_N3
\w33[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w2[6]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(6));

-- Location: LCCOMB_X94_Y70_N20
\PE9|Wreg|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[6]~feeder_combout\ = w33(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(6),
	combout => \PE9|Wreg|Q[6]~feeder_combout\);

-- Location: FF_X94_Y70_N21
\PE9|Wreg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(6));

-- Location: LCCOMB_X94_Y70_N0
\w33[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w33[7]~feeder_combout\ = \w2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w2[7]~input_o\,
	combout => \w33[7]~feeder_combout\);

-- Location: FF_X94_Y70_N1
\w33[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w33[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w33(7));

-- Location: LCCOMB_X94_Y70_N26
\PE9|Wreg|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|Wreg|Q[7]~feeder_combout\ = w33(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w33(7),
	combout => \PE9|Wreg|Q[7]~feeder_combout\);

-- Location: FF_X94_Y70_N27
\PE9|Wreg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|Wreg|Q[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Wreg|Q\(7));

-- Location: DSPMULT_X93_Y70_N1
\PE9|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \PE7|resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE9|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y70_N3
\PE9|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE9|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X86_Y71_N21
\w32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w1[0]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(0));

-- Location: LCCOMB_X94_Y71_N20
\PE6|Wreg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[0]~feeder_combout\ = w32(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(0),
	combout => \PE6|Wreg|Q[0]~feeder_combout\);

-- Location: FF_X94_Y71_N21
\PE6|Wreg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(0));

-- Location: LCCOMB_X86_Y71_N2
\w32[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[1]~feeder_combout\ = \w1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[1]~input_o\,
	combout => \w32[1]~feeder_combout\);

-- Location: FF_X86_Y71_N3
\w32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(1));

-- Location: LCCOMB_X94_Y71_N22
\PE6|Wreg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[1]~feeder_combout\ = w32(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(1),
	combout => \PE6|Wreg|Q[1]~feeder_combout\);

-- Location: FF_X94_Y71_N23
\PE6|Wreg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(1));

-- Location: LCCOMB_X86_Y71_N8
\w32[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[2]~feeder_combout\ = \w1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[2]~input_o\,
	combout => \w32[2]~feeder_combout\);

-- Location: FF_X86_Y71_N9
\w32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(2));

-- Location: LCCOMB_X94_Y71_N16
\PE6|Wreg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[2]~feeder_combout\ = w32(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(2),
	combout => \PE6|Wreg|Q[2]~feeder_combout\);

-- Location: FF_X94_Y71_N17
\PE6|Wreg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(2));

-- Location: LCCOMB_X86_Y71_N18
\w32[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[3]~feeder_combout\ = \w1[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[3]~input_o\,
	combout => \w32[3]~feeder_combout\);

-- Location: FF_X86_Y71_N19
\w32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(3));

-- Location: LCCOMB_X94_Y71_N2
\PE6|Wreg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[3]~feeder_combout\ = w32(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(3),
	combout => \PE6|Wreg|Q[3]~feeder_combout\);

-- Location: FF_X94_Y71_N3
\PE6|Wreg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(3));

-- Location: LCCOMB_X86_Y71_N12
\w32[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[4]~feeder_combout\ = \w1[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[4]~input_o\,
	combout => \w32[4]~feeder_combout\);

-- Location: FF_X86_Y71_N13
\w32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(4));

-- Location: LCCOMB_X94_Y71_N12
\PE6|Wreg|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[4]~feeder_combout\ = w32(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(4),
	combout => \PE6|Wreg|Q[4]~feeder_combout\);

-- Location: FF_X94_Y71_N13
\PE6|Wreg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(4));

-- Location: LCCOMB_X94_Y71_N28
\w32[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[5]~feeder_combout\ = \w1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[5]~input_o\,
	combout => \w32[5]~feeder_combout\);

-- Location: FF_X94_Y71_N29
\w32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(5));

-- Location: LCCOMB_X94_Y71_N10
\PE6|Wreg|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[5]~feeder_combout\ = w32(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(5),
	combout => \PE6|Wreg|Q[5]~feeder_combout\);

-- Location: FF_X94_Y71_N11
\PE6|Wreg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(5));

-- Location: LCCOMB_X86_Y71_N10
\w32[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[6]~feeder_combout\ = \w1[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[6]~input_o\,
	combout => \w32[6]~feeder_combout\);

-- Location: FF_X86_Y71_N11
\w32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(6));

-- Location: LCCOMB_X94_Y71_N4
\PE6|Wreg|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[6]~feeder_combout\ = w32(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(6),
	combout => \PE6|Wreg|Q[6]~feeder_combout\);

-- Location: FF_X94_Y71_N5
\PE6|Wreg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(6));

-- Location: LCCOMB_X86_Y71_N0
\w32[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w32[7]~feeder_combout\ = \w1[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1[7]~input_o\,
	combout => \w32[7]~feeder_combout\);

-- Location: FF_X86_Y71_N1
\w32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w32[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w32(7));

-- Location: LCCOMB_X94_Y71_N14
\PE6|Wreg|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|Wreg|Q[7]~feeder_combout\ = w32(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w32(7),
	combout => \PE6|Wreg|Q[7]~feeder_combout\);

-- Location: FF_X94_Y71_N15
\PE6|Wreg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|Wreg|Q[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Wreg|Q\(7));

-- Location: DSPMULT_X93_Y71_N0
\PE6|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \PE7|resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE6|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y71_N2
\PE6|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE6|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X88_Y70_N10
\w31[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w31[0]~feeder_combout\ = \w0[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[0]~input_o\,
	combout => \w31[0]~feeder_combout\);

-- Location: FF_X88_Y70_N11
\w31[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w31[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(0));

-- Location: LCCOMB_X88_Y70_N24
\PE3|Wreg|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[0]~feeder_combout\ = w31(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(0),
	combout => \PE3|Wreg|Q[0]~feeder_combout\);

-- Location: FF_X88_Y70_N25
\PE3|Wreg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[0]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(0));

-- Location: LCCOMB_X86_Y70_N24
\w31[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w31[1]~feeder_combout\ = \w0[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[1]~input_o\,
	combout => \w31[1]~feeder_combout\);

-- Location: FF_X86_Y70_N25
\w31[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w31[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(1));

-- Location: LCCOMB_X94_Y70_N14
\PE3|Wreg|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[1]~feeder_combout\ = w31(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(1),
	combout => \PE3|Wreg|Q[1]~feeder_combout\);

-- Location: FF_X94_Y70_N15
\PE3|Wreg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[1]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(1));

-- Location: FF_X86_Y70_N11
\w31[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w0[2]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(2));

-- Location: LCCOMB_X94_Y70_N16
\PE3|Wreg|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[2]~feeder_combout\ = w31(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(2),
	combout => \PE3|Wreg|Q[2]~feeder_combout\);

-- Location: FF_X94_Y70_N17
\PE3|Wreg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[2]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(2));

-- Location: LCCOMB_X88_Y70_N12
\w31[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w31[3]~feeder_combout\ = \w0[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[3]~input_o\,
	combout => \w31[3]~feeder_combout\);

-- Location: FF_X88_Y70_N13
\w31[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w31[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(3));

-- Location: LCCOMB_X88_Y70_N14
\PE3|Wreg|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[3]~feeder_combout\ = w31(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(3),
	combout => \PE3|Wreg|Q[3]~feeder_combout\);

-- Location: FF_X88_Y70_N15
\PE3|Wreg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[3]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(3));

-- Location: FF_X88_Y70_N19
\w31[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w0[4]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(4));

-- Location: LCCOMB_X88_Y70_N16
\PE3|Wreg|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[4]~feeder_combout\ = w31(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(4),
	combout => \PE3|Wreg|Q[4]~feeder_combout\);

-- Location: FF_X88_Y70_N17
\PE3|Wreg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[4]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(4));

-- Location: LCCOMB_X86_Y70_N4
\w31[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w31[5]~feeder_combout\ = \w0[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[5]~input_o\,
	combout => \w31[5]~feeder_combout\);

-- Location: FF_X86_Y70_N5
\w31[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w31[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(5));

-- Location: LCCOMB_X94_Y70_N30
\PE3|Wreg|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[5]~feeder_combout\ = w31(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(5),
	combout => \PE3|Wreg|Q[5]~feeder_combout\);

-- Location: FF_X94_Y70_N31
\PE3|Wreg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[5]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(5));

-- Location: LCCOMB_X86_Y70_N2
\w31[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w31[6]~feeder_combout\ = \w0[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w0[6]~input_o\,
	combout => \w31[6]~feeder_combout\);

-- Location: FF_X86_Y70_N3
\w31[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \w31[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(6));

-- Location: LCCOMB_X94_Y70_N8
\PE3|Wreg|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[6]~feeder_combout\ = w31(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(6),
	combout => \PE3|Wreg|Q[6]~feeder_combout\);

-- Location: FF_X94_Y70_N9
\PE3|Wreg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[6]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(6));

-- Location: FF_X86_Y70_N13
\w31[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \w0[7]~input_o\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.col1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w31(7));

-- Location: LCCOMB_X94_Y70_N18
\PE3|Wreg|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|Wreg|Q[7]~feeder_combout\ = w31(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w31(7),
	combout => \PE3|Wreg|Q[7]~feeder_combout\);

-- Location: FF_X94_Y70_N19
\PE3|Wreg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|Wreg|Q[7]~feeder_combout\,
	clrn => \ALT_INV_hardReset~inputclkctrl_outclk\,
	ena => \ld_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Wreg|Q\(7));

-- Location: DSPMULT_X93_Y70_N0
\PE3|BigMAC|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \PE7|resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE3|BigMAC|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y70_N2
\PE3|BigMAC|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \PE3|BigMAC|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X91_Y70_N22
\PE3|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|LessThan1~3_combout\ = (((!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\)) # 
-- (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \PE3|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X91_Y70_N20
\PE3|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|LessThan1~2_combout\ = (((!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\)) # (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\)) # 
-- (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \PE3|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X92_Y70_N30
\PE3|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|LessThan1~1_combout\ = (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- !\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \PE3|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X92_Y70_N24
\PE3|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|LessThan1~0_combout\ = (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- !\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \PE3|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X91_Y70_N28
\PE3|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|LessThan1~4_combout\ = (\PE3|BigMAC|LessThan1~1_combout\ & (\PE3|BigMAC|LessThan1~0_combout\ & ((\PE3|BigMAC|LessThan1~3_combout\) # (\PE3|BigMAC|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|LessThan1~3_combout\,
	datab => \PE3|BigMAC|LessThan1~2_combout\,
	datac => \PE3|BigMAC|LessThan1~1_combout\,
	datad => \PE3|BigMAC|LessThan1~0_combout\,
	combout => \PE3|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X91_Y70_N10
\PE3|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[7]~7_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[7]~7_combout\);

-- Location: FF_X91_Y70_N11
\PE3|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(7));

-- Location: LCCOMB_X91_Y70_N16
\PE3|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[6]~6_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X91_Y70_N17
\PE3|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(6));

-- Location: LCCOMB_X91_Y70_N18
\PE3|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[5]~5_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X91_Y70_N19
\PE3|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(5));

-- Location: LCCOMB_X91_Y70_N8
\PE3|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[4]~4_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X91_Y70_N9
\PE3|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(4));

-- Location: LCCOMB_X91_Y70_N14
\PE3|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[3]~3_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X91_Y70_N15
\PE3|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(3));

-- Location: LCCOMB_X91_Y70_N0
\PE3|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[2]~2_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X91_Y70_N1
\PE3|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(2));

-- Location: LCCOMB_X91_Y70_N26
\PE3|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[1]~1_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X91_Y70_N27
\PE3|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(1));

-- Location: LCCOMB_X91_Y70_N24
\PE3|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE3|BigMAC|partial_8[0]~0_combout\ = (\PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\) # (!\PE3|BigMAC|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE3|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => \PE3|BigMAC|LessThan1~4_combout\,
	combout => \PE3|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X91_Y70_N25
\PE3|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE3|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE3|Y|Q\(0));

-- Location: LCCOMB_X92_Y71_N0
\PE6|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[0]~0_combout\ = (\PE3|Y|Q\(0) & (\PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\PE3|Y|Q\(0) & (\PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \PE6|BigMAC|partial_16[0]~1\ = CARRY((\PE3|Y|Q\(0) & \PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|Y|Q\(0),
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \PE6|BigMAC|partial_16[0]~0_combout\,
	cout => \PE6|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X92_Y71_N2
\PE6|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[1]~2_combout\ = (\PE3|Y|Q\(1) & ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\PE6|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE6|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE3|Y|Q\(1) & ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE6|BigMAC|partial_16[0]~1\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE6|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE6|BigMAC|partial_16[1]~3\ = CARRY((\PE3|Y|Q\(1) & (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\PE6|BigMAC|partial_16[0]~1\)) # (!\PE3|Y|Q\(1) & ((!\PE6|BigMAC|partial_16[0]~1\) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|Y|Q\(1),
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[0]~1\,
	combout => \PE6|BigMAC|partial_16[1]~2_combout\,
	cout => \PE6|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X92_Y71_N4
\PE6|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[2]~4_combout\ = ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\PE3|Y|Q\(2) $ (!\PE6|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE6|BigMAC|partial_16[2]~5\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\PE3|Y|Q\(2)) # (!\PE6|BigMAC|partial_16[1]~3\))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\PE3|Y|Q\(2) & !\PE6|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \PE3|Y|Q\(2),
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[1]~3\,
	combout => \PE6|BigMAC|partial_16[2]~4_combout\,
	cout => \PE6|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X92_Y71_N6
\PE6|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[3]~6_combout\ = (\PE3|Y|Q\(3) & ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\PE6|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE6|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE3|Y|Q\(3) & ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE6|BigMAC|partial_16[2]~5\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE6|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE6|BigMAC|partial_16[3]~7\ = CARRY((\PE3|Y|Q\(3) & (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\PE6|BigMAC|partial_16[2]~5\)) # (!\PE3|Y|Q\(3) & ((!\PE6|BigMAC|partial_16[2]~5\) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|Y|Q\(3),
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[2]~5\,
	combout => \PE6|BigMAC|partial_16[3]~6_combout\,
	cout => \PE6|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X92_Y71_N8
\PE6|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[4]~8_combout\ = ((\PE3|Y|Q\(4) $ (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (!\PE6|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE6|BigMAC|partial_16[4]~9\ = CARRY((\PE3|Y|Q\(4) & ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\PE6|BigMAC|partial_16[3]~7\))) # (!\PE3|Y|Q\(4) & (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\PE6|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE3|Y|Q\(4),
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[3]~7\,
	combout => \PE6|BigMAC|partial_16[4]~8_combout\,
	cout => \PE6|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X92_Y71_N10
\PE6|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[5]~10_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE3|Y|Q\(5) & (\PE6|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE3|Y|Q\(5) & (!\PE6|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE3|Y|Q\(5) & (!\PE6|BigMAC|partial_16[4]~9\)) # (!\PE3|Y|Q\(5) & ((\PE6|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE6|BigMAC|partial_16[5]~11\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE3|Y|Q\(5) & !\PE6|BigMAC|partial_16[4]~9\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\PE6|BigMAC|partial_16[4]~9\) # (!\PE3|Y|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE3|Y|Q\(5),
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[4]~9\,
	combout => \PE6|BigMAC|partial_16[5]~10_combout\,
	cout => \PE6|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X92_Y71_N12
\PE6|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[6]~12_combout\ = ((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\PE3|Y|Q\(6) $ (!\PE6|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE6|BigMAC|partial_16[6]~13\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\PE3|Y|Q\(6)) # (!\PE6|BigMAC|partial_16[5]~11\))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\PE3|Y|Q\(6) & !\PE6|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE3|Y|Q\(6),
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[5]~11\,
	combout => \PE6|BigMAC|partial_16[6]~12_combout\,
	cout => \PE6|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X92_Y71_N14
\PE6|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[7]~14_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE3|Y|Q\(7) & (\PE6|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE3|Y|Q\(7) & (!\PE6|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE3|Y|Q\(7) & (!\PE6|BigMAC|partial_16[6]~13\)) # (!\PE3|Y|Q\(7) & ((\PE6|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE6|BigMAC|partial_16[7]~15\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE3|Y|Q\(7) & !\PE6|BigMAC|partial_16[6]~13\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\PE6|BigMAC|partial_16[6]~13\) # (!\PE3|Y|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \PE3|Y|Q\(7),
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[6]~13\,
	combout => \PE6|BigMAC|partial_16[7]~14_combout\,
	cout => \PE6|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X92_Y70_N26
\PE6|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|LessThan1~1_combout\ = (!\PE6|BigMAC|partial_16[4]~8_combout\) # (!\PE6|BigMAC|partial_16[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE6|BigMAC|partial_16[5]~10_combout\,
	datad => \PE6|BigMAC|partial_16[4]~8_combout\,
	combout => \PE6|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X92_Y70_N0
\PE6|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|LessThan1~0_combout\ = (((!\PE6|BigMAC|partial_16[2]~4_combout\) # (!\PE6|BigMAC|partial_16[1]~2_combout\)) # (!\PE6|BigMAC|partial_16[0]~0_combout\)) # (!\PE6|BigMAC|partial_16[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[3]~6_combout\,
	datab => \PE6|BigMAC|partial_16[0]~0_combout\,
	datac => \PE6|BigMAC|partial_16[1]~2_combout\,
	datad => \PE6|BigMAC|partial_16[2]~4_combout\,
	combout => \PE6|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X92_Y70_N8
\PE6|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|LessThan1~2_combout\ = (\PE6|BigMAC|LessThan1~1_combout\) # (((\PE6|BigMAC|LessThan1~0_combout\) # (!\PE6|BigMAC|partial_16[7]~14_combout\)) # (!\PE6|BigMAC|partial_16[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|LessThan1~1_combout\,
	datab => \PE6|BigMAC|partial_16[6]~12_combout\,
	datac => \PE6|BigMAC|partial_16[7]~14_combout\,
	datad => \PE6|BigMAC|LessThan1~0_combout\,
	combout => \PE6|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X92_Y71_N16
\PE6|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[8]~16_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE6|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE6|BigMAC|partial_16[7]~15\ & VCC))
-- \PE6|BigMAC|partial_16[8]~17\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE6|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[7]~15\,
	combout => \PE6|BigMAC|partial_16[8]~16_combout\,
	cout => \PE6|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X92_Y71_N18
\PE6|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[9]~18_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE6|BigMAC|partial_16[8]~17\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE6|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE6|BigMAC|partial_16[9]~19\ = CARRY((!\PE6|BigMAC|partial_16[8]~17\) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[8]~17\,
	combout => \PE6|BigMAC|partial_16[9]~18_combout\,
	cout => \PE6|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X92_Y71_N20
\PE6|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[10]~20_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE6|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE6|BigMAC|partial_16[9]~19\ & VCC))
-- \PE6|BigMAC|partial_16[10]~21\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE6|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[9]~19\,
	combout => \PE6|BigMAC|partial_16[10]~20_combout\,
	cout => \PE6|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X92_Y71_N22
\PE6|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[11]~22_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE6|BigMAC|partial_16[10]~21\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE6|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE6|BigMAC|partial_16[11]~23\ = CARRY((!\PE6|BigMAC|partial_16[10]~21\) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[10]~21\,
	combout => \PE6|BigMAC|partial_16[11]~22_combout\,
	cout => \PE6|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X92_Y70_N22
\PE6|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|LessThan1~3_combout\ = (!\PE6|BigMAC|partial_16[10]~20_combout\ & (!\PE6|BigMAC|partial_16[11]~22_combout\ & (!\PE6|BigMAC|partial_16[8]~16_combout\ & !\PE6|BigMAC|partial_16[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[10]~20_combout\,
	datab => \PE6|BigMAC|partial_16[11]~22_combout\,
	datac => \PE6|BigMAC|partial_16[8]~16_combout\,
	datad => \PE6|BigMAC|partial_16[9]~18_combout\,
	combout => \PE6|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X92_Y71_N24
\PE6|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[12]~24_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE6|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE6|BigMAC|partial_16[11]~23\ & VCC))
-- \PE6|BigMAC|partial_16[12]~25\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE6|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[11]~23\,
	combout => \PE6|BigMAC|partial_16[12]~24_combout\,
	cout => \PE6|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X92_Y71_N26
\PE6|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[13]~26_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE6|BigMAC|partial_16[12]~25\)) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE6|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE6|BigMAC|partial_16[13]~27\ = CARRY((!\PE6|BigMAC|partial_16[12]~25\) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[12]~25\,
	combout => \PE6|BigMAC|partial_16[13]~26_combout\,
	cout => \PE6|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X92_Y71_N28
\PE6|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[14]~28_combout\ = (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE6|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE6|BigMAC|partial_16[13]~27\ & VCC))
-- \PE6|BigMAC|partial_16[14]~29\ = CARRY((\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE6|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE6|BigMAC|partial_16[13]~27\,
	combout => \PE6|BigMAC|partial_16[14]~28_combout\,
	cout => \PE6|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X92_Y71_N30
\PE6|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_16[15]~30_combout\ = \PE6|BigMAC|partial_16[14]~29\ $ (\PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PE6|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE6|BigMAC|partial_16[14]~29\,
	combout => \PE6|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X92_Y70_N16
\PE6|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|LessThan1~4_combout\ = (!\PE6|BigMAC|partial_16[15]~30_combout\ & (!\PE6|BigMAC|partial_16[13]~26_combout\ & (!\PE6|BigMAC|partial_16[14]~28_combout\ & !\PE6|BigMAC|partial_16[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[15]~30_combout\,
	datab => \PE6|BigMAC|partial_16[13]~26_combout\,
	datac => \PE6|BigMAC|partial_16[14]~28_combout\,
	datad => \PE6|BigMAC|partial_16[12]~24_combout\,
	combout => \PE6|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X92_Y70_N18
\PE6|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[7]~7_combout\ = (\PE6|BigMAC|partial_16[7]~14_combout\) # (((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~3_combout\)) # (!\PE6|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[7]~14_combout\,
	datab => \PE6|BigMAC|LessThan1~2_combout\,
	datac => \PE6|BigMAC|LessThan1~3_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[7]~7_combout\);

-- Location: FF_X92_Y70_N19
\PE6|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(7));

-- Location: LCCOMB_X92_Y70_N4
\PE6|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[6]~6_combout\ = (\PE6|BigMAC|partial_16[6]~12_combout\) # (((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~3_combout\)) # (!\PE6|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[6]~12_combout\,
	datab => \PE6|BigMAC|LessThan1~2_combout\,
	datac => \PE6|BigMAC|LessThan1~3_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X92_Y70_N5
\PE6|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(6));

-- Location: LCCOMB_X92_Y70_N14
\PE6|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[5]~5_combout\ = ((\PE6|BigMAC|partial_16[5]~10_combout\) # ((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~2_combout\))) # (!\PE6|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|LessThan1~3_combout\,
	datab => \PE6|BigMAC|partial_16[5]~10_combout\,
	datac => \PE6|BigMAC|LessThan1~2_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X92_Y70_N15
\PE6|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(5));

-- Location: LCCOMB_X92_Y70_N12
\PE6|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[4]~4_combout\ = ((\PE6|BigMAC|partial_16[4]~8_combout\) # ((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~2_combout\))) # (!\PE6|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|LessThan1~3_combout\,
	datab => \PE6|BigMAC|partial_16[4]~8_combout\,
	datac => \PE6|BigMAC|LessThan1~2_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X92_Y70_N13
\PE6|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(4));

-- Location: LCCOMB_X92_Y70_N2
\PE6|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[3]~3_combout\ = (\PE6|BigMAC|partial_16[3]~6_combout\) # (((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~3_combout\)) # (!\PE6|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[3]~6_combout\,
	datab => \PE6|BigMAC|LessThan1~2_combout\,
	datac => \PE6|BigMAC|LessThan1~3_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X92_Y70_N3
\PE6|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(3));

-- Location: LCCOMB_X92_Y70_N28
\PE6|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[2]~2_combout\ = ((\PE6|BigMAC|partial_16[2]~4_combout\) # ((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~2_combout\))) # (!\PE6|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|LessThan1~3_combout\,
	datab => \PE6|BigMAC|partial_16[2]~4_combout\,
	datac => \PE6|BigMAC|LessThan1~2_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X92_Y70_N29
\PE6|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(2));

-- Location: LCCOMB_X92_Y70_N6
\PE6|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[1]~1_combout\ = (\PE6|BigMAC|partial_16[1]~2_combout\) # (((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~3_combout\)) # (!\PE6|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|partial_16[1]~2_combout\,
	datab => \PE6|BigMAC|LessThan1~2_combout\,
	datac => \PE6|BigMAC|LessThan1~3_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X92_Y70_N7
\PE6|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(1));

-- Location: LCCOMB_X92_Y70_N20
\PE6|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE6|BigMAC|partial_8[0]~0_combout\ = ((\PE6|BigMAC|partial_16[0]~0_combout\) # ((!\PE6|BigMAC|LessThan1~4_combout\) # (!\PE6|BigMAC|LessThan1~2_combout\))) # (!\PE6|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|BigMAC|LessThan1~3_combout\,
	datab => \PE6|BigMAC|partial_16[0]~0_combout\,
	datac => \PE6|BigMAC|LessThan1~2_combout\,
	datad => \PE6|BigMAC|LessThan1~4_combout\,
	combout => \PE6|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X92_Y70_N21
\PE6|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE6|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE6|Y|Q\(0));

-- Location: LCCOMB_X90_Y70_N0
\PE9|BigMAC|partial_16[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[0]~0_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & (\PE6|Y|Q\(0) $ (VCC))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & (\PE6|Y|Q\(0) & VCC))
-- \PE9|BigMAC|partial_16[0]~1\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\ & \PE6|Y|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~dataout\,
	datab => \PE6|Y|Q\(0),
	datad => VCC,
	combout => \PE9|BigMAC|partial_16[0]~0_combout\,
	cout => \PE9|BigMAC|partial_16[0]~1\);

-- Location: LCCOMB_X90_Y70_N2
\PE9|BigMAC|partial_16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[1]~2_combout\ = (\PE6|Y|Q\(1) & ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\PE9|BigMAC|partial_16[0]~1\ & VCC)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE9|BigMAC|partial_16[0]~1\)))) # 
-- (!\PE6|Y|Q\(1) & ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\PE9|BigMAC|partial_16[0]~1\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\PE9|BigMAC|partial_16[0]~1\) # (GND)))))
-- \PE9|BigMAC|partial_16[1]~3\ = CARRY((\PE6|Y|Q\(1) & (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\PE9|BigMAC|partial_16[0]~1\)) # (!\PE6|Y|Q\(1) & ((!\PE9|BigMAC|partial_16[0]~1\) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|Y|Q\(1),
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[0]~1\,
	combout => \PE9|BigMAC|partial_16[1]~2_combout\,
	cout => \PE9|BigMAC|partial_16[1]~3\);

-- Location: LCCOMB_X90_Y70_N4
\PE9|BigMAC|partial_16[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[2]~4_combout\ = ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\PE6|Y|Q\(2) $ (!\PE9|BigMAC|partial_16[1]~3\)))) # (GND)
-- \PE9|BigMAC|partial_16[2]~5\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\PE6|Y|Q\(2)) # (!\PE9|BigMAC|partial_16[1]~3\))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\PE6|Y|Q\(2) & !\PE9|BigMAC|partial_16[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \PE6|Y|Q\(2),
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[1]~3\,
	combout => \PE9|BigMAC|partial_16[2]~4_combout\,
	cout => \PE9|BigMAC|partial_16[2]~5\);

-- Location: LCCOMB_X90_Y70_N6
\PE9|BigMAC|partial_16[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[3]~6_combout\ = (\PE6|Y|Q\(3) & ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\PE9|BigMAC|partial_16[2]~5\ & VCC)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE9|BigMAC|partial_16[2]~5\)))) # 
-- (!\PE6|Y|Q\(3) & ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\PE9|BigMAC|partial_16[2]~5\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\PE9|BigMAC|partial_16[2]~5\) # (GND)))))
-- \PE9|BigMAC|partial_16[3]~7\ = CARRY((\PE6|Y|Q\(3) & (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\PE9|BigMAC|partial_16[2]~5\)) # (!\PE6|Y|Q\(3) & ((!\PE9|BigMAC|partial_16[2]~5\) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE6|Y|Q\(3),
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[2]~5\,
	combout => \PE9|BigMAC|partial_16[3]~6_combout\,
	cout => \PE9|BigMAC|partial_16[3]~7\);

-- Location: LCCOMB_X90_Y70_N8
\PE9|BigMAC|partial_16[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[4]~8_combout\ = ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\PE6|Y|Q\(4) $ (!\PE9|BigMAC|partial_16[3]~7\)))) # (GND)
-- \PE9|BigMAC|partial_16[4]~9\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\PE6|Y|Q\(4)) # (!\PE9|BigMAC|partial_16[3]~7\))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\PE6|Y|Q\(4) & !\PE9|BigMAC|partial_16[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \PE6|Y|Q\(4),
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[3]~7\,
	combout => \PE9|BigMAC|partial_16[4]~8_combout\,
	cout => \PE9|BigMAC|partial_16[4]~9\);

-- Location: LCCOMB_X90_Y70_N10
\PE9|BigMAC|partial_16[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[5]~10_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE6|Y|Q\(5) & (\PE9|BigMAC|partial_16[4]~9\ & VCC)) # (!\PE6|Y|Q\(5) & (!\PE9|BigMAC|partial_16[4]~9\)))) # 
-- (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\PE6|Y|Q\(5) & (!\PE9|BigMAC|partial_16[4]~9\)) # (!\PE6|Y|Q\(5) & ((\PE9|BigMAC|partial_16[4]~9\) # (GND)))))
-- \PE9|BigMAC|partial_16[5]~11\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\PE6|Y|Q\(5) & !\PE9|BigMAC|partial_16[4]~9\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\PE9|BigMAC|partial_16[4]~9\) # (!\PE6|Y|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \PE6|Y|Q\(5),
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[4]~9\,
	combout => \PE9|BigMAC|partial_16[5]~10_combout\,
	cout => \PE9|BigMAC|partial_16[5]~11\);

-- Location: LCCOMB_X90_Y70_N12
\PE9|BigMAC|partial_16[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[6]~12_combout\ = ((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\PE6|Y|Q\(6) $ (!\PE9|BigMAC|partial_16[5]~11\)))) # (GND)
-- \PE9|BigMAC|partial_16[6]~13\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\PE6|Y|Q\(6)) # (!\PE9|BigMAC|partial_16[5]~11\))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\PE6|Y|Q\(6) & !\PE9|BigMAC|partial_16[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \PE6|Y|Q\(6),
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[5]~11\,
	combout => \PE9|BigMAC|partial_16[6]~12_combout\,
	cout => \PE9|BigMAC|partial_16[6]~13\);

-- Location: LCCOMB_X90_Y70_N14
\PE9|BigMAC|partial_16[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[7]~14_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE6|Y|Q\(7) & (\PE9|BigMAC|partial_16[6]~13\ & VCC)) # (!\PE6|Y|Q\(7) & (!\PE9|BigMAC|partial_16[6]~13\)))) # 
-- (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\PE6|Y|Q\(7) & (!\PE9|BigMAC|partial_16[6]~13\)) # (!\PE6|Y|Q\(7) & ((\PE9|BigMAC|partial_16[6]~13\) # (GND)))))
-- \PE9|BigMAC|partial_16[7]~15\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\PE6|Y|Q\(7) & !\PE9|BigMAC|partial_16[6]~13\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\PE9|BigMAC|partial_16[6]~13\) # (!\PE6|Y|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \PE6|Y|Q\(7),
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[6]~13\,
	combout => \PE9|BigMAC|partial_16[7]~14_combout\,
	cout => \PE9|BigMAC|partial_16[7]~15\);

-- Location: LCCOMB_X90_Y70_N16
\PE9|BigMAC|partial_16[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[8]~16_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\PE9|BigMAC|partial_16[7]~15\ $ (GND))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\PE9|BigMAC|partial_16[7]~15\ & VCC))
-- \PE9|BigMAC|partial_16[8]~17\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\PE9|BigMAC|partial_16[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[7]~15\,
	combout => \PE9|BigMAC|partial_16[8]~16_combout\,
	cout => \PE9|BigMAC|partial_16[8]~17\);

-- Location: LCCOMB_X90_Y70_N18
\PE9|BigMAC|partial_16[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[9]~18_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\PE9|BigMAC|partial_16[8]~17\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\PE9|BigMAC|partial_16[8]~17\) # (GND)))
-- \PE9|BigMAC|partial_16[9]~19\ = CARRY((!\PE9|BigMAC|partial_16[8]~17\) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[8]~17\,
	combout => \PE9|BigMAC|partial_16[9]~18_combout\,
	cout => \PE9|BigMAC|partial_16[9]~19\);

-- Location: LCCOMB_X90_Y70_N20
\PE9|BigMAC|partial_16[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[10]~20_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\PE9|BigMAC|partial_16[9]~19\ $ (GND))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\PE9|BigMAC|partial_16[9]~19\ & VCC))
-- \PE9|BigMAC|partial_16[10]~21\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\PE9|BigMAC|partial_16[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[9]~19\,
	combout => \PE9|BigMAC|partial_16[10]~20_combout\,
	cout => \PE9|BigMAC|partial_16[10]~21\);

-- Location: LCCOMB_X90_Y70_N22
\PE9|BigMAC|partial_16[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[11]~22_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\PE9|BigMAC|partial_16[10]~21\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\PE9|BigMAC|partial_16[10]~21\) # (GND)))
-- \PE9|BigMAC|partial_16[11]~23\ = CARRY((!\PE9|BigMAC|partial_16[10]~21\) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[10]~21\,
	combout => \PE9|BigMAC|partial_16[11]~22_combout\,
	cout => \PE9|BigMAC|partial_16[11]~23\);

-- Location: LCCOMB_X89_Y70_N22
\PE9|BigMAC|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|LessThan1~3_combout\ = (!\PE9|BigMAC|partial_16[10]~20_combout\ & (!\PE9|BigMAC|partial_16[9]~18_combout\ & (!\PE9|BigMAC|partial_16[11]~22_combout\ & !\PE9|BigMAC|partial_16[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|partial_16[10]~20_combout\,
	datab => \PE9|BigMAC|partial_16[9]~18_combout\,
	datac => \PE9|BigMAC|partial_16[11]~22_combout\,
	datad => \PE9|BigMAC|partial_16[8]~16_combout\,
	combout => \PE9|BigMAC|LessThan1~3_combout\);

-- Location: LCCOMB_X89_Y70_N12
\PE9|BigMAC|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|LessThan1~0_combout\ = (((!\PE9|BigMAC|partial_16[2]~4_combout\) # (!\PE9|BigMAC|partial_16[3]~6_combout\)) # (!\PE9|BigMAC|partial_16[0]~0_combout\)) # (!\PE9|BigMAC|partial_16[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|partial_16[1]~2_combout\,
	datab => \PE9|BigMAC|partial_16[0]~0_combout\,
	datac => \PE9|BigMAC|partial_16[3]~6_combout\,
	datad => \PE9|BigMAC|partial_16[2]~4_combout\,
	combout => \PE9|BigMAC|LessThan1~0_combout\);

-- Location: LCCOMB_X89_Y70_N18
\PE9|BigMAC|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|LessThan1~1_combout\ = (!\PE9|BigMAC|partial_16[4]~8_combout\) # (!\PE9|BigMAC|partial_16[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE9|BigMAC|partial_16[5]~10_combout\,
	datac => \PE9|BigMAC|partial_16[4]~8_combout\,
	combout => \PE9|BigMAC|LessThan1~1_combout\);

-- Location: LCCOMB_X89_Y70_N8
\PE9|BigMAC|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|LessThan1~2_combout\ = (\PE9|BigMAC|LessThan1~0_combout\) # (((\PE9|BigMAC|LessThan1~1_combout\) # (!\PE9|BigMAC|partial_16[6]~12_combout\)) # (!\PE9|BigMAC|partial_16[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~0_combout\,
	datab => \PE9|BigMAC|partial_16[7]~14_combout\,
	datac => \PE9|BigMAC|partial_16[6]~12_combout\,
	datad => \PE9|BigMAC|LessThan1~1_combout\,
	combout => \PE9|BigMAC|LessThan1~2_combout\);

-- Location: LCCOMB_X90_Y70_N24
\PE9|BigMAC|partial_16[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[12]~24_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\PE9|BigMAC|partial_16[11]~23\ $ (GND))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\PE9|BigMAC|partial_16[11]~23\ & VCC))
-- \PE9|BigMAC|partial_16[12]~25\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\PE9|BigMAC|partial_16[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[11]~23\,
	combout => \PE9|BigMAC|partial_16[12]~24_combout\,
	cout => \PE9|BigMAC|partial_16[12]~25\);

-- Location: LCCOMB_X90_Y70_N26
\PE9|BigMAC|partial_16[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[13]~26_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\PE9|BigMAC|partial_16[12]~25\)) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\PE9|BigMAC|partial_16[12]~25\) # (GND)))
-- \PE9|BigMAC|partial_16[13]~27\ = CARRY((!\PE9|BigMAC|partial_16[12]~25\) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[12]~25\,
	combout => \PE9|BigMAC|partial_16[13]~26_combout\,
	cout => \PE9|BigMAC|partial_16[13]~27\);

-- Location: LCCOMB_X90_Y70_N28
\PE9|BigMAC|partial_16[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[14]~28_combout\ = (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\PE9|BigMAC|partial_16[13]~27\ $ (GND))) # (!\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\PE9|BigMAC|partial_16[13]~27\ & VCC))
-- \PE9|BigMAC|partial_16[14]~29\ = CARRY((\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\PE9|BigMAC|partial_16[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \PE9|BigMAC|partial_16[13]~27\,
	combout => \PE9|BigMAC|partial_16[14]~28_combout\,
	cout => \PE9|BigMAC|partial_16[14]~29\);

-- Location: LCCOMB_X90_Y70_N30
\PE9|BigMAC|partial_16[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_16[15]~30_combout\ = \PE9|BigMAC|partial_16[14]~29\ $ (\PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PE9|BigMAC|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \PE9|BigMAC|partial_16[14]~29\,
	combout => \PE9|BigMAC|partial_16[15]~30_combout\);

-- Location: LCCOMB_X89_Y70_N20
\PE9|BigMAC|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|LessThan1~4_combout\ = (!\PE9|BigMAC|partial_16[13]~26_combout\ & (!\PE9|BigMAC|partial_16[12]~24_combout\ & (!\PE9|BigMAC|partial_16[15]~30_combout\ & !\PE9|BigMAC|partial_16[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|partial_16[13]~26_combout\,
	datab => \PE9|BigMAC|partial_16[12]~24_combout\,
	datac => \PE9|BigMAC|partial_16[15]~30_combout\,
	datad => \PE9|BigMAC|partial_16[14]~28_combout\,
	combout => \PE9|BigMAC|LessThan1~4_combout\);

-- Location: LCCOMB_X89_Y70_N16
\PE9|BigMAC|partial_8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[0]~0_combout\ = ((\PE9|BigMAC|partial_16[0]~0_combout\) # ((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~2_combout\))) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|partial_16[0]~0_combout\,
	datac => \PE9|BigMAC|LessThan1~2_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[0]~0_combout\);

-- Location: FF_X89_Y70_N17
\PE9|Y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[0]~0_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(0));

-- Location: LCCOMB_X89_Y70_N2
\PE9|BigMAC|partial_8[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[1]~1_combout\ = (\PE9|BigMAC|partial_16[1]~2_combout\) # (((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~3_combout\)) # (!\PE9|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|partial_16[1]~2_combout\,
	datab => \PE9|BigMAC|LessThan1~2_combout\,
	datac => \PE9|BigMAC|LessThan1~3_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[1]~1_combout\);

-- Location: FF_X89_Y70_N3
\PE9|Y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[1]~1_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(1));

-- Location: LCCOMB_X89_Y70_N28
\PE9|BigMAC|partial_8[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[2]~2_combout\ = (\PE9|BigMAC|partial_16[2]~4_combout\) # (((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~3_combout\)) # (!\PE9|BigMAC|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|partial_16[2]~4_combout\,
	datab => \PE9|BigMAC|LessThan1~2_combout\,
	datac => \PE9|BigMAC|LessThan1~3_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[2]~2_combout\);

-- Location: FF_X89_Y70_N29
\PE9|Y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[2]~2_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(2));

-- Location: LCCOMB_X89_Y70_N26
\PE9|BigMAC|partial_8[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[3]~3_combout\ = ((\PE9|BigMAC|partial_16[3]~6_combout\) # ((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~2_combout\))) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|partial_16[3]~6_combout\,
	datac => \PE9|BigMAC|LessThan1~2_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[3]~3_combout\);

-- Location: FF_X89_Y70_N27
\PE9|Y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[3]~3_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(3));

-- Location: LCCOMB_X89_Y70_N24
\PE9|BigMAC|partial_8[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[4]~4_combout\ = ((\PE9|BigMAC|partial_16[4]~8_combout\) # ((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~2_combout\))) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|partial_16[4]~8_combout\,
	datac => \PE9|BigMAC|LessThan1~2_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[4]~4_combout\);

-- Location: FF_X89_Y70_N25
\PE9|Y|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[4]~4_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(4));

-- Location: LCCOMB_X89_Y70_N30
\PE9|BigMAC|partial_8[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[5]~5_combout\ = ((\PE9|BigMAC|partial_16[5]~10_combout\) # ((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~2_combout\))) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|partial_16[5]~10_combout\,
	datac => \PE9|BigMAC|LessThan1~2_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[5]~5_combout\);

-- Location: FF_X89_Y70_N31
\PE9|Y|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[5]~5_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(5));

-- Location: LCCOMB_X89_Y70_N4
\PE9|BigMAC|partial_8[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[6]~6_combout\ = ((\PE9|BigMAC|partial_16[6]~12_combout\) # ((!\PE9|BigMAC|LessThan1~4_combout\) # (!\PE9|BigMAC|LessThan1~2_combout\))) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|partial_16[6]~12_combout\,
	datac => \PE9|BigMAC|LessThan1~2_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[6]~6_combout\);

-- Location: FF_X89_Y70_N5
\PE9|Y|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[6]~6_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(6));

-- Location: LCCOMB_X89_Y70_N10
\PE9|BigMAC|partial_8[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PE9|BigMAC|partial_8[7]~7_combout\ = (((\PE9|BigMAC|partial_16[7]~14_combout\) # (!\PE9|BigMAC|LessThan1~4_combout\)) # (!\PE9|BigMAC|LessThan1~2_combout\)) # (!\PE9|BigMAC|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE9|BigMAC|LessThan1~3_combout\,
	datab => \PE9|BigMAC|LessThan1~2_combout\,
	datac => \PE9|BigMAC|partial_16[7]~14_combout\,
	datad => \PE9|BigMAC|LessThan1~4_combout\,
	combout => \PE9|BigMAC|partial_8[7]~7_combout\);

-- Location: FF_X89_Y70_N11
\PE9|Y|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PE9|BigMAC|partial_8[7]~7_combout\,
	clrn => \PE7|ALT_INV_resetSig~clkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PE9|Y|Q\(7));

-- Location: IOIBUF_X115_Y37_N8
\stall~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stall,
	o => \stall~input_o\);

ww_y0(0) <= \y0[0]~output_o\;

ww_y0(1) <= \y0[1]~output_o\;

ww_y0(2) <= \y0[2]~output_o\;

ww_y0(3) <= \y0[3]~output_o\;

ww_y0(4) <= \y0[4]~output_o\;

ww_y0(5) <= \y0[5]~output_o\;

ww_y0(6) <= \y0[6]~output_o\;

ww_y0(7) <= \y0[7]~output_o\;

ww_y1(0) <= \y1[0]~output_o\;

ww_y1(1) <= \y1[1]~output_o\;

ww_y1(2) <= \y1[2]~output_o\;

ww_y1(3) <= \y1[3]~output_o\;

ww_y1(4) <= \y1[4]~output_o\;

ww_y1(5) <= \y1[5]~output_o\;

ww_y1(6) <= \y1[6]~output_o\;

ww_y1(7) <= \y1[7]~output_o\;

ww_y2(0) <= \y2[0]~output_o\;

ww_y2(1) <= \y2[1]~output_o\;

ww_y2(2) <= \y2[2]~output_o\;

ww_y2(3) <= \y2[3]~output_o\;

ww_y2(4) <= \y2[4]~output_o\;

ww_y2(5) <= \y2[5]~output_o\;

ww_y2(6) <= \y2[6]~output_o\;

ww_y2(7) <= \y2[7]~output_o\;
END structure;


