// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 19 09:59:58 2019
// Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/vhdl/zybo_base_linux/zybo_base_linux.srcs/sources_1/bd/system/ip/system_detec_movement_0_0/system_detec_movement_0_0_stub.v
// Design      : system_detec_movement_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "detec_movement,Vivado 2018.3" *)
module system_detec_movement_0_0(s_axi_detec_data_AWADDR, 
  s_axi_detec_data_AWVALID, s_axi_detec_data_AWREADY, s_axi_detec_data_WDATA, 
  s_axi_detec_data_WSTRB, s_axi_detec_data_WVALID, s_axi_detec_data_WREADY, 
  s_axi_detec_data_BRESP, s_axi_detec_data_BVALID, s_axi_detec_data_BREADY, 
  s_axi_detec_data_ARADDR, s_axi_detec_data_ARVALID, s_axi_detec_data_ARREADY, 
  s_axi_detec_data_RDATA, s_axi_detec_data_RRESP, s_axi_detec_data_RVALID, 
  s_axi_detec_data_RREADY, ap_clk, ap_rst_n, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_detec_data_AWADDR[9:0],s_axi_detec_data_AWVALID,s_axi_detec_data_AWREADY,s_axi_detec_data_WDATA[31:0],s_axi_detec_data_WSTRB[3:0],s_axi_detec_data_WVALID,s_axi_detec_data_WREADY,s_axi_detec_data_BRESP[1:0],s_axi_detec_data_BVALID,s_axi_detec_data_BREADY,s_axi_detec_data_ARADDR[9:0],s_axi_detec_data_ARVALID,s_axi_detec_data_ARREADY,s_axi_detec_data_RDATA[31:0],s_axi_detec_data_RRESP[1:0],s_axi_detec_data_RVALID,s_axi_detec_data_RREADY,ap_clk,ap_rst_n,interrupt" */;
  input [9:0]s_axi_detec_data_AWADDR;
  input s_axi_detec_data_AWVALID;
  output s_axi_detec_data_AWREADY;
  input [31:0]s_axi_detec_data_WDATA;
  input [3:0]s_axi_detec_data_WSTRB;
  input s_axi_detec_data_WVALID;
  output s_axi_detec_data_WREADY;
  output [1:0]s_axi_detec_data_BRESP;
  output s_axi_detec_data_BVALID;
  input s_axi_detec_data_BREADY;
  input [9:0]s_axi_detec_data_ARADDR;
  input s_axi_detec_data_ARVALID;
  output s_axi_detec_data_ARREADY;
  output [31:0]s_axi_detec_data_RDATA;
  output [1:0]s_axi_detec_data_RRESP;
  output s_axi_detec_data_RVALID;
  input s_axi_detec_data_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
endmodule
