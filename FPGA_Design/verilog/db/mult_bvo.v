//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=5 LPM_REPRESENTATION="SIGNED" LPM_WIDTHA=27 LPM_WIDTHB=27 LPM_WIDTHP=54 MAXIMIZE_SPEED=5 clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 15.0 cbx_cycloneii 2015:04:22:18:04:07:SJ cbx_lpm_add_sub 2015:04:22:18:04:07:SJ cbx_lpm_mult 2015:04:22:18:04:08:SJ cbx_mgl 2015:04:22:18:06:50:SJ cbx_padd 2015:04:22:18:04:08:SJ cbx_stratix 2015:04:22:18:04:08:SJ cbx_stratixii 2015:04:22:18:04:08:SJ cbx_util_mgl 2015:04:22:18:04:08:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, the Altera Quartus II License Agreement,
//  the Altera MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Altera and sold by Altera or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_bvo
	( 
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [26:0]  dataa;
	input   [26:0]  datab;
	output   [53:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg  [26:0]  dataa_input_reg;
	reg  [26:0]  datab_input_reg;
	reg  [53:0]  result_output_reg;
	reg  [53:0]  result_extra0_reg;
	reg  [53:0]  result_extra1_reg;
	reg  [53:0]  result_extra2_reg;
	wire signed	[26:0]    dataa_wire;
	wire signed	[26:0]    datab_wire;
	wire signed	[53:0]    result_wire;


	// synopsys translate_off
	initial
		dataa_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		dataa_input_reg <= dataa;
	// synopsys translate_off
	initial
		datab_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		datab_input_reg <= datab;
	// synopsys translate_off
	initial
		result_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_output_reg <= result_extra2_reg;
	// synopsys translate_off
	initial
		result_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_extra0_reg <= result_wire[53:0];
	// synopsys translate_off
	initial
		result_extra1_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_extra1_reg <= result_extra0_reg;
	// synopsys translate_off
	initial
		result_extra2_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		result_extra2_reg <= result_extra1_reg;

	assign dataa_wire = dataa_input_reg;
	assign datab_wire = datab_input_reg;
	assign result_wire = dataa_wire * datab_wire;
	assign result = ({result_output_reg});

endmodule //mult_bvo
//VALID FILE
