//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEDICATED_MULTIPLIER_CIRCUITRY="NO" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" INPUT_A_IS_CONSTANT="NO" INPUT_B_IS_CONSTANT="NO" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=27 LPM_WIDTHB=7 LPM_WIDTHP=34 LPM_WIDTHS=1 MAXIMIZE_SPEED=5 dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
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




//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=33 dataa datab datac result
//VERSION_BEGIN 15.0 cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratixii 2015:04:22:18:04:08:SJ cbx_util_mgl 2015:04:22:18:04:08:SJ  VERSION_END


//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=26 dataa datab datac result
//VERSION_BEGIN 15.0 cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratixii 2015:04:22:18:04:08:SJ cbx_util_mgl 2015:04:22:18:04:08:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=28 dataa datab result
//VERSION_BEGIN 15.0 cbx_cycloneii 2015:04:22:18:04:07:SJ cbx_lpm_add_sub 2015:04:22:18:04:07:SJ cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratix 2015:04:22:18:04:08:SJ cbx_stratixii 2015:04:22:18:04:08:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=28 dataa datab result
//VERSION_BEGIN 15.0 cbx_cycloneii 2015:04:22:18:04:07:SJ cbx_lpm_add_sub 2015:04:22:18:04:07:SJ cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratix 2015:04:22:18:04:08:SJ cbx_stratixii 2015:04:22:18:04:08:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=28 dataa datab result
//VERSION_BEGIN 15.0 cbx_cycloneii 2015:04:22:18:04:07:SJ cbx_lpm_add_sub 2015:04:22:18:04:07:SJ cbx_mgl 2015:04:22:18:06:50:SJ cbx_stratix 2015:04:22:18:04:08:SJ cbx_stratixii 2015:04:22:18:04:08:SJ  VERSION_END

//synthesis_resources = lut 202 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_4k01
	( 
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [26:0]  dataa;
	input   [6:0]  datab;
	output   [33:0]  result;

	wire	[32:0]	wire_add2_result;
	wire	[25:0]	wire_add7_result;
	wire	[27:0]	wire_sum_adder1aa_0dataa;
	wire	[27:0]	wire_sum_adder1aa_0datab;
	wire	[27:0]	wire_sum_adder1aa_0result;
	wire	[27:0]	wire_sum_adder1aa_1dataa;
	wire	[27:0]	wire_sum_adder1aa_1datab;
	wire	[27:0]	wire_sum_adder1aa_1result;
	wire	[27:0]	wire_sum_adder1aa_2dataa;
	wire	[27:0]	wire_sum_adder1aa_2datab;
	wire	[27:0]	wire_sum_adder1aa_2result;
	wire  [25:0]   wire_sft10a_in;
	wire  [25:0]   wire_sft10a_out;
	wire  [25:0]   wire_sft11a_in;
	wire  [25:0]   wire_sft11a_out;
	wire  [32:0]   wire_sft3a_in;
	wire  [32:0]   wire_sft3a_out;
	wire  [32:0]   wire_sft4a_in;
	wire  [32:0]   wire_sft4a_out;
	wire  [32:0]   wire_sft5a_in;
	wire  [32:0]   wire_sft5a_out;
	wire  [32:0]   wire_sft6a_in;
	wire  [32:0]   wire_sft6a_out;
	wire  [25:0]   wire_sft8a_in;
	wire  [25:0]   wire_sft8a_out;
	wire  [25:0]   wire_sft9a_in;
	wire  [25:0]   wire_sft9a_out;
	wire  [26:0]  dataa_node;
	wire  [6:0]  datab_node;
	wire  [33:0]  final_result_node;
	wire  w261w;
	wire  [34:0]  w498w;
	wire  [188:0]  w_decoder_node9w;
	wire  [6:0]  w_le_datab_node8w;
	wire  [26:0]  w_lone_sum_node11w;
	wire  [86:0]  w_sum_node10w;

	assign
		wire_add2_result = wire_sft3a_out + wire_sft4a_out + wire_sft5a_out;
	assign
		wire_add7_result = wire_sft8a_out + wire_sft9a_out + wire_sft10a_out;
	assign
		wire_sum_adder1aa_0result = wire_sum_adder1aa_0dataa + wire_sum_adder1aa_0datab;
	assign
		wire_sum_adder1aa_0dataa = {1'b0, w_decoder_node9w[53:27]},
		wire_sum_adder1aa_0datab = {{2{1'b0}}, w_decoder_node9w[26:1]};
	assign
		wire_sum_adder1aa_1result = wire_sum_adder1aa_1dataa + wire_sum_adder1aa_1datab;
	assign
		wire_sum_adder1aa_1dataa = {1'b0, w_decoder_node9w[107:81]},
		wire_sum_adder1aa_1datab = {{2{1'b0}}, w_decoder_node9w[80:55]};
	assign
		wire_sum_adder1aa_2result = wire_sum_adder1aa_2dataa + wire_sum_adder1aa_2datab;
	assign
		wire_sum_adder1aa_2dataa = {1'b0, w_decoder_node9w[161:135]},
		wire_sum_adder1aa_2datab = {{2{1'b0}}, w_decoder_node9w[134:109]};
	soft   sft10a_0
	( 
	.in(wire_sft10a_in[0:0]),
	.out(wire_sft10a_out[0:0]));
	soft   sft10a_1
	( 
	.in(wire_sft10a_in[1:1]),
	.out(wire_sft10a_out[1:1]));
	soft   sft10a_2
	( 
	.in(wire_sft10a_in[2:2]),
	.out(wire_sft10a_out[2:2]));
	soft   sft10a_3
	( 
	.in(wire_sft10a_in[3:3]),
	.out(wire_sft10a_out[3:3]));
	soft   sft10a_4
	( 
	.in(wire_sft10a_in[4:4]),
	.out(wire_sft10a_out[4:4]));
	soft   sft10a_5
	( 
	.in(wire_sft10a_in[5:5]),
	.out(wire_sft10a_out[5:5]));
	soft   sft10a_6
	( 
	.in(wire_sft10a_in[6:6]),
	.out(wire_sft10a_out[6:6]));
	soft   sft10a_7
	( 
	.in(wire_sft10a_in[7:7]),
	.out(wire_sft10a_out[7:7]));
	soft   sft10a_8
	( 
	.in(wire_sft10a_in[8:8]),
	.out(wire_sft10a_out[8:8]));
	soft   sft10a_9
	( 
	.in(wire_sft10a_in[9:9]),
	.out(wire_sft10a_out[9:9]));
	soft   sft10a_10
	( 
	.in(wire_sft10a_in[10:10]),
	.out(wire_sft10a_out[10:10]));
	soft   sft10a_11
	( 
	.in(wire_sft10a_in[11:11]),
	.out(wire_sft10a_out[11:11]));
	soft   sft10a_12
	( 
	.in(wire_sft10a_in[12:12]),
	.out(wire_sft10a_out[12:12]));
	soft   sft10a_13
	( 
	.in(wire_sft10a_in[13:13]),
	.out(wire_sft10a_out[13:13]));
	soft   sft10a_14
	( 
	.in(wire_sft10a_in[14:14]),
	.out(wire_sft10a_out[14:14]));
	soft   sft10a_15
	( 
	.in(wire_sft10a_in[15:15]),
	.out(wire_sft10a_out[15:15]));
	soft   sft10a_16
	( 
	.in(wire_sft10a_in[16:16]),
	.out(wire_sft10a_out[16:16]));
	soft   sft10a_17
	( 
	.in(wire_sft10a_in[17:17]),
	.out(wire_sft10a_out[17:17]));
	soft   sft10a_18
	( 
	.in(wire_sft10a_in[18:18]),
	.out(wire_sft10a_out[18:18]));
	soft   sft10a_19
	( 
	.in(wire_sft10a_in[19:19]),
	.out(wire_sft10a_out[19:19]));
	soft   sft10a_20
	( 
	.in(wire_sft10a_in[20:20]),
	.out(wire_sft10a_out[20:20]));
	soft   sft10a_21
	( 
	.in(wire_sft10a_in[21:21]),
	.out(wire_sft10a_out[21:21]));
	soft   sft10a_22
	( 
	.in(wire_sft10a_in[22:22]),
	.out(wire_sft10a_out[22:22]));
	soft   sft10a_23
	( 
	.in(wire_sft10a_in[23:23]),
	.out(wire_sft10a_out[23:23]));
	soft   sft10a_24
	( 
	.in(wire_sft10a_in[24:24]),
	.out(wire_sft10a_out[24:24]));
	soft   sft10a_25
	( 
	.in(wire_sft10a_in[25:25]),
	.out(wire_sft10a_out[25:25]));
	assign
		wire_sft10a_in = {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {w261w, {2{w261w}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft11a_0
	( 
	.in(wire_sft11a_in[0:0]),
	.out(wire_sft11a_out[0:0]));
	soft   sft11a_1
	( 
	.in(wire_sft11a_in[1:1]),
	.out(wire_sft11a_out[1:1]));
	soft   sft11a_2
	( 
	.in(wire_sft11a_in[2:2]),
	.out(wire_sft11a_out[2:2]));
	soft   sft11a_3
	( 
	.in(wire_sft11a_in[3:3]),
	.out(wire_sft11a_out[3:3]));
	soft   sft11a_4
	( 
	.in(wire_sft11a_in[4:4]),
	.out(wire_sft11a_out[4:4]));
	soft   sft11a_5
	( 
	.in(wire_sft11a_in[5:5]),
	.out(wire_sft11a_out[5:5]));
	soft   sft11a_6
	( 
	.in(wire_sft11a_in[6:6]),
	.out(wire_sft11a_out[6:6]));
	soft   sft11a_7
	( 
	.in(wire_sft11a_in[7:7]),
	.out(wire_sft11a_out[7:7]));
	soft   sft11a_8
	( 
	.in(wire_sft11a_in[8:8]),
	.out(wire_sft11a_out[8:8]));
	soft   sft11a_9
	( 
	.in(wire_sft11a_in[9:9]),
	.out(wire_sft11a_out[9:9]));
	soft   sft11a_10
	( 
	.in(wire_sft11a_in[10:10]),
	.out(wire_sft11a_out[10:10]));
	soft   sft11a_11
	( 
	.in(wire_sft11a_in[11:11]),
	.out(wire_sft11a_out[11:11]));
	soft   sft11a_12
	( 
	.in(wire_sft11a_in[12:12]),
	.out(wire_sft11a_out[12:12]));
	soft   sft11a_13
	( 
	.in(wire_sft11a_in[13:13]),
	.out(wire_sft11a_out[13:13]));
	soft   sft11a_14
	( 
	.in(wire_sft11a_in[14:14]),
	.out(wire_sft11a_out[14:14]));
	soft   sft11a_15
	( 
	.in(wire_sft11a_in[15:15]),
	.out(wire_sft11a_out[15:15]));
	soft   sft11a_16
	( 
	.in(wire_sft11a_in[16:16]),
	.out(wire_sft11a_out[16:16]));
	soft   sft11a_17
	( 
	.in(wire_sft11a_in[17:17]),
	.out(wire_sft11a_out[17:17]));
	soft   sft11a_18
	( 
	.in(wire_sft11a_in[18:18]),
	.out(wire_sft11a_out[18:18]));
	soft   sft11a_19
	( 
	.in(wire_sft11a_in[19:19]),
	.out(wire_sft11a_out[19:19]));
	soft   sft11a_20
	( 
	.in(wire_sft11a_in[20:20]),
	.out(wire_sft11a_out[20:20]));
	soft   sft11a_21
	( 
	.in(wire_sft11a_in[21:21]),
	.out(wire_sft11a_out[21:21]));
	soft   sft11a_22
	( 
	.in(wire_sft11a_in[22:22]),
	.out(wire_sft11a_out[22:22]));
	soft   sft11a_23
	( 
	.in(wire_sft11a_in[23:23]),
	.out(wire_sft11a_out[23:23]));
	soft   sft11a_24
	( 
	.in(wire_sft11a_in[24:24]),
	.out(wire_sft11a_out[24:24]));
	soft   sft11a_25
	( 
	.in(wire_sft11a_in[25:25]),
	.out(wire_sft11a_out[25:25]));
	assign
		wire_sft11a_in = wire_add7_result;
	soft   sft3a_0
	( 
	.in(wire_sft3a_in[0:0]),
	.out(wire_sft3a_out[0:0]));
	soft   sft3a_1
	( 
	.in(wire_sft3a_in[1:1]),
	.out(wire_sft3a_out[1:1]));
	soft   sft3a_2
	( 
	.in(wire_sft3a_in[2:2]),
	.out(wire_sft3a_out[2:2]));
	soft   sft3a_3
	( 
	.in(wire_sft3a_in[3:3]),
	.out(wire_sft3a_out[3:3]));
	soft   sft3a_4
	( 
	.in(wire_sft3a_in[4:4]),
	.out(wire_sft3a_out[4:4]));
	soft   sft3a_5
	( 
	.in(wire_sft3a_in[5:5]),
	.out(wire_sft3a_out[5:5]));
	soft   sft3a_6
	( 
	.in(wire_sft3a_in[6:6]),
	.out(wire_sft3a_out[6:6]));
	soft   sft3a_7
	( 
	.in(wire_sft3a_in[7:7]),
	.out(wire_sft3a_out[7:7]));
	soft   sft3a_8
	( 
	.in(wire_sft3a_in[8:8]),
	.out(wire_sft3a_out[8:8]));
	soft   sft3a_9
	( 
	.in(wire_sft3a_in[9:9]),
	.out(wire_sft3a_out[9:9]));
	soft   sft3a_10
	( 
	.in(wire_sft3a_in[10:10]),
	.out(wire_sft3a_out[10:10]));
	soft   sft3a_11
	( 
	.in(wire_sft3a_in[11:11]),
	.out(wire_sft3a_out[11:11]));
	soft   sft3a_12
	( 
	.in(wire_sft3a_in[12:12]),
	.out(wire_sft3a_out[12:12]));
	soft   sft3a_13
	( 
	.in(wire_sft3a_in[13:13]),
	.out(wire_sft3a_out[13:13]));
	soft   sft3a_14
	( 
	.in(wire_sft3a_in[14:14]),
	.out(wire_sft3a_out[14:14]));
	soft   sft3a_15
	( 
	.in(wire_sft3a_in[15:15]),
	.out(wire_sft3a_out[15:15]));
	soft   sft3a_16
	( 
	.in(wire_sft3a_in[16:16]),
	.out(wire_sft3a_out[16:16]));
	soft   sft3a_17
	( 
	.in(wire_sft3a_in[17:17]),
	.out(wire_sft3a_out[17:17]));
	soft   sft3a_18
	( 
	.in(wire_sft3a_in[18:18]),
	.out(wire_sft3a_out[18:18]));
	soft   sft3a_19
	( 
	.in(wire_sft3a_in[19:19]),
	.out(wire_sft3a_out[19:19]));
	soft   sft3a_20
	( 
	.in(wire_sft3a_in[20:20]),
	.out(wire_sft3a_out[20:20]));
	soft   sft3a_21
	( 
	.in(wire_sft3a_in[21:21]),
	.out(wire_sft3a_out[21:21]));
	soft   sft3a_22
	( 
	.in(wire_sft3a_in[22:22]),
	.out(wire_sft3a_out[22:22]));
	soft   sft3a_23
	( 
	.in(wire_sft3a_in[23:23]),
	.out(wire_sft3a_out[23:23]));
	soft   sft3a_24
	( 
	.in(wire_sft3a_in[24:24]),
	.out(wire_sft3a_out[24:24]));
	soft   sft3a_25
	( 
	.in(wire_sft3a_in[25:25]),
	.out(wire_sft3a_out[25:25]));
	soft   sft3a_26
	( 
	.in(wire_sft3a_in[26:26]),
	.out(wire_sft3a_out[26:26]));
	soft   sft3a_27
	( 
	.in(wire_sft3a_in[27:27]),
	.out(wire_sft3a_out[27:27]));
	soft   sft3a_28
	( 
	.in(wire_sft3a_in[28:28]),
	.out(wire_sft3a_out[28:28]));
	soft   sft3a_29
	( 
	.in(wire_sft3a_in[29:29]),
	.out(wire_sft3a_out[29:29]));
	soft   sft3a_30
	( 
	.in(wire_sft3a_in[30:30]),
	.out(wire_sft3a_out[30:30]));
	soft   sft3a_31
	( 
	.in(wire_sft3a_in[31:31]),
	.out(wire_sft3a_out[31:31]));
	soft   sft3a_32
	( 
	.in(wire_sft3a_in[32:32]),
	.out(wire_sft3a_out[32:32]));
	assign
		wire_sft3a_in = {w261w, {w261w, {w_sum_node10w[86], {w_sum_node10w[85], {w_lone_sum_node11w[24], {w_lone_sum_node11w[23], {w_sum_node10w[28], {w_sum_node10w[27], {w_sum_node10w[26], {w_sum_node10w[25], {w_sum_node10w[24], {w_sum_node10w[23], {w_sum_node10w[22], {w_sum_node10w[21], {w_sum_node10w[20], {w_sum_node10w[19], {w_sum_node10w[18], {w_sum_node10w[17], {w_sum_node10w[16], {w_sum_node10w[15], {w_sum_node10w[14], {w_sum_node10w[13], {w_sum_node10w[12], {w_sum_node10w[11], {w_sum_node10w[10], {w_sum_node10w[9], {w_sum_node10w[8], {w_sum_node10w[7], {w_sum_node10w[6], {w_sum_node10w[5], {w_sum_node10w[4], {w_sum_node10w[3:2]}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft4a_0
	( 
	.in(wire_sft4a_in[0:0]),
	.out(wire_sft4a_out[0:0]));
	soft   sft4a_1
	( 
	.in(wire_sft4a_in[1:1]),
	.out(wire_sft4a_out[1:1]));
	soft   sft4a_2
	( 
	.in(wire_sft4a_in[2:2]),
	.out(wire_sft4a_out[2:2]));
	soft   sft4a_3
	( 
	.in(wire_sft4a_in[3:3]),
	.out(wire_sft4a_out[3:3]));
	soft   sft4a_4
	( 
	.in(wire_sft4a_in[4:4]),
	.out(wire_sft4a_out[4:4]));
	soft   sft4a_5
	( 
	.in(wire_sft4a_in[5:5]),
	.out(wire_sft4a_out[5:5]));
	soft   sft4a_6
	( 
	.in(wire_sft4a_in[6:6]),
	.out(wire_sft4a_out[6:6]));
	soft   sft4a_7
	( 
	.in(wire_sft4a_in[7:7]),
	.out(wire_sft4a_out[7:7]));
	soft   sft4a_8
	( 
	.in(wire_sft4a_in[8:8]),
	.out(wire_sft4a_out[8:8]));
	soft   sft4a_9
	( 
	.in(wire_sft4a_in[9:9]),
	.out(wire_sft4a_out[9:9]));
	soft   sft4a_10
	( 
	.in(wire_sft4a_in[10:10]),
	.out(wire_sft4a_out[10:10]));
	soft   sft4a_11
	( 
	.in(wire_sft4a_in[11:11]),
	.out(wire_sft4a_out[11:11]));
	soft   sft4a_12
	( 
	.in(wire_sft4a_in[12:12]),
	.out(wire_sft4a_out[12:12]));
	soft   sft4a_13
	( 
	.in(wire_sft4a_in[13:13]),
	.out(wire_sft4a_out[13:13]));
	soft   sft4a_14
	( 
	.in(wire_sft4a_in[14:14]),
	.out(wire_sft4a_out[14:14]));
	soft   sft4a_15
	( 
	.in(wire_sft4a_in[15:15]),
	.out(wire_sft4a_out[15:15]));
	soft   sft4a_16
	( 
	.in(wire_sft4a_in[16:16]),
	.out(wire_sft4a_out[16:16]));
	soft   sft4a_17
	( 
	.in(wire_sft4a_in[17:17]),
	.out(wire_sft4a_out[17:17]));
	soft   sft4a_18
	( 
	.in(wire_sft4a_in[18:18]),
	.out(wire_sft4a_out[18:18]));
	soft   sft4a_19
	( 
	.in(wire_sft4a_in[19:19]),
	.out(wire_sft4a_out[19:19]));
	soft   sft4a_20
	( 
	.in(wire_sft4a_in[20:20]),
	.out(wire_sft4a_out[20:20]));
	soft   sft4a_21
	( 
	.in(wire_sft4a_in[21:21]),
	.out(wire_sft4a_out[21:21]));
	soft   sft4a_22
	( 
	.in(wire_sft4a_in[22:22]),
	.out(wire_sft4a_out[22:22]));
	soft   sft4a_23
	( 
	.in(wire_sft4a_in[23:23]),
	.out(wire_sft4a_out[23:23]));
	soft   sft4a_24
	( 
	.in(wire_sft4a_in[24:24]),
	.out(wire_sft4a_out[24:24]));
	soft   sft4a_25
	( 
	.in(wire_sft4a_in[25:25]),
	.out(wire_sft4a_out[25:25]));
	soft   sft4a_26
	( 
	.in(wire_sft4a_in[26:26]),
	.out(wire_sft4a_out[26:26]));
	soft   sft4a_27
	( 
	.in(wire_sft4a_in[27:27]),
	.out(wire_sft4a_out[27:27]));
	soft   sft4a_28
	( 
	.in(wire_sft4a_in[28:28]),
	.out(wire_sft4a_out[28:28]));
	soft   sft4a_29
	( 
	.in(wire_sft4a_in[29:29]),
	.out(wire_sft4a_out[29:29]));
	soft   sft4a_30
	( 
	.in(wire_sft4a_in[30:30]),
	.out(wire_sft4a_out[30:30]));
	soft   sft4a_31
	( 
	.in(wire_sft4a_in[31:31]),
	.out(wire_sft4a_out[31:31]));
	soft   sft4a_32
	( 
	.in(wire_sft4a_in[32:32]),
	.out(wire_sft4a_out[32:32]));
	assign
		wire_sft4a_in = {w261w, {w261w, {w_lone_sum_node11w[26], {w_lone_sum_node11w[25], {w_sum_node10w[84], {w_sum_node10w[83], {w_sum_node10w[55], {w_sum_node10w[54], {w_sum_node10w[53], {w_sum_node10w[52], {w_sum_node10w[51], {w_sum_node10w[50], {w_sum_node10w[49], {w_sum_node10w[48], {w_sum_node10w[47], {w_sum_node10w[46], {w_sum_node10w[45], {w_sum_node10w[44], {w_sum_node10w[43], {w_sum_node10w[42], {w_sum_node10w[41], {w_sum_node10w[40], {w_sum_node10w[39], {w_sum_node10w[38], {w_sum_node10w[37], {w_sum_node10w[36], {w_sum_node10w[35], {w_sum_node10w[34], {w_sum_node10w[33], {w_sum_node10w[32], {w_sum_node10w[31], {w_sum_node10w[30:29]}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft5a_0
	( 
	.in(wire_sft5a_in[0:0]),
	.out(wire_sft5a_out[0:0]));
	soft   sft5a_1
	( 
	.in(wire_sft5a_in[1:1]),
	.out(wire_sft5a_out[1:1]));
	soft   sft5a_2
	( 
	.in(wire_sft5a_in[2:2]),
	.out(wire_sft5a_out[2:2]));
	soft   sft5a_3
	( 
	.in(wire_sft5a_in[3:3]),
	.out(wire_sft5a_out[3:3]));
	soft   sft5a_4
	( 
	.in(wire_sft5a_in[4:4]),
	.out(wire_sft5a_out[4:4]));
	soft   sft5a_5
	( 
	.in(wire_sft5a_in[5:5]),
	.out(wire_sft5a_out[5:5]));
	soft   sft5a_6
	( 
	.in(wire_sft5a_in[6:6]),
	.out(wire_sft5a_out[6:6]));
	soft   sft5a_7
	( 
	.in(wire_sft5a_in[7:7]),
	.out(wire_sft5a_out[7:7]));
	soft   sft5a_8
	( 
	.in(wire_sft5a_in[8:8]),
	.out(wire_sft5a_out[8:8]));
	soft   sft5a_9
	( 
	.in(wire_sft5a_in[9:9]),
	.out(wire_sft5a_out[9:9]));
	soft   sft5a_10
	( 
	.in(wire_sft5a_in[10:10]),
	.out(wire_sft5a_out[10:10]));
	soft   sft5a_11
	( 
	.in(wire_sft5a_in[11:11]),
	.out(wire_sft5a_out[11:11]));
	soft   sft5a_12
	( 
	.in(wire_sft5a_in[12:12]),
	.out(wire_sft5a_out[12:12]));
	soft   sft5a_13
	( 
	.in(wire_sft5a_in[13:13]),
	.out(wire_sft5a_out[13:13]));
	soft   sft5a_14
	( 
	.in(wire_sft5a_in[14:14]),
	.out(wire_sft5a_out[14:14]));
	soft   sft5a_15
	( 
	.in(wire_sft5a_in[15:15]),
	.out(wire_sft5a_out[15:15]));
	soft   sft5a_16
	( 
	.in(wire_sft5a_in[16:16]),
	.out(wire_sft5a_out[16:16]));
	soft   sft5a_17
	( 
	.in(wire_sft5a_in[17:17]),
	.out(wire_sft5a_out[17:17]));
	soft   sft5a_18
	( 
	.in(wire_sft5a_in[18:18]),
	.out(wire_sft5a_out[18:18]));
	soft   sft5a_19
	( 
	.in(wire_sft5a_in[19:19]),
	.out(wire_sft5a_out[19:19]));
	soft   sft5a_20
	( 
	.in(wire_sft5a_in[20:20]),
	.out(wire_sft5a_out[20:20]));
	soft   sft5a_21
	( 
	.in(wire_sft5a_in[21:21]),
	.out(wire_sft5a_out[21:21]));
	soft   sft5a_22
	( 
	.in(wire_sft5a_in[22:22]),
	.out(wire_sft5a_out[22:22]));
	soft   sft5a_23
	( 
	.in(wire_sft5a_in[23:23]),
	.out(wire_sft5a_out[23:23]));
	soft   sft5a_24
	( 
	.in(wire_sft5a_in[24:24]),
	.out(wire_sft5a_out[24:24]));
	soft   sft5a_25
	( 
	.in(wire_sft5a_in[25:25]),
	.out(wire_sft5a_out[25:25]));
	soft   sft5a_26
	( 
	.in(wire_sft5a_in[26:26]),
	.out(wire_sft5a_out[26:26]));
	soft   sft5a_27
	( 
	.in(wire_sft5a_in[27:27]),
	.out(wire_sft5a_out[27:27]));
	soft   sft5a_28
	( 
	.in(wire_sft5a_in[28:28]),
	.out(wire_sft5a_out[28:28]));
	soft   sft5a_29
	( 
	.in(wire_sft5a_in[29:29]),
	.out(wire_sft5a_out[29:29]));
	soft   sft5a_30
	( 
	.in(wire_sft5a_in[30:30]),
	.out(wire_sft5a_out[30:30]));
	soft   sft5a_31
	( 
	.in(wire_sft5a_in[31:31]),
	.out(wire_sft5a_out[31:31]));
	soft   sft5a_32
	( 
	.in(wire_sft5a_in[32:32]),
	.out(wire_sft5a_out[32:32]));
	assign
		wire_sft5a_in = {w261w, {w261w, {w261w, {wire_sft11a_out[25], {wire_sft11a_out[24], {wire_sft11a_out[23], {wire_sft11a_out[22], {wire_sft11a_out[21], {wire_sft11a_out[20], {wire_sft11a_out[19], {wire_sft11a_out[18], {wire_sft11a_out[17], {wire_sft11a_out[16], {wire_sft11a_out[15], {wire_sft11a_out[14], {wire_sft11a_out[13], {wire_sft11a_out[12], {wire_sft11a_out[11], {wire_sft11a_out[10], {wire_sft11a_out[9], {wire_sft11a_out[8], {wire_sft11a_out[7], {wire_sft11a_out[6], {wire_sft11a_out[5], {wire_sft11a_out[4], {wire_sft11a_out[3], {wire_sft11a_out[2], {wire_sft11a_out[1], {wire_sft11a_out[0], {w_sum_node10w[59], {w_sum_node10w[58], {2{w261w}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft6a_0
	( 
	.in(wire_sft6a_in[0:0]),
	.out(wire_sft6a_out[0:0]));
	soft   sft6a_1
	( 
	.in(wire_sft6a_in[1:1]),
	.out(wire_sft6a_out[1:1]));
	soft   sft6a_2
	( 
	.in(wire_sft6a_in[2:2]),
	.out(wire_sft6a_out[2:2]));
	soft   sft6a_3
	( 
	.in(wire_sft6a_in[3:3]),
	.out(wire_sft6a_out[3:3]));
	soft   sft6a_4
	( 
	.in(wire_sft6a_in[4:4]),
	.out(wire_sft6a_out[4:4]));
	soft   sft6a_5
	( 
	.in(wire_sft6a_in[5:5]),
	.out(wire_sft6a_out[5:5]));
	soft   sft6a_6
	( 
	.in(wire_sft6a_in[6:6]),
	.out(wire_sft6a_out[6:6]));
	soft   sft6a_7
	( 
	.in(wire_sft6a_in[7:7]),
	.out(wire_sft6a_out[7:7]));
	soft   sft6a_8
	( 
	.in(wire_sft6a_in[8:8]),
	.out(wire_sft6a_out[8:8]));
	soft   sft6a_9
	( 
	.in(wire_sft6a_in[9:9]),
	.out(wire_sft6a_out[9:9]));
	soft   sft6a_10
	( 
	.in(wire_sft6a_in[10:10]),
	.out(wire_sft6a_out[10:10]));
	soft   sft6a_11
	( 
	.in(wire_sft6a_in[11:11]),
	.out(wire_sft6a_out[11:11]));
	soft   sft6a_12
	( 
	.in(wire_sft6a_in[12:12]),
	.out(wire_sft6a_out[12:12]));
	soft   sft6a_13
	( 
	.in(wire_sft6a_in[13:13]),
	.out(wire_sft6a_out[13:13]));
	soft   sft6a_14
	( 
	.in(wire_sft6a_in[14:14]),
	.out(wire_sft6a_out[14:14]));
	soft   sft6a_15
	( 
	.in(wire_sft6a_in[15:15]),
	.out(wire_sft6a_out[15:15]));
	soft   sft6a_16
	( 
	.in(wire_sft6a_in[16:16]),
	.out(wire_sft6a_out[16:16]));
	soft   sft6a_17
	( 
	.in(wire_sft6a_in[17:17]),
	.out(wire_sft6a_out[17:17]));
	soft   sft6a_18
	( 
	.in(wire_sft6a_in[18:18]),
	.out(wire_sft6a_out[18:18]));
	soft   sft6a_19
	( 
	.in(wire_sft6a_in[19:19]),
	.out(wire_sft6a_out[19:19]));
	soft   sft6a_20
	( 
	.in(wire_sft6a_in[20:20]),
	.out(wire_sft6a_out[20:20]));
	soft   sft6a_21
	( 
	.in(wire_sft6a_in[21:21]),
	.out(wire_sft6a_out[21:21]));
	soft   sft6a_22
	( 
	.in(wire_sft6a_in[22:22]),
	.out(wire_sft6a_out[22:22]));
	soft   sft6a_23
	( 
	.in(wire_sft6a_in[23:23]),
	.out(wire_sft6a_out[23:23]));
	soft   sft6a_24
	( 
	.in(wire_sft6a_in[24:24]),
	.out(wire_sft6a_out[24:24]));
	soft   sft6a_25
	( 
	.in(wire_sft6a_in[25:25]),
	.out(wire_sft6a_out[25:25]));
	soft   sft6a_26
	( 
	.in(wire_sft6a_in[26:26]),
	.out(wire_sft6a_out[26:26]));
	soft   sft6a_27
	( 
	.in(wire_sft6a_in[27:27]),
	.out(wire_sft6a_out[27:27]));
	soft   sft6a_28
	( 
	.in(wire_sft6a_in[28:28]),
	.out(wire_sft6a_out[28:28]));
	soft   sft6a_29
	( 
	.in(wire_sft6a_in[29:29]),
	.out(wire_sft6a_out[29:29]));
	soft   sft6a_30
	( 
	.in(wire_sft6a_in[30:30]),
	.out(wire_sft6a_out[30:30]));
	soft   sft6a_31
	( 
	.in(wire_sft6a_in[31:31]),
	.out(wire_sft6a_out[31:31]));
	soft   sft6a_32
	( 
	.in(wire_sft6a_in[32:32]),
	.out(wire_sft6a_out[32:32]));
	assign
		wire_sft6a_in = wire_add2_result;
	soft   sft8a_0
	( 
	.in(wire_sft8a_in[0:0]),
	.out(wire_sft8a_out[0:0]));
	soft   sft8a_1
	( 
	.in(wire_sft8a_in[1:1]),
	.out(wire_sft8a_out[1:1]));
	soft   sft8a_2
	( 
	.in(wire_sft8a_in[2:2]),
	.out(wire_sft8a_out[2:2]));
	soft   sft8a_3
	( 
	.in(wire_sft8a_in[3:3]),
	.out(wire_sft8a_out[3:3]));
	soft   sft8a_4
	( 
	.in(wire_sft8a_in[4:4]),
	.out(wire_sft8a_out[4:4]));
	soft   sft8a_5
	( 
	.in(wire_sft8a_in[5:5]),
	.out(wire_sft8a_out[5:5]));
	soft   sft8a_6
	( 
	.in(wire_sft8a_in[6:6]),
	.out(wire_sft8a_out[6:6]));
	soft   sft8a_7
	( 
	.in(wire_sft8a_in[7:7]),
	.out(wire_sft8a_out[7:7]));
	soft   sft8a_8
	( 
	.in(wire_sft8a_in[8:8]),
	.out(wire_sft8a_out[8:8]));
	soft   sft8a_9
	( 
	.in(wire_sft8a_in[9:9]),
	.out(wire_sft8a_out[9:9]));
	soft   sft8a_10
	( 
	.in(wire_sft8a_in[10:10]),
	.out(wire_sft8a_out[10:10]));
	soft   sft8a_11
	( 
	.in(wire_sft8a_in[11:11]),
	.out(wire_sft8a_out[11:11]));
	soft   sft8a_12
	( 
	.in(wire_sft8a_in[12:12]),
	.out(wire_sft8a_out[12:12]));
	soft   sft8a_13
	( 
	.in(wire_sft8a_in[13:13]),
	.out(wire_sft8a_out[13:13]));
	soft   sft8a_14
	( 
	.in(wire_sft8a_in[14:14]),
	.out(wire_sft8a_out[14:14]));
	soft   sft8a_15
	( 
	.in(wire_sft8a_in[15:15]),
	.out(wire_sft8a_out[15:15]));
	soft   sft8a_16
	( 
	.in(wire_sft8a_in[16:16]),
	.out(wire_sft8a_out[16:16]));
	soft   sft8a_17
	( 
	.in(wire_sft8a_in[17:17]),
	.out(wire_sft8a_out[17:17]));
	soft   sft8a_18
	( 
	.in(wire_sft8a_in[18:18]),
	.out(wire_sft8a_out[18:18]));
	soft   sft8a_19
	( 
	.in(wire_sft8a_in[19:19]),
	.out(wire_sft8a_out[19:19]));
	soft   sft8a_20
	( 
	.in(wire_sft8a_in[20:20]),
	.out(wire_sft8a_out[20:20]));
	soft   sft8a_21
	( 
	.in(wire_sft8a_in[21:21]),
	.out(wire_sft8a_out[21:21]));
	soft   sft8a_22
	( 
	.in(wire_sft8a_in[22:22]),
	.out(wire_sft8a_out[22:22]));
	soft   sft8a_23
	( 
	.in(wire_sft8a_in[23:23]),
	.out(wire_sft8a_out[23:23]));
	soft   sft8a_24
	( 
	.in(wire_sft8a_in[24:24]),
	.out(wire_sft8a_out[24:24]));
	soft   sft8a_25
	( 
	.in(wire_sft8a_in[25:25]),
	.out(wire_sft8a_out[25:25]));
	assign
		wire_sft8a_in = {w261w, {w_sum_node10w[57], {w_sum_node10w[56], {w_lone_sum_node11w[22], {w_lone_sum_node11w[21], {w_lone_sum_node11w[20], {w_lone_sum_node11w[19], {w_lone_sum_node11w[18], {w_lone_sum_node11w[17], {w_lone_sum_node11w[16], {w_lone_sum_node11w[15], {w_lone_sum_node11w[14], {w_lone_sum_node11w[13], {w_lone_sum_node11w[12], {w_lone_sum_node11w[11], {w_lone_sum_node11w[10], {w_lone_sum_node11w[9], {w_lone_sum_node11w[8], {w_lone_sum_node11w[7], {w_lone_sum_node11w[6], {w_lone_sum_node11w[5], {w_lone_sum_node11w[4], {w_lone_sum_node11w[3], {w_lone_sum_node11w[2], {w_lone_sum_node11w[1:0]}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft9a_0
	( 
	.in(wire_sft9a_in[0:0]),
	.out(wire_sft9a_out[0:0]));
	soft   sft9a_1
	( 
	.in(wire_sft9a_in[1:1]),
	.out(wire_sft9a_out[1:1]));
	soft   sft9a_2
	( 
	.in(wire_sft9a_in[2:2]),
	.out(wire_sft9a_out[2:2]));
	soft   sft9a_3
	( 
	.in(wire_sft9a_in[3:3]),
	.out(wire_sft9a_out[3:3]));
	soft   sft9a_4
	( 
	.in(wire_sft9a_in[4:4]),
	.out(wire_sft9a_out[4:4]));
	soft   sft9a_5
	( 
	.in(wire_sft9a_in[5:5]),
	.out(wire_sft9a_out[5:5]));
	soft   sft9a_6
	( 
	.in(wire_sft9a_in[6:6]),
	.out(wire_sft9a_out[6:6]));
	soft   sft9a_7
	( 
	.in(wire_sft9a_in[7:7]),
	.out(wire_sft9a_out[7:7]));
	soft   sft9a_8
	( 
	.in(wire_sft9a_in[8:8]),
	.out(wire_sft9a_out[8:8]));
	soft   sft9a_9
	( 
	.in(wire_sft9a_in[9:9]),
	.out(wire_sft9a_out[9:9]));
	soft   sft9a_10
	( 
	.in(wire_sft9a_in[10:10]),
	.out(wire_sft9a_out[10:10]));
	soft   sft9a_11
	( 
	.in(wire_sft9a_in[11:11]),
	.out(wire_sft9a_out[11:11]));
	soft   sft9a_12
	( 
	.in(wire_sft9a_in[12:12]),
	.out(wire_sft9a_out[12:12]));
	soft   sft9a_13
	( 
	.in(wire_sft9a_in[13:13]),
	.out(wire_sft9a_out[13:13]));
	soft   sft9a_14
	( 
	.in(wire_sft9a_in[14:14]),
	.out(wire_sft9a_out[14:14]));
	soft   sft9a_15
	( 
	.in(wire_sft9a_in[15:15]),
	.out(wire_sft9a_out[15:15]));
	soft   sft9a_16
	( 
	.in(wire_sft9a_in[16:16]),
	.out(wire_sft9a_out[16:16]));
	soft   sft9a_17
	( 
	.in(wire_sft9a_in[17:17]),
	.out(wire_sft9a_out[17:17]));
	soft   sft9a_18
	( 
	.in(wire_sft9a_in[18:18]),
	.out(wire_sft9a_out[18:18]));
	soft   sft9a_19
	( 
	.in(wire_sft9a_in[19:19]),
	.out(wire_sft9a_out[19:19]));
	soft   sft9a_20
	( 
	.in(wire_sft9a_in[20:20]),
	.out(wire_sft9a_out[20:20]));
	soft   sft9a_21
	( 
	.in(wire_sft9a_in[21:21]),
	.out(wire_sft9a_out[21:21]));
	soft   sft9a_22
	( 
	.in(wire_sft9a_in[22:22]),
	.out(wire_sft9a_out[22:22]));
	soft   sft9a_23
	( 
	.in(wire_sft9a_in[23:23]),
	.out(wire_sft9a_out[23:23]));
	soft   sft9a_24
	( 
	.in(wire_sft9a_in[24:24]),
	.out(wire_sft9a_out[24:24]));
	soft   sft9a_25
	( 
	.in(wire_sft9a_in[25:25]),
	.out(wire_sft9a_out[25:25]));
	assign
		wire_sft9a_in = {w261w, {w261w, {w261w, {w_sum_node10w[82], {w_sum_node10w[81], {w_sum_node10w[80], {w_sum_node10w[79], {w_sum_node10w[78], {w_sum_node10w[77], {w_sum_node10w[76], {w_sum_node10w[75], {w_sum_node10w[74], {w_sum_node10w[73], {w_sum_node10w[72], {w_sum_node10w[71], {w_sum_node10w[70], {w_sum_node10w[69], {w_sum_node10w[68], {w_sum_node10w[67], {w_sum_node10w[66], {w_sum_node10w[65], {w_sum_node10w[64], {w_sum_node10w[63], {w_sum_node10w[62], {w_sum_node10w[61:60]}}}}}}}}}}}}}}}}}}}}}}}}};
	assign
		dataa_node = {dataa[26:0]},
		datab_node = {datab[6:0]},
		final_result_node = {w498w[33:0]},
		result = {final_result_node[33:0]},
		w261w = 1'b0,
		w498w = {wire_sft6a_out[32:31], wire_sft6a_out[30:29], wire_sft6a_out[28:27], wire_sft6a_out[26:25], wire_sft6a_out[24:23], wire_sft6a_out[22:21], wire_sft6a_out[20:19], wire_sft6a_out[18:17], wire_sft6a_out[16:15], wire_sft6a_out[14:13], wire_sft6a_out[12:11], wire_sft6a_out[10:9], wire_sft6a_out[8:7], wire_sft6a_out[6:5], wire_sft6a_out[4:3], wire_sft6a_out[2:1], wire_sft6a_out[0], w_sum_node10w[1], w_sum_node10w[0]},
		w_decoder_node9w = {({dataa_node[26:0]} & {27{w_le_datab_node8w[6]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[5]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[4]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[3]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[2]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[1]}}), ({dataa_node[26:0]} & {27{w_le_datab_node8w[0]}})},
		w_le_datab_node8w = {datab_node[6:0]},
		w_lone_sum_node11w = {w_decoder_node9w[188:162]},
		w_sum_node10w = {wire_sum_adder1aa_2result[27:0], w_decoder_node9w[108], wire_sum_adder1aa_1result[27:0], w_decoder_node9w[54], wire_sum_adder1aa_0result[27:0], w_decoder_node9w[0]};
endmodule //mult_4k01
//VALID FILE
