// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 19 09:59:58 2019
// Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/vhdl/zybo_base_linux/zybo_base_linux.srcs/sources_1/bd/system/ip/system_detec_movement_0_0/system_detec_movement_0_0_sim_netlist.v
// Design      : system_detec_movement_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_detec_movement_0_0,detec_movement,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "detec_movement,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_detec_movement_0_0
   (s_axi_detec_data_AWADDR,
    s_axi_detec_data_AWVALID,
    s_axi_detec_data_AWREADY,
    s_axi_detec_data_WDATA,
    s_axi_detec_data_WSTRB,
    s_axi_detec_data_WVALID,
    s_axi_detec_data_WREADY,
    s_axi_detec_data_BRESP,
    s_axi_detec_data_BVALID,
    s_axi_detec_data_BREADY,
    s_axi_detec_data_ARADDR,
    s_axi_detec_data_ARVALID,
    s_axi_detec_data_ARREADY,
    s_axi_detec_data_RDATA,
    s_axi_detec_data_RRESP,
    s_axi_detec_data_RVALID,
    s_axi_detec_data_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_detec_data, ADDR_WIDTH 10, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [9:0]s_axi_detec_data_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data AWVALID" *) input s_axi_detec_data_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data AWREADY" *) output s_axi_detec_data_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data WDATA" *) input [31:0]s_axi_detec_data_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data WSTRB" *) input [3:0]s_axi_detec_data_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data WVALID" *) input s_axi_detec_data_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data WREADY" *) output s_axi_detec_data_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data BRESP" *) output [1:0]s_axi_detec_data_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data BVALID" *) output s_axi_detec_data_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data BREADY" *) input s_axi_detec_data_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data ARADDR" *) input [9:0]s_axi_detec_data_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data ARVALID" *) input s_axi_detec_data_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data ARREADY" *) output s_axi_detec_data_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data RDATA" *) output [31:0]s_axi_detec_data_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data RRESP" *) output [1:0]s_axi_detec_data_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data RVALID" *) output s_axi_detec_data_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_detec_data RREADY" *) input s_axi_detec_data_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_detec_data, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *) output interrupt;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [9:0]s_axi_detec_data_ARADDR;
  wire s_axi_detec_data_ARREADY;
  wire s_axi_detec_data_ARVALID;
  wire [9:0]s_axi_detec_data_AWADDR;
  wire s_axi_detec_data_AWREADY;
  wire s_axi_detec_data_AWVALID;
  wire s_axi_detec_data_BREADY;
  wire [1:0]s_axi_detec_data_BRESP;
  wire s_axi_detec_data_BVALID;
  wire [31:0]s_axi_detec_data_RDATA;
  wire s_axi_detec_data_RREADY;
  wire [1:0]s_axi_detec_data_RRESP;
  wire s_axi_detec_data_RVALID;
  wire [31:0]s_axi_detec_data_WDATA;
  wire s_axi_detec_data_WREADY;
  wire [3:0]s_axi_detec_data_WSTRB;
  wire s_axi_detec_data_WVALID;

  (* C_S_AXI_DETEC_DATA_ADDR_WIDTH = "10" *) 
  (* C_S_AXI_DETEC_DATA_DATA_WIDTH = "32" *) 
  system_detec_movement_0_0_detec_movement U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_detec_data_ARADDR(s_axi_detec_data_ARADDR),
        .s_axi_detec_data_ARREADY(s_axi_detec_data_ARREADY),
        .s_axi_detec_data_ARVALID(s_axi_detec_data_ARVALID),
        .s_axi_detec_data_AWADDR(s_axi_detec_data_AWADDR),
        .s_axi_detec_data_AWREADY(s_axi_detec_data_AWREADY),
        .s_axi_detec_data_AWVALID(s_axi_detec_data_AWVALID),
        .s_axi_detec_data_BREADY(s_axi_detec_data_BREADY),
        .s_axi_detec_data_BRESP(s_axi_detec_data_BRESP),
        .s_axi_detec_data_BVALID(s_axi_detec_data_BVALID),
        .s_axi_detec_data_RDATA(s_axi_detec_data_RDATA),
        .s_axi_detec_data_RREADY(s_axi_detec_data_RREADY),
        .s_axi_detec_data_RRESP(s_axi_detec_data_RRESP),
        .s_axi_detec_data_RVALID(s_axi_detec_data_RVALID),
        .s_axi_detec_data_WDATA(s_axi_detec_data_WDATA),
        .s_axi_detec_data_WREADY(s_axi_detec_data_WREADY),
        .s_axi_detec_data_WSTRB(s_axi_detec_data_WSTRB),
        .s_axi_detec_data_WVALID(s_axi_detec_data_WVALID));
endmodule

(* C_S_AXI_DETEC_DATA_ADDR_WIDTH = "10" *) (* C_S_AXI_DETEC_DATA_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "detec_movement" *) 
module system_detec_movement_0_0_detec_movement
   (ap_clk,
    ap_rst_n,
    s_axi_detec_data_AWVALID,
    s_axi_detec_data_AWREADY,
    s_axi_detec_data_AWADDR,
    s_axi_detec_data_WVALID,
    s_axi_detec_data_WREADY,
    s_axi_detec_data_WDATA,
    s_axi_detec_data_WSTRB,
    s_axi_detec_data_ARVALID,
    s_axi_detec_data_ARREADY,
    s_axi_detec_data_ARADDR,
    s_axi_detec_data_RVALID,
    s_axi_detec_data_RREADY,
    s_axi_detec_data_RDATA,
    s_axi_detec_data_RRESP,
    s_axi_detec_data_BVALID,
    s_axi_detec_data_BREADY,
    s_axi_detec_data_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_detec_data_AWVALID;
  output s_axi_detec_data_AWREADY;
  input [9:0]s_axi_detec_data_AWADDR;
  input s_axi_detec_data_WVALID;
  output s_axi_detec_data_WREADY;
  input [31:0]s_axi_detec_data_WDATA;
  input [3:0]s_axi_detec_data_WSTRB;
  input s_axi_detec_data_ARVALID;
  output s_axi_detec_data_ARREADY;
  input [9:0]s_axi_detec_data_ARADDR;
  output s_axi_detec_data_RVALID;
  input s_axi_detec_data_RREADY;
  output [31:0]s_axi_detec_data_RDATA;
  output [1:0]s_axi_detec_data_RRESP;
  output s_axi_detec_data_BVALID;
  input s_axi_detec_data_BREADY;
  output [1:0]s_axi_detec_data_BRESP;
  output interrupt;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [5:0]ap_NS_fsm;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire [31:0]counter_load_reg_418;
  wire counter_load_reg_4180;
  wire [31:0]counter_new_1_reg_165;
  wire counter_new_1_reg_1650;
  wire counter_new_1_reg_16501_out;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[9] ;
  wire [7:0]d0;
  wire detec_movement_detec_data_s_axi_U_n_0;
  wire detec_movement_detec_data_s_axi_U_n_1;
  wire detec_movement_detec_data_s_axi_U_n_10;
  wire detec_movement_detec_data_s_axi_U_n_11;
  wire detec_movement_detec_data_s_axi_U_n_12;
  wire detec_movement_detec_data_s_axi_U_n_13;
  wire detec_movement_detec_data_s_axi_U_n_138;
  wire detec_movement_detec_data_s_axi_U_n_14;
  wire detec_movement_detec_data_s_axi_U_n_15;
  wire detec_movement_detec_data_s_axi_U_n_16;
  wire detec_movement_detec_data_s_axi_U_n_17;
  wire detec_movement_detec_data_s_axi_U_n_18;
  wire detec_movement_detec_data_s_axi_U_n_19;
  wire detec_movement_detec_data_s_axi_U_n_2;
  wire detec_movement_detec_data_s_axi_U_n_20;
  wire detec_movement_detec_data_s_axi_U_n_21;
  wire detec_movement_detec_data_s_axi_U_n_22;
  wire detec_movement_detec_data_s_axi_U_n_23;
  wire detec_movement_detec_data_s_axi_U_n_24;
  wire detec_movement_detec_data_s_axi_U_n_25;
  wire detec_movement_detec_data_s_axi_U_n_26;
  wire detec_movement_detec_data_s_axi_U_n_27;
  wire detec_movement_detec_data_s_axi_U_n_28;
  wire detec_movement_detec_data_s_axi_U_n_29;
  wire detec_movement_detec_data_s_axi_U_n_3;
  wire detec_movement_detec_data_s_axi_U_n_30;
  wire detec_movement_detec_data_s_axi_U_n_31;
  wire detec_movement_detec_data_s_axi_U_n_32;
  wire detec_movement_detec_data_s_axi_U_n_33;
  wire detec_movement_detec_data_s_axi_U_n_34;
  wire detec_movement_detec_data_s_axi_U_n_35;
  wire detec_movement_detec_data_s_axi_U_n_36;
  wire detec_movement_detec_data_s_axi_U_n_37;
  wire detec_movement_detec_data_s_axi_U_n_38;
  wire detec_movement_detec_data_s_axi_U_n_39;
  wire detec_movement_detec_data_s_axi_U_n_4;
  wire detec_movement_detec_data_s_axi_U_n_40;
  wire detec_movement_detec_data_s_axi_U_n_41;
  wire detec_movement_detec_data_s_axi_U_n_42;
  wire detec_movement_detec_data_s_axi_U_n_43;
  wire detec_movement_detec_data_s_axi_U_n_44;
  wire detec_movement_detec_data_s_axi_U_n_45;
  wire detec_movement_detec_data_s_axi_U_n_46;
  wire detec_movement_detec_data_s_axi_U_n_47;
  wire detec_movement_detec_data_s_axi_U_n_48;
  wire detec_movement_detec_data_s_axi_U_n_49;
  wire detec_movement_detec_data_s_axi_U_n_5;
  wire detec_movement_detec_data_s_axi_U_n_50;
  wire detec_movement_detec_data_s_axi_U_n_51;
  wire detec_movement_detec_data_s_axi_U_n_52;
  wire detec_movement_detec_data_s_axi_U_n_53;
  wire detec_movement_detec_data_s_axi_U_n_54;
  wire detec_movement_detec_data_s_axi_U_n_55;
  wire detec_movement_detec_data_s_axi_U_n_56;
  wire detec_movement_detec_data_s_axi_U_n_57;
  wire detec_movement_detec_data_s_axi_U_n_58;
  wire detec_movement_detec_data_s_axi_U_n_59;
  wire detec_movement_detec_data_s_axi_U_n_6;
  wire detec_movement_detec_data_s_axi_U_n_60;
  wire detec_movement_detec_data_s_axi_U_n_61;
  wire detec_movement_detec_data_s_axi_U_n_62;
  wire detec_movement_detec_data_s_axi_U_n_63;
  wire detec_movement_detec_data_s_axi_U_n_66;
  wire detec_movement_detec_data_s_axi_U_n_7;
  wire detec_movement_detec_data_s_axi_U_n_75;
  wire detec_movement_detec_data_s_axi_U_n_76;
  wire detec_movement_detec_data_s_axi_U_n_77;
  wire detec_movement_detec_data_s_axi_U_n_78;
  wire detec_movement_detec_data_s_axi_U_n_79;
  wire detec_movement_detec_data_s_axi_U_n_8;
  wire detec_movement_detec_data_s_axi_U_n_80;
  wire detec_movement_detec_data_s_axi_U_n_81;
  wire detec_movement_detec_data_s_axi_U_n_82;
  wire detec_movement_detec_data_s_axi_U_n_89;
  wire detec_movement_detec_data_s_axi_U_n_9;
  wire detec_movement_detec_data_s_axi_U_n_90;
  wire detec_movement_detec_data_s_axi_U_n_91;
  wire detec_movement_detec_data_s_axi_U_n_92;
  wire diff;
  wire diff0;
  wire \diff[0]_i_4_n_0 ;
  wire \diff[0]_i_6_n_0 ;
  wire \diff[0]_i_8_n_0 ;
  wire [31:0]diff_reg;
  wire \diff_reg[0]_i_3_n_0 ;
  wire \diff_reg[0]_i_3_n_1 ;
  wire \diff_reg[0]_i_3_n_2 ;
  wire \diff_reg[0]_i_3_n_3 ;
  wire \diff_reg[0]_i_3_n_4 ;
  wire \diff_reg[0]_i_3_n_5 ;
  wire \diff_reg[0]_i_3_n_6 ;
  wire \diff_reg[0]_i_3_n_7 ;
  wire \diff_reg[12]_i_1_n_0 ;
  wire \diff_reg[12]_i_1_n_1 ;
  wire \diff_reg[12]_i_1_n_2 ;
  wire \diff_reg[12]_i_1_n_3 ;
  wire \diff_reg[12]_i_1_n_4 ;
  wire \diff_reg[12]_i_1_n_5 ;
  wire \diff_reg[12]_i_1_n_6 ;
  wire \diff_reg[12]_i_1_n_7 ;
  wire \diff_reg[16]_i_1_n_0 ;
  wire \diff_reg[16]_i_1_n_1 ;
  wire \diff_reg[16]_i_1_n_2 ;
  wire \diff_reg[16]_i_1_n_3 ;
  wire \diff_reg[16]_i_1_n_4 ;
  wire \diff_reg[16]_i_1_n_5 ;
  wire \diff_reg[16]_i_1_n_6 ;
  wire \diff_reg[16]_i_1_n_7 ;
  wire \diff_reg[20]_i_1_n_0 ;
  wire \diff_reg[20]_i_1_n_1 ;
  wire \diff_reg[20]_i_1_n_2 ;
  wire \diff_reg[20]_i_1_n_3 ;
  wire \diff_reg[20]_i_1_n_4 ;
  wire \diff_reg[20]_i_1_n_5 ;
  wire \diff_reg[20]_i_1_n_6 ;
  wire \diff_reg[20]_i_1_n_7 ;
  wire \diff_reg[24]_i_1_n_0 ;
  wire \diff_reg[24]_i_1_n_1 ;
  wire \diff_reg[24]_i_1_n_2 ;
  wire \diff_reg[24]_i_1_n_3 ;
  wire \diff_reg[24]_i_1_n_4 ;
  wire \diff_reg[24]_i_1_n_5 ;
  wire \diff_reg[24]_i_1_n_6 ;
  wire \diff_reg[24]_i_1_n_7 ;
  wire \diff_reg[28]_i_1_n_1 ;
  wire \diff_reg[28]_i_1_n_2 ;
  wire \diff_reg[28]_i_1_n_3 ;
  wire \diff_reg[28]_i_1_n_4 ;
  wire \diff_reg[28]_i_1_n_5 ;
  wire \diff_reg[28]_i_1_n_6 ;
  wire \diff_reg[28]_i_1_n_7 ;
  wire \diff_reg[4]_i_1_n_0 ;
  wire \diff_reg[4]_i_1_n_1 ;
  wire \diff_reg[4]_i_1_n_2 ;
  wire \diff_reg[4]_i_1_n_3 ;
  wire \diff_reg[4]_i_1_n_4 ;
  wire \diff_reg[4]_i_1_n_5 ;
  wire \diff_reg[4]_i_1_n_6 ;
  wire \diff_reg[4]_i_1_n_7 ;
  wire \diff_reg[8]_i_1_n_0 ;
  wire \diff_reg[8]_i_1_n_1 ;
  wire \diff_reg[8]_i_1_n_2 ;
  wire \diff_reg[8]_i_1_n_3 ;
  wire \diff_reg[8]_i_1_n_4 ;
  wire \diff_reg[8]_i_1_n_5 ;
  wire \diff_reg[8]_i_1_n_6 ;
  wire \diff_reg[8]_i_1_n_7 ;
  wire finished_ap_vld;
  wire [31:0]grp_fu_181_p2;
  wire grp_fu_186_p20_in;
  wire image_pre_U_n_14;
  wire [14:0]image_pre_addr_1_reg_448;
  wire \image_pre_addr_1_reg_448[5]_i_2_n_0 ;
  wire \image_pre_addr_1_reg_448[5]_i_3_n_0 ;
  wire \image_pre_addr_1_reg_448[5]_i_4_n_0 ;
  wire \image_pre_addr_1_reg_448[9]_i_2_n_0 ;
  wire \image_pre_addr_1_reg_448[9]_i_3_n_0 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_0 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_1 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_2 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_3 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_4 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_5 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_6 ;
  wire \image_pre_addr_1_reg_448_reg[13]_i_1_n_7 ;
  wire \image_pre_addr_1_reg_448_reg[14]_i_1_n_7 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_0 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_1 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_2 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_3 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_4 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_5 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_6 ;
  wire \image_pre_addr_1_reg_448_reg[5]_i_1_n_7 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_0 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_1 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_2 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_3 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_4 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_5 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_6 ;
  wire \image_pre_addr_1_reg_448_reg[9]_i_1_n_7 ;
  wire [7:0]image_pre_q0;
  wire interrupt;
  wire [7:0]j_1_reg_143;
  wire j_1_reg_1430;
  wire [7:0]j_2_fu_382_p2;
  wire [7:0]j_2_reg_475;
  wire \j_2_reg_475[7]_i_2_n_0 ;
  wire [7:0]j_3_fu_295_p2;
  wire [7:0]j_3_reg_443;
  wire j_3_reg_4430;
  wire \j_3_reg_443[7]_i_3_n_0 ;
  wire [7:0]j_reg_154;
  wire [15:7]p_shl2_cast_fu_233_p3;
  wire pre_valid;
  wire \pre_valid[0]_i_1_n_0 ;
  wire ram_reg_0_0_i_24_n_0;
  wire ram_reg_0_0_i_25_n_0;
  wire ram_reg_0_0_i_26_n_0;
  wire ram_reg_0_0_i_27_n_0;
  wire ram_reg_0_0_i_28_n_0;
  wire ram_reg_0_0_i_29_n_0;
  wire ram_reg_0_1_i_10_n_0;
  wire ram_reg_0_1_i_7_n_0;
  wire ram_reg_0_1_i_8_n_0;
  wire ram_reg_0_1_i_9_n_0;
  wire ram_reg_0_2_i_10_n_0;
  wire ram_reg_0_2_i_11_n_0;
  wire ram_reg_0_2_i_8_n_0;
  wire ram_reg_0_2_i_9_n_0;
  wire ram_reg_0_3_i_10_n_0;
  wire ram_reg_0_3_i_7_n_0;
  wire ram_reg_0_3_i_8_n_0;
  wire ram_reg_0_3_i_9_n_0;
  wire ram_reg_0_4_i_10_n_0;
  wire ram_reg_0_4_i_7_n_0;
  wire ram_reg_0_4_i_8_n_0;
  wire ram_reg_0_4_i_9_n_0;
  wire ram_reg_0_5_i_10_n_0;
  wire ram_reg_0_5_i_11_n_0;
  wire ram_reg_0_5_i_8_n_0;
  wire ram_reg_0_5_i_9_n_0;
  wire ram_reg_0_6_i_10_n_0;
  wire ram_reg_0_6_i_7_n_0;
  wire ram_reg_0_6_i_8_n_0;
  wire ram_reg_0_6_i_9_n_0;
  wire ram_reg_0_7_i_10_n_0;
  wire ram_reg_0_7_i_11_n_0;
  wire ram_reg_0_7_i_8_n_0;
  wire ram_reg_0_7_i_9_n_0;
  wire \rdata_data_reg[0]_i_4_n_0 ;
  wire \rdata_data_reg[10]_i_2_n_0 ;
  wire \rdata_data_reg[11]_i_2_n_0 ;
  wire \rdata_data_reg[12]_i_2_n_0 ;
  wire \rdata_data_reg[13]_i_2_n_0 ;
  wire \rdata_data_reg[14]_i_2_n_0 ;
  wire \rdata_data_reg[15]_i_2_n_0 ;
  wire \rdata_data_reg[16]_i_2_n_0 ;
  wire \rdata_data_reg[17]_i_2_n_0 ;
  wire \rdata_data_reg[18]_i_2_n_0 ;
  wire \rdata_data_reg[19]_i_2_n_0 ;
  wire \rdata_data_reg[1]_i_6_n_0 ;
  wire \rdata_data_reg[20]_i_2_n_0 ;
  wire \rdata_data_reg[21]_i_2_n_0 ;
  wire \rdata_data_reg[22]_i_2_n_0 ;
  wire \rdata_data_reg[23]_i_2_n_0 ;
  wire \rdata_data_reg[24]_i_2_n_0 ;
  wire \rdata_data_reg[25]_i_2_n_0 ;
  wire \rdata_data_reg[26]_i_2_n_0 ;
  wire \rdata_data_reg[27]_i_2_n_0 ;
  wire \rdata_data_reg[28]_i_2_n_0 ;
  wire \rdata_data_reg[29]_i_2_n_0 ;
  wire \rdata_data_reg[2]_i_3_n_0 ;
  wire \rdata_data_reg[30]_i_2_n_0 ;
  wire \rdata_data_reg[31]_i_5_n_0 ;
  wire \rdata_data_reg[31]_i_6_n_0 ;
  wire \rdata_data_reg[3]_i_4_n_0 ;
  wire \rdata_data_reg[4]_i_2_n_0 ;
  wire \rdata_data_reg[5]_i_2_n_0 ;
  wire \rdata_data_reg[6]_i_3_n_0 ;
  wire \rdata_data_reg[7]_i_4_n_0 ;
  wire \rdata_data_reg[8]_i_2_n_0 ;
  wire \rdata_data_reg[9]_i_2_n_0 ;
  wire reset;
  wire [9:0]s_axi_detec_data_ARADDR;
  wire s_axi_detec_data_ARREADY;
  wire s_axi_detec_data_ARVALID;
  wire [9:0]s_axi_detec_data_AWADDR;
  wire s_axi_detec_data_AWREADY;
  wire s_axi_detec_data_AWVALID;
  wire s_axi_detec_data_BREADY;
  wire s_axi_detec_data_BVALID;
  wire [31:0]s_axi_detec_data_RDATA;
  wire s_axi_detec_data_RREADY;
  wire s_axi_detec_data_RVALID;
  wire [31:0]s_axi_detec_data_WDATA;
  wire s_axi_detec_data_WREADY;
  wire [3:0]s_axi_detec_data_WSTRB;
  wire s_axi_detec_data_WVALID;
  wire [7:2]tmp_11_fu_346_p2;
  wire [14:3]tmp_15_reg_435;
  wire [14:3]tmp_18_fu_253_p2;
  wire [14:3]tmp_18_reg_430;
  wire \tmp_18_reg_430[13]_i_2_n_0 ;
  wire \tmp_18_reg_430[13]_i_3_n_0 ;
  wire \tmp_18_reg_430[13]_i_4_n_0 ;
  wire \tmp_18_reg_430[13]_i_5_n_0 ;
  wire \tmp_18_reg_430[14]_i_3_n_0 ;
  wire \tmp_18_reg_430[5]_i_2_n_0 ;
  wire \tmp_18_reg_430[5]_i_3_n_0 ;
  wire \tmp_18_reg_430[5]_i_4_n_0 ;
  wire \tmp_18_reg_430[9]_i_2_n_0 ;
  wire \tmp_18_reg_430[9]_i_3_n_0 ;
  wire \tmp_18_reg_430[9]_i_4_n_0 ;
  wire \tmp_18_reg_430[9]_i_5_n_0 ;
  wire \tmp_18_reg_430_reg[13]_i_1_n_0 ;
  wire \tmp_18_reg_430_reg[13]_i_1_n_1 ;
  wire \tmp_18_reg_430_reg[13]_i_1_n_2 ;
  wire \tmp_18_reg_430_reg[13]_i_1_n_3 ;
  wire \tmp_18_reg_430_reg[5]_i_1_n_0 ;
  wire \tmp_18_reg_430_reg[5]_i_1_n_1 ;
  wire \tmp_18_reg_430_reg[5]_i_1_n_2 ;
  wire \tmp_18_reg_430_reg[5]_i_1_n_3 ;
  wire \tmp_18_reg_430_reg[9]_i_1_n_0 ;
  wire \tmp_18_reg_430_reg[9]_i_1_n_1 ;
  wire \tmp_18_reg_430_reg[9]_i_1_n_2 ;
  wire \tmp_18_reg_430_reg[9]_i_1_n_3 ;
  wire [14:2]tmp_19_fu_397_p2;
  wire [14:0]tmp_19_reg_480;
  wire \tmp_19_reg_480[5]_i_2_n_0 ;
  wire \tmp_19_reg_480[5]_i_3_n_0 ;
  wire \tmp_19_reg_480[5]_i_4_n_0 ;
  wire \tmp_19_reg_480[9]_i_2_n_0 ;
  wire \tmp_19_reg_480[9]_i_3_n_0 ;
  wire \tmp_19_reg_480_reg[13]_i_1_n_0 ;
  wire \tmp_19_reg_480_reg[13]_i_1_n_1 ;
  wire \tmp_19_reg_480_reg[13]_i_1_n_2 ;
  wire \tmp_19_reg_480_reg[13]_i_1_n_3 ;
  wire \tmp_19_reg_480_reg[5]_i_1_n_0 ;
  wire \tmp_19_reg_480_reg[5]_i_1_n_1 ;
  wire \tmp_19_reg_480_reg[5]_i_1_n_2 ;
  wire \tmp_19_reg_480_reg[5]_i_1_n_3 ;
  wire \tmp_19_reg_480_reg[9]_i_1_n_0 ;
  wire \tmp_19_reg_480_reg[9]_i_1_n_1 ;
  wire \tmp_19_reg_480_reg[9]_i_1_n_2 ;
  wire \tmp_19_reg_480_reg[9]_i_1_n_3 ;
  wire tmp_1_fu_217_p2;
  wire \tmp_1_reg_423[0]_i_10_n_0 ;
  wire \tmp_1_reg_423[0]_i_12_n_0 ;
  wire \tmp_1_reg_423[0]_i_13_n_0 ;
  wire \tmp_1_reg_423[0]_i_14_n_0 ;
  wire \tmp_1_reg_423[0]_i_15_n_0 ;
  wire \tmp_1_reg_423[0]_i_16_n_0 ;
  wire \tmp_1_reg_423[0]_i_17_n_0 ;
  wire \tmp_1_reg_423[0]_i_18_n_0 ;
  wire \tmp_1_reg_423[0]_i_19_n_0 ;
  wire \tmp_1_reg_423[0]_i_20_n_0 ;
  wire \tmp_1_reg_423[0]_i_21_n_0 ;
  wire \tmp_1_reg_423[0]_i_22_n_0 ;
  wire \tmp_1_reg_423[0]_i_3_n_0 ;
  wire \tmp_1_reg_423[0]_i_4_n_0 ;
  wire \tmp_1_reg_423[0]_i_5_n_0 ;
  wire \tmp_1_reg_423[0]_i_7_n_0 ;
  wire \tmp_1_reg_423[0]_i_8_n_0 ;
  wire \tmp_1_reg_423[0]_i_9_n_0 ;
  wire \tmp_1_reg_423_reg[0]_i_11_n_0 ;
  wire \tmp_1_reg_423_reg[0]_i_11_n_1 ;
  wire \tmp_1_reg_423_reg[0]_i_11_n_2 ;
  wire \tmp_1_reg_423_reg[0]_i_11_n_3 ;
  wire \tmp_1_reg_423_reg[0]_i_1_n_2 ;
  wire \tmp_1_reg_423_reg[0]_i_1_n_3 ;
  wire \tmp_1_reg_423_reg[0]_i_2_n_0 ;
  wire \tmp_1_reg_423_reg[0]_i_2_n_1 ;
  wire \tmp_1_reg_423_reg[0]_i_2_n_2 ;
  wire \tmp_1_reg_423_reg[0]_i_2_n_3 ;
  wire \tmp_1_reg_423_reg[0]_i_6_n_0 ;
  wire \tmp_1_reg_423_reg[0]_i_6_n_1 ;
  wire \tmp_1_reg_423_reg[0]_i_6_n_2 ;
  wire \tmp_1_reg_423_reg[0]_i_6_n_3 ;
  wire \tmp_1_reg_423_reg_n_0_[0] ;
  wire [7:2]tmp_8_fu_334_p2;
  wire [3:3]\NLW_diff_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_image_pre_addr_1_reg_448_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_image_pre_addr_1_reg_448_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_18_reg_430_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_18_reg_430_reg[14]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp_18_reg_430_reg[5]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_19_reg_480_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_19_reg_480_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_tmp_1_reg_423_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_1_reg_423_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_1_reg_423_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_1_reg_423_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_1_reg_423_reg[0]_i_6_O_UNCONNECTED ;

  assign s_axi_detec_data_BRESP[1] = \<const0> ;
  assign s_axi_detec_data_BRESP[0] = \<const0> ;
  assign s_axi_detec_data_RRESP[1] = \<const0> ;
  assign s_axi_detec_data_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h20)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(detec_movement_detec_data_s_axi_U_n_91),
        .I2(\tmp_1_reg_423_reg_n_0_[0] ),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(detec_movement_detec_data_s_axi_U_n_90),
        .I1(j_reg_154[7]),
        .I2(j_reg_154[2]),
        .I3(j_reg_154[1]),
        .I4(j_reg_154[0]),
        .I5(ap_CS_fsm_state4),
        .O(ap_NS_fsm[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(finished_ap_vld),
        .I1(detec_movement_detec_data_s_axi_U_n_89),
        .O(ap_NS_fsm[5]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_done),
        .R(reset));
  FDRE \counter_load_reg_418_reg[0] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[7]),
        .Q(counter_load_reg_418[0]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[10] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[10] ),
        .Q(counter_load_reg_418[10]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[11] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[11] ),
        .Q(counter_load_reg_418[11]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[12] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[12] ),
        .Q(counter_load_reg_418[12]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[13] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[13] ),
        .Q(counter_load_reg_418[13]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[14] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[14] ),
        .Q(counter_load_reg_418[14]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[15] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[15] ),
        .Q(counter_load_reg_418[15]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[16] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[16] ),
        .Q(counter_load_reg_418[16]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[17] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[17] ),
        .Q(counter_load_reg_418[17]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[18] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[18] ),
        .Q(counter_load_reg_418[18]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[19] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[19] ),
        .Q(counter_load_reg_418[19]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[1] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[8]),
        .Q(counter_load_reg_418[1]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[20] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[20] ),
        .Q(counter_load_reg_418[20]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[21] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[21] ),
        .Q(counter_load_reg_418[21]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[22] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[22] ),
        .Q(counter_load_reg_418[22]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[23] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[23] ),
        .Q(counter_load_reg_418[23]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[24] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[24] ),
        .Q(counter_load_reg_418[24]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[25] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[25] ),
        .Q(counter_load_reg_418[25]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[26] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[26] ),
        .Q(counter_load_reg_418[26]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[27] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[27] ),
        .Q(counter_load_reg_418[27]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[28] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[28] ),
        .Q(counter_load_reg_418[28]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[29] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[29] ),
        .Q(counter_load_reg_418[29]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[2] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[9]),
        .Q(counter_load_reg_418[2]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[30] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[30] ),
        .Q(counter_load_reg_418[30]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[31] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[31] ),
        .Q(counter_load_reg_418[31]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[3] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[10]),
        .Q(counter_load_reg_418[3]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[4] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[11]),
        .Q(counter_load_reg_418[4]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[5] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[12]),
        .Q(counter_load_reg_418[5]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[6] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[13]),
        .Q(counter_load_reg_418[6]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[7] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[14]),
        .Q(counter_load_reg_418[7]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[8] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(p_shl2_cast_fu_233_p3[15]),
        .Q(counter_load_reg_418[8]),
        .R(1'b0));
  FDRE \counter_load_reg_418_reg[9] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(\counter_reg_n_0_[9] ),
        .Q(counter_load_reg_418[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_new_1_reg_165[0]_i_1 
       (.I0(counter_load_reg_418[0]),
        .O(grp_fu_181_p2[0]));
  LUT3 #(
    .INIT(8'hF4)) 
    \counter_new_1_reg_165[31]_i_2 
       (.I0(detec_movement_detec_data_s_axi_U_n_89),
        .I1(grp_fu_186_p20_in),
        .I2(detec_movement_detec_data_s_axi_U_n_92),
        .O(counter_new_1_reg_16501_out));
  FDRE \counter_new_1_reg_165_reg[0] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[0]),
        .Q(counter_new_1_reg_165[0]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[10] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[10]),
        .Q(counter_new_1_reg_165[10]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[11] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[11]),
        .Q(counter_new_1_reg_165[11]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[12] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[12]),
        .Q(counter_new_1_reg_165[12]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[13] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[13]),
        .Q(counter_new_1_reg_165[13]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[14] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[14]),
        .Q(counter_new_1_reg_165[14]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[15] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[15]),
        .Q(counter_new_1_reg_165[15]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[16] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[16]),
        .Q(counter_new_1_reg_165[16]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[17] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[17]),
        .Q(counter_new_1_reg_165[17]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[18] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[18]),
        .Q(counter_new_1_reg_165[18]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[19] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[19]),
        .Q(counter_new_1_reg_165[19]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[1] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[1]),
        .Q(counter_new_1_reg_165[1]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[20] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[20]),
        .Q(counter_new_1_reg_165[20]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[21] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[21]),
        .Q(counter_new_1_reg_165[21]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[22] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[22]),
        .Q(counter_new_1_reg_165[22]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[23] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[23]),
        .Q(counter_new_1_reg_165[23]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[24] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[24]),
        .Q(counter_new_1_reg_165[24]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[25] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[25]),
        .Q(counter_new_1_reg_165[25]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[26] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[26]),
        .Q(counter_new_1_reg_165[26]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[27] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[27]),
        .Q(counter_new_1_reg_165[27]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[28] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[28]),
        .Q(counter_new_1_reg_165[28]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[29] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[29]),
        .Q(counter_new_1_reg_165[29]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[2] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[2]),
        .Q(counter_new_1_reg_165[2]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[30] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[30]),
        .Q(counter_new_1_reg_165[30]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[31] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[31]),
        .Q(counter_new_1_reg_165[31]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[3] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[3]),
        .Q(counter_new_1_reg_165[3]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[4] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[4]),
        .Q(counter_new_1_reg_165[4]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[5] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[5]),
        .Q(counter_new_1_reg_165[5]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[6] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[6]),
        .Q(counter_new_1_reg_165[6]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[7] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[7]),
        .Q(counter_new_1_reg_165[7]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[8] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[8]),
        .Q(counter_new_1_reg_165[8]),
        .R(counter_new_1_reg_1650));
  FDRE \counter_new_1_reg_165_reg[9] 
       (.C(ap_clk),
        .CE(counter_new_1_reg_16501_out),
        .D(grp_fu_181_p2[9]),
        .Q(counter_new_1_reg_165[9]),
        .R(counter_new_1_reg_1650));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[0]),
        .Q(p_shl2_cast_fu_233_p3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[1]),
        .Q(p_shl2_cast_fu_233_p3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[2]),
        .Q(p_shl2_cast_fu_233_p3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[30]),
        .Q(\counter_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[31]),
        .Q(\counter_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[3]),
        .Q(p_shl2_cast_fu_233_p3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[4]),
        .Q(p_shl2_cast_fu_233_p3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[5]),
        .Q(p_shl2_cast_fu_233_p3[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[6]),
        .Q(p_shl2_cast_fu_233_p3[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[7]),
        .Q(p_shl2_cast_fu_233_p3[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[8]),
        .Q(p_shl2_cast_fu_233_p3[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(ap_clk),
        .CE(ap_done),
        .D(counter_new_1_reg_165[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(1'b0));
  system_detec_movement_0_0_detec_movement_detec_data_s_axi detec_movement_detec_data_s_axi_U
       (.CO(grp_fu_186_p20_in),
        .D({ap_NS_fsm[3],ap_NS_fsm[1:0]}),
        .DOADO({detec_movement_detec_data_s_axi_U_n_0,detec_movement_detec_data_s_axi_U_n_1,detec_movement_detec_data_s_axi_U_n_2,detec_movement_detec_data_s_axi_U_n_3,detec_movement_detec_data_s_axi_U_n_4,detec_movement_detec_data_s_axi_U_n_5,detec_movement_detec_data_s_axi_U_n_6,detec_movement_detec_data_s_axi_U_n_7,detec_movement_detec_data_s_axi_U_n_8,detec_movement_detec_data_s_axi_U_n_9,detec_movement_detec_data_s_axi_U_n_10,detec_movement_detec_data_s_axi_U_n_11,detec_movement_detec_data_s_axi_U_n_12,detec_movement_detec_data_s_axi_U_n_13,detec_movement_detec_data_s_axi_U_n_14,detec_movement_detec_data_s_axi_U_n_15,detec_movement_detec_data_s_axi_U_n_16,detec_movement_detec_data_s_axi_U_n_17,detec_movement_detec_data_s_axi_U_n_18,detec_movement_detec_data_s_axi_U_n_19,detec_movement_detec_data_s_axi_U_n_20,detec_movement_detec_data_s_axi_U_n_21,detec_movement_detec_data_s_axi_U_n_22,detec_movement_detec_data_s_axi_U_n_23,detec_movement_detec_data_s_axi_U_n_24,detec_movement_detec_data_s_axi_U_n_25,detec_movement_detec_data_s_axi_U_n_26,detec_movement_detec_data_s_axi_U_n_27,detec_movement_detec_data_s_axi_U_n_28,detec_movement_detec_data_s_axi_U_n_29,detec_movement_detec_data_s_axi_U_n_30,detec_movement_detec_data_s_axi_U_n_31}),
        .DOBDO({detec_movement_detec_data_s_axi_U_n_32,detec_movement_detec_data_s_axi_U_n_33,detec_movement_detec_data_s_axi_U_n_34,detec_movement_detec_data_s_axi_U_n_35,detec_movement_detec_data_s_axi_U_n_36,detec_movement_detec_data_s_axi_U_n_37,detec_movement_detec_data_s_axi_U_n_38,detec_movement_detec_data_s_axi_U_n_39,detec_movement_detec_data_s_axi_U_n_40,detec_movement_detec_data_s_axi_U_n_41,detec_movement_detec_data_s_axi_U_n_42,detec_movement_detec_data_s_axi_U_n_43,detec_movement_detec_data_s_axi_U_n_44,detec_movement_detec_data_s_axi_U_n_45,detec_movement_detec_data_s_axi_U_n_46,detec_movement_detec_data_s_axi_U_n_47,detec_movement_detec_data_s_axi_U_n_48,detec_movement_detec_data_s_axi_U_n_49,detec_movement_detec_data_s_axi_U_n_50,detec_movement_detec_data_s_axi_U_n_51,detec_movement_detec_data_s_axi_U_n_52,detec_movement_detec_data_s_axi_U_n_53,detec_movement_detec_data_s_axi_U_n_54,detec_movement_detec_data_s_axi_U_n_55,detec_movement_detec_data_s_axi_U_n_56,detec_movement_detec_data_s_axi_U_n_57,detec_movement_detec_data_s_axi_U_n_58,detec_movement_detec_data_s_axi_U_n_59,detec_movement_detec_data_s_axi_U_n_60,detec_movement_detec_data_s_axi_U_n_61,detec_movement_detec_data_s_axi_U_n_62,detec_movement_detec_data_s_axi_U_n_63}),
        .E(counter_load_reg_4180),
        .Q({ap_done,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(j_1_reg_1430),
        .\ap_CS_fsm_reg[0] (ap_NS_fsm15_out),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\counter_load_reg_418_reg[31] (grp_fu_181_p2[31:1]),
        .counter_new_1_reg_1650(counter_new_1_reg_1650),
        .\counter_new_1_reg_165_reg[0] (\tmp_1_reg_423_reg_n_0_[0] ),
        .\counter_new_1_reg_165_reg[31] (counter_load_reg_418),
        .d0(d0),
        .diff_reg(diff_reg),
        .\diff_reg[0]_i_9 (detec_movement_detec_data_s_axi_U_n_138),
        .finished_ap_vld(finished_ap_vld),
        .\gen_write[1].mem_reg (j_reg_154),
        .\gen_write[1].mem_reg_0 (j_1_reg_143),
        .\int_inData_shift_reg[0]_0 (detec_movement_detec_data_s_axi_U_n_75),
        .\int_inData_shift_reg[0]_1 (detec_movement_detec_data_s_axi_U_n_76),
        .\int_inData_shift_reg[0]_2 (detec_movement_detec_data_s_axi_U_n_77),
        .\int_inData_shift_reg[0]_3 (detec_movement_detec_data_s_axi_U_n_78),
        .\int_inData_shift_reg[0]_4 (detec_movement_detec_data_s_axi_U_n_79),
        .\int_inData_shift_reg[0]_5 (detec_movement_detec_data_s_axi_U_n_80),
        .\int_inData_shift_reg[0]_6 (detec_movement_detec_data_s_axi_U_n_81),
        .\int_inData_shift_reg[0]_7 (detec_movement_detec_data_s_axi_U_n_82),
        .int_inData_write_reg_0(detec_movement_detec_data_s_axi_U_n_66),
        .interrupt(interrupt),
        .\j_1_reg_143_reg[0] (tmp_1_fu_217_p2),
        .\j_1_reg_143_reg[5] (detec_movement_detec_data_s_axi_U_n_91),
        .\j_reg_154_reg[6] (detec_movement_detec_data_s_axi_U_n_90),
        .\j_reg_154_reg[7] (detec_movement_detec_data_s_axi_U_n_89),
        .pre_valid(pre_valid),
        .q0(image_pre_q0),
        .ram_reg_0_0_i_19(ram_reg_0_0_i_28_n_0),
        .ram_reg_0_0_i_19_0(ram_reg_0_0_i_25_n_0),
        .ram_reg_0_0_i_19_1(ram_reg_0_0_i_26_n_0),
        .ram_reg_0_0_i_19_2(ram_reg_0_0_i_27_n_0),
        .ram_reg_0_0_i_19_3(ram_reg_0_0_i_24_n_0),
        .ram_reg_0_1_i_2(ram_reg_0_1_i_10_n_0),
        .ram_reg_0_1_i_2_0(ram_reg_0_1_i_8_n_0),
        .ram_reg_0_1_i_2_1(ram_reg_0_1_i_9_n_0),
        .ram_reg_0_1_i_2_2(ram_reg_0_1_i_7_n_0),
        .ram_reg_0_2_i_3(ram_reg_0_2_i_11_n_0),
        .ram_reg_0_2_i_3_0(ram_reg_0_2_i_9_n_0),
        .ram_reg_0_2_i_3_1(ram_reg_0_2_i_10_n_0),
        .ram_reg_0_2_i_3_2(ram_reg_0_2_i_8_n_0),
        .ram_reg_0_3_i_2(ram_reg_0_3_i_10_n_0),
        .ram_reg_0_3_i_2_0(ram_reg_0_3_i_8_n_0),
        .ram_reg_0_3_i_2_1(ram_reg_0_3_i_9_n_0),
        .ram_reg_0_3_i_2_2(ram_reg_0_3_i_7_n_0),
        .ram_reg_0_4_i_2(ram_reg_0_4_i_10_n_0),
        .ram_reg_0_4_i_2_0(ram_reg_0_4_i_8_n_0),
        .ram_reg_0_4_i_2_1(ram_reg_0_4_i_9_n_0),
        .ram_reg_0_4_i_2_2(ram_reg_0_4_i_7_n_0),
        .ram_reg_0_5_i_3(ram_reg_0_5_i_11_n_0),
        .ram_reg_0_5_i_3_0(ram_reg_0_5_i_9_n_0),
        .ram_reg_0_5_i_3_1(ram_reg_0_5_i_10_n_0),
        .ram_reg_0_5_i_3_2(ram_reg_0_5_i_8_n_0),
        .ram_reg_0_6_i_2(ram_reg_0_6_i_10_n_0),
        .ram_reg_0_6_i_2_0(ram_reg_0_6_i_8_n_0),
        .ram_reg_0_6_i_2_1(ram_reg_0_6_i_9_n_0),
        .ram_reg_0_6_i_2_2(ram_reg_0_6_i_7_n_0),
        .ram_reg_0_7_i_3(ram_reg_0_7_i_11_n_0),
        .ram_reg_0_7_i_3_0(ram_reg_0_7_i_9_n_0),
        .ram_reg_0_7_i_3_1(ram_reg_0_7_i_10_n_0),
        .ram_reg_0_7_i_3_2(ram_reg_0_7_i_8_n_0),
        .\rdata_data_reg[0]_0 (\rdata_data_reg[0]_i_4_n_0 ),
        .\rdata_data_reg[10]_0 (\rdata_data_reg[10]_i_2_n_0 ),
        .\rdata_data_reg[11]_0 (\rdata_data_reg[11]_i_2_n_0 ),
        .\rdata_data_reg[12]_0 (\rdata_data_reg[12]_i_2_n_0 ),
        .\rdata_data_reg[13]_0 (\rdata_data_reg[13]_i_2_n_0 ),
        .\rdata_data_reg[14]_0 (\rdata_data_reg[14]_i_2_n_0 ),
        .\rdata_data_reg[15]_0 (\rdata_data_reg[15]_i_2_n_0 ),
        .\rdata_data_reg[16]_0 (\rdata_data_reg[16]_i_2_n_0 ),
        .\rdata_data_reg[17]_0 (\rdata_data_reg[17]_i_2_n_0 ),
        .\rdata_data_reg[18]_0 (\rdata_data_reg[18]_i_2_n_0 ),
        .\rdata_data_reg[19]_0 (\rdata_data_reg[19]_i_2_n_0 ),
        .\rdata_data_reg[1]_0 (\rdata_data_reg[1]_i_6_n_0 ),
        .\rdata_data_reg[20]_0 (\rdata_data_reg[20]_i_2_n_0 ),
        .\rdata_data_reg[21]_0 (\rdata_data_reg[21]_i_2_n_0 ),
        .\rdata_data_reg[22]_0 (\rdata_data_reg[22]_i_2_n_0 ),
        .\rdata_data_reg[23]_0 (\rdata_data_reg[23]_i_2_n_0 ),
        .\rdata_data_reg[24]_0 (\rdata_data_reg[24]_i_2_n_0 ),
        .\rdata_data_reg[25]_0 (\rdata_data_reg[25]_i_2_n_0 ),
        .\rdata_data_reg[26]_0 (\rdata_data_reg[26]_i_2_n_0 ),
        .\rdata_data_reg[27]_0 (\rdata_data_reg[27]_i_2_n_0 ),
        .\rdata_data_reg[28]_0 (\rdata_data_reg[28]_i_2_n_0 ),
        .\rdata_data_reg[29]_0 (\rdata_data_reg[29]_i_2_n_0 ),
        .\rdata_data_reg[2]_0 (\rdata_data_reg[2]_i_3_n_0 ),
        .\rdata_data_reg[30]_0 (\rdata_data_reg[30]_i_2_n_0 ),
        .\rdata_data_reg[31]_0 (\rdata_data_reg[31]_i_5_n_0 ),
        .\rdata_data_reg[31]_1 (\rdata_data_reg[31]_i_6_n_0 ),
        .\rdata_data_reg[3]_0 (\rdata_data_reg[3]_i_4_n_0 ),
        .\rdata_data_reg[4]_0 (\rdata_data_reg[4]_i_2_n_0 ),
        .\rdata_data_reg[5]_0 (\rdata_data_reg[5]_i_2_n_0 ),
        .\rdata_data_reg[6]_0 (\rdata_data_reg[6]_i_3_n_0 ),
        .\rdata_data_reg[7]_0 (\rdata_data_reg[7]_i_4_n_0 ),
        .\rdata_data_reg[8]_0 (\rdata_data_reg[8]_i_2_n_0 ),
        .\rdata_data_reg[9]_0 (\rdata_data_reg[9]_i_2_n_0 ),
        .reset(reset),
        .s_axi_detec_data_ARADDR(s_axi_detec_data_ARADDR),
        .s_axi_detec_data_ARREADY(s_axi_detec_data_ARREADY),
        .s_axi_detec_data_ARVALID(s_axi_detec_data_ARVALID),
        .s_axi_detec_data_AWADDR(s_axi_detec_data_AWADDR),
        .s_axi_detec_data_AWREADY(s_axi_detec_data_AWREADY),
        .s_axi_detec_data_AWVALID(s_axi_detec_data_AWVALID),
        .s_axi_detec_data_BREADY(s_axi_detec_data_BREADY),
        .s_axi_detec_data_BVALID(s_axi_detec_data_BVALID),
        .s_axi_detec_data_RDATA(s_axi_detec_data_RDATA),
        .s_axi_detec_data_RREADY(s_axi_detec_data_RREADY),
        .s_axi_detec_data_RVALID(s_axi_detec_data_RVALID),
        .s_axi_detec_data_WDATA(s_axi_detec_data_WDATA),
        .s_axi_detec_data_WREADY(s_axi_detec_data_WREADY),
        .s_axi_detec_data_WSTRB(s_axi_detec_data_WSTRB),
        .s_axi_detec_data_WVALID(s_axi_detec_data_WVALID),
        .tmp_11_fu_346_p2(tmp_11_fu_346_p2),
        .\tmp_1_reg_423_reg[0] (detec_movement_detec_data_s_axi_U_n_92));
  LUT6 #(
    .INIT(64'h0BFFBBFF00000000)) 
    \diff[0]_i_1 
       (.I0(\diff[0]_i_4_n_0 ),
        .I1(detec_movement_detec_data_s_axi_U_n_138),
        .I2(\diff[0]_i_6_n_0 ),
        .I3(ap_CS_fsm_state3),
        .I4(image_pre_U_n_14),
        .I5(counter_new_1_reg_1650),
        .O(diff));
  LUT5 #(
    .INIT(32'hF4004400)) 
    \diff[0]_i_2 
       (.I0(\diff[0]_i_4_n_0 ),
        .I1(detec_movement_detec_data_s_axi_U_n_138),
        .I2(\diff[0]_i_6_n_0 ),
        .I3(ap_CS_fsm_state3),
        .I4(image_pre_U_n_14),
        .O(diff0));
  LUT6 #(
    .INIT(64'h0001000100010101)) 
    \diff[0]_i_4 
       (.I0(tmp_11_fu_346_p2[5]),
        .I1(tmp_11_fu_346_p2[6]),
        .I2(tmp_11_fu_346_p2[7]),
        .I3(tmp_11_fu_346_p2[4]),
        .I4(tmp_11_fu_346_p2[2]),
        .I5(tmp_11_fu_346_p2[3]),
        .O(\diff[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFFEFFFC)) 
    \diff[0]_i_6 
       (.I0(tmp_8_fu_334_p2[2]),
        .I1(tmp_8_fu_334_p2[6]),
        .I2(tmp_8_fu_334_p2[7]),
        .I3(tmp_8_fu_334_p2[5]),
        .I4(tmp_8_fu_334_p2[4]),
        .I5(tmp_8_fu_334_p2[3]),
        .O(\diff[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_8 
       (.I0(diff_reg[0]),
        .O(\diff[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[0] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[0]_i_3_n_7 ),
        .Q(diff_reg[0]),
        .R(diff));
  CARRY4 \diff_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\diff_reg[0]_i_3_n_0 ,\diff_reg[0]_i_3_n_1 ,\diff_reg[0]_i_3_n_2 ,\diff_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\diff_reg[0]_i_3_n_4 ,\diff_reg[0]_i_3_n_5 ,\diff_reg[0]_i_3_n_6 ,\diff_reg[0]_i_3_n_7 }),
        .S({diff_reg[3:1],\diff[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[10] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[8]_i_1_n_5 ),
        .Q(diff_reg[10]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[11] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[8]_i_1_n_4 ),
        .Q(diff_reg[11]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[12] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[12]_i_1_n_7 ),
        .Q(diff_reg[12]),
        .R(diff));
  CARRY4 \diff_reg[12]_i_1 
       (.CI(\diff_reg[8]_i_1_n_0 ),
        .CO({\diff_reg[12]_i_1_n_0 ,\diff_reg[12]_i_1_n_1 ,\diff_reg[12]_i_1_n_2 ,\diff_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[12]_i_1_n_4 ,\diff_reg[12]_i_1_n_5 ,\diff_reg[12]_i_1_n_6 ,\diff_reg[12]_i_1_n_7 }),
        .S(diff_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[13] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[12]_i_1_n_6 ),
        .Q(diff_reg[13]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[14] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[12]_i_1_n_5 ),
        .Q(diff_reg[14]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[15] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[12]_i_1_n_4 ),
        .Q(diff_reg[15]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[16] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[16]_i_1_n_7 ),
        .Q(diff_reg[16]),
        .R(diff));
  CARRY4 \diff_reg[16]_i_1 
       (.CI(\diff_reg[12]_i_1_n_0 ),
        .CO({\diff_reg[16]_i_1_n_0 ,\diff_reg[16]_i_1_n_1 ,\diff_reg[16]_i_1_n_2 ,\diff_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[16]_i_1_n_4 ,\diff_reg[16]_i_1_n_5 ,\diff_reg[16]_i_1_n_6 ,\diff_reg[16]_i_1_n_7 }),
        .S(diff_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[17] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[16]_i_1_n_6 ),
        .Q(diff_reg[17]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[18] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[16]_i_1_n_5 ),
        .Q(diff_reg[18]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[19] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[16]_i_1_n_4 ),
        .Q(diff_reg[19]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[1] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[0]_i_3_n_6 ),
        .Q(diff_reg[1]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[20] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[20]_i_1_n_7 ),
        .Q(diff_reg[20]),
        .R(diff));
  CARRY4 \diff_reg[20]_i_1 
       (.CI(\diff_reg[16]_i_1_n_0 ),
        .CO({\diff_reg[20]_i_1_n_0 ,\diff_reg[20]_i_1_n_1 ,\diff_reg[20]_i_1_n_2 ,\diff_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[20]_i_1_n_4 ,\diff_reg[20]_i_1_n_5 ,\diff_reg[20]_i_1_n_6 ,\diff_reg[20]_i_1_n_7 }),
        .S(diff_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[21] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[20]_i_1_n_6 ),
        .Q(diff_reg[21]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[22] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[20]_i_1_n_5 ),
        .Q(diff_reg[22]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[23] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[20]_i_1_n_4 ),
        .Q(diff_reg[23]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[24] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[24]_i_1_n_7 ),
        .Q(diff_reg[24]),
        .R(diff));
  CARRY4 \diff_reg[24]_i_1 
       (.CI(\diff_reg[20]_i_1_n_0 ),
        .CO({\diff_reg[24]_i_1_n_0 ,\diff_reg[24]_i_1_n_1 ,\diff_reg[24]_i_1_n_2 ,\diff_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[24]_i_1_n_4 ,\diff_reg[24]_i_1_n_5 ,\diff_reg[24]_i_1_n_6 ,\diff_reg[24]_i_1_n_7 }),
        .S(diff_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[25] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[24]_i_1_n_6 ),
        .Q(diff_reg[25]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[26] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[24]_i_1_n_5 ),
        .Q(diff_reg[26]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[27] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[24]_i_1_n_4 ),
        .Q(diff_reg[27]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[28] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[28]_i_1_n_7 ),
        .Q(diff_reg[28]),
        .R(diff));
  CARRY4 \diff_reg[28]_i_1 
       (.CI(\diff_reg[24]_i_1_n_0 ),
        .CO({\NLW_diff_reg[28]_i_1_CO_UNCONNECTED [3],\diff_reg[28]_i_1_n_1 ,\diff_reg[28]_i_1_n_2 ,\diff_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[28]_i_1_n_4 ,\diff_reg[28]_i_1_n_5 ,\diff_reg[28]_i_1_n_6 ,\diff_reg[28]_i_1_n_7 }),
        .S(diff_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[29] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[28]_i_1_n_6 ),
        .Q(diff_reg[29]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[2] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[0]_i_3_n_5 ),
        .Q(diff_reg[2]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[30] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[28]_i_1_n_5 ),
        .Q(diff_reg[30]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[31] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[28]_i_1_n_4 ),
        .Q(diff_reg[31]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[3] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[0]_i_3_n_4 ),
        .Q(diff_reg[3]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[4] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[4]_i_1_n_7 ),
        .Q(diff_reg[4]),
        .R(diff));
  CARRY4 \diff_reg[4]_i_1 
       (.CI(\diff_reg[0]_i_3_n_0 ),
        .CO({\diff_reg[4]_i_1_n_0 ,\diff_reg[4]_i_1_n_1 ,\diff_reg[4]_i_1_n_2 ,\diff_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[4]_i_1_n_4 ,\diff_reg[4]_i_1_n_5 ,\diff_reg[4]_i_1_n_6 ,\diff_reg[4]_i_1_n_7 }),
        .S(diff_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[5] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[4]_i_1_n_6 ),
        .Q(diff_reg[5]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[6] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[4]_i_1_n_5 ),
        .Q(diff_reg[6]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[7] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[4]_i_1_n_4 ),
        .Q(diff_reg[7]),
        .R(diff));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[8] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[8]_i_1_n_7 ),
        .Q(diff_reg[8]),
        .R(diff));
  CARRY4 \diff_reg[8]_i_1 
       (.CI(\diff_reg[4]_i_1_n_0 ),
        .CO({\diff_reg[8]_i_1_n_0 ,\diff_reg[8]_i_1_n_1 ,\diff_reg[8]_i_1_n_2 ,\diff_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\diff_reg[8]_i_1_n_4 ,\diff_reg[8]_i_1_n_5 ,\diff_reg[8]_i_1_n_6 ,\diff_reg[8]_i_1_n_7 }),
        .S(diff_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[9] 
       (.C(ap_clk),
        .CE(diff0),
        .D(\diff_reg[8]_i_1_n_6 ),
        .Q(diff_reg[9]),
        .R(diff));
  system_detec_movement_0_0_detec_movement_imbkb image_pre_U
       (.CO(image_pre_U_n_14),
        .D({\image_pre_addr_1_reg_448_reg[14]_i_1_n_7 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_7 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_7 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_7 ,j_1_reg_143[1:0]}),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .d0(d0),
        .\diff_reg[0]_i_11 (detec_movement_detec_data_s_axi_U_n_75),
        .\diff_reg[0]_i_11_0 (detec_movement_detec_data_s_axi_U_n_76),
        .\diff_reg[0]_i_11_1 (detec_movement_detec_data_s_axi_U_n_77),
        .\diff_reg[0]_i_11_2 (detec_movement_detec_data_s_axi_U_n_78),
        .\diff_reg[0]_i_12 (detec_movement_detec_data_s_axi_U_n_79),
        .\diff_reg[0]_i_12_0 (detec_movement_detec_data_s_axi_U_n_80),
        .\diff_reg[0]_i_12_1 (detec_movement_detec_data_s_axi_U_n_81),
        .\diff_reg[0]_i_12_2 (detec_movement_detec_data_s_axi_U_n_82),
        .q0(image_pre_q0),
        .ram_reg_0_0(image_pre_addr_1_reg_448),
        .ram_reg_0_0_0(tmp_19_reg_480),
        .tmp_8_fu_334_p2(tmp_8_fu_334_p2));
  LUT2 #(
    .INIT(4'h6)) 
    \image_pre_addr_1_reg_448[5]_i_2 
       (.I0(tmp_18_reg_430[5]),
        .I1(j_1_reg_143[5]),
        .O(\image_pre_addr_1_reg_448[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \image_pre_addr_1_reg_448[5]_i_3 
       (.I0(tmp_18_reg_430[4]),
        .I1(j_1_reg_143[4]),
        .O(\image_pre_addr_1_reg_448[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \image_pre_addr_1_reg_448[5]_i_4 
       (.I0(tmp_18_reg_430[3]),
        .I1(j_1_reg_143[3]),
        .O(\image_pre_addr_1_reg_448[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \image_pre_addr_1_reg_448[9]_i_2 
       (.I0(tmp_18_reg_430[7]),
        .I1(j_1_reg_143[7]),
        .O(\image_pre_addr_1_reg_448[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \image_pre_addr_1_reg_448[9]_i_3 
       (.I0(tmp_18_reg_430[6]),
        .I1(j_1_reg_143[6]),
        .O(\image_pre_addr_1_reg_448[9]_i_3_n_0 ));
  FDRE \image_pre_addr_1_reg_448_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(j_1_reg_143[0]),
        .Q(image_pre_addr_1_reg_448[0]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[13]_i_1_n_7 ),
        .Q(image_pre_addr_1_reg_448[10]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[13]_i_1_n_6 ),
        .Q(image_pre_addr_1_reg_448[11]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[13]_i_1_n_5 ),
        .Q(image_pre_addr_1_reg_448[12]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[13]_i_1_n_4 ),
        .Q(image_pre_addr_1_reg_448[13]),
        .R(1'b0));
  CARRY4 \image_pre_addr_1_reg_448_reg[13]_i_1 
       (.CI(\image_pre_addr_1_reg_448_reg[9]_i_1_n_0 ),
        .CO({\image_pre_addr_1_reg_448_reg[13]_i_1_n_0 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_1 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_2 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\image_pre_addr_1_reg_448_reg[13]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[13]_i_1_n_7 }),
        .S(tmp_18_reg_430[13:10]));
  FDRE \image_pre_addr_1_reg_448_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[14]_i_1_n_7 ),
        .Q(image_pre_addr_1_reg_448[14]),
        .R(1'b0));
  CARRY4 \image_pre_addr_1_reg_448_reg[14]_i_1 
       (.CI(\image_pre_addr_1_reg_448_reg[13]_i_1_n_0 ),
        .CO(\NLW_image_pre_addr_1_reg_448_reg[14]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_image_pre_addr_1_reg_448_reg[14]_i_1_O_UNCONNECTED [3:1],\image_pre_addr_1_reg_448_reg[14]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,tmp_18_reg_430[14]}));
  FDRE \image_pre_addr_1_reg_448_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(j_1_reg_143[1]),
        .Q(image_pre_addr_1_reg_448[1]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[5]_i_1_n_7 ),
        .Q(image_pre_addr_1_reg_448[2]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[5]_i_1_n_6 ),
        .Q(image_pre_addr_1_reg_448[3]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[5]_i_1_n_5 ),
        .Q(image_pre_addr_1_reg_448[4]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[5]_i_1_n_4 ),
        .Q(image_pre_addr_1_reg_448[5]),
        .R(1'b0));
  CARRY4 \image_pre_addr_1_reg_448_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\image_pre_addr_1_reg_448_reg[5]_i_1_n_0 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_1 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_2 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_18_reg_430[5:3],1'b0}),
        .O({\image_pre_addr_1_reg_448_reg[5]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[5]_i_1_n_7 }),
        .S({\image_pre_addr_1_reg_448[5]_i_2_n_0 ,\image_pre_addr_1_reg_448[5]_i_3_n_0 ,\image_pre_addr_1_reg_448[5]_i_4_n_0 ,j_1_reg_143[2]}));
  FDRE \image_pre_addr_1_reg_448_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[9]_i_1_n_7 ),
        .Q(image_pre_addr_1_reg_448[6]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[9]_i_1_n_6 ),
        .Q(image_pre_addr_1_reg_448[7]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[9]_i_1_n_5 ),
        .Q(image_pre_addr_1_reg_448[8]),
        .R(1'b0));
  FDRE \image_pre_addr_1_reg_448_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[2]),
        .D(\image_pre_addr_1_reg_448_reg[9]_i_1_n_4 ),
        .Q(image_pre_addr_1_reg_448[9]),
        .R(1'b0));
  CARRY4 \image_pre_addr_1_reg_448_reg[9]_i_1 
       (.CI(\image_pre_addr_1_reg_448_reg[5]_i_1_n_0 ),
        .CO({\image_pre_addr_1_reg_448_reg[9]_i_1_n_0 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_1 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_2 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_18_reg_430[7:6]}),
        .O({\image_pre_addr_1_reg_448_reg[9]_i_1_n_4 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_5 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_6 ,\image_pre_addr_1_reg_448_reg[9]_i_1_n_7 }),
        .S({tmp_18_reg_430[9:8],\image_pre_addr_1_reg_448[9]_i_2_n_0 ,\image_pre_addr_1_reg_448[9]_i_3_n_0 }));
  FDRE \j_1_reg_143_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[0]),
        .Q(j_1_reg_143[0]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[1]),
        .Q(j_1_reg_143[1]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[2]),
        .Q(j_1_reg_143[2]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[3]),
        .Q(j_1_reg_143[3]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[4]),
        .Q(j_1_reg_143[4]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[5]),
        .Q(j_1_reg_143[5]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[6]),
        .Q(j_1_reg_143[6]),
        .R(j_1_reg_1430));
  FDRE \j_1_reg_143_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(j_3_reg_443[7]),
        .Q(j_1_reg_143[7]),
        .R(j_1_reg_1430));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_2_reg_475[0]_i_1 
       (.I0(j_reg_154[0]),
        .O(j_2_fu_382_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_2_reg_475[1]_i_1 
       (.I0(j_reg_154[0]),
        .I1(j_reg_154[1]),
        .O(j_2_fu_382_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_2_reg_475[2]_i_1 
       (.I0(j_reg_154[2]),
        .I1(j_reg_154[1]),
        .I2(j_reg_154[0]),
        .O(j_2_fu_382_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_2_reg_475[3]_i_1 
       (.I0(j_reg_154[3]),
        .I1(j_reg_154[2]),
        .I2(j_reg_154[0]),
        .I3(j_reg_154[1]),
        .O(j_2_fu_382_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_2_reg_475[4]_i_1 
       (.I0(j_reg_154[2]),
        .I1(j_reg_154[0]),
        .I2(j_reg_154[1]),
        .I3(j_reg_154[3]),
        .I4(j_reg_154[4]),
        .O(j_2_fu_382_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_2_reg_475[5]_i_1 
       (.I0(j_reg_154[5]),
        .I1(j_reg_154[2]),
        .I2(j_reg_154[0]),
        .I3(j_reg_154[1]),
        .I4(j_reg_154[3]),
        .I5(j_reg_154[4]),
        .O(j_2_fu_382_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_2_reg_475[6]_i_1 
       (.I0(j_reg_154[6]),
        .I1(\j_2_reg_475[7]_i_2_n_0 ),
        .I2(j_reg_154[5]),
        .O(j_2_fu_382_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_2_reg_475[7]_i_1 
       (.I0(j_reg_154[7]),
        .I1(j_reg_154[5]),
        .I2(\j_2_reg_475[7]_i_2_n_0 ),
        .I3(j_reg_154[6]),
        .O(j_2_fu_382_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \j_2_reg_475[7]_i_2 
       (.I0(j_reg_154[4]),
        .I1(j_reg_154[3]),
        .I2(j_reg_154[1]),
        .I3(j_reg_154[0]),
        .I4(j_reg_154[2]),
        .O(\j_2_reg_475[7]_i_2_n_0 ));
  FDRE \j_2_reg_475_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[0]),
        .Q(j_2_reg_475[0]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[1]),
        .Q(j_2_reg_475[1]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[2]),
        .Q(j_2_reg_475[2]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[3]),
        .Q(j_2_reg_475[3]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[4]),
        .Q(j_2_reg_475[4]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[5]),
        .Q(j_2_reg_475[5]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[6]),
        .Q(j_2_reg_475[6]),
        .R(1'b0));
  FDRE \j_2_reg_475_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(j_2_fu_382_p2[7]),
        .Q(j_2_reg_475[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_3_reg_443[0]_i_1 
       (.I0(j_1_reg_143[0]),
        .O(j_3_fu_295_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_3_reg_443[1]_i_1 
       (.I0(j_1_reg_143[0]),
        .I1(j_1_reg_143[1]),
        .O(j_3_fu_295_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_3_reg_443[2]_i_1 
       (.I0(j_1_reg_143[2]),
        .I1(j_1_reg_143[1]),
        .I2(j_1_reg_143[0]),
        .O(j_3_fu_295_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_3_reg_443[3]_i_1 
       (.I0(j_1_reg_143[3]),
        .I1(j_1_reg_143[2]),
        .I2(j_1_reg_143[0]),
        .I3(j_1_reg_143[1]),
        .O(j_3_fu_295_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_3_reg_443[4]_i_1 
       (.I0(j_1_reg_143[2]),
        .I1(j_1_reg_143[0]),
        .I2(j_1_reg_143[1]),
        .I3(j_1_reg_143[3]),
        .I4(j_1_reg_143[4]),
        .O(j_3_fu_295_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_3_reg_443[5]_i_1 
       (.I0(j_1_reg_143[5]),
        .I1(j_1_reg_143[2]),
        .I2(j_1_reg_143[0]),
        .I3(j_1_reg_143[1]),
        .I4(j_1_reg_143[3]),
        .I5(j_1_reg_143[4]),
        .O(j_3_fu_295_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_3_reg_443[6]_i_1 
       (.I0(j_1_reg_143[6]),
        .I1(\j_3_reg_443[7]_i_3_n_0 ),
        .I2(j_1_reg_143[5]),
        .O(j_3_fu_295_p2[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \j_3_reg_443[7]_i_1 
       (.I0(\tmp_1_reg_423_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .O(j_3_reg_4430));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_3_reg_443[7]_i_2 
       (.I0(j_1_reg_143[7]),
        .I1(j_1_reg_143[5]),
        .I2(\j_3_reg_443[7]_i_3_n_0 ),
        .I3(j_1_reg_143[6]),
        .O(j_3_fu_295_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \j_3_reg_443[7]_i_3 
       (.I0(j_1_reg_143[4]),
        .I1(j_1_reg_143[3]),
        .I2(j_1_reg_143[1]),
        .I3(j_1_reg_143[0]),
        .I4(j_1_reg_143[2]),
        .O(\j_3_reg_443[7]_i_3_n_0 ));
  FDRE \j_3_reg_443_reg[0] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[0]),
        .Q(j_3_reg_443[0]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[1] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[1]),
        .Q(j_3_reg_443[1]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[2] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[2]),
        .Q(j_3_reg_443[2]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[3] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[3]),
        .Q(j_3_reg_443[3]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[4] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[4]),
        .Q(j_3_reg_443[4]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[5] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[5]),
        .Q(j_3_reg_443[5]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[6] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[6]),
        .Q(j_3_reg_443[6]),
        .R(1'b0));
  FDRE \j_3_reg_443_reg[7] 
       (.C(ap_clk),
        .CE(j_3_reg_4430),
        .D(j_3_fu_295_p2[7]),
        .Q(j_3_reg_443[7]),
        .R(1'b0));
  FDRE \j_reg_154_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[0]),
        .Q(j_reg_154[0]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[1]),
        .Q(j_reg_154[1]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[2]),
        .Q(j_reg_154[2]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[3]),
        .Q(j_reg_154[3]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[4]),
        .Q(j_reg_154[4]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[5]),
        .Q(j_reg_154[5]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[6]),
        .Q(j_reg_154[6]),
        .R(ap_NS_fsm15_out));
  FDRE \j_reg_154_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(j_2_reg_475[7]),
        .Q(j_reg_154[7]),
        .R(ap_NS_fsm15_out));
  LUT3 #(
    .INIT(8'hF1)) 
    \pre_valid[0]_i_1 
       (.I0(grp_fu_186_p20_in),
        .I1(detec_movement_detec_data_s_axi_U_n_89),
        .I2(pre_valid),
        .O(\pre_valid[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pre_valid_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\pre_valid[0]_i_1_n_0 ),
        .Q(pre_valid),
        .R(1'b0));
  FDRE ram_reg_0_0_i_24
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_7),
        .Q(ram_reg_0_0_i_24_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ram_reg_0_0_i_25
       (.C(ap_clk),
        .CE(1'b1),
        .D(ram_reg_0_0_i_29_n_0),
        .Q(ram_reg_0_0_i_25_n_0),
        .R(1'b0));
  FDRE ram_reg_0_0_i_26
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_23),
        .Q(ram_reg_0_0_i_26_n_0),
        .R(1'b0));
  FDRE ram_reg_0_0_i_27
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_15),
        .Q(ram_reg_0_0_i_27_n_0),
        .R(1'b0));
  FDRE ram_reg_0_0_i_28
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_31),
        .Q(ram_reg_0_0_i_28_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_0_0_i_29
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state4),
        .O(ram_reg_0_0_i_29_n_0));
  FDRE ram_reg_0_1_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_30),
        .Q(ram_reg_0_1_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_1_i_7
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_6),
        .Q(ram_reg_0_1_i_7_n_0),
        .R(1'b0));
  FDRE ram_reg_0_1_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_22),
        .Q(ram_reg_0_1_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_1_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_14),
        .Q(ram_reg_0_1_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_2_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_13),
        .Q(ram_reg_0_2_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_2_i_11
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_29),
        .Q(ram_reg_0_2_i_11_n_0),
        .R(1'b0));
  FDRE ram_reg_0_2_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_5),
        .Q(ram_reg_0_2_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_2_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_21),
        .Q(ram_reg_0_2_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_3_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_28),
        .Q(ram_reg_0_3_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_3_i_7
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_4),
        .Q(ram_reg_0_3_i_7_n_0),
        .R(1'b0));
  FDRE ram_reg_0_3_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_20),
        .Q(ram_reg_0_3_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_3_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_12),
        .Q(ram_reg_0_3_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_4_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_27),
        .Q(ram_reg_0_4_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_4_i_7
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_3),
        .Q(ram_reg_0_4_i_7_n_0),
        .R(1'b0));
  FDRE ram_reg_0_4_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_19),
        .Q(ram_reg_0_4_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_4_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_11),
        .Q(ram_reg_0_4_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_5_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_10),
        .Q(ram_reg_0_5_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_5_i_11
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_26),
        .Q(ram_reg_0_5_i_11_n_0),
        .R(1'b0));
  FDRE ram_reg_0_5_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_2),
        .Q(ram_reg_0_5_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_5_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_18),
        .Q(ram_reg_0_5_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_6_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_25),
        .Q(ram_reg_0_6_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_6_i_7
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_1),
        .Q(ram_reg_0_6_i_7_n_0),
        .R(1'b0));
  FDRE ram_reg_0_6_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_17),
        .Q(ram_reg_0_6_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_6_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_9),
        .Q(ram_reg_0_6_i_9_n_0),
        .R(1'b0));
  FDRE ram_reg_0_7_i_10
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_8),
        .Q(ram_reg_0_7_i_10_n_0),
        .R(1'b0));
  FDRE ram_reg_0_7_i_11
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_24),
        .Q(ram_reg_0_7_i_11_n_0),
        .R(1'b0));
  FDRE ram_reg_0_7_i_8
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_0),
        .Q(ram_reg_0_7_i_8_n_0),
        .R(1'b0));
  FDRE ram_reg_0_7_i_9
       (.C(ap_clk),
        .CE(ram_reg_0_0_i_25_n_0),
        .D(detec_movement_detec_data_s_axi_U_n_16),
        .Q(ram_reg_0_7_i_9_n_0),
        .R(1'b0));
  FDRE \rdata_data_reg[0]_i_4 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_63),
        .Q(\rdata_data_reg[0]_i_4_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[10]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_53),
        .Q(\rdata_data_reg[10]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[11]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_52),
        .Q(\rdata_data_reg[11]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[12]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_51),
        .Q(\rdata_data_reg[12]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[13]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_50),
        .Q(\rdata_data_reg[13]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[14]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_49),
        .Q(\rdata_data_reg[14]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[15]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_48),
        .Q(\rdata_data_reg[15]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[16]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_47),
        .Q(\rdata_data_reg[16]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[17]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_46),
        .Q(\rdata_data_reg[17]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[18]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_45),
        .Q(\rdata_data_reg[18]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[19]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_44),
        .Q(\rdata_data_reg[19]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[1]_i_6 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_62),
        .Q(\rdata_data_reg[1]_i_6_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[20]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_43),
        .Q(\rdata_data_reg[20]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[21]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_42),
        .Q(\rdata_data_reg[21]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[22]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_41),
        .Q(\rdata_data_reg[22]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[23]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_40),
        .Q(\rdata_data_reg[23]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[24]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_39),
        .Q(\rdata_data_reg[24]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[25]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_38),
        .Q(\rdata_data_reg[25]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[26]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_37),
        .Q(\rdata_data_reg[26]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[27]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_36),
        .Q(\rdata_data_reg[27]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[28]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_35),
        .Q(\rdata_data_reg[28]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[29]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_34),
        .Q(\rdata_data_reg[29]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[2]_i_3 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_61),
        .Q(\rdata_data_reg[2]_i_3_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[30]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_33),
        .Q(\rdata_data_reg[30]_i_2_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \rdata_data_reg[31]_i_5 
       (.C(ap_clk),
        .CE(1'b1),
        .D(detec_movement_detec_data_s_axi_U_n_66),
        .Q(\rdata_data_reg[31]_i_5_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[31]_i_6 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_32),
        .Q(\rdata_data_reg[31]_i_6_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[3]_i_4 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_60),
        .Q(\rdata_data_reg[3]_i_4_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[4]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_59),
        .Q(\rdata_data_reg[4]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[5]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_58),
        .Q(\rdata_data_reg[5]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[6]_i_3 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_57),
        .Q(\rdata_data_reg[6]_i_3_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[7]_i_4 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_56),
        .Q(\rdata_data_reg[7]_i_4_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[8]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_55),
        .Q(\rdata_data_reg[8]_i_2_n_0 ),
        .R(1'b0));
  FDRE \rdata_data_reg[9]_i_2 
       (.C(ap_clk),
        .CE(\rdata_data_reg[31]_i_5_n_0 ),
        .D(detec_movement_detec_data_s_axi_U_n_54),
        .Q(\rdata_data_reg[9]_i_2_n_0 ),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[10]),
        .Q(tmp_15_reg_435[10]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[11]),
        .Q(tmp_15_reg_435[11]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[12]),
        .Q(tmp_15_reg_435[12]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[13]),
        .Q(tmp_15_reg_435[13]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[14]),
        .Q(tmp_15_reg_435[14]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[3]),
        .Q(tmp_15_reg_435[3]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[4]),
        .Q(tmp_15_reg_435[4]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[5]),
        .Q(tmp_15_reg_435[5]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[6]),
        .Q(tmp_15_reg_435[6]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[7]),
        .Q(tmp_15_reg_435[7]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[8]),
        .Q(tmp_15_reg_435[8]),
        .R(1'b0));
  FDRE \tmp_15_reg_435_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm15_out),
        .D(tmp_18_fu_253_p2[9]),
        .Q(tmp_15_reg_435[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[13]_i_2 
       (.I0(p_shl2_cast_fu_233_p3[13]),
        .I1(\counter_reg_n_0_[10] ),
        .O(\tmp_18_reg_430[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[13]_i_3 
       (.I0(p_shl2_cast_fu_233_p3[12]),
        .I1(\counter_reg_n_0_[9] ),
        .O(\tmp_18_reg_430[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[13]_i_4 
       (.I0(p_shl2_cast_fu_233_p3[11]),
        .I1(p_shl2_cast_fu_233_p3[15]),
        .O(\tmp_18_reg_430[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[13]_i_5 
       (.I0(p_shl2_cast_fu_233_p3[10]),
        .I1(p_shl2_cast_fu_233_p3[14]),
        .O(\tmp_18_reg_430[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[14]_i_3 
       (.I0(p_shl2_cast_fu_233_p3[14]),
        .I1(\counter_reg_n_0_[11] ),
        .O(\tmp_18_reg_430[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_18_reg_430[5]_i_2 
       (.I0(p_shl2_cast_fu_233_p3[7]),
        .O(\tmp_18_reg_430[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_18_reg_430[5]_i_3 
       (.I0(p_shl2_cast_fu_233_p3[9]),
        .O(\tmp_18_reg_430[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_18_reg_430[5]_i_4 
       (.I0(p_shl2_cast_fu_233_p3[8]),
        .O(\tmp_18_reg_430[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[9]_i_2 
       (.I0(p_shl2_cast_fu_233_p3[9]),
        .I1(p_shl2_cast_fu_233_p3[13]),
        .O(\tmp_18_reg_430[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[9]_i_3 
       (.I0(p_shl2_cast_fu_233_p3[8]),
        .I1(p_shl2_cast_fu_233_p3[12]),
        .O(\tmp_18_reg_430[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_18_reg_430[9]_i_4 
       (.I0(p_shl2_cast_fu_233_p3[7]),
        .I1(p_shl2_cast_fu_233_p3[11]),
        .O(\tmp_18_reg_430[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_18_reg_430[9]_i_5 
       (.I0(p_shl2_cast_fu_233_p3[10]),
        .O(\tmp_18_reg_430[9]_i_5_n_0 ));
  FDRE \tmp_18_reg_430_reg[10] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[10]),
        .Q(tmp_18_reg_430[10]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[11] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[11]),
        .Q(tmp_18_reg_430[11]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[12] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[12]),
        .Q(tmp_18_reg_430[12]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[13] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[13]),
        .Q(tmp_18_reg_430[13]),
        .R(1'b0));
  CARRY4 \tmp_18_reg_430_reg[13]_i_1 
       (.CI(\tmp_18_reg_430_reg[9]_i_1_n_0 ),
        .CO({\tmp_18_reg_430_reg[13]_i_1_n_0 ,\tmp_18_reg_430_reg[13]_i_1_n_1 ,\tmp_18_reg_430_reg[13]_i_1_n_2 ,\tmp_18_reg_430_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_shl2_cast_fu_233_p3[13:10]),
        .O(tmp_18_fu_253_p2[13:10]),
        .S({\tmp_18_reg_430[13]_i_2_n_0 ,\tmp_18_reg_430[13]_i_3_n_0 ,\tmp_18_reg_430[13]_i_4_n_0 ,\tmp_18_reg_430[13]_i_5_n_0 }));
  FDRE \tmp_18_reg_430_reg[14] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[14]),
        .Q(tmp_18_reg_430[14]),
        .R(1'b0));
  CARRY4 \tmp_18_reg_430_reg[14]_i_2 
       (.CI(\tmp_18_reg_430_reg[13]_i_1_n_0 ),
        .CO(\NLW_tmp_18_reg_430_reg[14]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_18_reg_430_reg[14]_i_2_O_UNCONNECTED [3:1],tmp_18_fu_253_p2[14]}),
        .S({1'b0,1'b0,1'b0,\tmp_18_reg_430[14]_i_3_n_0 }));
  FDRE \tmp_18_reg_430_reg[3] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[3]),
        .Q(tmp_18_reg_430[3]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[4] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[4]),
        .Q(tmp_18_reg_430[4]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[5] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[5]),
        .Q(tmp_18_reg_430[5]),
        .R(1'b0));
  CARRY4 \tmp_18_reg_430_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\tmp_18_reg_430_reg[5]_i_1_n_0 ,\tmp_18_reg_430_reg[5]_i_1_n_1 ,\tmp_18_reg_430_reg[5]_i_1_n_2 ,\tmp_18_reg_430_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\tmp_18_reg_430[5]_i_2_n_0 ,1'b0}),
        .O({tmp_18_fu_253_p2[5:3],\NLW_tmp_18_reg_430_reg[5]_i_1_O_UNCONNECTED [0]}),
        .S({\tmp_18_reg_430[5]_i_3_n_0 ,\tmp_18_reg_430[5]_i_4_n_0 ,p_shl2_cast_fu_233_p3[7],1'b0}));
  FDRE \tmp_18_reg_430_reg[6] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[6]),
        .Q(tmp_18_reg_430[6]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[7] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[7]),
        .Q(tmp_18_reg_430[7]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[8] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[8]),
        .Q(tmp_18_reg_430[8]),
        .R(1'b0));
  FDRE \tmp_18_reg_430_reg[9] 
       (.C(ap_clk),
        .CE(j_1_reg_1430),
        .D(tmp_18_fu_253_p2[9]),
        .Q(tmp_18_reg_430[9]),
        .R(1'b0));
  CARRY4 \tmp_18_reg_430_reg[9]_i_1 
       (.CI(\tmp_18_reg_430_reg[5]_i_1_n_0 ),
        .CO({\tmp_18_reg_430_reg[9]_i_1_n_0 ,\tmp_18_reg_430_reg[9]_i_1_n_1 ,\tmp_18_reg_430_reg[9]_i_1_n_2 ,\tmp_18_reg_430_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_shl2_cast_fu_233_p3[9:7],1'b0}),
        .O(tmp_18_fu_253_p2[9:6]),
        .S({\tmp_18_reg_430[9]_i_2_n_0 ,\tmp_18_reg_430[9]_i_3_n_0 ,\tmp_18_reg_430[9]_i_4_n_0 ,\tmp_18_reg_430[9]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_19_reg_480[5]_i_2 
       (.I0(tmp_15_reg_435[5]),
        .I1(j_reg_154[5]),
        .O(\tmp_19_reg_480[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_19_reg_480[5]_i_3 
       (.I0(tmp_15_reg_435[4]),
        .I1(j_reg_154[4]),
        .O(\tmp_19_reg_480[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_19_reg_480[5]_i_4 
       (.I0(tmp_15_reg_435[3]),
        .I1(j_reg_154[3]),
        .O(\tmp_19_reg_480[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_19_reg_480[9]_i_2 
       (.I0(tmp_15_reg_435[7]),
        .I1(j_reg_154[7]),
        .O(\tmp_19_reg_480[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_19_reg_480[9]_i_3 
       (.I0(tmp_15_reg_435[6]),
        .I1(j_reg_154[6]),
        .O(\tmp_19_reg_480[9]_i_3_n_0 ));
  FDRE \tmp_19_reg_480_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(j_reg_154[0]),
        .Q(tmp_19_reg_480[0]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[10]),
        .Q(tmp_19_reg_480[10]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[11]),
        .Q(tmp_19_reg_480[11]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[12]),
        .Q(tmp_19_reg_480[12]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[13]),
        .Q(tmp_19_reg_480[13]),
        .R(1'b0));
  CARRY4 \tmp_19_reg_480_reg[13]_i_1 
       (.CI(\tmp_19_reg_480_reg[9]_i_1_n_0 ),
        .CO({\tmp_19_reg_480_reg[13]_i_1_n_0 ,\tmp_19_reg_480_reg[13]_i_1_n_1 ,\tmp_19_reg_480_reg[13]_i_1_n_2 ,\tmp_19_reg_480_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_19_fu_397_p2[13:10]),
        .S(tmp_15_reg_435[13:10]));
  FDRE \tmp_19_reg_480_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[14]),
        .Q(tmp_19_reg_480[14]),
        .R(1'b0));
  CARRY4 \tmp_19_reg_480_reg[14]_i_1 
       (.CI(\tmp_19_reg_480_reg[13]_i_1_n_0 ),
        .CO(\NLW_tmp_19_reg_480_reg[14]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_19_reg_480_reg[14]_i_1_O_UNCONNECTED [3:1],tmp_19_fu_397_p2[14]}),
        .S({1'b0,1'b0,1'b0,tmp_15_reg_435[14]}));
  FDRE \tmp_19_reg_480_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(j_reg_154[1]),
        .Q(tmp_19_reg_480[1]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[2]),
        .Q(tmp_19_reg_480[2]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[3]),
        .Q(tmp_19_reg_480[3]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[4]),
        .Q(tmp_19_reg_480[4]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[5]),
        .Q(tmp_19_reg_480[5]),
        .R(1'b0));
  CARRY4 \tmp_19_reg_480_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\tmp_19_reg_480_reg[5]_i_1_n_0 ,\tmp_19_reg_480_reg[5]_i_1_n_1 ,\tmp_19_reg_480_reg[5]_i_1_n_2 ,\tmp_19_reg_480_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_15_reg_435[5:3],1'b0}),
        .O(tmp_19_fu_397_p2[5:2]),
        .S({\tmp_19_reg_480[5]_i_2_n_0 ,\tmp_19_reg_480[5]_i_3_n_0 ,\tmp_19_reg_480[5]_i_4_n_0 ,j_reg_154[2]}));
  FDRE \tmp_19_reg_480_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[6]),
        .Q(tmp_19_reg_480[6]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[7]),
        .Q(tmp_19_reg_480[7]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[8]),
        .Q(tmp_19_reg_480[8]),
        .R(1'b0));
  FDRE \tmp_19_reg_480_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(tmp_19_fu_397_p2[9]),
        .Q(tmp_19_reg_480[9]),
        .R(1'b0));
  CARRY4 \tmp_19_reg_480_reg[9]_i_1 
       (.CI(\tmp_19_reg_480_reg[5]_i_1_n_0 ),
        .CO({\tmp_19_reg_480_reg[9]_i_1_n_0 ,\tmp_19_reg_480_reg[9]_i_1_n_1 ,\tmp_19_reg_480_reg[9]_i_1_n_2 ,\tmp_19_reg_480_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_15_reg_435[7:6]}),
        .O(tmp_19_fu_397_p2[9:6]),
        .S({tmp_15_reg_435[9:8],\tmp_19_reg_480[9]_i_2_n_0 ,\tmp_19_reg_480[9]_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_10 
       (.I0(\counter_reg_n_0_[19] ),
        .I1(\counter_reg_n_0_[18] ),
        .O(\tmp_1_reg_423[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_12 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .O(\tmp_1_reg_423[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_13 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[14] ),
        .O(\tmp_1_reg_423[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_14 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .O(\tmp_1_reg_423[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_15 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .O(\tmp_1_reg_423[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_16 
       (.I0(p_shl2_cast_fu_233_p3[13]),
        .I1(p_shl2_cast_fu_233_p3[14]),
        .O(\tmp_1_reg_423[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_1_reg_423[0]_i_17 
       (.I0(p_shl2_cast_fu_233_p3[12]),
        .I1(p_shl2_cast_fu_233_p3[11]),
        .O(\tmp_1_reg_423[0]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_1_reg_423[0]_i_18 
       (.I0(p_shl2_cast_fu_233_p3[10]),
        .O(\tmp_1_reg_423[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_19 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(p_shl2_cast_fu_233_p3[15]),
        .O(\tmp_1_reg_423[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_1_reg_423[0]_i_20 
       (.I0(p_shl2_cast_fu_233_p3[13]),
        .I1(p_shl2_cast_fu_233_p3[14]),
        .O(\tmp_1_reg_423[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_1_reg_423[0]_i_21 
       (.I0(p_shl2_cast_fu_233_p3[11]),
        .I1(p_shl2_cast_fu_233_p3[12]),
        .O(\tmp_1_reg_423[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_1_reg_423[0]_i_22 
       (.I0(p_shl2_cast_fu_233_p3[10]),
        .I1(p_shl2_cast_fu_233_p3[9]),
        .O(\tmp_1_reg_423[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_3 
       (.I0(\counter_reg_n_0_[31] ),
        .I1(\counter_reg_n_0_[30] ),
        .O(\tmp_1_reg_423[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_4 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[28] ),
        .O(\tmp_1_reg_423[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_5 
       (.I0(\counter_reg_n_0_[27] ),
        .I1(\counter_reg_n_0_[26] ),
        .O(\tmp_1_reg_423[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_7 
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[24] ),
        .O(\tmp_1_reg_423[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_8 
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .O(\tmp_1_reg_423[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_1_reg_423[0]_i_9 
       (.I0(\counter_reg_n_0_[21] ),
        .I1(\counter_reg_n_0_[20] ),
        .O(\tmp_1_reg_423[0]_i_9_n_0 ));
  FDRE \tmp_1_reg_423_reg[0] 
       (.C(ap_clk),
        .CE(counter_load_reg_4180),
        .D(tmp_1_fu_217_p2),
        .Q(\tmp_1_reg_423_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \tmp_1_reg_423_reg[0]_i_1 
       (.CI(\tmp_1_reg_423_reg[0]_i_2_n_0 ),
        .CO({\NLW_tmp_1_reg_423_reg[0]_i_1_CO_UNCONNECTED [3],tmp_1_fu_217_p2,\tmp_1_reg_423_reg[0]_i_1_n_2 ,\tmp_1_reg_423_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\counter_reg_n_0_[31] ,1'b0,1'b0}),
        .O(\NLW_tmp_1_reg_423_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\tmp_1_reg_423[0]_i_3_n_0 ,\tmp_1_reg_423[0]_i_4_n_0 ,\tmp_1_reg_423[0]_i_5_n_0 }));
  CARRY4 \tmp_1_reg_423_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\tmp_1_reg_423_reg[0]_i_11_n_0 ,\tmp_1_reg_423_reg[0]_i_11_n_1 ,\tmp_1_reg_423_reg[0]_i_11_n_2 ,\tmp_1_reg_423_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\tmp_1_reg_423[0]_i_16_n_0 ,\tmp_1_reg_423[0]_i_17_n_0 ,\tmp_1_reg_423[0]_i_18_n_0 }),
        .O(\NLW_tmp_1_reg_423_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\tmp_1_reg_423[0]_i_19_n_0 ,\tmp_1_reg_423[0]_i_20_n_0 ,\tmp_1_reg_423[0]_i_21_n_0 ,\tmp_1_reg_423[0]_i_22_n_0 }));
  CARRY4 \tmp_1_reg_423_reg[0]_i_2 
       (.CI(\tmp_1_reg_423_reg[0]_i_6_n_0 ),
        .CO({\tmp_1_reg_423_reg[0]_i_2_n_0 ,\tmp_1_reg_423_reg[0]_i_2_n_1 ,\tmp_1_reg_423_reg[0]_i_2_n_2 ,\tmp_1_reg_423_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_1_reg_423_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\tmp_1_reg_423[0]_i_7_n_0 ,\tmp_1_reg_423[0]_i_8_n_0 ,\tmp_1_reg_423[0]_i_9_n_0 ,\tmp_1_reg_423[0]_i_10_n_0 }));
  CARRY4 \tmp_1_reg_423_reg[0]_i_6 
       (.CI(\tmp_1_reg_423_reg[0]_i_11_n_0 ),
        .CO({\tmp_1_reg_423_reg[0]_i_6_n_0 ,\tmp_1_reg_423_reg[0]_i_6_n_1 ,\tmp_1_reg_423_reg[0]_i_6_n_2 ,\tmp_1_reg_423_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_1_reg_423_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\tmp_1_reg_423[0]_i_12_n_0 ,\tmp_1_reg_423[0]_i_13_n_0 ,\tmp_1_reg_423[0]_i_14_n_0 ,\tmp_1_reg_423[0]_i_15_n_0 }));
endmodule

(* ORIG_REF_NAME = "detec_movement_detec_data_s_axi" *) 
module system_detec_movement_0_0_detec_movement_detec_data_s_axi
   (DOADO,
    DOBDO,
    reset,
    finished_ap_vld,
    int_inData_write_reg_0,
    d0,
    \int_inData_shift_reg[0]_0 ,
    \int_inData_shift_reg[0]_1 ,
    \int_inData_shift_reg[0]_2 ,
    \int_inData_shift_reg[0]_3 ,
    \int_inData_shift_reg[0]_4 ,
    \int_inData_shift_reg[0]_5 ,
    \int_inData_shift_reg[0]_6 ,
    \int_inData_shift_reg[0]_7 ,
    s_axi_detec_data_AWREADY,
    s_axi_detec_data_ARREADY,
    s_axi_detec_data_RVALID,
    s_axi_detec_data_WREADY,
    counter_new_1_reg_1650,
    CO,
    \j_reg_154_reg[7] ,
    \j_reg_154_reg[6] ,
    \j_1_reg_143_reg[5] ,
    \tmp_1_reg_423_reg[0] ,
    SR,
    D,
    \ap_CS_fsm_reg[0] ,
    E,
    \counter_load_reg_418_reg[31] ,
    s_axi_detec_data_BVALID,
    interrupt,
    tmp_11_fu_346_p2,
    \diff_reg[0]_i_9 ,
    s_axi_detec_data_RDATA,
    ap_clk,
    s_axi_detec_data_WDATA,
    Q,
    s_axi_detec_data_WVALID,
    s_axi_detec_data_ARVALID,
    ram_reg_0_0_i_19,
    ram_reg_0_0_i_19_0,
    ram_reg_0_1_i_2,
    ram_reg_0_2_i_3,
    ram_reg_0_3_i_2,
    ram_reg_0_4_i_2,
    ram_reg_0_5_i_3,
    ram_reg_0_6_i_2,
    ram_reg_0_7_i_3,
    ram_reg_0_0_i_19_1,
    ram_reg_0_1_i_2_0,
    ram_reg_0_2_i_3_0,
    ram_reg_0_3_i_2_0,
    ram_reg_0_4_i_2_0,
    ram_reg_0_5_i_3_0,
    ram_reg_0_6_i_2_0,
    ram_reg_0_7_i_3_0,
    ram_reg_0_0_i_19_2,
    ram_reg_0_1_i_2_1,
    ram_reg_0_2_i_3_1,
    ram_reg_0_3_i_2_1,
    ram_reg_0_4_i_2_1,
    ram_reg_0_5_i_3_1,
    ram_reg_0_6_i_2_1,
    ram_reg_0_7_i_3_1,
    ram_reg_0_0_i_19_3,
    ram_reg_0_1_i_2_2,
    ram_reg_0_2_i_3_2,
    ram_reg_0_3_i_2_2,
    ram_reg_0_4_i_2_2,
    ram_reg_0_5_i_3_2,
    ram_reg_0_6_i_2_2,
    ram_reg_0_7_i_3_2,
    \rdata_data_reg[31]_0 ,
    \rdata_data_reg[0]_0 ,
    s_axi_detec_data_ARADDR,
    \rdata_data_reg[1]_0 ,
    \rdata_data_reg[2]_0 ,
    \rdata_data_reg[3]_0 ,
    \rdata_data_reg[4]_0 ,
    \rdata_data_reg[5]_0 ,
    \rdata_data_reg[6]_0 ,
    \rdata_data_reg[7]_0 ,
    \rdata_data_reg[8]_0 ,
    \rdata_data_reg[9]_0 ,
    \rdata_data_reg[10]_0 ,
    \rdata_data_reg[11]_0 ,
    \rdata_data_reg[12]_0 ,
    \rdata_data_reg[13]_0 ,
    \rdata_data_reg[14]_0 ,
    \rdata_data_reg[15]_0 ,
    \rdata_data_reg[16]_0 ,
    \rdata_data_reg[17]_0 ,
    \rdata_data_reg[18]_0 ,
    \rdata_data_reg[19]_0 ,
    \rdata_data_reg[20]_0 ,
    \rdata_data_reg[21]_0 ,
    \rdata_data_reg[22]_0 ,
    \rdata_data_reg[23]_0 ,
    \rdata_data_reg[24]_0 ,
    \rdata_data_reg[25]_0 ,
    \rdata_data_reg[26]_0 ,
    \rdata_data_reg[27]_0 ,
    \rdata_data_reg[28]_0 ,
    \rdata_data_reg[29]_0 ,
    \rdata_data_reg[30]_0 ,
    \rdata_data_reg[31]_1 ,
    s_axi_detec_data_RREADY,
    s_axi_detec_data_WSTRB,
    s_axi_detec_data_AWVALID,
    s_axi_detec_data_BREADY,
    \counter_new_1_reg_165_reg[0] ,
    \gen_write[1].mem_reg ,
    diff_reg,
    \gen_write[1].mem_reg_0 ,
    pre_valid,
    \j_1_reg_143_reg[0] ,
    \counter_new_1_reg_165_reg[31] ,
    q0,
    ap_rst_n,
    s_axi_detec_data_AWADDR);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output reset;
  output finished_ap_vld;
  output int_inData_write_reg_0;
  output [7:0]d0;
  output \int_inData_shift_reg[0]_0 ;
  output \int_inData_shift_reg[0]_1 ;
  output \int_inData_shift_reg[0]_2 ;
  output \int_inData_shift_reg[0]_3 ;
  output \int_inData_shift_reg[0]_4 ;
  output \int_inData_shift_reg[0]_5 ;
  output \int_inData_shift_reg[0]_6 ;
  output \int_inData_shift_reg[0]_7 ;
  output s_axi_detec_data_AWREADY;
  output s_axi_detec_data_ARREADY;
  output s_axi_detec_data_RVALID;
  output s_axi_detec_data_WREADY;
  output counter_new_1_reg_1650;
  output [0:0]CO;
  output \j_reg_154_reg[7] ;
  output \j_reg_154_reg[6] ;
  output \j_1_reg_143_reg[5] ;
  output \tmp_1_reg_423_reg[0] ;
  output [0:0]SR;
  output [2:0]D;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output [0:0]E;
  output [30:0]\counter_load_reg_418_reg[31] ;
  output s_axi_detec_data_BVALID;
  output interrupt;
  output [5:0]tmp_11_fu_346_p2;
  output [0:0]\diff_reg[0]_i_9 ;
  output [31:0]s_axi_detec_data_RDATA;
  input ap_clk;
  input [31:0]s_axi_detec_data_WDATA;
  input [5:0]Q;
  input s_axi_detec_data_WVALID;
  input s_axi_detec_data_ARVALID;
  input ram_reg_0_0_i_19;
  input ram_reg_0_0_i_19_0;
  input ram_reg_0_1_i_2;
  input ram_reg_0_2_i_3;
  input ram_reg_0_3_i_2;
  input ram_reg_0_4_i_2;
  input ram_reg_0_5_i_3;
  input ram_reg_0_6_i_2;
  input ram_reg_0_7_i_3;
  input ram_reg_0_0_i_19_1;
  input ram_reg_0_1_i_2_0;
  input ram_reg_0_2_i_3_0;
  input ram_reg_0_3_i_2_0;
  input ram_reg_0_4_i_2_0;
  input ram_reg_0_5_i_3_0;
  input ram_reg_0_6_i_2_0;
  input ram_reg_0_7_i_3_0;
  input ram_reg_0_0_i_19_2;
  input ram_reg_0_1_i_2_1;
  input ram_reg_0_2_i_3_1;
  input ram_reg_0_3_i_2_1;
  input ram_reg_0_4_i_2_1;
  input ram_reg_0_5_i_3_1;
  input ram_reg_0_6_i_2_1;
  input ram_reg_0_7_i_3_1;
  input ram_reg_0_0_i_19_3;
  input ram_reg_0_1_i_2_2;
  input ram_reg_0_2_i_3_2;
  input ram_reg_0_3_i_2_2;
  input ram_reg_0_4_i_2_2;
  input ram_reg_0_5_i_3_2;
  input ram_reg_0_6_i_2_2;
  input ram_reg_0_7_i_3_2;
  input \rdata_data_reg[31]_0 ;
  input \rdata_data_reg[0]_0 ;
  input [9:0]s_axi_detec_data_ARADDR;
  input \rdata_data_reg[1]_0 ;
  input \rdata_data_reg[2]_0 ;
  input \rdata_data_reg[3]_0 ;
  input \rdata_data_reg[4]_0 ;
  input \rdata_data_reg[5]_0 ;
  input \rdata_data_reg[6]_0 ;
  input \rdata_data_reg[7]_0 ;
  input \rdata_data_reg[8]_0 ;
  input \rdata_data_reg[9]_0 ;
  input \rdata_data_reg[10]_0 ;
  input \rdata_data_reg[11]_0 ;
  input \rdata_data_reg[12]_0 ;
  input \rdata_data_reg[13]_0 ;
  input \rdata_data_reg[14]_0 ;
  input \rdata_data_reg[15]_0 ;
  input \rdata_data_reg[16]_0 ;
  input \rdata_data_reg[17]_0 ;
  input \rdata_data_reg[18]_0 ;
  input \rdata_data_reg[19]_0 ;
  input \rdata_data_reg[20]_0 ;
  input \rdata_data_reg[21]_0 ;
  input \rdata_data_reg[22]_0 ;
  input \rdata_data_reg[23]_0 ;
  input \rdata_data_reg[24]_0 ;
  input \rdata_data_reg[25]_0 ;
  input \rdata_data_reg[26]_0 ;
  input \rdata_data_reg[27]_0 ;
  input \rdata_data_reg[28]_0 ;
  input \rdata_data_reg[29]_0 ;
  input \rdata_data_reg[30]_0 ;
  input \rdata_data_reg[31]_1 ;
  input s_axi_detec_data_RREADY;
  input [3:0]s_axi_detec_data_WSTRB;
  input s_axi_detec_data_AWVALID;
  input s_axi_detec_data_BREADY;
  input \counter_new_1_reg_165_reg[0] ;
  input [7:0]\gen_write[1].mem_reg ;
  input [31:0]diff_reg;
  input [7:0]\gen_write[1].mem_reg_0 ;
  input pre_valid;
  input [0:0]\j_1_reg_143_reg[0] ;
  input [31:0]\counter_new_1_reg_165_reg[31] ;
  input [7:0]q0;
  input ap_rst_n;
  input [9:0]s_axi_detec_data_AWADDR;

  wire [0:0]CO;
  wire [4:3]COUNT;
  wire [2:0]D;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire aw_hs;
  wire [30:0]\counter_load_reg_418_reg[31] ;
  wire counter_new_1_reg_1650;
  wire \counter_new_1_reg_165[31]_i_10_n_0 ;
  wire \counter_new_1_reg_165[31]_i_11_n_0 ;
  wire \counter_new_1_reg_165[31]_i_12_n_0 ;
  wire \counter_new_1_reg_165[31]_i_13_n_0 ;
  wire \counter_new_1_reg_165[31]_i_15_n_0 ;
  wire \counter_new_1_reg_165[31]_i_16_n_0 ;
  wire \counter_new_1_reg_165[31]_i_17_n_0 ;
  wire \counter_new_1_reg_165[31]_i_18_n_0 ;
  wire \counter_new_1_reg_165[31]_i_19_n_0 ;
  wire \counter_new_1_reg_165[31]_i_20_n_0 ;
  wire \counter_new_1_reg_165[31]_i_21_n_0 ;
  wire \counter_new_1_reg_165[31]_i_22_n_0 ;
  wire \counter_new_1_reg_165[31]_i_23_n_0 ;
  wire \counter_new_1_reg_165[31]_i_24_n_0 ;
  wire \counter_new_1_reg_165[31]_i_25_n_0 ;
  wire \counter_new_1_reg_165[31]_i_6_n_0 ;
  wire \counter_new_1_reg_165[31]_i_7_n_0 ;
  wire \counter_new_1_reg_165[31]_i_8_n_0 ;
  wire \counter_new_1_reg_165_reg[0] ;
  wire \counter_new_1_reg_165_reg[12]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[12]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[12]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[12]_i_1_n_3 ;
  wire \counter_new_1_reg_165_reg[16]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[16]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[16]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[16]_i_1_n_3 ;
  wire \counter_new_1_reg_165_reg[20]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[20]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[20]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[20]_i_1_n_3 ;
  wire \counter_new_1_reg_165_reg[24]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[24]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[24]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[24]_i_1_n_3 ;
  wire \counter_new_1_reg_165_reg[28]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[28]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[28]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[28]_i_1_n_3 ;
  wire [31:0]\counter_new_1_reg_165_reg[31] ;
  wire \counter_new_1_reg_165_reg[31]_i_14_n_0 ;
  wire \counter_new_1_reg_165_reg[31]_i_14_n_1 ;
  wire \counter_new_1_reg_165_reg[31]_i_14_n_2 ;
  wire \counter_new_1_reg_165_reg[31]_i_14_n_3 ;
  wire \counter_new_1_reg_165_reg[31]_i_3_n_2 ;
  wire \counter_new_1_reg_165_reg[31]_i_3_n_3 ;
  wire \counter_new_1_reg_165_reg[31]_i_4_n_2 ;
  wire \counter_new_1_reg_165_reg[31]_i_4_n_3 ;
  wire \counter_new_1_reg_165_reg[31]_i_5_n_0 ;
  wire \counter_new_1_reg_165_reg[31]_i_5_n_1 ;
  wire \counter_new_1_reg_165_reg[31]_i_5_n_2 ;
  wire \counter_new_1_reg_165_reg[31]_i_5_n_3 ;
  wire \counter_new_1_reg_165_reg[31]_i_9_n_0 ;
  wire \counter_new_1_reg_165_reg[31]_i_9_n_1 ;
  wire \counter_new_1_reg_165_reg[31]_i_9_n_2 ;
  wire \counter_new_1_reg_165_reg[31]_i_9_n_3 ;
  wire \counter_new_1_reg_165_reg[4]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[4]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[4]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[4]_i_1_n_3 ;
  wire \counter_new_1_reg_165_reg[8]_i_1_n_0 ;
  wire \counter_new_1_reg_165_reg[8]_i_1_n_1 ;
  wire \counter_new_1_reg_165_reg[8]_i_1_n_2 ;
  wire \counter_new_1_reg_165_reg[8]_i_1_n_3 ;
  wire [7:0]d0;
  wire [31:0]diff_reg;
  wire [0:0]\diff_reg[0]_i_9 ;
  wire finished;
  wire finished_ap_vld;
  wire [7:0]\gen_write[1].mem_reg ;
  wire [7:0]\gen_write[1].mem_reg_0 ;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_done_i_3_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire [0:0]int_finished;
  wire int_finished_ap_vld;
  wire int_finished_ap_vld_i_1_n_0;
  wire int_finished_ap_vld_i_2_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier[1]_i_3_n_0 ;
  wire \int_ier[1]_i_4_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_inData_n_100;
  wire int_inData_n_101;
  wire int_inData_n_102;
  wire int_inData_n_103;
  wire int_inData_n_104;
  wire int_inData_n_105;
  wire int_inData_n_106;
  wire int_inData_n_107;
  wire int_inData_n_108;
  wire int_inData_n_109;
  wire int_inData_n_110;
  wire int_inData_n_111;
  wire int_inData_n_80;
  wire int_inData_n_81;
  wire int_inData_n_82;
  wire int_inData_n_83;
  wire int_inData_n_84;
  wire int_inData_n_85;
  wire int_inData_n_86;
  wire int_inData_n_87;
  wire int_inData_n_88;
  wire int_inData_n_89;
  wire int_inData_n_90;
  wire int_inData_n_91;
  wire int_inData_n_92;
  wire int_inData_n_93;
  wire int_inData_n_94;
  wire int_inData_n_95;
  wire int_inData_n_96;
  wire int_inData_n_97;
  wire int_inData_n_98;
  wire int_inData_n_99;
  wire int_inData_read;
  wire int_inData_read0;
  wire \int_inData_shift[0]_i_1_n_0 ;
  wire \int_inData_shift[1]_i_1_n_0 ;
  wire \int_inData_shift_reg[0]_0 ;
  wire \int_inData_shift_reg[0]_1 ;
  wire \int_inData_shift_reg[0]_2 ;
  wire \int_inData_shift_reg[0]_3 ;
  wire \int_inData_shift_reg[0]_4 ;
  wire \int_inData_shift_reg[0]_5 ;
  wire \int_inData_shift_reg[0]_6 ;
  wire \int_inData_shift_reg[0]_7 ;
  wire int_inData_write_i_1_n_0;
  wire int_inData_write_reg_0;
  wire int_inData_write_reg_n_0;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire [0:0]int_motion;
  wire \int_motion[0]_i_10_n_0 ;
  wire \int_motion[0]_i_12_n_0 ;
  wire \int_motion[0]_i_13_n_0 ;
  wire \int_motion[0]_i_14_n_0 ;
  wire \int_motion[0]_i_15_n_0 ;
  wire \int_motion[0]_i_16_n_0 ;
  wire \int_motion[0]_i_17_n_0 ;
  wire \int_motion[0]_i_18_n_0 ;
  wire \int_motion[0]_i_19_n_0 ;
  wire \int_motion[0]_i_1_n_0 ;
  wire \int_motion[0]_i_21_n_0 ;
  wire \int_motion[0]_i_22_n_0 ;
  wire \int_motion[0]_i_23_n_0 ;
  wire \int_motion[0]_i_24_n_0 ;
  wire \int_motion[0]_i_25_n_0 ;
  wire \int_motion[0]_i_26_n_0 ;
  wire \int_motion[0]_i_27_n_0 ;
  wire \int_motion[0]_i_28_n_0 ;
  wire \int_motion[0]_i_29_n_0 ;
  wire \int_motion[0]_i_30_n_0 ;
  wire \int_motion[0]_i_31_n_0 ;
  wire \int_motion[0]_i_32_n_0 ;
  wire \int_motion[0]_i_33_n_0 ;
  wire \int_motion[0]_i_5_n_0 ;
  wire \int_motion[0]_i_6_n_0 ;
  wire \int_motion[0]_i_7_n_0 ;
  wire \int_motion[0]_i_8_n_0 ;
  wire \int_motion[0]_i_9_n_0 ;
  wire int_motion_ap_vld;
  wire int_motion_ap_vld_i_1_n_0;
  wire int_motion_ap_vld_i_2_n_0;
  wire int_motion_ap_vld_i_3_n_0;
  wire \int_motion_reg[0]_i_11_n_0 ;
  wire \int_motion_reg[0]_i_11_n_1 ;
  wire \int_motion_reg[0]_i_11_n_2 ;
  wire \int_motion_reg[0]_i_11_n_3 ;
  wire \int_motion_reg[0]_i_20_n_0 ;
  wire \int_motion_reg[0]_i_20_n_1 ;
  wire \int_motion_reg[0]_i_20_n_2 ;
  wire \int_motion_reg[0]_i_20_n_3 ;
  wire \int_motion_reg[0]_i_3_n_2 ;
  wire \int_motion_reg[0]_i_3_n_3 ;
  wire \int_motion_reg[0]_i_4_n_0 ;
  wire \int_motion_reg[0]_i_4_n_1 ;
  wire \int_motion_reg[0]_i_4_n_2 ;
  wire \int_motion_reg[0]_i_4_n_3 ;
  wire [31:0]int_position;
  wire int_position_ap_vld;
  wire int_position_ap_vld_i_1_n_0;
  wire interrupt;
  wire [0:0]\j_1_reg_143_reg[0] ;
  wire \j_1_reg_143_reg[5] ;
  wire \j_reg_154_reg[6] ;
  wire \j_reg_154_reg[7] ;
  wire motion1;
  wire p_0_in;
  wire p_1_in;
  wire [31:0]position;
  wire pre_valid;
  wire [7:0]q0;
  wire ram_reg_0_0_i_19;
  wire ram_reg_0_0_i_19_0;
  wire ram_reg_0_0_i_19_1;
  wire ram_reg_0_0_i_19_2;
  wire ram_reg_0_0_i_19_3;
  wire ram_reg_0_1_i_2;
  wire ram_reg_0_1_i_2_0;
  wire ram_reg_0_1_i_2_1;
  wire ram_reg_0_1_i_2_2;
  wire ram_reg_0_2_i_3;
  wire ram_reg_0_2_i_3_0;
  wire ram_reg_0_2_i_3_1;
  wire ram_reg_0_2_i_3_2;
  wire ram_reg_0_3_i_2;
  wire ram_reg_0_3_i_2_0;
  wire ram_reg_0_3_i_2_1;
  wire ram_reg_0_3_i_2_2;
  wire ram_reg_0_4_i_2;
  wire ram_reg_0_4_i_2_0;
  wire ram_reg_0_4_i_2_1;
  wire ram_reg_0_4_i_2_2;
  wire ram_reg_0_5_i_3;
  wire ram_reg_0_5_i_3_0;
  wire ram_reg_0_5_i_3_1;
  wire ram_reg_0_5_i_3_2;
  wire ram_reg_0_6_i_2;
  wire ram_reg_0_6_i_2_0;
  wire ram_reg_0_6_i_2_1;
  wire ram_reg_0_6_i_2_2;
  wire ram_reg_0_7_i_3;
  wire ram_reg_0_7_i_3_0;
  wire ram_reg_0_7_i_3_1;
  wire ram_reg_0_7_i_3_2;
  wire \rdata_data[0]_i_2_n_0 ;
  wire \rdata_data[0]_i_3_n_0 ;
  wire \rdata_data[0]_i_5_n_0 ;
  wire \rdata_data[0]_i_6_n_0 ;
  wire \rdata_data[0]_i_7_n_0 ;
  wire \rdata_data[1]_i_2_n_0 ;
  wire \rdata_data[1]_i_3_n_0 ;
  wire \rdata_data[1]_i_5_n_0 ;
  wire \rdata_data[31]_i_1_n_0 ;
  wire \rdata_data[31]_i_3_n_0 ;
  wire \rdata_data[31]_i_4_n_0 ;
  wire \rdata_data[31]_i_7_n_0 ;
  wire \rdata_data[31]_i_8_n_0 ;
  wire \rdata_data[3]_i_3_n_0 ;
  wire \rdata_data[6]_i_2_n_0 ;
  wire \rdata_data[7]_i_3_n_0 ;
  wire \rdata_data[7]_i_5_n_0 ;
  wire \rdata_data_reg[0]_0 ;
  wire \rdata_data_reg[10]_0 ;
  wire \rdata_data_reg[11]_0 ;
  wire \rdata_data_reg[12]_0 ;
  wire \rdata_data_reg[13]_0 ;
  wire \rdata_data_reg[14]_0 ;
  wire \rdata_data_reg[15]_0 ;
  wire \rdata_data_reg[16]_0 ;
  wire \rdata_data_reg[17]_0 ;
  wire \rdata_data_reg[18]_0 ;
  wire \rdata_data_reg[19]_0 ;
  wire \rdata_data_reg[1]_0 ;
  wire \rdata_data_reg[20]_0 ;
  wire \rdata_data_reg[21]_0 ;
  wire \rdata_data_reg[22]_0 ;
  wire \rdata_data_reg[23]_0 ;
  wire \rdata_data_reg[24]_0 ;
  wire \rdata_data_reg[25]_0 ;
  wire \rdata_data_reg[26]_0 ;
  wire \rdata_data_reg[27]_0 ;
  wire \rdata_data_reg[28]_0 ;
  wire \rdata_data_reg[29]_0 ;
  wire \rdata_data_reg[2]_0 ;
  wire \rdata_data_reg[30]_0 ;
  wire \rdata_data_reg[31]_0 ;
  wire \rdata_data_reg[31]_1 ;
  wire \rdata_data_reg[3]_0 ;
  wire \rdata_data_reg[4]_0 ;
  wire \rdata_data_reg[5]_0 ;
  wire \rdata_data_reg[6]_0 ;
  wire \rdata_data_reg[7]_0 ;
  wire \rdata_data_reg[8]_0 ;
  wire \rdata_data_reg[9]_0 ;
  wire reset;
  wire [1:0]rstate;
  wire \rstate[0]_i_1_n_0 ;
  wire [9:0]s_axi_detec_data_ARADDR;
  wire s_axi_detec_data_ARREADY;
  wire s_axi_detec_data_ARVALID;
  wire [9:0]s_axi_detec_data_AWADDR;
  wire s_axi_detec_data_AWREADY;
  wire s_axi_detec_data_AWVALID;
  wire s_axi_detec_data_BREADY;
  wire s_axi_detec_data_BVALID;
  wire [31:0]s_axi_detec_data_RDATA;
  wire s_axi_detec_data_RREADY;
  wire s_axi_detec_data_RVALID;
  wire [31:0]s_axi_detec_data_WDATA;
  wire s_axi_detec_data_WREADY;
  wire [3:0]s_axi_detec_data_WSTRB;
  wire s_axi_detec_data_WVALID;
  wire [5:0]tmp_11_fu_346_p2;
  wire tmp_13_fu_320_p29_in;
  wire \tmp_1_reg_423_reg[0] ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_2_n_0 ;
  wire [3:0]\NLW_counter_new_1_reg_165_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_counter_new_1_reg_165_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_new_1_reg_165_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_new_1_reg_165_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_new_1_reg_165_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_new_1_reg_165_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_new_1_reg_165_reg[31]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_int_motion_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_int_motion_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:3]\NLW_int_motion_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_int_motion_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_int_motion_reg[0]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[5]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\j_1_reg_143_reg[0] ),
        .I1(pre_valid),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\gen_write[1].mem_reg_0 [5]),
        .I1(\gen_write[1].mem_reg_0 [4]),
        .I2(\gen_write[1].mem_reg_0 [7]),
        .I3(\gen_write[1].mem_reg_0 [6]),
        .I4(\ap_CS_fsm[2]_i_3_n_0 ),
        .O(\j_1_reg_143_reg[5] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(\gen_write[1].mem_reg_0 [1]),
        .I1(\gen_write[1].mem_reg_0 [0]),
        .I2(\gen_write[1].mem_reg_0 [3]),
        .I3(\gen_write[1].mem_reg_0 [2]),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\j_1_reg_143_reg[0] ),
        .I1(pre_valid),
        .I2(ap_start),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(\gen_write[1].mem_reg [6]),
        .I1(\gen_write[1].mem_reg [4]),
        .I2(\gen_write[1].mem_reg [5]),
        .I3(\gen_write[1].mem_reg [3]),
        .O(\j_reg_154_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(\j_reg_154_reg[6] ),
        .I1(\gen_write[1].mem_reg [7]),
        .I2(\gen_write[1].mem_reg [2]),
        .I3(\gen_write[1].mem_reg [1]),
        .I4(\gen_write[1].mem_reg [0]),
        .I5(Q[3]),
        .O(\j_reg_154_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter_load_reg_418[31]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(E));
  LUT4 #(
    .INIT(16'h2A2F)) 
    \counter_new_1_reg_165[31]_i_1 
       (.I0(finished_ap_vld),
        .I1(\counter_new_1_reg_165_reg[0] ),
        .I2(CO),
        .I3(\j_reg_154_reg[7] ),
        .O(counter_new_1_reg_1650));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_10 
       (.I0(\counter_load_reg_418_reg[31] [24]),
        .I1(\counter_load_reg_418_reg[31] [23]),
        .O(\counter_new_1_reg_165[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_11 
       (.I0(\counter_load_reg_418_reg[31] [22]),
        .I1(\counter_load_reg_418_reg[31] [21]),
        .O(\counter_new_1_reg_165[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_12 
       (.I0(\counter_load_reg_418_reg[31] [20]),
        .I1(\counter_load_reg_418_reg[31] [19]),
        .O(\counter_new_1_reg_165[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_13 
       (.I0(\counter_load_reg_418_reg[31] [18]),
        .I1(\counter_load_reg_418_reg[31] [17]),
        .O(\counter_new_1_reg_165[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_15 
       (.I0(\counter_load_reg_418_reg[31] [16]),
        .I1(\counter_load_reg_418_reg[31] [15]),
        .O(\counter_new_1_reg_165[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_16 
       (.I0(\counter_load_reg_418_reg[31] [14]),
        .I1(\counter_load_reg_418_reg[31] [13]),
        .O(\counter_new_1_reg_165[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_17 
       (.I0(\counter_load_reg_418_reg[31] [12]),
        .I1(\counter_load_reg_418_reg[31] [11]),
        .O(\counter_new_1_reg_165[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_18 
       (.I0(\counter_load_reg_418_reg[31] [10]),
        .I1(\counter_load_reg_418_reg[31] [9]),
        .O(\counter_new_1_reg_165[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_19 
       (.I0(\counter_load_reg_418_reg[31] [5]),
        .I1(\counter_load_reg_418_reg[31] [6]),
        .O(\counter_new_1_reg_165[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter_new_1_reg_165[31]_i_20 
       (.I0(\counter_load_reg_418_reg[31] [3]),
        .I1(\counter_load_reg_418_reg[31] [4]),
        .O(\counter_new_1_reg_165[31]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_new_1_reg_165[31]_i_21 
       (.I0(\counter_load_reg_418_reg[31] [2]),
        .O(\counter_new_1_reg_165[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_22 
       (.I0(\counter_load_reg_418_reg[31] [8]),
        .I1(\counter_load_reg_418_reg[31] [7]),
        .O(\counter_new_1_reg_165[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_new_1_reg_165[31]_i_23 
       (.I0(\counter_load_reg_418_reg[31] [5]),
        .I1(\counter_load_reg_418_reg[31] [6]),
        .O(\counter_new_1_reg_165[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_new_1_reg_165[31]_i_24 
       (.I0(\counter_load_reg_418_reg[31] [4]),
        .I1(\counter_load_reg_418_reg[31] [3]),
        .O(\counter_new_1_reg_165[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_new_1_reg_165[31]_i_25 
       (.I0(\counter_load_reg_418_reg[31] [2]),
        .I1(\counter_load_reg_418_reg[31] [1]),
        .O(\counter_new_1_reg_165[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_6 
       (.I0(\counter_load_reg_418_reg[31] [30]),
        .I1(\counter_load_reg_418_reg[31] [29]),
        .O(\counter_new_1_reg_165[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_7 
       (.I0(\counter_load_reg_418_reg[31] [28]),
        .I1(\counter_load_reg_418_reg[31] [27]),
        .O(\counter_new_1_reg_165[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_new_1_reg_165[31]_i_8 
       (.I0(\counter_load_reg_418_reg[31] [26]),
        .I1(\counter_load_reg_418_reg[31] [25]),
        .O(\counter_new_1_reg_165[31]_i_8_n_0 ));
  CARRY4 \counter_new_1_reg_165_reg[12]_i_1 
       (.CI(\counter_new_1_reg_165_reg[8]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[12]_i_1_n_0 ,\counter_new_1_reg_165_reg[12]_i_1_n_1 ,\counter_new_1_reg_165_reg[12]_i_1_n_2 ,\counter_new_1_reg_165_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [11:8]),
        .S(\counter_new_1_reg_165_reg[31] [12:9]));
  CARRY4 \counter_new_1_reg_165_reg[16]_i_1 
       (.CI(\counter_new_1_reg_165_reg[12]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[16]_i_1_n_0 ,\counter_new_1_reg_165_reg[16]_i_1_n_1 ,\counter_new_1_reg_165_reg[16]_i_1_n_2 ,\counter_new_1_reg_165_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [15:12]),
        .S(\counter_new_1_reg_165_reg[31] [16:13]));
  CARRY4 \counter_new_1_reg_165_reg[20]_i_1 
       (.CI(\counter_new_1_reg_165_reg[16]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[20]_i_1_n_0 ,\counter_new_1_reg_165_reg[20]_i_1_n_1 ,\counter_new_1_reg_165_reg[20]_i_1_n_2 ,\counter_new_1_reg_165_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [19:16]),
        .S(\counter_new_1_reg_165_reg[31] [20:17]));
  CARRY4 \counter_new_1_reg_165_reg[24]_i_1 
       (.CI(\counter_new_1_reg_165_reg[20]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[24]_i_1_n_0 ,\counter_new_1_reg_165_reg[24]_i_1_n_1 ,\counter_new_1_reg_165_reg[24]_i_1_n_2 ,\counter_new_1_reg_165_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [23:20]),
        .S(\counter_new_1_reg_165_reg[31] [24:21]));
  CARRY4 \counter_new_1_reg_165_reg[28]_i_1 
       (.CI(\counter_new_1_reg_165_reg[24]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[28]_i_1_n_0 ,\counter_new_1_reg_165_reg[28]_i_1_n_1 ,\counter_new_1_reg_165_reg[28]_i_1_n_2 ,\counter_new_1_reg_165_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [27:24]),
        .S(\counter_new_1_reg_165_reg[31] [28:25]));
  CARRY4 \counter_new_1_reg_165_reg[31]_i_14 
       (.CI(1'b0),
        .CO({\counter_new_1_reg_165_reg[31]_i_14_n_0 ,\counter_new_1_reg_165_reg[31]_i_14_n_1 ,\counter_new_1_reg_165_reg[31]_i_14_n_2 ,\counter_new_1_reg_165_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\counter_new_1_reg_165[31]_i_19_n_0 ,\counter_new_1_reg_165[31]_i_20_n_0 ,\counter_new_1_reg_165[31]_i_21_n_0 }),
        .O(\NLW_counter_new_1_reg_165_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\counter_new_1_reg_165[31]_i_22_n_0 ,\counter_new_1_reg_165[31]_i_23_n_0 ,\counter_new_1_reg_165[31]_i_24_n_0 ,\counter_new_1_reg_165[31]_i_25_n_0 }));
  CARRY4 \counter_new_1_reg_165_reg[31]_i_3 
       (.CI(\counter_new_1_reg_165_reg[28]_i_1_n_0 ),
        .CO({\NLW_counter_new_1_reg_165_reg[31]_i_3_CO_UNCONNECTED [3:2],\counter_new_1_reg_165_reg[31]_i_3_n_2 ,\counter_new_1_reg_165_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_new_1_reg_165_reg[31]_i_3_O_UNCONNECTED [3],\counter_load_reg_418_reg[31] [30:28]}),
        .S({1'b0,\counter_new_1_reg_165_reg[31] [31:29]}));
  CARRY4 \counter_new_1_reg_165_reg[31]_i_4 
       (.CI(\counter_new_1_reg_165_reg[31]_i_5_n_0 ),
        .CO({\NLW_counter_new_1_reg_165_reg[31]_i_4_CO_UNCONNECTED [3],CO,\counter_new_1_reg_165_reg[31]_i_4_n_2 ,\counter_new_1_reg_165_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\counter_load_reg_418_reg[31] [30],1'b0,1'b0}),
        .O(\NLW_counter_new_1_reg_165_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\counter_new_1_reg_165[31]_i_6_n_0 ,\counter_new_1_reg_165[31]_i_7_n_0 ,\counter_new_1_reg_165[31]_i_8_n_0 }));
  CARRY4 \counter_new_1_reg_165_reg[31]_i_5 
       (.CI(\counter_new_1_reg_165_reg[31]_i_9_n_0 ),
        .CO({\counter_new_1_reg_165_reg[31]_i_5_n_0 ,\counter_new_1_reg_165_reg[31]_i_5_n_1 ,\counter_new_1_reg_165_reg[31]_i_5_n_2 ,\counter_new_1_reg_165_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_new_1_reg_165_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\counter_new_1_reg_165[31]_i_10_n_0 ,\counter_new_1_reg_165[31]_i_11_n_0 ,\counter_new_1_reg_165[31]_i_12_n_0 ,\counter_new_1_reg_165[31]_i_13_n_0 }));
  CARRY4 \counter_new_1_reg_165_reg[31]_i_9 
       (.CI(\counter_new_1_reg_165_reg[31]_i_14_n_0 ),
        .CO({\counter_new_1_reg_165_reg[31]_i_9_n_0 ,\counter_new_1_reg_165_reg[31]_i_9_n_1 ,\counter_new_1_reg_165_reg[31]_i_9_n_2 ,\counter_new_1_reg_165_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_new_1_reg_165_reg[31]_i_9_O_UNCONNECTED [3:0]),
        .S({\counter_new_1_reg_165[31]_i_15_n_0 ,\counter_new_1_reg_165[31]_i_16_n_0 ,\counter_new_1_reg_165[31]_i_17_n_0 ,\counter_new_1_reg_165[31]_i_18_n_0 }));
  CARRY4 \counter_new_1_reg_165_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_new_1_reg_165_reg[4]_i_1_n_0 ,\counter_new_1_reg_165_reg[4]_i_1_n_1 ,\counter_new_1_reg_165_reg[4]_i_1_n_2 ,\counter_new_1_reg_165_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_new_1_reg_165_reg[31] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [3:0]),
        .S(\counter_new_1_reg_165_reg[31] [4:1]));
  CARRY4 \counter_new_1_reg_165_reg[8]_i_1 
       (.CI(\counter_new_1_reg_165_reg[4]_i_1_n_0 ),
        .CO({\counter_new_1_reg_165_reg[8]_i_1_n_0 ,\counter_new_1_reg_165_reg[8]_i_1_n_1 ,\counter_new_1_reg_165_reg[8]_i_1_n_2 ,\counter_new_1_reg_165_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_load_reg_418_reg[31] [7:4]),
        .S(\counter_new_1_reg_165_reg[31] [8:5]));
  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_0),
        .I1(s_axi_detec_data_ARADDR[4]),
        .I2(int_ap_done_i_3_n_0),
        .I3(Q[5]),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    int_ap_done_i_2
       (.I0(s_axi_detec_data_ARADDR[5]),
        .I1(s_axi_detec_data_ARADDR[6]),
        .I2(s_axi_detec_data_ARADDR[7]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(rstate[0]),
        .I5(rstate[1]),
        .O(int_ap_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_ap_done_i_3
       (.I0(s_axi_detec_data_ARADDR[0]),
        .I1(s_axi_detec_data_ARADDR[2]),
        .I2(s_axi_detec_data_ARADDR[1]),
        .I3(s_axi_detec_data_ARADDR[8]),
        .I4(s_axi_detec_data_ARADDR[3]),
        .I5(s_axi_detec_data_ARADDR[9]),
        .O(int_ap_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(reset));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(int_ap_ready),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(Q[5]),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_detec_data_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(reset));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_detec_data_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \int_finished[0]_i_1 
       (.I0(\tmp_1_reg_423_reg[0] ),
        .O(finished));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFF0000)) 
    int_finished_ap_vld_i_1
       (.I0(s_axi_detec_data_ARADDR[8]),
        .I1(s_axi_detec_data_ARADDR[1]),
        .I2(s_axi_detec_data_ARADDR[2]),
        .I3(int_finished_ap_vld_i_2_n_0),
        .I4(finished_ap_vld),
        .I5(int_finished_ap_vld),
        .O(int_finished_ap_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    int_finished_ap_vld_i_2
       (.I0(s_axi_detec_data_ARADDR[3]),
        .I1(s_axi_detec_data_ARADDR[9]),
        .I2(s_axi_detec_data_ARADDR[4]),
        .I3(s_axi_detec_data_ARADDR[0]),
        .I4(int_ap_done_i_2_n_0),
        .O(int_finished_ap_vld_i_2_n_0));
  FDRE int_finished_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_finished_ap_vld_i_1_n_0),
        .Q(int_finished_ap_vld),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_finished_reg[0] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(finished),
        .Q(int_finished),
        .R(reset));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_detec_data_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_detec_data_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_detec_data_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_detec_data_WVALID),
        .I1(\waddr_reg_n_0_[6] ),
        .I2(s_axi_detec_data_WSTRB[0]),
        .I3(\int_ier[1]_i_3_n_0 ),
        .I4(\int_ier[1]_i_4_n_0 ),
        .O(\int_ier[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \int_ier[1]_i_3 
       (.I0(\waddr_reg_n_0_[7] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(wstate[1]),
        .I3(wstate[0]),
        .I4(\waddr_reg_n_0_[4] ),
        .O(\int_ier[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_ier[1]_i_4 
       (.I0(\waddr_reg_n_0_[9] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[8] ),
        .I3(\waddr_reg_n_0_[0] ),
        .O(\int_ier[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(reset));
  system_detec_movement_0_0_detec_movement_detec_data_s_axi_ram int_inData
       (.COUNT(COUNT),
        .D({int_inData_n_80,int_inData_n_81,int_inData_n_82,int_inData_n_83,int_inData_n_84,int_inData_n_85,int_inData_n_86,int_inData_n_87,int_inData_n_88,int_inData_n_89,int_inData_n_90,int_inData_n_91,int_inData_n_92,int_inData_n_93,int_inData_n_94,int_inData_n_95,int_inData_n_96,int_inData_n_97,int_inData_n_98,int_inData_n_99,int_inData_n_100,int_inData_n_101,int_inData_n_102,int_inData_n_103,int_inData_n_104,int_inData_n_105,int_inData_n_106,int_inData_n_107,int_inData_n_108,int_inData_n_109,int_inData_n_110,int_inData_n_111}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .Q(rstate),
        .ap_clk(ap_clk),
        .d0(d0),
        .\diff_reg[0]_i_9_0 (\diff_reg[0]_i_9 ),
        .\gen_write[1].mem_reg_0 ({\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] }),
        .\gen_write[1].mem_reg_1 (int_inData_write_reg_n_0),
        .\gen_write[1].mem_reg_2 (\gen_write[1].mem_reg [7:2]),
        .\gen_write[1].mem_reg_3 (Q[3]),
        .\gen_write[1].mem_reg_4 (\gen_write[1].mem_reg_0 [7:2]),
        .int_ap_idle(int_ap_idle),
        .int_ap_ready(int_ap_ready),
        .int_auto_restart(int_auto_restart),
        .\int_inData_shift_reg[0] (\int_inData_shift_reg[0]_0 ),
        .\int_inData_shift_reg[0]_0 (\int_inData_shift_reg[0]_1 ),
        .\int_inData_shift_reg[0]_1 (\int_inData_shift_reg[0]_2 ),
        .\int_inData_shift_reg[0]_2 (\int_inData_shift_reg[0]_3 ),
        .\int_inData_shift_reg[0]_3 (\int_inData_shift_reg[0]_4 ),
        .\int_inData_shift_reg[0]_4 (\int_inData_shift_reg[0]_5 ),
        .\int_inData_shift_reg[0]_5 (\int_inData_shift_reg[0]_6 ),
        .\int_inData_shift_reg[0]_6 (\int_inData_shift_reg[0]_7 ),
        .q0(q0),
        .ram_reg_0_0_i_19_0(ram_reg_0_0_i_19),
        .ram_reg_0_0_i_19_1(ram_reg_0_0_i_19_0),
        .ram_reg_0_0_i_19_2(ram_reg_0_0_i_19_1),
        .ram_reg_0_0_i_19_3(ram_reg_0_0_i_19_2),
        .ram_reg_0_0_i_19_4(ram_reg_0_0_i_19_3),
        .ram_reg_0_1_i_2_0(ram_reg_0_1_i_2),
        .ram_reg_0_1_i_2_1(ram_reg_0_1_i_2_0),
        .ram_reg_0_1_i_2_2(ram_reg_0_1_i_2_1),
        .ram_reg_0_1_i_2_3(ram_reg_0_1_i_2_2),
        .ram_reg_0_2_i_3_0(ram_reg_0_2_i_3),
        .ram_reg_0_2_i_3_1(ram_reg_0_2_i_3_0),
        .ram_reg_0_2_i_3_2(ram_reg_0_2_i_3_1),
        .ram_reg_0_2_i_3_3(ram_reg_0_2_i_3_2),
        .ram_reg_0_3_i_2_0(ram_reg_0_3_i_2),
        .ram_reg_0_3_i_2_1(ram_reg_0_3_i_2_0),
        .ram_reg_0_3_i_2_2(ram_reg_0_3_i_2_1),
        .ram_reg_0_3_i_2_3(ram_reg_0_3_i_2_2),
        .ram_reg_0_4_i_2_0(ram_reg_0_4_i_2),
        .ram_reg_0_4_i_2_1(ram_reg_0_4_i_2_0),
        .ram_reg_0_4_i_2_2(ram_reg_0_4_i_2_1),
        .ram_reg_0_4_i_2_3(ram_reg_0_4_i_2_2),
        .ram_reg_0_5_i_3_0(ram_reg_0_5_i_3),
        .ram_reg_0_5_i_3_1(ram_reg_0_5_i_3_0),
        .ram_reg_0_5_i_3_2(ram_reg_0_5_i_3_1),
        .ram_reg_0_5_i_3_3(ram_reg_0_5_i_3_2),
        .ram_reg_0_6_i_2_0(ram_reg_0_6_i_2),
        .ram_reg_0_6_i_2_1(ram_reg_0_6_i_2_0),
        .ram_reg_0_6_i_2_2(ram_reg_0_6_i_2_1),
        .ram_reg_0_6_i_2_3(ram_reg_0_6_i_2_2),
        .ram_reg_0_7_i_3_0(ram_reg_0_7_i_3),
        .ram_reg_0_7_i_3_1(ram_reg_0_7_i_3_0),
        .ram_reg_0_7_i_3_2(ram_reg_0_7_i_3_1),
        .ram_reg_0_7_i_3_3(ram_reg_0_7_i_3_2),
        .\rdata_data_reg[0] (\rdata_data[0]_i_2_n_0 ),
        .\rdata_data_reg[0]_0 (\rdata_data[0]_i_3_n_0 ),
        .\rdata_data_reg[0]_1 (\rdata_data[31]_i_4_n_0 ),
        .\rdata_data_reg[0]_2 (\rdata_data_reg[0]_0 ),
        .\rdata_data_reg[10] (\rdata_data_reg[10]_0 ),
        .\rdata_data_reg[11] (\rdata_data_reg[11]_0 ),
        .\rdata_data_reg[12] (\rdata_data_reg[12]_0 ),
        .\rdata_data_reg[13] (\rdata_data_reg[13]_0 ),
        .\rdata_data_reg[14] (\rdata_data_reg[14]_0 ),
        .\rdata_data_reg[15] (\rdata_data_reg[15]_0 ),
        .\rdata_data_reg[16] (\rdata_data_reg[16]_0 ),
        .\rdata_data_reg[17] (\rdata_data_reg[17]_0 ),
        .\rdata_data_reg[18] (\rdata_data_reg[18]_0 ),
        .\rdata_data_reg[19] (\rdata_data_reg[19]_0 ),
        .\rdata_data_reg[1] (\rdata_data[1]_i_2_n_0 ),
        .\rdata_data_reg[1]_0 (\rdata_data[1]_i_3_n_0 ),
        .\rdata_data_reg[1]_1 (\rdata_data_reg[1]_0 ),
        .\rdata_data_reg[20] (\rdata_data_reg[20]_0 ),
        .\rdata_data_reg[21] (\rdata_data_reg[21]_0 ),
        .\rdata_data_reg[22] (\rdata_data_reg[22]_0 ),
        .\rdata_data_reg[23] (\rdata_data_reg[23]_0 ),
        .\rdata_data_reg[24] (\rdata_data_reg[24]_0 ),
        .\rdata_data_reg[25] (\rdata_data_reg[25]_0 ),
        .\rdata_data_reg[26] (\rdata_data_reg[26]_0 ),
        .\rdata_data_reg[27] (\rdata_data_reg[27]_0 ),
        .\rdata_data_reg[28] (\rdata_data_reg[28]_0 ),
        .\rdata_data_reg[29] (\rdata_data_reg[29]_0 ),
        .\rdata_data_reg[2] (\rdata_data[3]_i_3_n_0 ),
        .\rdata_data_reg[2]_0 (\rdata_data[7]_i_3_n_0 ),
        .\rdata_data_reg[2]_1 (\rdata_data[6]_i_2_n_0 ),
        .\rdata_data_reg[2]_2 (\rdata_data_reg[2]_0 ),
        .\rdata_data_reg[30] (\rdata_data_reg[30]_0 ),
        .\rdata_data_reg[31] (\rdata_data_reg[31]_0 ),
        .\rdata_data_reg[31]_0 (int_position[31:2]),
        .\rdata_data_reg[31]_1 (\rdata_data_reg[31]_1 ),
        .\rdata_data_reg[3] (\rdata_data_reg[3]_0 ),
        .\rdata_data_reg[4] (\rdata_data_reg[4]_0 ),
        .\rdata_data_reg[5] (\rdata_data_reg[5]_0 ),
        .\rdata_data_reg[6] (\rdata_data_reg[6]_0 ),
        .\rdata_data_reg[7] (\rdata_data_reg[7]_0 ),
        .\rdata_data_reg[8] (\rdata_data[31]_i_3_n_0 ),
        .\rdata_data_reg[8]_0 (\rdata_data_reg[8]_0 ),
        .\rdata_data_reg[9] (\rdata_data_reg[9]_0 ),
        .s_axi_detec_data_ARADDR(s_axi_detec_data_ARADDR),
        .s_axi_detec_data_ARVALID(s_axi_detec_data_ARVALID),
        .s_axi_detec_data_WDATA(s_axi_detec_data_WDATA),
        .s_axi_detec_data_WSTRB(s_axi_detec_data_WSTRB),
        .s_axi_detec_data_WVALID(s_axi_detec_data_WVALID),
        .tmp_11_fu_346_p2(tmp_11_fu_346_p2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    int_inData_read_i_1
       (.I0(s_axi_detec_data_ARADDR[9]),
        .I1(s_axi_detec_data_ARADDR[8]),
        .I2(s_axi_detec_data_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_inData_read0));
  FDRE int_inData_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_inData_read0),
        .Q(int_inData_read),
        .R(reset));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \int_inData_shift[0]_i_1 
       (.I0(\gen_write[1].mem_reg [0]),
        .I1(\gen_write[1].mem_reg_0 [0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(COUNT[3]),
        .O(\int_inData_shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \int_inData_shift[1]_i_1 
       (.I0(\gen_write[1].mem_reg [1]),
        .I1(\gen_write[1].mem_reg_0 [1]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(COUNT[4]),
        .O(\int_inData_shift[1]_i_1_n_0 ));
  FDRE \int_inData_shift_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_inData_shift[0]_i_1_n_0 ),
        .Q(COUNT[3]),
        .R(1'b0));
  FDRE \int_inData_shift_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_inData_shift[1]_i_1_n_0 ),
        .Q(COUNT[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h55D500C0)) 
    int_inData_write_i_1
       (.I0(s_axi_detec_data_WVALID),
        .I1(aw_hs),
        .I2(s_axi_detec_data_AWADDR[8]),
        .I3(s_axi_detec_data_AWADDR[9]),
        .I4(int_inData_write_reg_n_0),
        .O(int_inData_write_i_1_n_0));
  FDRE int_inData_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_inData_write_i_1_n_0),
        .Q(int_inData_write_reg_n_0),
        .R(reset));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_detec_data_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(Q[5]),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_detec_data_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(Q[5]),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(reset));
  LUT4 #(
    .INIT(16'hABA8)) 
    \int_motion[0]_i_1 
       (.I0(motion1),
        .I1(\tmp_1_reg_423_reg[0] ),
        .I2(counter_new_1_reg_1650),
        .I3(int_motion),
        .O(\int_motion[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_10 
       (.I0(diff_reg[27]),
        .I1(diff_reg[26]),
        .O(\int_motion[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_12 
       (.I0(diff_reg[24]),
        .I1(diff_reg[25]),
        .O(\int_motion[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_13 
       (.I0(diff_reg[22]),
        .I1(diff_reg[23]),
        .O(\int_motion[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_14 
       (.I0(diff_reg[20]),
        .I1(diff_reg[21]),
        .O(\int_motion[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_15 
       (.I0(diff_reg[18]),
        .I1(diff_reg[19]),
        .O(\int_motion[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_16 
       (.I0(diff_reg[25]),
        .I1(diff_reg[24]),
        .O(\int_motion[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_17 
       (.I0(diff_reg[23]),
        .I1(diff_reg[22]),
        .O(\int_motion[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_18 
       (.I0(diff_reg[21]),
        .I1(diff_reg[20]),
        .O(\int_motion[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_19 
       (.I0(diff_reg[19]),
        .I1(diff_reg[18]),
        .O(\int_motion[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h08088808)) 
    \int_motion[0]_i_2 
       (.I0(Q[1]),
        .I1(tmp_13_fu_320_p29_in),
        .I2(\counter_new_1_reg_165_reg[0] ),
        .I3(\j_1_reg_143_reg[5] ),
        .I4(CO),
        .O(motion1));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_21 
       (.I0(diff_reg[16]),
        .I1(diff_reg[17]),
        .O(\int_motion[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_22 
       (.I0(diff_reg[14]),
        .I1(diff_reg[15]),
        .O(\int_motion[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_23 
       (.I0(diff_reg[12]),
        .I1(diff_reg[13]),
        .O(\int_motion[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_24 
       (.I0(diff_reg[10]),
        .I1(diff_reg[11]),
        .O(\int_motion[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_25 
       (.I0(diff_reg[17]),
        .I1(diff_reg[16]),
        .O(\int_motion[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_26 
       (.I0(diff_reg[15]),
        .I1(diff_reg[14]),
        .O(\int_motion[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_27 
       (.I0(diff_reg[13]),
        .I1(diff_reg[12]),
        .O(\int_motion[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_28 
       (.I0(diff_reg[11]),
        .I1(diff_reg[10]),
        .O(\int_motion[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_29 
       (.I0(diff_reg[2]),
        .I1(diff_reg[3]),
        .O(\int_motion[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \int_motion[0]_i_30 
       (.I0(diff_reg[8]),
        .I1(diff_reg[9]),
        .O(\int_motion[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_motion[0]_i_31 
       (.I0(diff_reg[7]),
        .I1(diff_reg[6]),
        .O(\int_motion[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_motion[0]_i_32 
       (.I0(diff_reg[5]),
        .I1(diff_reg[4]),
        .O(\int_motion[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_33 
       (.I0(diff_reg[3]),
        .I1(diff_reg[2]),
        .O(\int_motion[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \int_motion[0]_i_5 
       (.I0(diff_reg[30]),
        .I1(diff_reg[31]),
        .O(\int_motion[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_6 
       (.I0(diff_reg[28]),
        .I1(diff_reg[29]),
        .O(\int_motion[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_motion[0]_i_7 
       (.I0(diff_reg[26]),
        .I1(diff_reg[27]),
        .O(\int_motion[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_8 
       (.I0(diff_reg[30]),
        .I1(diff_reg[31]),
        .O(\int_motion[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \int_motion[0]_i_9 
       (.I0(diff_reg[29]),
        .I1(diff_reg[28]),
        .O(\int_motion[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    int_motion_ap_vld_i_1
       (.I0(counter_new_1_reg_1650),
        .I1(\tmp_1_reg_423_reg[0] ),
        .I2(int_motion_ap_vld_i_2_n_0),
        .I3(int_motion_ap_vld_i_3_n_0),
        .I4(s_axi_detec_data_ARADDR[3]),
        .I5(int_motion_ap_vld),
        .O(int_motion_ap_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    int_motion_ap_vld_i_2
       (.I0(s_axi_detec_data_ARADDR[0]),
        .I1(s_axi_detec_data_ARADDR[9]),
        .I2(s_axi_detec_data_ARADDR[4]),
        .I3(int_ap_done_i_2_n_0),
        .O(int_motion_ap_vld_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    int_motion_ap_vld_i_3
       (.I0(s_axi_detec_data_ARADDR[8]),
        .I1(s_axi_detec_data_ARADDR[1]),
        .I2(s_axi_detec_data_ARADDR[2]),
        .O(int_motion_ap_vld_i_3_n_0));
  FDRE int_motion_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_motion_ap_vld_i_1_n_0),
        .Q(int_motion_ap_vld),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_motion_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_motion[0]_i_1_n_0 ),
        .Q(int_motion),
        .R(reset));
  CARRY4 \int_motion_reg[0]_i_11 
       (.CI(\int_motion_reg[0]_i_20_n_0 ),
        .CO({\int_motion_reg[0]_i_11_n_0 ,\int_motion_reg[0]_i_11_n_1 ,\int_motion_reg[0]_i_11_n_2 ,\int_motion_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_motion[0]_i_21_n_0 ,\int_motion[0]_i_22_n_0 ,\int_motion[0]_i_23_n_0 ,\int_motion[0]_i_24_n_0 }),
        .O(\NLW_int_motion_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\int_motion[0]_i_25_n_0 ,\int_motion[0]_i_26_n_0 ,\int_motion[0]_i_27_n_0 ,\int_motion[0]_i_28_n_0 }));
  CARRY4 \int_motion_reg[0]_i_20 
       (.CI(1'b0),
        .CO({\int_motion_reg[0]_i_20_n_0 ,\int_motion_reg[0]_i_20_n_1 ,\int_motion_reg[0]_i_20_n_2 ,\int_motion_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({diff_reg[9],1'b0,1'b0,\int_motion[0]_i_29_n_0 }),
        .O(\NLW_int_motion_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\int_motion[0]_i_30_n_0 ,\int_motion[0]_i_31_n_0 ,\int_motion[0]_i_32_n_0 ,\int_motion[0]_i_33_n_0 }));
  CARRY4 \int_motion_reg[0]_i_3 
       (.CI(\int_motion_reg[0]_i_4_n_0 ),
        .CO({\NLW_int_motion_reg[0]_i_3_CO_UNCONNECTED [3],tmp_13_fu_320_p29_in,\int_motion_reg[0]_i_3_n_2 ,\int_motion_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\int_motion[0]_i_5_n_0 ,\int_motion[0]_i_6_n_0 ,\int_motion[0]_i_7_n_0 }),
        .O(\NLW_int_motion_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\int_motion[0]_i_8_n_0 ,\int_motion[0]_i_9_n_0 ,\int_motion[0]_i_10_n_0 }));
  CARRY4 \int_motion_reg[0]_i_4 
       (.CI(\int_motion_reg[0]_i_11_n_0 ),
        .CO({\int_motion_reg[0]_i_4_n_0 ,\int_motion_reg[0]_i_4_n_1 ,\int_motion_reg[0]_i_4_n_2 ,\int_motion_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_motion[0]_i_12_n_0 ,\int_motion[0]_i_13_n_0 ,\int_motion[0]_i_14_n_0 ,\int_motion[0]_i_15_n_0 }),
        .O(\NLW_int_motion_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\int_motion[0]_i_16_n_0 ,\int_motion[0]_i_17_n_0 ,\int_motion[0]_i_18_n_0 ,\int_motion[0]_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[0]_i_1 
       (.I0(diff_reg[0]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[10]_i_1 
       (.I0(diff_reg[10]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[11]_i_1 
       (.I0(diff_reg[11]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[12]_i_1 
       (.I0(diff_reg[12]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[13]_i_1 
       (.I0(diff_reg[13]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[14]_i_1 
       (.I0(diff_reg[14]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[15]_i_1 
       (.I0(diff_reg[15]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[16]_i_1 
       (.I0(diff_reg[16]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[17]_i_1 
       (.I0(diff_reg[17]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[18]_i_1 
       (.I0(diff_reg[18]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[19]_i_1 
       (.I0(diff_reg[19]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[1]_i_1 
       (.I0(diff_reg[1]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[20]_i_1 
       (.I0(diff_reg[20]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[21]_i_1 
       (.I0(diff_reg[21]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[22]_i_1 
       (.I0(diff_reg[22]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[23]_i_1 
       (.I0(diff_reg[23]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[24]_i_1 
       (.I0(diff_reg[24]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[25]_i_1 
       (.I0(diff_reg[25]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[26]_i_1 
       (.I0(diff_reg[26]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[27]_i_1 
       (.I0(diff_reg[27]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[27]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[28]_i_1 
       (.I0(diff_reg[28]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[29]_i_1 
       (.I0(diff_reg[29]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[2]_i_1 
       (.I0(diff_reg[2]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[30]_i_1 
       (.I0(diff_reg[30]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[30]));
  LUT3 #(
    .INIT(8'h8A)) 
    \int_position[31]_i_1 
       (.I0(Q[1]),
        .I1(\j_1_reg_143_reg[5] ),
        .I2(\counter_new_1_reg_165_reg[0] ),
        .O(finished_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[31]_i_2 
       (.I0(diff_reg[31]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \int_position[31]_i_3 
       (.I0(CO),
        .I1(\counter_new_1_reg_165_reg[0] ),
        .I2(Q[1]),
        .I3(\j_1_reg_143_reg[5] ),
        .O(\tmp_1_reg_423_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[3]_i_1 
       (.I0(diff_reg[3]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[4]_i_1 
       (.I0(diff_reg[4]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[5]_i_1 
       (.I0(diff_reg[5]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[6]_i_1 
       (.I0(diff_reg[6]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[7]_i_1 
       (.I0(diff_reg[7]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[8]_i_1 
       (.I0(diff_reg[8]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_position[9]_i_1 
       (.I0(diff_reg[9]),
        .I1(\tmp_1_reg_423_reg[0] ),
        .O(position[9]));
  LUT5 #(
    .INIT(32'hFFF7FF00)) 
    int_position_ap_vld_i_1
       (.I0(int_motion_ap_vld_i_2_n_0),
        .I1(s_axi_detec_data_ARADDR[3]),
        .I2(int_motion_ap_vld_i_3_n_0),
        .I3(finished_ap_vld),
        .I4(int_position_ap_vld),
        .O(int_position_ap_vld_i_1_n_0));
  FDRE int_position_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_position_ap_vld_i_1_n_0),
        .Q(int_position_ap_vld),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[0] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[0]),
        .Q(int_position[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[10] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[10]),
        .Q(int_position[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[11] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[11]),
        .Q(int_position[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[12] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[12]),
        .Q(int_position[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[13] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[13]),
        .Q(int_position[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[14] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[14]),
        .Q(int_position[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[15] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[15]),
        .Q(int_position[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[16] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[16]),
        .Q(int_position[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[17] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[17]),
        .Q(int_position[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[18] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[18]),
        .Q(int_position[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[19] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[19]),
        .Q(int_position[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[1] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[1]),
        .Q(int_position[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[20] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[20]),
        .Q(int_position[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[21] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[21]),
        .Q(int_position[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[22] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[22]),
        .Q(int_position[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[23] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[23]),
        .Q(int_position[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[24] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[24]),
        .Q(int_position[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[25] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[25]),
        .Q(int_position[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[26] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[26]),
        .Q(int_position[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[27] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[27]),
        .Q(int_position[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[28] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[28]),
        .Q(int_position[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[29] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[29]),
        .Q(int_position[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[2] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[2]),
        .Q(int_position[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[30] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[30]),
        .Q(int_position[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[31] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[31]),
        .Q(int_position[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[3] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[3]),
        .Q(int_position[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[4] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[4]),
        .Q(int_position[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[5] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[5]),
        .Q(int_position[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[6] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[6]),
        .Q(int_position[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[7] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[7]),
        .Q(int_position[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[8] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[8]),
        .Q(int_position[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \int_position_reg[9] 
       (.C(ap_clk),
        .CE(finished_ap_vld),
        .D(position[9]),
        .Q(int_position[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \rdata_data[0]_i_2 
       (.I0(int_ap_done_i_2_n_0),
        .I1(\rdata_data[0]_i_5_n_0 ),
        .I2(s_axi_detec_data_ARADDR[4]),
        .I3(s_axi_detec_data_ARADDR[0]),
        .I4(s_axi_detec_data_ARADDR[1]),
        .I5(s_axi_detec_data_ARADDR[8]),
        .O(\rdata_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata_data[0]_i_3 
       (.I0(int_finished),
        .I1(int_finished_ap_vld),
        .I2(s_axi_detec_data_ARADDR[4]),
        .I3(s_axi_detec_data_ARADDR[2]),
        .I4(\rdata_data[0]_i_6_n_0 ),
        .I5(\rdata_data[0]_i_7_n_0 ),
        .O(\rdata_data[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rdata_data[0]_i_5 
       (.I0(s_axi_detec_data_ARADDR[3]),
        .I1(s_axi_detec_data_ARADDR[9]),
        .O(\rdata_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \rdata_data[0]_i_6 
       (.I0(int_motion),
        .I1(int_position[0]),
        .I2(ap_start),
        .I3(s_axi_detec_data_ARADDR[3]),
        .I4(s_axi_detec_data_ARADDR[9]),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \rdata_data[0]_i_7 
       (.I0(int_motion_ap_vld),
        .I1(int_position_ap_vld),
        .I2(int_gie_reg_n_0),
        .I3(s_axi_detec_data_ARADDR[3]),
        .I4(s_axi_detec_data_ARADDR[9]),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\rdata_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \rdata_data[1]_i_2 
       (.I0(s_axi_detec_data_ARADDR[4]),
        .I1(s_axi_detec_data_ARADDR[3]),
        .I2(s_axi_detec_data_ARADDR[9]),
        .I3(p_1_in),
        .I4(s_axi_detec_data_ARADDR[2]),
        .I5(\rdata_data[1]_i_5_n_0 ),
        .O(\rdata_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata_data[1]_i_3 
       (.I0(\rdata_data[31]_i_4_n_0 ),
        .I1(s_axi_detec_data_ARADDR[7]),
        .I2(s_axi_detec_data_ARADDR[6]),
        .I3(s_axi_detec_data_ARADDR[5]),
        .I4(s_axi_detec_data_ARADDR[4]),
        .O(\rdata_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22CC333022CC0030)) 
    \rdata_data[1]_i_5 
       (.I0(int_position[1]),
        .I1(s_axi_detec_data_ARADDR[4]),
        .I2(int_ap_done),
        .I3(s_axi_detec_data_ARADDR[3]),
        .I4(s_axi_detec_data_ARADDR[9]),
        .I5(p_0_in),
        .O(\rdata_data[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \rdata_data[31]_i_1 
       (.I0(int_inData_read),
        .I1(s_axi_detec_data_ARVALID),
        .I2(rstate[0]),
        .I3(rstate[1]),
        .O(\rdata_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \rdata_data[31]_i_3 
       (.I0(s_axi_detec_data_ARADDR[0]),
        .I1(s_axi_detec_data_ARADDR[2]),
        .I2(\rdata_data[31]_i_4_n_0 ),
        .I3(\rdata_data[31]_i_7_n_0 ),
        .I4(\rdata_data[31]_i_8_n_0 ),
        .O(\rdata_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rdata_data[31]_i_4 
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(s_axi_detec_data_ARVALID),
        .O(\rdata_data[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rdata_data[31]_i_7 
       (.I0(s_axi_detec_data_ARADDR[3]),
        .I1(s_axi_detec_data_ARADDR[4]),
        .I2(s_axi_detec_data_ARADDR[9]),
        .O(\rdata_data[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata_data[31]_i_8 
       (.I0(s_axi_detec_data_ARADDR[5]),
        .I1(s_axi_detec_data_ARADDR[1]),
        .I2(s_axi_detec_data_ARADDR[6]),
        .I3(s_axi_detec_data_ARADDR[7]),
        .I4(s_axi_detec_data_ARADDR[8]),
        .O(\rdata_data[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \rdata_data[31]_i_9 
       (.I0(int_inData_write_reg_n_0),
        .I1(s_axi_detec_data_WVALID),
        .I2(s_axi_detec_data_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(int_inData_write_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata_data[3]_i_3 
       (.I0(s_axi_detec_data_ARADDR[3]),
        .I1(s_axi_detec_data_ARADDR[9]),
        .I2(s_axi_detec_data_ARADDR[4]),
        .O(\rdata_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rdata_data[6]_i_2 
       (.I0(s_axi_detec_data_ARADDR[9]),
        .I1(s_axi_detec_data_ARADDR[4]),
        .I2(s_axi_detec_data_ARADDR[3]),
        .I3(\rdata_data[7]_i_3_n_0 ),
        .O(\rdata_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[7]_i_3 
       (.I0(s_axi_detec_data_ARADDR[8]),
        .I1(s_axi_detec_data_ARADDR[7]),
        .I2(s_axi_detec_data_ARADDR[6]),
        .I3(s_axi_detec_data_ARADDR[1]),
        .I4(s_axi_detec_data_ARADDR[5]),
        .I5(\rdata_data[7]_i_5_n_0 ),
        .O(\rdata_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata_data[7]_i_5 
       (.I0(s_axi_detec_data_ARVALID),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .I3(s_axi_detec_data_ARADDR[2]),
        .I4(s_axi_detec_data_ARADDR[0]),
        .O(\rdata_data[7]_i_5_n_0 ));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_111),
        .Q(s_axi_detec_data_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_101),
        .Q(s_axi_detec_data_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_100),
        .Q(s_axi_detec_data_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_99),
        .Q(s_axi_detec_data_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_98),
        .Q(s_axi_detec_data_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_97),
        .Q(s_axi_detec_data_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_96),
        .Q(s_axi_detec_data_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_95),
        .Q(s_axi_detec_data_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_94),
        .Q(s_axi_detec_data_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_93),
        .Q(s_axi_detec_data_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_92),
        .Q(s_axi_detec_data_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_110),
        .Q(s_axi_detec_data_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_91),
        .Q(s_axi_detec_data_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_90),
        .Q(s_axi_detec_data_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_89),
        .Q(s_axi_detec_data_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_88),
        .Q(s_axi_detec_data_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_87),
        .Q(s_axi_detec_data_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_86),
        .Q(s_axi_detec_data_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_85),
        .Q(s_axi_detec_data_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_84),
        .Q(s_axi_detec_data_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_83),
        .Q(s_axi_detec_data_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_82),
        .Q(s_axi_detec_data_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_109),
        .Q(s_axi_detec_data_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_81),
        .Q(s_axi_detec_data_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_80),
        .Q(s_axi_detec_data_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_108),
        .Q(s_axi_detec_data_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_107),
        .Q(s_axi_detec_data_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_106),
        .Q(s_axi_detec_data_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_105),
        .Q(s_axi_detec_data_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_104),
        .Q(s_axi_detec_data_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_103),
        .Q(s_axi_detec_data_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(\rdata_data[31]_i_1_n_0 ),
        .D(int_inData_n_102),
        .Q(s_axi_detec_data_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000BBF0)) 
    \rstate[0]_i_1 
       (.I0(int_inData_read),
        .I1(s_axi_detec_data_RREADY),
        .I2(s_axi_detec_data_ARVALID),
        .I3(rstate[0]),
        .I4(rstate[1]),
        .O(\rstate[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rstate[0]_i_1_n_0 ),
        .Q(rstate[0]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rstate[1]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_detec_data_ARREADY_INST_0
       (.I0(rstate[0]),
        .I1(rstate[1]),
        .O(s_axi_detec_data_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_detec_data_AWREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_detec_data_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_detec_data_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_detec_data_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_detec_data_RVALID_INST_0
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .I2(int_inData_read),
        .O(s_axi_detec_data_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_detec_data_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_detec_data_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \tmp_15_reg_435[14]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(pre_valid),
        .I3(\j_1_reg_143_reg[0] ),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tmp_18_reg_430[14]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(pre_valid),
        .I3(\j_1_reg_143_reg[0] ),
        .O(SR));
  LUT3 #(
    .INIT(8'h10)) 
    \waddr[9]_i_1 
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .I2(s_axi_detec_data_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[8]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_detec_data_AWADDR[9]),
        .Q(\waddr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h005C)) 
    \wstate[0]_i_1 
       (.I0(s_axi_detec_data_WVALID),
        .I1(s_axi_detec_data_AWVALID),
        .I2(wstate[0]),
        .I3(wstate[1]),
        .O(\wstate[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \wstate[1]_i_2 
       (.I0(s_axi_detec_data_BREADY),
        .I1(wstate[1]),
        .I2(wstate[0]),
        .I3(s_axi_detec_data_WVALID),
        .O(\wstate[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\wstate[1]_i_2_n_0 ),
        .Q(wstate[1]),
        .S(reset));
endmodule

(* ORIG_REF_NAME = "detec_movement_detec_data_s_axi_ram" *) 
module system_detec_movement_0_0_detec_movement_detec_data_s_axi_ram
   (DOADO,
    DOBDO,
    d0,
    \int_inData_shift_reg[0] ,
    \int_inData_shift_reg[0]_0 ,
    \int_inData_shift_reg[0]_1 ,
    \int_inData_shift_reg[0]_2 ,
    \int_inData_shift_reg[0]_3 ,
    \int_inData_shift_reg[0]_4 ,
    \int_inData_shift_reg[0]_5 ,
    \int_inData_shift_reg[0]_6 ,
    D,
    tmp_11_fu_346_p2,
    \diff_reg[0]_i_9_0 ,
    ap_clk,
    s_axi_detec_data_WDATA,
    COUNT,
    ram_reg_0_0_i_19_0,
    ram_reg_0_0_i_19_1,
    ram_reg_0_1_i_2_0,
    ram_reg_0_2_i_3_0,
    ram_reg_0_3_i_2_0,
    ram_reg_0_4_i_2_0,
    ram_reg_0_5_i_3_0,
    ram_reg_0_6_i_2_0,
    ram_reg_0_7_i_3_0,
    ram_reg_0_0_i_19_2,
    ram_reg_0_1_i_2_1,
    ram_reg_0_2_i_3_1,
    ram_reg_0_3_i_2_1,
    ram_reg_0_4_i_2_1,
    ram_reg_0_5_i_3_1,
    ram_reg_0_6_i_2_1,
    ram_reg_0_7_i_3_1,
    ram_reg_0_0_i_19_3,
    ram_reg_0_1_i_2_2,
    ram_reg_0_2_i_3_2,
    ram_reg_0_3_i_2_2,
    ram_reg_0_4_i_2_2,
    ram_reg_0_5_i_3_2,
    ram_reg_0_6_i_2_2,
    ram_reg_0_7_i_3_2,
    ram_reg_0_0_i_19_4,
    ram_reg_0_1_i_2_3,
    ram_reg_0_2_i_3_3,
    ram_reg_0_3_i_2_3,
    ram_reg_0_4_i_2_3,
    ram_reg_0_5_i_3_3,
    ram_reg_0_6_i_2_3,
    ram_reg_0_7_i_3_3,
    \rdata_data_reg[0] ,
    \rdata_data_reg[0]_0 ,
    \rdata_data_reg[0]_1 ,
    \rdata_data_reg[31] ,
    \rdata_data_reg[0]_2 ,
    \rdata_data_reg[1] ,
    s_axi_detec_data_ARADDR,
    \rdata_data_reg[1]_0 ,
    \rdata_data_reg[1]_1 ,
    s_axi_detec_data_ARVALID,
    Q,
    \rdata_data_reg[2] ,
    int_ap_idle,
    \rdata_data_reg[2]_0 ,
    \rdata_data_reg[2]_1 ,
    \rdata_data_reg[31]_0 ,
    \rdata_data_reg[2]_2 ,
    int_ap_ready,
    \rdata_data_reg[3] ,
    \rdata_data_reg[4] ,
    \rdata_data_reg[5] ,
    \rdata_data_reg[6] ,
    int_auto_restart,
    \rdata_data_reg[7] ,
    \rdata_data_reg[8] ,
    \rdata_data_reg[8]_0 ,
    \rdata_data_reg[9] ,
    \rdata_data_reg[10] ,
    \rdata_data_reg[11] ,
    \rdata_data_reg[12] ,
    \rdata_data_reg[13] ,
    \rdata_data_reg[14] ,
    \rdata_data_reg[15] ,
    \rdata_data_reg[16] ,
    \rdata_data_reg[17] ,
    \rdata_data_reg[18] ,
    \rdata_data_reg[19] ,
    \rdata_data_reg[20] ,
    \rdata_data_reg[21] ,
    \rdata_data_reg[22] ,
    \rdata_data_reg[23] ,
    \rdata_data_reg[24] ,
    \rdata_data_reg[25] ,
    \rdata_data_reg[26] ,
    \rdata_data_reg[27] ,
    \rdata_data_reg[28] ,
    \rdata_data_reg[29] ,
    \rdata_data_reg[30] ,
    \rdata_data_reg[31]_1 ,
    \gen_write[1].mem_reg_0 ,
    s_axi_detec_data_WSTRB,
    \gen_write[1].mem_reg_1 ,
    s_axi_detec_data_WVALID,
    \gen_write[1].mem_reg_2 ,
    \gen_write[1].mem_reg_3 ,
    \gen_write[1].mem_reg_4 ,
    q0);
  output [31:0]DOADO;
  output [31:0]DOBDO;
  output [7:0]d0;
  output \int_inData_shift_reg[0] ;
  output \int_inData_shift_reg[0]_0 ;
  output \int_inData_shift_reg[0]_1 ;
  output \int_inData_shift_reg[0]_2 ;
  output \int_inData_shift_reg[0]_3 ;
  output \int_inData_shift_reg[0]_4 ;
  output \int_inData_shift_reg[0]_5 ;
  output \int_inData_shift_reg[0]_6 ;
  output [31:0]D;
  output [5:0]tmp_11_fu_346_p2;
  output [0:0]\diff_reg[0]_i_9_0 ;
  input ap_clk;
  input [31:0]s_axi_detec_data_WDATA;
  input [1:0]COUNT;
  input ram_reg_0_0_i_19_0;
  input ram_reg_0_0_i_19_1;
  input ram_reg_0_1_i_2_0;
  input ram_reg_0_2_i_3_0;
  input ram_reg_0_3_i_2_0;
  input ram_reg_0_4_i_2_0;
  input ram_reg_0_5_i_3_0;
  input ram_reg_0_6_i_2_0;
  input ram_reg_0_7_i_3_0;
  input ram_reg_0_0_i_19_2;
  input ram_reg_0_1_i_2_1;
  input ram_reg_0_2_i_3_1;
  input ram_reg_0_3_i_2_1;
  input ram_reg_0_4_i_2_1;
  input ram_reg_0_5_i_3_1;
  input ram_reg_0_6_i_2_1;
  input ram_reg_0_7_i_3_1;
  input ram_reg_0_0_i_19_3;
  input ram_reg_0_1_i_2_2;
  input ram_reg_0_2_i_3_2;
  input ram_reg_0_3_i_2_2;
  input ram_reg_0_4_i_2_2;
  input ram_reg_0_5_i_3_2;
  input ram_reg_0_6_i_2_2;
  input ram_reg_0_7_i_3_2;
  input ram_reg_0_0_i_19_4;
  input ram_reg_0_1_i_2_3;
  input ram_reg_0_2_i_3_3;
  input ram_reg_0_3_i_2_3;
  input ram_reg_0_4_i_2_3;
  input ram_reg_0_5_i_3_3;
  input ram_reg_0_6_i_2_3;
  input ram_reg_0_7_i_3_3;
  input \rdata_data_reg[0] ;
  input \rdata_data_reg[0]_0 ;
  input \rdata_data_reg[0]_1 ;
  input \rdata_data_reg[31] ;
  input \rdata_data_reg[0]_2 ;
  input \rdata_data_reg[1] ;
  input [9:0]s_axi_detec_data_ARADDR;
  input \rdata_data_reg[1]_0 ;
  input \rdata_data_reg[1]_1 ;
  input s_axi_detec_data_ARVALID;
  input [1:0]Q;
  input \rdata_data_reg[2] ;
  input int_ap_idle;
  input \rdata_data_reg[2]_0 ;
  input \rdata_data_reg[2]_1 ;
  input [29:0]\rdata_data_reg[31]_0 ;
  input \rdata_data_reg[2]_2 ;
  input int_ap_ready;
  input \rdata_data_reg[3] ;
  input \rdata_data_reg[4] ;
  input \rdata_data_reg[5] ;
  input \rdata_data_reg[6] ;
  input int_auto_restart;
  input \rdata_data_reg[7] ;
  input \rdata_data_reg[8] ;
  input \rdata_data_reg[8]_0 ;
  input \rdata_data_reg[9] ;
  input \rdata_data_reg[10] ;
  input \rdata_data_reg[11] ;
  input \rdata_data_reg[12] ;
  input \rdata_data_reg[13] ;
  input \rdata_data_reg[14] ;
  input \rdata_data_reg[15] ;
  input \rdata_data_reg[16] ;
  input \rdata_data_reg[17] ;
  input \rdata_data_reg[18] ;
  input \rdata_data_reg[19] ;
  input \rdata_data_reg[20] ;
  input \rdata_data_reg[21] ;
  input \rdata_data_reg[22] ;
  input \rdata_data_reg[23] ;
  input \rdata_data_reg[24] ;
  input \rdata_data_reg[25] ;
  input \rdata_data_reg[26] ;
  input \rdata_data_reg[27] ;
  input \rdata_data_reg[28] ;
  input \rdata_data_reg[29] ;
  input \rdata_data_reg[30] ;
  input \rdata_data_reg[31]_1 ;
  input [5:0]\gen_write[1].mem_reg_0 ;
  input [3:0]s_axi_detec_data_WSTRB;
  input \gen_write[1].mem_reg_1 ;
  input s_axi_detec_data_WVALID;
  input [5:0]\gen_write[1].mem_reg_2 ;
  input [0:0]\gen_write[1].mem_reg_3 ;
  input [5:0]\gen_write[1].mem_reg_4 ;
  input [7:0]q0;

  wire [1:0]COUNT;
  wire [31:0]D;
  wire [31:0]DOADO;
  wire [31:0]DOBDO;
  wire [1:0]Q;
  wire [5:0]address1;
  wire ap_clk;
  wire [7:0]d0;
  wire \diff[0]_i_13_n_0 ;
  wire \diff[0]_i_14_n_0 ;
  wire \diff[0]_i_15_n_0 ;
  wire \diff[0]_i_16_n_0 ;
  wire \diff[0]_i_17_n_0 ;
  wire \diff[0]_i_18_n_0 ;
  wire \diff[0]_i_19_n_0 ;
  wire \diff[0]_i_20_n_0 ;
  wire \diff[0]_i_21_n_0 ;
  wire \diff[0]_i_22_n_0 ;
  wire \diff[0]_i_23_n_0 ;
  wire \diff[0]_i_24_n_0 ;
  wire \diff[0]_i_25_n_0 ;
  wire \diff[0]_i_26_n_0 ;
  wire \diff[0]_i_27_n_0 ;
  wire \diff[0]_i_28_n_0 ;
  wire \diff_reg[0]_i_10_n_0 ;
  wire \diff_reg[0]_i_10_n_1 ;
  wire \diff_reg[0]_i_10_n_2 ;
  wire \diff_reg[0]_i_10_n_3 ;
  wire [0:0]\diff_reg[0]_i_9_0 ;
  wire \diff_reg[0]_i_9_n_0 ;
  wire \diff_reg[0]_i_9_n_1 ;
  wire \diff_reg[0]_i_9_n_2 ;
  wire \diff_reg[0]_i_9_n_3 ;
  wire [5:0]\gen_write[1].mem_reg_0 ;
  wire \gen_write[1].mem_reg_1 ;
  wire [5:0]\gen_write[1].mem_reg_2 ;
  wire [0:0]\gen_write[1].mem_reg_3 ;
  wire [5:0]\gen_write[1].mem_reg_4 ;
  wire \gen_write[1].mem_reg_i_13_n_0 ;
  wire \gen_write[1].mem_reg_i_14_n_0 ;
  wire \gen_write[1].mem_reg_i_15_n_0 ;
  wire \gen_write[1].mem_reg_i_16_n_0 ;
  wire [7:2]inData_address0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_auto_restart;
  wire \int_inData_shift_reg[0] ;
  wire \int_inData_shift_reg[0]_0 ;
  wire \int_inData_shift_reg[0]_1 ;
  wire \int_inData_shift_reg[0]_2 ;
  wire \int_inData_shift_reg[0]_3 ;
  wire \int_inData_shift_reg[0]_4 ;
  wire \int_inData_shift_reg[0]_5 ;
  wire \int_inData_shift_reg[0]_6 ;
  wire [7:0]q0;
  wire ram_reg_0_0_i_19_0;
  wire ram_reg_0_0_i_19_1;
  wire ram_reg_0_0_i_19_2;
  wire ram_reg_0_0_i_19_3;
  wire ram_reg_0_0_i_19_4;
  wire ram_reg_0_0_i_20_n_0;
  wire ram_reg_0_0_i_21_n_0;
  wire ram_reg_0_0_i_22_n_0;
  wire ram_reg_0_0_i_23_n_0;
  wire ram_reg_0_1_i_2_0;
  wire ram_reg_0_1_i_2_1;
  wire ram_reg_0_1_i_2_2;
  wire ram_reg_0_1_i_2_3;
  wire ram_reg_0_1_i_3_n_0;
  wire ram_reg_0_1_i_4_n_0;
  wire ram_reg_0_1_i_5_n_0;
  wire ram_reg_0_1_i_6_n_0;
  wire ram_reg_0_2_i_3_0;
  wire ram_reg_0_2_i_3_1;
  wire ram_reg_0_2_i_3_2;
  wire ram_reg_0_2_i_3_3;
  wire ram_reg_0_2_i_4_n_0;
  wire ram_reg_0_2_i_5_n_0;
  wire ram_reg_0_2_i_6_n_0;
  wire ram_reg_0_2_i_7_n_0;
  wire ram_reg_0_3_i_2_0;
  wire ram_reg_0_3_i_2_1;
  wire ram_reg_0_3_i_2_2;
  wire ram_reg_0_3_i_2_3;
  wire ram_reg_0_3_i_3_n_0;
  wire ram_reg_0_3_i_4_n_0;
  wire ram_reg_0_3_i_5_n_0;
  wire ram_reg_0_3_i_6_n_0;
  wire ram_reg_0_4_i_2_0;
  wire ram_reg_0_4_i_2_1;
  wire ram_reg_0_4_i_2_2;
  wire ram_reg_0_4_i_2_3;
  wire ram_reg_0_4_i_3_n_0;
  wire ram_reg_0_4_i_4_n_0;
  wire ram_reg_0_4_i_5_n_0;
  wire ram_reg_0_4_i_6_n_0;
  wire ram_reg_0_5_i_3_0;
  wire ram_reg_0_5_i_3_1;
  wire ram_reg_0_5_i_3_2;
  wire ram_reg_0_5_i_3_3;
  wire ram_reg_0_5_i_4_n_0;
  wire ram_reg_0_5_i_5_n_0;
  wire ram_reg_0_5_i_6_n_0;
  wire ram_reg_0_5_i_7_n_0;
  wire ram_reg_0_6_i_2_0;
  wire ram_reg_0_6_i_2_1;
  wire ram_reg_0_6_i_2_2;
  wire ram_reg_0_6_i_2_3;
  wire ram_reg_0_6_i_3_n_0;
  wire ram_reg_0_6_i_4_n_0;
  wire ram_reg_0_6_i_5_n_0;
  wire ram_reg_0_6_i_6_n_0;
  wire ram_reg_0_7_i_3_0;
  wire ram_reg_0_7_i_3_1;
  wire ram_reg_0_7_i_3_2;
  wire ram_reg_0_7_i_3_3;
  wire ram_reg_0_7_i_4_n_0;
  wire ram_reg_0_7_i_5_n_0;
  wire ram_reg_0_7_i_6_n_0;
  wire ram_reg_0_7_i_7_n_0;
  wire \rdata_data[1]_i_4_n_0 ;
  wire \rdata_data[2]_i_2_n_0 ;
  wire \rdata_data[3]_i_2_n_0 ;
  wire \rdata_data[7]_i_2_n_0 ;
  wire \rdata_data_reg[0] ;
  wire \rdata_data_reg[0]_0 ;
  wire \rdata_data_reg[0]_1 ;
  wire \rdata_data_reg[0]_2 ;
  wire \rdata_data_reg[10] ;
  wire \rdata_data_reg[11] ;
  wire \rdata_data_reg[12] ;
  wire \rdata_data_reg[13] ;
  wire \rdata_data_reg[14] ;
  wire \rdata_data_reg[15] ;
  wire \rdata_data_reg[16] ;
  wire \rdata_data_reg[17] ;
  wire \rdata_data_reg[18] ;
  wire \rdata_data_reg[19] ;
  wire \rdata_data_reg[1] ;
  wire \rdata_data_reg[1]_0 ;
  wire \rdata_data_reg[1]_1 ;
  wire \rdata_data_reg[20] ;
  wire \rdata_data_reg[21] ;
  wire \rdata_data_reg[22] ;
  wire \rdata_data_reg[23] ;
  wire \rdata_data_reg[24] ;
  wire \rdata_data_reg[25] ;
  wire \rdata_data_reg[26] ;
  wire \rdata_data_reg[27] ;
  wire \rdata_data_reg[28] ;
  wire \rdata_data_reg[29] ;
  wire \rdata_data_reg[2] ;
  wire \rdata_data_reg[2]_0 ;
  wire \rdata_data_reg[2]_1 ;
  wire \rdata_data_reg[2]_2 ;
  wire \rdata_data_reg[30] ;
  wire \rdata_data_reg[31] ;
  wire [29:0]\rdata_data_reg[31]_0 ;
  wire \rdata_data_reg[31]_1 ;
  wire \rdata_data_reg[3] ;
  wire \rdata_data_reg[4] ;
  wire \rdata_data_reg[5] ;
  wire \rdata_data_reg[6] ;
  wire \rdata_data_reg[7] ;
  wire \rdata_data_reg[8] ;
  wire \rdata_data_reg[8]_0 ;
  wire \rdata_data_reg[9] ;
  wire [9:0]s_axi_detec_data_ARADDR;
  wire s_axi_detec_data_ARVALID;
  wire [31:0]s_axi_detec_data_WDATA;
  wire [3:0]s_axi_detec_data_WSTRB;
  wire s_axi_detec_data_WVALID;
  wire [5:0]tmp_11_fu_346_p2;
  wire [1:0]\NLW_diff_reg[0]_i_10_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_reg[0]_i_5_O_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_write[1].mem_reg_SBITERR_UNCONNECTED ;
  wire [3:0]\NLW_gen_write[1].mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_write[1].mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_write[1].mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_write[1].mem_reg_RDADDRECC_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_13 
       (.I0(\int_inData_shift_reg[0]_6 ),
        .O(\diff[0]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_14 
       (.I0(\int_inData_shift_reg[0]_5 ),
        .O(\diff[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_15 
       (.I0(\int_inData_shift_reg[0]_4 ),
        .O(\diff[0]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_16 
       (.I0(\int_inData_shift_reg[0]_3 ),
        .O(\diff[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_17 
       (.I0(\int_inData_shift_reg[0]_6 ),
        .I1(q0[7]),
        .O(\diff[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_18 
       (.I0(\int_inData_shift_reg[0]_5 ),
        .I1(q0[6]),
        .O(\diff[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_19 
       (.I0(\int_inData_shift_reg[0]_4 ),
        .I1(q0[5]),
        .O(\diff[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_20 
       (.I0(\int_inData_shift_reg[0]_3 ),
        .I1(q0[4]),
        .O(\diff[0]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_21 
       (.I0(\int_inData_shift_reg[0]_2 ),
        .O(\diff[0]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_22 
       (.I0(\int_inData_shift_reg[0]_1 ),
        .O(\diff[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_23 
       (.I0(\int_inData_shift_reg[0]_0 ),
        .O(\diff[0]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_24 
       (.I0(\int_inData_shift_reg[0] ),
        .O(\diff[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_25 
       (.I0(\int_inData_shift_reg[0]_2 ),
        .I1(q0[3]),
        .O(\diff[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_26 
       (.I0(\int_inData_shift_reg[0]_1 ),
        .I1(q0[2]),
        .O(\diff[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_27 
       (.I0(\int_inData_shift_reg[0]_0 ),
        .I1(q0[1]),
        .O(\diff[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_28 
       (.I0(\int_inData_shift_reg[0] ),
        .I1(q0[0]),
        .O(\diff[0]_i_28_n_0 ));
  CARRY4 \diff_reg[0]_i_10 
       (.CI(1'b0),
        .CO({\diff_reg[0]_i_10_n_0 ,\diff_reg[0]_i_10_n_1 ,\diff_reg[0]_i_10_n_2 ,\diff_reg[0]_i_10_n_3 }),
        .CYINIT(1'b1),
        .DI({\diff[0]_i_21_n_0 ,\diff[0]_i_22_n_0 ,\diff[0]_i_23_n_0 ,\diff[0]_i_24_n_0 }),
        .O({tmp_11_fu_346_p2[1:0],\NLW_diff_reg[0]_i_10_O_UNCONNECTED [1:0]}),
        .S({\diff[0]_i_25_n_0 ,\diff[0]_i_26_n_0 ,\diff[0]_i_27_n_0 ,\diff[0]_i_28_n_0 }));
  CARRY4 \diff_reg[0]_i_5 
       (.CI(\diff_reg[0]_i_9_n_0 ),
        .CO({\NLW_diff_reg[0]_i_5_CO_UNCONNECTED [3:1],\diff_reg[0]_i_9_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_diff_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \diff_reg[0]_i_9 
       (.CI(\diff_reg[0]_i_10_n_0 ),
        .CO({\diff_reg[0]_i_9_n_0 ,\diff_reg[0]_i_9_n_1 ,\diff_reg[0]_i_9_n_2 ,\diff_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\diff[0]_i_13_n_0 ,\diff[0]_i_14_n_0 ,\diff[0]_i_15_n_0 ,\diff[0]_i_16_n_0 }),
        .O(tmp_11_fu_346_p2[5:2]),
        .S({\diff[0]_i_17_n_0 ,\diff[0]_i_18_n_0 ,\diff[0]_i_19_n_0 ,\diff[0]_i_20_n_0 }));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1280" *) 
  (* RTL_RAM_NAME = "gen_write[1].mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "39" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "39" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_write[1].mem_reg 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,inData_address0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,address1,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_write[1].mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_write[1].mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(\NLW_gen_write[1].mem_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(s_axi_detec_data_WDATA),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(\NLW_gen_write[1].mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_write[1].mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_write[1].mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(\NLW_gen_write[1].mem_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_write[1].mem_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_write[1].mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_write[1].mem_reg_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,\gen_write[1].mem_reg_i_13_n_0 ,\gen_write[1].mem_reg_i_14_n_0 ,\gen_write[1].mem_reg_i_15_n_0 ,\gen_write[1].mem_reg_i_16_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_1 
       (.I0(\gen_write[1].mem_reg_2 [5]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [5]),
        .O(inData_address0[7]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_10 
       (.I0(s_axi_detec_data_ARADDR[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [2]),
        .O(address1[2]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_11 
       (.I0(s_axi_detec_data_ARADDR[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [1]),
        .O(address1[1]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_12 
       (.I0(s_axi_detec_data_ARADDR[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [0]),
        .O(address1[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write[1].mem_reg_i_13 
       (.I0(s_axi_detec_data_WSTRB[3]),
        .I1(\gen_write[1].mem_reg_1 ),
        .I2(s_axi_detec_data_WVALID),
        .O(\gen_write[1].mem_reg_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write[1].mem_reg_i_14 
       (.I0(s_axi_detec_data_WSTRB[2]),
        .I1(\gen_write[1].mem_reg_1 ),
        .I2(s_axi_detec_data_WVALID),
        .O(\gen_write[1].mem_reg_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write[1].mem_reg_i_15 
       (.I0(s_axi_detec_data_WSTRB[1]),
        .I1(\gen_write[1].mem_reg_1 ),
        .I2(s_axi_detec_data_WVALID),
        .O(\gen_write[1].mem_reg_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write[1].mem_reg_i_16 
       (.I0(s_axi_detec_data_WSTRB[0]),
        .I1(\gen_write[1].mem_reg_1 ),
        .I2(s_axi_detec_data_WVALID),
        .O(\gen_write[1].mem_reg_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_2 
       (.I0(\gen_write[1].mem_reg_2 [4]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [4]),
        .O(inData_address0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_3 
       (.I0(\gen_write[1].mem_reg_2 [3]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [3]),
        .O(inData_address0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_4 
       (.I0(\gen_write[1].mem_reg_2 [2]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [2]),
        .O(inData_address0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_5 
       (.I0(\gen_write[1].mem_reg_2 [1]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [1]),
        .O(inData_address0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_write[1].mem_reg_i_6 
       (.I0(\gen_write[1].mem_reg_2 [0]),
        .I1(\gen_write[1].mem_reg_3 ),
        .I2(\gen_write[1].mem_reg_4 [0]),
        .O(inData_address0[2]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_7 
       (.I0(s_axi_detec_data_ARADDR[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [5]),
        .O(address1[5]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_8 
       (.I0(s_axi_detec_data_ARADDR[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [4]),
        .O(address1[4]));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \gen_write[1].mem_reg_i_9 
       (.I0(s_axi_detec_data_ARADDR[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(\gen_write[1].mem_reg_0 [3]),
        .O(address1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_0_i_17
       (.I0(\int_inData_shift_reg[0] ),
        .O(d0[0]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_0_i_19
       (.I0(ram_reg_0_0_i_20_n_0),
        .I1(ram_reg_0_0_i_21_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_0_i_22_n_0),
        .I5(ram_reg_0_0_i_23_n_0),
        .O(\int_inData_shift_reg[0] ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_0_i_20
       (.I0(COUNT[1]),
        .I1(ram_reg_0_0_i_19_4),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[24]),
        .O(ram_reg_0_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_0_i_21
       (.I0(COUNT[0]),
        .I1(ram_reg_0_0_i_19_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[8]),
        .O(ram_reg_0_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_0_i_22
       (.I0(COUNT[1]),
        .I1(ram_reg_0_0_i_19_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[16]),
        .O(ram_reg_0_0_i_22_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_0_i_23
       (.I0(COUNT[0]),
        .I1(ram_reg_0_0_i_19_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[0]),
        .O(ram_reg_0_0_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_1_i_1
       (.I0(\int_inData_shift_reg[0]_0 ),
        .O(d0[1]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_1_i_2
       (.I0(ram_reg_0_1_i_3_n_0),
        .I1(ram_reg_0_1_i_4_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_1_i_5_n_0),
        .I5(ram_reg_0_1_i_6_n_0),
        .O(\int_inData_shift_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_1_i_3
       (.I0(COUNT[1]),
        .I1(ram_reg_0_1_i_2_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[25]),
        .O(ram_reg_0_1_i_3_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_1_i_4
       (.I0(COUNT[0]),
        .I1(ram_reg_0_1_i_2_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[9]),
        .O(ram_reg_0_1_i_4_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_1_i_5
       (.I0(COUNT[1]),
        .I1(ram_reg_0_1_i_2_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[17]),
        .O(ram_reg_0_1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_1_i_6
       (.I0(COUNT[0]),
        .I1(ram_reg_0_1_i_2_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[1]),
        .O(ram_reg_0_1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_2_i_1
       (.I0(\int_inData_shift_reg[0]_1 ),
        .O(d0[2]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_2_i_3
       (.I0(ram_reg_0_2_i_4_n_0),
        .I1(ram_reg_0_2_i_5_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_2_i_6_n_0),
        .I5(ram_reg_0_2_i_7_n_0),
        .O(\int_inData_shift_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_2_i_4
       (.I0(COUNT[1]),
        .I1(ram_reg_0_2_i_3_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[26]),
        .O(ram_reg_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_2_i_5
       (.I0(COUNT[0]),
        .I1(ram_reg_0_2_i_3_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[10]),
        .O(ram_reg_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_2_i_6
       (.I0(COUNT[1]),
        .I1(ram_reg_0_2_i_3_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[18]),
        .O(ram_reg_0_2_i_6_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_2_i_7
       (.I0(COUNT[0]),
        .I1(ram_reg_0_2_i_3_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[2]),
        .O(ram_reg_0_2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_3_i_1
       (.I0(\int_inData_shift_reg[0]_2 ),
        .O(d0[3]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_3_i_2
       (.I0(ram_reg_0_3_i_3_n_0),
        .I1(ram_reg_0_3_i_4_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_3_i_5_n_0),
        .I5(ram_reg_0_3_i_6_n_0),
        .O(\int_inData_shift_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_3_i_3
       (.I0(COUNT[1]),
        .I1(ram_reg_0_3_i_2_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[27]),
        .O(ram_reg_0_3_i_3_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_3_i_4
       (.I0(COUNT[0]),
        .I1(ram_reg_0_3_i_2_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[11]),
        .O(ram_reg_0_3_i_4_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_3_i_5
       (.I0(COUNT[1]),
        .I1(ram_reg_0_3_i_2_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[19]),
        .O(ram_reg_0_3_i_5_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_3_i_6
       (.I0(COUNT[0]),
        .I1(ram_reg_0_3_i_2_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[3]),
        .O(ram_reg_0_3_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_4_i_1
       (.I0(\int_inData_shift_reg[0]_3 ),
        .O(d0[4]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_4_i_2
       (.I0(ram_reg_0_4_i_3_n_0),
        .I1(ram_reg_0_4_i_4_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_4_i_5_n_0),
        .I5(ram_reg_0_4_i_6_n_0),
        .O(\int_inData_shift_reg[0]_3 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_4_i_3
       (.I0(COUNT[1]),
        .I1(ram_reg_0_4_i_2_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[28]),
        .O(ram_reg_0_4_i_3_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_4_i_4
       (.I0(COUNT[0]),
        .I1(ram_reg_0_4_i_2_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[12]),
        .O(ram_reg_0_4_i_4_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_4_i_5
       (.I0(COUNT[1]),
        .I1(ram_reg_0_4_i_2_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[20]),
        .O(ram_reg_0_4_i_5_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_4_i_6
       (.I0(COUNT[0]),
        .I1(ram_reg_0_4_i_2_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[4]),
        .O(ram_reg_0_4_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_5_i_1
       (.I0(\int_inData_shift_reg[0]_4 ),
        .O(d0[5]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_5_i_3
       (.I0(ram_reg_0_5_i_4_n_0),
        .I1(ram_reg_0_5_i_5_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_5_i_6_n_0),
        .I5(ram_reg_0_5_i_7_n_0),
        .O(\int_inData_shift_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_5_i_4
       (.I0(COUNT[1]),
        .I1(ram_reg_0_5_i_3_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[29]),
        .O(ram_reg_0_5_i_4_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_5_i_5
       (.I0(COUNT[0]),
        .I1(ram_reg_0_5_i_3_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[13]),
        .O(ram_reg_0_5_i_5_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_5_i_6
       (.I0(COUNT[1]),
        .I1(ram_reg_0_5_i_3_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[21]),
        .O(ram_reg_0_5_i_6_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_5_i_7
       (.I0(COUNT[0]),
        .I1(ram_reg_0_5_i_3_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[5]),
        .O(ram_reg_0_5_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_6_i_1
       (.I0(\int_inData_shift_reg[0]_5 ),
        .O(d0[6]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_6_i_2
       (.I0(ram_reg_0_6_i_3_n_0),
        .I1(ram_reg_0_6_i_4_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_6_i_5_n_0),
        .I5(ram_reg_0_6_i_6_n_0),
        .O(\int_inData_shift_reg[0]_5 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_6_i_3
       (.I0(COUNT[1]),
        .I1(ram_reg_0_6_i_2_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[30]),
        .O(ram_reg_0_6_i_3_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_6_i_4
       (.I0(COUNT[0]),
        .I1(ram_reg_0_6_i_2_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[14]),
        .O(ram_reg_0_6_i_4_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_6_i_5
       (.I0(COUNT[1]),
        .I1(ram_reg_0_6_i_2_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[22]),
        .O(ram_reg_0_6_i_5_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_6_i_6
       (.I0(COUNT[0]),
        .I1(ram_reg_0_6_i_2_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[6]),
        .O(ram_reg_0_6_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_0_7_i_1
       (.I0(\int_inData_shift_reg[0]_6 ),
        .O(d0[7]));
  LUT6 #(
    .INIT(64'hFFFFA888AF88A888)) 
    ram_reg_0_7_i_3
       (.I0(ram_reg_0_7_i_4_n_0),
        .I1(ram_reg_0_7_i_5_n_0),
        .I2(COUNT[0]),
        .I3(COUNT[1]),
        .I4(ram_reg_0_7_i_6_n_0),
        .I5(ram_reg_0_7_i_7_n_0),
        .O(\int_inData_shift_reg[0]_6 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_7_i_4
       (.I0(COUNT[1]),
        .I1(ram_reg_0_7_i_3_3),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[31]),
        .O(ram_reg_0_7_i_4_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ram_reg_0_7_i_5
       (.I0(COUNT[0]),
        .I1(ram_reg_0_7_i_3_1),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[15]),
        .O(ram_reg_0_7_i_5_n_0));
  LUT4 #(
    .INIT(16'h57F7)) 
    ram_reg_0_7_i_6
       (.I0(COUNT[1]),
        .I1(ram_reg_0_7_i_3_2),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[23]),
        .O(ram_reg_0_7_i_6_n_0));
  LUT4 #(
    .INIT(16'h0151)) 
    ram_reg_0_7_i_7
       (.I0(COUNT[0]),
        .I1(ram_reg_0_7_i_3_0),
        .I2(ram_reg_0_0_i_19_1),
        .I3(DOADO[7]),
        .O(ram_reg_0_7_i_7_n_0));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata_data[0]_i_1 
       (.I0(\rdata_data_reg[0] ),
        .I1(\rdata_data_reg[0]_0 ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[0]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[0]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[10]_i_1 
       (.I0(\rdata_data_reg[31]_0 [8]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[10]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[10] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[11]_i_1 
       (.I0(\rdata_data_reg[31]_0 [9]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[11]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[12]_i_1 
       (.I0(\rdata_data_reg[31]_0 [10]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[12]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[12] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[13]_i_1 
       (.I0(\rdata_data_reg[31]_0 [11]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[13]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[13] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[14]_i_1 
       (.I0(\rdata_data_reg[31]_0 [12]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[14]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[14] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[15]_i_1 
       (.I0(\rdata_data_reg[31]_0 [13]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[15]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[15] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[16]_i_1 
       (.I0(\rdata_data_reg[31]_0 [14]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[16]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[16] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[17]_i_1 
       (.I0(\rdata_data_reg[31]_0 [15]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[17]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[17] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[18]_i_1 
       (.I0(\rdata_data_reg[31]_0 [16]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[18]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[18] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[19]_i_1 
       (.I0(\rdata_data_reg[31]_0 [17]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[19]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[19] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \rdata_data[1]_i_1 
       (.I0(\rdata_data_reg[1] ),
        .I1(s_axi_detec_data_ARADDR[0]),
        .I2(s_axi_detec_data_ARADDR[1]),
        .I3(s_axi_detec_data_ARADDR[8]),
        .I4(\rdata_data_reg[1]_0 ),
        .I5(\rdata_data[1]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2E200E2)) 
    \rdata_data[1]_i_4 
       (.I0(\rdata_data_reg[1]_1 ),
        .I1(\rdata_data_reg[31] ),
        .I2(DOBDO[1]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rdata_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[20]_i_1 
       (.I0(\rdata_data_reg[31]_0 [18]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[20]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[20] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[21]_i_1 
       (.I0(\rdata_data_reg[31]_0 [19]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[21]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[21] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[22]_i_1 
       (.I0(\rdata_data_reg[31]_0 [20]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[22]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[22] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[23]_i_1 
       (.I0(\rdata_data_reg[31]_0 [21]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[23]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[23] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[24]_i_1 
       (.I0(\rdata_data_reg[31]_0 [22]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[24]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[24] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[25]_i_1 
       (.I0(\rdata_data_reg[31]_0 [23]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[25]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[25] ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[26]_i_1 
       (.I0(\rdata_data_reg[31]_0 [24]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[26]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[26] ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[27]_i_1 
       (.I0(\rdata_data_reg[31]_0 [25]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[27]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[27] ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[28]_i_1 
       (.I0(\rdata_data_reg[31]_0 [26]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[28]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[28] ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[29]_i_1 
       (.I0(\rdata_data_reg[31]_0 [27]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[29]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[29] ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAABAAA)) 
    \rdata_data[2]_i_1 
       (.I0(\rdata_data[2]_i_2_n_0 ),
        .I1(\rdata_data_reg[2] ),
        .I2(int_ap_idle),
        .I3(\rdata_data_reg[2]_0 ),
        .I4(\rdata_data_reg[2]_1 ),
        .I5(\rdata_data_reg[31]_0 [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2E200E2)) 
    \rdata_data[2]_i_2 
       (.I0(\rdata_data_reg[2]_2 ),
        .I1(\rdata_data_reg[31] ),
        .I2(DOBDO[2]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rdata_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[30]_i_1 
       (.I0(\rdata_data_reg[31]_0 [28]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[30]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[30] ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[31]_i_2 
       (.I0(\rdata_data_reg[31]_0 [29]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[31]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[31]_1 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAABAAA)) 
    \rdata_data[3]_i_1 
       (.I0(\rdata_data[3]_i_2_n_0 ),
        .I1(\rdata_data_reg[2] ),
        .I2(int_ap_ready),
        .I3(\rdata_data_reg[2]_0 ),
        .I4(\rdata_data_reg[2]_1 ),
        .I5(\rdata_data_reg[31]_0 [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2E200E2)) 
    \rdata_data[3]_i_2 
       (.I0(\rdata_data_reg[3] ),
        .I1(\rdata_data_reg[31] ),
        .I2(DOBDO[3]),
        .I3(s_axi_detec_data_ARVALID),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rdata_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata_data[4]_i_1 
       (.I0(\rdata_data_reg[2]_1 ),
        .I1(\rdata_data_reg[31]_0 [2]),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[4]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata_data[5]_i_1 
       (.I0(\rdata_data_reg[2]_1 ),
        .I1(\rdata_data_reg[31]_0 [3]),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[5]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata_data[6]_i_1 
       (.I0(\rdata_data_reg[2]_1 ),
        .I1(\rdata_data_reg[31]_0 [4]),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[6]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[6] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \rdata_data[7]_i_1 
       (.I0(\rdata_data[7]_i_2_n_0 ),
        .I1(\rdata_data_reg[2]_0 ),
        .I2(int_auto_restart),
        .I3(s_axi_detec_data_ARADDR[4]),
        .I4(s_axi_detec_data_ARADDR[9]),
        .I5(s_axi_detec_data_ARADDR[3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \rdata_data[7]_i_2 
       (.I0(\rdata_data_reg[0]_1 ),
        .I1(DOBDO[7]),
        .I2(\rdata_data_reg[31] ),
        .I3(\rdata_data_reg[7] ),
        .I4(\rdata_data_reg[2]_1 ),
        .I5(\rdata_data_reg[31]_0 [5]),
        .O(\rdata_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[8]_i_1 
       (.I0(\rdata_data_reg[31]_0 [6]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[8]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[8]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \rdata_data[9]_i_1 
       (.I0(\rdata_data_reg[31]_0 [7]),
        .I1(\rdata_data_reg[8] ),
        .I2(\rdata_data_reg[0]_1 ),
        .I3(DOBDO[9]),
        .I4(\rdata_data_reg[31] ),
        .I5(\rdata_data_reg[9] ),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "detec_movement_imbkb" *) 
module system_detec_movement_0_0_detec_movement_imbkb
   (tmp_8_fu_334_p2,
    q0,
    CO,
    Q,
    D,
    ram_reg_0_0,
    ram_reg_0_0_0,
    ap_clk,
    d0,
    \diff_reg[0]_i_11 ,
    \diff_reg[0]_i_11_0 ,
    \diff_reg[0]_i_11_1 ,
    \diff_reg[0]_i_11_2 ,
    \diff_reg[0]_i_12 ,
    \diff_reg[0]_i_12_0 ,
    \diff_reg[0]_i_12_1 ,
    \diff_reg[0]_i_12_2 );
  output [5:0]tmp_8_fu_334_p2;
  output [7:0]q0;
  output [0:0]CO;
  input [2:0]Q;
  input [14:0]D;
  input [14:0]ram_reg_0_0;
  input [14:0]ram_reg_0_0_0;
  input ap_clk;
  input [7:0]d0;
  input \diff_reg[0]_i_11 ;
  input \diff_reg[0]_i_11_0 ;
  input \diff_reg[0]_i_11_1 ;
  input \diff_reg[0]_i_11_2 ;
  input \diff_reg[0]_i_12 ;
  input \diff_reg[0]_i_12_0 ;
  input \diff_reg[0]_i_12_1 ;
  input \diff_reg[0]_i_12_2 ;

  wire [0:0]CO;
  wire [14:0]D;
  wire [2:0]Q;
  wire ap_clk;
  wire [7:0]d0;
  wire \diff_reg[0]_i_11 ;
  wire \diff_reg[0]_i_11_0 ;
  wire \diff_reg[0]_i_11_1 ;
  wire \diff_reg[0]_i_11_2 ;
  wire \diff_reg[0]_i_12 ;
  wire \diff_reg[0]_i_12_0 ;
  wire \diff_reg[0]_i_12_1 ;
  wire \diff_reg[0]_i_12_2 ;
  wire [7:0]q0;
  wire [14:0]ram_reg_0_0;
  wire [14:0]ram_reg_0_0_0;
  wire [5:0]tmp_8_fu_334_p2;

  system_detec_movement_0_0_detec_movement_imbkb_ram detec_movement_imbkb_ram_U
       (.CO(CO),
        .D(D),
        .Q(Q),
        .ap_clk(ap_clk),
        .d0(d0),
        .\diff_reg[0]_i_11_0 (\diff_reg[0]_i_11 ),
        .\diff_reg[0]_i_11_1 (\diff_reg[0]_i_11_0 ),
        .\diff_reg[0]_i_11_2 (\diff_reg[0]_i_11_1 ),
        .\diff_reg[0]_i_11_3 (\diff_reg[0]_i_11_2 ),
        .\diff_reg[0]_i_12_0 (\diff_reg[0]_i_12 ),
        .\diff_reg[0]_i_12_1 (\diff_reg[0]_i_12_0 ),
        .\diff_reg[0]_i_12_2 (\diff_reg[0]_i_12_1 ),
        .\diff_reg[0]_i_12_3 (\diff_reg[0]_i_12_2 ),
        .q0(q0),
        .ram_reg_0_0_0(ram_reg_0_0),
        .ram_reg_0_0_1(ram_reg_0_0_0),
        .tmp_8_fu_334_p2(tmp_8_fu_334_p2));
endmodule

(* ORIG_REF_NAME = "detec_movement_imbkb_ram" *) 
module system_detec_movement_0_0_detec_movement_imbkb_ram
   (tmp_8_fu_334_p2,
    q0,
    CO,
    Q,
    D,
    ram_reg_0_0_0,
    ram_reg_0_0_1,
    ap_clk,
    d0,
    \diff_reg[0]_i_11_0 ,
    \diff_reg[0]_i_11_1 ,
    \diff_reg[0]_i_11_2 ,
    \diff_reg[0]_i_11_3 ,
    \diff_reg[0]_i_12_0 ,
    \diff_reg[0]_i_12_1 ,
    \diff_reg[0]_i_12_2 ,
    \diff_reg[0]_i_12_3 );
  output [5:0]tmp_8_fu_334_p2;
  output [7:0]q0;
  output [0:0]CO;
  input [2:0]Q;
  input [14:0]D;
  input [14:0]ram_reg_0_0_0;
  input [14:0]ram_reg_0_0_1;
  input ap_clk;
  input [7:0]d0;
  input \diff_reg[0]_i_11_0 ;
  input \diff_reg[0]_i_11_1 ;
  input \diff_reg[0]_i_11_2 ;
  input \diff_reg[0]_i_11_3 ;
  input \diff_reg[0]_i_12_0 ;
  input \diff_reg[0]_i_12_1 ;
  input \diff_reg[0]_i_12_2 ;
  input \diff_reg[0]_i_12_3 ;

  wire [0:0]CO;
  wire [14:0]D;
  wire [2:0]Q;
  wire [14:0]address0;
  wire ap_clk;
  wire ce0;
  wire [7:0]d0;
  wire \diff[0]_i_29_n_0 ;
  wire \diff[0]_i_30_n_0 ;
  wire \diff[0]_i_31_n_0 ;
  wire \diff[0]_i_32_n_0 ;
  wire \diff[0]_i_33_n_0 ;
  wire \diff[0]_i_34_n_0 ;
  wire \diff[0]_i_35_n_0 ;
  wire \diff[0]_i_36_n_0 ;
  wire \diff_reg[0]_i_11_0 ;
  wire \diff_reg[0]_i_11_1 ;
  wire \diff_reg[0]_i_11_2 ;
  wire \diff_reg[0]_i_11_3 ;
  wire \diff_reg[0]_i_11_n_0 ;
  wire \diff_reg[0]_i_11_n_1 ;
  wire \diff_reg[0]_i_11_n_2 ;
  wire \diff_reg[0]_i_11_n_3 ;
  wire \diff_reg[0]_i_12_0 ;
  wire \diff_reg[0]_i_12_1 ;
  wire \diff_reg[0]_i_12_2 ;
  wire \diff_reg[0]_i_12_3 ;
  wire \diff_reg[0]_i_12_n_0 ;
  wire \diff_reg[0]_i_12_n_1 ;
  wire \diff_reg[0]_i_12_n_2 ;
  wire \diff_reg[0]_i_12_n_3 ;
  wire [7:0]q0;
  wire [14:0]ram_reg_0_0_0;
  wire [14:0]ram_reg_0_0_1;
  wire ram_reg_0_0_i_18_n_0;
  wire ram_reg_0_2_i_2_n_0;
  wire ram_reg_0_5_i_2_n_0;
  wire ram_reg_0_7_i_2_n_0;
  wire [5:0]tmp_8_fu_334_p2;
  wire [1:0]\NLW_diff_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_diff_reg[0]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_diff_reg[0]_i_7_O_UNCONNECTED ;
  wire NLW_ram_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:1]NLW_ram_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_29 
       (.I0(q0[3]),
        .I1(\diff_reg[0]_i_11_3 ),
        .O(\diff[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_30 
       (.I0(q0[2]),
        .I1(\diff_reg[0]_i_11_2 ),
        .O(\diff[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_31 
       (.I0(q0[1]),
        .I1(\diff_reg[0]_i_11_1 ),
        .O(\diff[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_32 
       (.I0(q0[0]),
        .I1(\diff_reg[0]_i_11_0 ),
        .O(\diff[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_33 
       (.I0(q0[7]),
        .I1(\diff_reg[0]_i_12_3 ),
        .O(\diff[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_34 
       (.I0(q0[6]),
        .I1(\diff_reg[0]_i_12_2 ),
        .O(\diff[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_35 
       (.I0(q0[5]),
        .I1(\diff_reg[0]_i_12_1 ),
        .O(\diff[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \diff[0]_i_36 
       (.I0(q0[4]),
        .I1(\diff_reg[0]_i_12_0 ),
        .O(\diff[0]_i_36_n_0 ));
  CARRY4 \diff_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\diff_reg[0]_i_11_n_0 ,\diff_reg[0]_i_11_n_1 ,\diff_reg[0]_i_11_n_2 ,\diff_reg[0]_i_11_n_3 }),
        .CYINIT(1'b1),
        .DI(q0[3:0]),
        .O({tmp_8_fu_334_p2[1:0],\NLW_diff_reg[0]_i_11_O_UNCONNECTED [1:0]}),
        .S({\diff[0]_i_29_n_0 ,\diff[0]_i_30_n_0 ,\diff[0]_i_31_n_0 ,\diff[0]_i_32_n_0 }));
  CARRY4 \diff_reg[0]_i_12 
       (.CI(\diff_reg[0]_i_11_n_0 ),
        .CO({\diff_reg[0]_i_12_n_0 ,\diff_reg[0]_i_12_n_1 ,\diff_reg[0]_i_12_n_2 ,\diff_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(q0[7:4]),
        .O(tmp_8_fu_334_p2[5:2]),
        .S({\diff[0]_i_33_n_0 ,\diff[0]_i_34_n_0 ,\diff[0]_i_35_n_0 ,\diff[0]_i_36_n_0 }));
  CARRY4 \diff_reg[0]_i_7 
       (.CI(\diff_reg[0]_i_12_n_0 ),
        .CO({\NLW_diff_reg[0]_i_7_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_diff_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_0
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_0_DOADO_UNCONNECTED[31:1],q0[0]}),
        .DOBDO(NLW_ram_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hFE)) 
    ram_reg_0_0_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(ce0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_10
       (.I0(D[6]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[6]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[6]),
        .O(address0[6]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_11
       (.I0(D[5]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[5]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[5]),
        .O(address0[5]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_12
       (.I0(D[4]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[4]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[4]),
        .O(address0[4]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_13
       (.I0(D[3]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[3]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[3]),
        .O(address0[3]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_14
       (.I0(D[2]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[2]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[2]),
        .O(address0[2]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_15
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[1]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[1]),
        .O(address0[1]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_16
       (.I0(D[0]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[0]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[0]),
        .O(address0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_0_0_i_18
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(ram_reg_0_0_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_2
       (.I0(D[14]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[14]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[14]),
        .O(address0[14]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_3
       (.I0(D[13]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[13]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[13]),
        .O(address0[13]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_4
       (.I0(D[12]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[12]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[12]),
        .O(address0[12]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_5
       (.I0(D[11]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[11]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[11]),
        .O(address0[11]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_6
       (.I0(D[10]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[10]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[10]),
        .O(address0[10]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_7
       (.I0(D[9]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[9]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[9]),
        .O(address0[9]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_8
       (.I0(D[8]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[8]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[8]),
        .O(address0[8]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    ram_reg_0_0_i_9
       (.I0(D[7]),
        .I1(Q[1]),
        .I2(ram_reg_0_0_0[7]),
        .I3(Q[2]),
        .I4(ram_reg_0_0_1[7]),
        .O(address0[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_1
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[1]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_1_DOADO_UNCONNECTED[31:1],q0[1]}),
        .DOBDO(NLW_ram_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_2
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[2]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_2_DOADO_UNCONNECTED[31:1],q0[2]}),
        .DOBDO(NLW_ram_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0,ram_reg_0_0_i_18_n_0,ram_reg_0_0_i_18_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_0_2_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(ram_reg_0_2_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_3
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[3]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_3_DOADO_UNCONNECTED[31:1],q0[3]}),
        .DOBDO(NLW_ram_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_4
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_4_DOADO_UNCONNECTED[31:1],q0[4]}),
        .DOBDO(NLW_ram_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0,ram_reg_0_2_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_5
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[5]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_5_DOADO_UNCONNECTED[31:1],q0[5]}),
        .DOBDO(NLW_ram_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_0_5_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(ram_reg_0_5_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_6
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[6]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_6_DOADO_UNCONNECTED[31:1],q0[6]}),
        .DOBDO(NLW_ram_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "153600" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(0)) 
    ram_reg_0_7
       (.ADDRARDADDR({1'b1,address0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[7]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_reg_0_7_DOADO_UNCONNECTED[31:1],q0[7]}),
        .DOBDO(NLW_ram_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_i_2_n_0,ram_reg_0_7_i_2_n_0,ram_reg_0_5_i_2_n_0,ram_reg_0_5_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_0_7_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(ram_reg_0_7_i_2_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
