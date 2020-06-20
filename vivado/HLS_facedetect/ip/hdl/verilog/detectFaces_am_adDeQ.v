// ==============================================================
// File generated on Thu Jul 18 13:24:07 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module detectFaces_am_adDeQ_DSP48_3(
    input  [5 - 1:0] in0,
    input  [5 - 1:0] in1,
    input  [6 - 1:0] in2,
    output [11 - 1:0]  dout);

wire signed [18 - 1:0]     b;
wire signed [25 - 1:0]     a;
wire signed [25 - 1:0]     d;
wire signed [43 - 1:0]     m;
wire signed [25 - 1:0]    ad;

assign a = $unsigned(in0);
assign d = $unsigned(in1);
assign b = $unsigned(in2);

assign ad = a + d;
assign m  = ad * b;

assign dout = m;

endmodule
`timescale 1 ns / 1 ps
module detectFaces_am_adDeQ(
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



detectFaces_am_adDeQ_DSP48_3 detectFaces_am_adDeQ_DSP48_3_U(
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .dout( dout ));

endmodule
