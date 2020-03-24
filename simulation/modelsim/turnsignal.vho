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

-- DATE "03/24/2020 22:05:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	turnsignal IS
    PORT (
	switch : IN std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	light : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END turnsignal;

-- Design Ports Information
-- light[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF turnsignal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_light : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \next_state.l1~0_combout\ : std_logic;
SIGNAL \state.l1~q\ : std_logic;
SIGNAL \next_state.l2~0_combout\ : std_logic;
SIGNAL \state.l2~q\ : std_logic;
SIGNAL \next_state.l3~0_combout\ : std_logic;
SIGNAL \state.l3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \next_state.r1~0_combout\ : std_logic;
SIGNAL \state.r1~q\ : std_logic;
SIGNAL \next_state.r2~0_combout\ : std_logic;
SIGNAL \state.r2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.lr3~q\ : std_logic;
SIGNAL \next_state.r3~0_combout\ : std_logic;
SIGNAL \state.r3~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \light~0_combout\ : std_logic;
SIGNAL \ALT_INV_switch[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_light~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \ALT_INV_state.r1~q\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_state.l2~q\ : std_logic;
SIGNAL \ALT_INV_state.l1~q\ : std_logic;
SIGNAL \ALT_INV_state.l3~q\ : std_logic;
SIGNAL \ALT_INV_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_state.r2~q\ : std_logic;
SIGNAL \ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.lr3~q\ : std_logic;
SIGNAL \ALT_INV_state.r3~q\ : std_logic;

BEGIN

ww_switch <= switch;
ww_clk <= clk;
light <= ww_light;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switch[1]~input_o\ <= NOT \switch[1]~input_o\;
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;
\ALT_INV_switch[2]~input_o\ <= NOT \switch[2]~input_o\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_light~0_combout\ <= NOT \light~0_combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;
\ALT_INV_state.r1~q\ <= NOT \state.r1~q\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_state.l2~q\ <= NOT \state.l2~q\;
\ALT_INV_state.l1~q\ <= NOT \state.l1~q\;
\ALT_INV_state.l3~q\ <= NOT \state.l3~q\;
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
\ALT_INV_state.r2~q\ <= NOT \state.r2~q\;
\ALT_INV_WideOr5~0_combout\ <= NOT \WideOr5~0_combout\;
\ALT_INV_state.lr3~q\ <= NOT \state.lr3~q\;
\ALT_INV_state.r3~q\ <= NOT \state.r3~q\;

-- Location: IOOBUF_X89_Y35_N79
\light[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_light(0));

-- Location: IOOBUF_X89_Y35_N96
\light[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_light(1));

-- Location: IOOBUF_X89_Y36_N5
\light[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_light(2));

-- Location: IOOBUF_X89_Y36_N56
\light[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_light(3));

-- Location: IOOBUF_X89_Y35_N45
\light[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_light(4));

-- Location: IOOBUF_X89_Y36_N22
\light[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_light~0_combout\,
	devoe => ww_devoe,
	o => ww_light(5));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X89_Y38_N4
\switch[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\switch[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\switch[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\next_state.l1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.l1~0_combout\ = ( !\state.idle~q\ & ( (\switch[1]~input_o\ & (!\switch[2]~input_o\ & !\switch[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[1]~input_o\,
	datab => \ALT_INV_switch[2]~input_o\,
	datac => \ALT_INV_switch[0]~input_o\,
	dataf => \ALT_INV_state.idle~q\,
	combout => \next_state.l1~0_combout\);

-- Location: FF_X88_Y36_N11
\state.l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.l1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l1~q\);

-- Location: LABCELL_X88_Y36_N6
\next_state.l2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.l2~0_combout\ = ( \state.l1~q\ & ( !\switch[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[2]~input_o\,
	dataf => \ALT_INV_state.l1~q\,
	combout => \next_state.l2~0_combout\);

-- Location: FF_X88_Y36_N8
\state.l2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.l2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l2~q\);

-- Location: LABCELL_X88_Y36_N36
\next_state.l3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.l3~0_combout\ = (!\switch[2]~input_o\ & \state.l2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[2]~input_o\,
	datad => \ALT_INV_state.l2~q\,
	combout => \next_state.l3~0_combout\);

-- Location: FF_X88_Y36_N38
\state.l3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.l3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l3~q\);

-- Location: LABCELL_X88_Y36_N48
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.idle~q\ & ( \WideOr5~0_combout\ & ( !\state.l3~q\ ) ) ) # ( !\state.idle~q\ & ( \WideOr5~0_combout\ & ( (!\state.l3~q\ & (((\switch[0]~input_o\) # (\switch[2]~input_o\)) # (\switch[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[1]~input_o\,
	datab => \ALT_INV_switch[2]~input_o\,
	datac => \ALT_INV_state.l3~q\,
	datad => \ALT_INV_switch[0]~input_o\,
	datae => \ALT_INV_state.idle~q\,
	dataf => \ALT_INV_WideOr5~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y36_N50
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LABCELL_X88_Y36_N57
\next_state.r1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.r1~0_combout\ = ( !\state.idle~q\ & ( (\switch[0]~input_o\ & (!\switch[2]~input_o\ & !\switch[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_switch[2]~input_o\,
	datad => \ALT_INV_switch[1]~input_o\,
	dataf => \ALT_INV_state.idle~q\,
	combout => \next_state.r1~0_combout\);

-- Location: FF_X88_Y36_N59
\state.r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.r1~q\);

-- Location: LABCELL_X88_Y36_N15
\next_state.r2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.r2~0_combout\ = ( \state.r1~q\ & ( !\switch[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[2]~input_o\,
	dataf => \ALT_INV_state.r1~q\,
	combout => \next_state.r2~0_combout\);

-- Location: FF_X88_Y36_N17
\state.r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.r2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.r2~q\);

-- Location: LABCELL_X88_Y36_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\state.l1~q\ & ( (!\state.l2~q\ & (!\state.r2~q\ & !\state.r1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.l2~q\,
	datac => \ALT_INV_state.r2~q\,
	datad => \ALT_INV_state.r1~q\,
	dataf => \ALT_INV_state.l1~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X88_Y36_N12
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \Selector1~0_combout\ & ( (!\state.idle~q\ & (((\switch[0]~input_o\ & \switch[1]~input_o\)) # (\switch[2]~input_o\))) ) ) # ( !\Selector1~0_combout\ & ( ((\switch[0]~input_o\ & (!\state.idle~q\ & \switch[1]~input_o\))) # 
-- (\switch[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[0]~input_o\,
	datab => \ALT_INV_switch[2]~input_o\,
	datac => \ALT_INV_state.idle~q\,
	datad => \ALT_INV_switch[1]~input_o\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X88_Y36_N14
\state.lr3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.lr3~q\);

-- Location: LABCELL_X88_Y36_N33
\next_state.r3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.r3~0_combout\ = ( \state.r2~q\ & ( !\switch[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch[2]~input_o\,
	dataf => \ALT_INV_state.r2~q\,
	combout => \next_state.r3~0_combout\);

-- Location: FF_X88_Y36_N35
\state.r3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \next_state.r3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.r3~q\);

-- Location: LABCELL_X88_Y36_N18
\WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = ( !\state.r3~q\ & ( !\state.lr3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.lr3~q\,
	dataf => \ALT_INV_state.r3~q\,
	combout => \WideOr5~0_combout\);

-- Location: LABCELL_X88_Y36_N0
WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ( \state.r3~q\ ) # ( !\state.r3~q\ & ( (\state.r2~q\) # (\state.lr3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.lr3~q\,
	datad => \ALT_INV_state.r2~q\,
	dataf => \ALT_INV_state.r3~q\,
	combout => \WideOr5~combout\);

-- Location: LABCELL_X88_Y36_N27
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( \state.l1~q\ ) # ( !\state.l1~q\ & ( (!\state.idle~q\) # ((\state.l2~q\) # (\state.l3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.idle~q\,
	datac => \ALT_INV_state.l3~q\,
	datad => \ALT_INV_state.l2~q\,
	dataf => \ALT_INV_state.l1~q\,
	combout => \WideOr4~combout\);

-- Location: LABCELL_X88_Y36_N24
WideOr3 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ( \state.r3~q\ ) # ( !\state.r3~q\ & ( (!\state.idle~q\) # ((\state.r1~q\) # (\state.r2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.idle~q\,
	datab => \ALT_INV_state.r2~q\,
	datac => \ALT_INV_state.r1~q\,
	dataf => \ALT_INV_state.r3~q\,
	combout => \WideOr3~combout\);

-- Location: LABCELL_X88_Y36_N45
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\state.l3~q\) # (\state.lr3~q\)) # (\state.l2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.l2~q\,
	datac => \ALT_INV_state.lr3~q\,
	datad => \ALT_INV_state.l3~q\,
	combout => \WideOr2~combout\);

-- Location: LABCELL_X88_Y36_N21
\light~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \light~0_combout\ = (!\state.lr3~q\ & !\state.l3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.lr3~q\,
	datad => \ALT_INV_state.l3~q\,
	combout => \light~0_combout\);

-- Location: MLABCELL_X82_Y77_N0
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


