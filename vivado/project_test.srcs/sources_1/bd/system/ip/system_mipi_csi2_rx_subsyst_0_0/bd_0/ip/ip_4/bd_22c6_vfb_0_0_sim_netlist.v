// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul  8 14:30:33 2019
// Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/vhdl/zybo_base_linux/zybo_base_linux.srcs/sources_1/bd/system/ip/system_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_22c6_vfb_0_0_sim_netlist.v
// Design      : bd_22c6_vfb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* AXIS_TDATA_WIDTH = "64" *) (* AXIS_TDEST_WIDTH = "4" *) (* AXIS_TUSER_WIDTH = "96" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* VFB_4PXL_W = "64" *) (* VFB_BYPASS_WC = "0" *) 
(* VFB_DATA_TYPE = "30" *) (* VFB_DCONV_OWIDTH = "16" *) (* VFB_FIFO_DEPTH = "128" *) 
(* VFB_FIFO_WIDTH = "64" *) (* VFB_FILTER_VC = "0" *) (* VFB_OP_DWIDTH = "16" *) 
(* VFB_OP_PIXELS = "1" *) (* VFB_PXL_W = "16" *) (* VFB_PXL_W_BB = "16" *) 
(* VFB_REQ_BUFFER = "0" *) (* VFB_REQ_REORDER = "1" *) (* VFB_TU_WIDTH = "1" *) 
(* VFB_VC = "0" *) 
(* NotValidForBitStream *)
module bd_22c6_vfb_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tuser,
    s_axis_tdest,
    mdt_tv,
    mdt_tr,
    sdt_tv,
    sdt_tr,
    vfb_tv,
    vfb_tr,
    vfb_clk,
    vfb_ready,
    vfb_valid,
    vfb_eol,
    vfb_sof,
    vfb_vcdt,
    vfb_data);
  input s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input [95:0]s_axis_tuser;
  input [3:0]s_axis_tdest;
  output mdt_tv;
  output mdt_tr;
  output sdt_tv;
  output sdt_tr;
  output vfb_tv;
  output vfb_tr;
  input vfb_clk;
  input vfb_ready;
  output vfb_valid;
  output vfb_eol;
  output [0:0]vfb_sof;
  output [9:0]vfb_vcdt;
  output [15:0]vfb_data;

  wire mdt_tr;
  wire mdt_tv;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [63:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [95:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire sdt_tr;
  wire sdt_tv;
  wire vfb_clk;
  wire [15:0]vfb_data;
  wire vfb_eol;
  wire vfb_ready;
  wire [0:0]vfb_sof;
  wire vfb_tv;
  wire [9:0]vfb_vcdt;

  assign vfb_tr = vfb_ready;
  assign vfb_valid = vfb_tv;
  bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core inst
       (.D({s_axis_tlast,s_axis_tdata,s_axis_tkeep,s_axis_tuser[69:64],s_axis_tuser[31:16],s_axis_tuser[0],s_axis_tdest}),
        .mdt_tr(mdt_tr),
        .mdt_tv(mdt_tv),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sdt_tr(sdt_tr),
        .sdt_tv(sdt_tv),
        .vfb_clk(vfb_clk),
        .vfb_data(vfb_data),
        .vfb_eol_reg(vfb_eol),
        .vfb_ready(vfb_ready),
        .vfb_sof(vfb_sof),
        .vfb_valid_reg(vfb_tv),
        .vfb_vcdt(vfb_vcdt));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter" *) 
module bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter
   (Q,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tuser,
    aclk,
    s_axis_tkeep,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tuser,
    aresetn);
  output [1:0]Q;
  output m_axis_tlast;
  output [31:0]m_axis_tid;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tkeep;
  output [5:0]m_axis_tuser;
  input aclk;
  input [7:0]s_axis_tkeep;
  input s_axis_tvalid;
  input m_axis_tready;
  input [63:0]s_axis_tdata;
  input s_axis_tlast;
  input [31:0]s_axis_tid;
  input [23:0]s_axis_tuser;
  input aresetn;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire areset_r_i_1_n_0;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire [31:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [5:0]m_axis_tuser;
  wire [63:0]s_axis_tdata;
  wire [31:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [23:0]s_axis_tuser;
  wire s_axis_tvalid;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(areset_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_i_1_n_0),
        .Q(areset_r),
        .R(1'b0));
  bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.Q(Q),
        .SR(areset_r),
        .aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_17_axisc_downsizer" *) 
module bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer
   (Q,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tuser,
    s_axis_tlast,
    aclk,
    s_axis_tkeep,
    s_axis_tvalid,
    SR,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tid,
    s_axis_tuser);
  output [1:0]Q;
  output m_axis_tlast;
  output [31:0]m_axis_tid;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tkeep;
  output [5:0]m_axis_tuser;
  input s_axis_tlast;
  input aclk;
  input [7:0]s_axis_tkeep;
  input s_axis_tvalid;
  input [0:0]SR;
  input m_axis_tready;
  input [63:0]s_axis_tdata;
  input [31:0]s_axis_tid;
  input [23:0]s_axis_tuser;

  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [15:0]m_axis_tdata;
  wire [31:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tready;
  wire [5:0]m_axis_tuser;
  wire [15:0]p_0_in;
  wire [63:0]p_0_in1_in;
  wire \r0_data_reg_n_0_[48] ;
  wire \r0_data_reg_n_0_[49] ;
  wire \r0_data_reg_n_0_[50] ;
  wire \r0_data_reg_n_0_[51] ;
  wire \r0_data_reg_n_0_[52] ;
  wire \r0_data_reg_n_0_[53] ;
  wire \r0_data_reg_n_0_[54] ;
  wire \r0_data_reg_n_0_[55] ;
  wire \r0_data_reg_n_0_[56] ;
  wire \r0_data_reg_n_0_[57] ;
  wire \r0_data_reg_n_0_[58] ;
  wire \r0_data_reg_n_0_[59] ;
  wire \r0_data_reg_n_0_[60] ;
  wire \r0_data_reg_n_0_[61] ;
  wire \r0_data_reg_n_0_[62] ;
  wire \r0_data_reg_n_0_[63] ;
  wire [31:0]r0_id;
  wire [2:2]r0_is_end;
  wire [2:1]r0_is_null_r;
  wire \r0_is_null_r[1]_i_1_n_0 ;
  wire \r0_is_null_r[2]_i_1_n_0 ;
  wire \r0_is_null_r[3]_i_1_n_0 ;
  wire [7:0]r0_keep;
  wire r0_last_reg_n_0;
  wire r0_load;
  wire [1:0]r0_out_sel_next_r;
  wire \r0_out_sel_next_r[0]_i_1_n_0 ;
  wire \r0_out_sel_next_r[1]_i_2_n_0 ;
  wire \r0_out_sel_next_r[1]_i_3_n_0 ;
  wire r0_out_sel_next_r_0;
  wire r0_out_sel_r0;
  wire \r0_out_sel_r[0]_i_1_n_0 ;
  wire \r0_out_sel_r[1]_i_1_n_0 ;
  wire \r0_out_sel_r_reg_n_0_[0] ;
  wire \r0_out_sel_r_reg_n_0_[1] ;
  wire [23:0]r0_user;
  wire [31:0]r1_id;
  wire [1:0]r1_keep;
  wire \r1_keep[0]_i_1_n_0 ;
  wire \r1_keep[1]_i_1_n_0 ;
  wire r1_last_reg_n_0;
  wire r1_load;
  wire [5:0]r1_user;
  wire \r1_user[0]_i_1_n_0 ;
  wire \r1_user[1]_i_1_n_0 ;
  wire \r1_user[2]_i_1_n_0 ;
  wire \r1_user[3]_i_1_n_0 ;
  wire \r1_user[4]_i_1_n_0 ;
  wire \r1_user[5]_i_1_n_0 ;
  wire [63:0]s_axis_tdata;
  wire [31:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [23:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(p_0_in1_in[48]),
        .I1(p_0_in1_in[16]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[32]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[0]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(p_0_in1_in[58]),
        .I1(p_0_in1_in[26]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[42]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[10]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(p_0_in1_in[59]),
        .I1(p_0_in1_in[27]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[43]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[11]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(p_0_in1_in[60]),
        .I1(p_0_in1_in[28]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[44]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[12]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(p_0_in1_in[61]),
        .I1(p_0_in1_in[29]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[45]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[13]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(p_0_in1_in[62]),
        .I1(p_0_in1_in[30]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[46]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[14]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(p_0_in1_in[63]),
        .I1(p_0_in1_in[31]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[47]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[15]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(p_0_in1_in[49]),
        .I1(p_0_in1_in[17]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[33]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[1]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(p_0_in1_in[50]),
        .I1(p_0_in1_in[18]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[34]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[2]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(p_0_in1_in[51]),
        .I1(p_0_in1_in[19]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[35]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(p_0_in1_in[52]),
        .I1(p_0_in1_in[20]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[36]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[4]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(p_0_in1_in[53]),
        .I1(p_0_in1_in[21]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[37]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[5]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(p_0_in1_in[54]),
        .I1(p_0_in1_in[22]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[38]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[6]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(p_0_in1_in[55]),
        .I1(p_0_in1_in[23]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[39]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[7]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(p_0_in1_in[56]),
        .I1(p_0_in1_in[24]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[40]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[8]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(p_0_in1_in[57]),
        .I1(p_0_in1_in[25]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(p_0_in1_in[41]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(p_0_in1_in[9]),
        .O(m_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[0]_INST_0 
       (.I0(r1_id[0]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[0]),
        .O(m_axis_tid[0]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[10]_INST_0 
       (.I0(r1_id[10]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[10]),
        .O(m_axis_tid[10]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[11]_INST_0 
       (.I0(r1_id[11]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[11]),
        .O(m_axis_tid[11]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[12]_INST_0 
       (.I0(r1_id[12]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[12]),
        .O(m_axis_tid[12]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[13]_INST_0 
       (.I0(r1_id[13]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[13]),
        .O(m_axis_tid[13]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[14]_INST_0 
       (.I0(r1_id[14]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[14]),
        .O(m_axis_tid[14]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[15]_INST_0 
       (.I0(r1_id[15]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[15]),
        .O(m_axis_tid[15]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[16]_INST_0 
       (.I0(r1_id[16]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[16]),
        .O(m_axis_tid[16]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[17]_INST_0 
       (.I0(r1_id[17]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[17]),
        .O(m_axis_tid[17]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[18]_INST_0 
       (.I0(r1_id[18]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[18]),
        .O(m_axis_tid[18]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[19]_INST_0 
       (.I0(r1_id[19]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[19]),
        .O(m_axis_tid[19]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[1]_INST_0 
       (.I0(r1_id[1]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[1]),
        .O(m_axis_tid[1]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[20]_INST_0 
       (.I0(r1_id[20]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[20]),
        .O(m_axis_tid[20]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[21]_INST_0 
       (.I0(r1_id[21]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[21]),
        .O(m_axis_tid[21]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[22]_INST_0 
       (.I0(r1_id[22]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[22]),
        .O(m_axis_tid[22]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[23]_INST_0 
       (.I0(r1_id[23]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[23]),
        .O(m_axis_tid[23]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[24]_INST_0 
       (.I0(r1_id[24]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[24]),
        .O(m_axis_tid[24]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[25]_INST_0 
       (.I0(r1_id[25]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[25]),
        .O(m_axis_tid[25]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[26]_INST_0 
       (.I0(r1_id[26]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[26]),
        .O(m_axis_tid[26]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[27]_INST_0 
       (.I0(r1_id[27]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[27]),
        .O(m_axis_tid[27]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[28]_INST_0 
       (.I0(r1_id[28]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[28]),
        .O(m_axis_tid[28]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[29]_INST_0 
       (.I0(r1_id[29]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[29]),
        .O(m_axis_tid[29]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[2]_INST_0 
       (.I0(r1_id[2]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[2]),
        .O(m_axis_tid[2]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[30]_INST_0 
       (.I0(r1_id[30]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[30]),
        .O(m_axis_tid[30]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[31]_INST_0 
       (.I0(r1_id[31]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[31]),
        .O(m_axis_tid[31]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[3]_INST_0 
       (.I0(r1_id[3]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[3]),
        .O(m_axis_tid[3]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[4]_INST_0 
       (.I0(r1_id[4]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[4]),
        .O(m_axis_tid[4]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[5]_INST_0 
       (.I0(r1_id[5]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[5]),
        .O(m_axis_tid[5]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[6]_INST_0 
       (.I0(r1_id[6]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[6]),
        .O(m_axis_tid[6]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[7]_INST_0 
       (.I0(r1_id[7]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[7]),
        .O(m_axis_tid[7]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[8]_INST_0 
       (.I0(r1_id[8]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[8]),
        .O(m_axis_tid[8]));
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    \m_axis_tid[9]_INST_0 
       (.I0(r1_id[9]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(r0_id[9]),
        .O(m_axis_tid[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(r1_keep[0]),
        .I1(r0_keep[2]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_keep[4]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_keep[0]),
        .O(m_axis_tkeep[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(r1_keep[1]),
        .I1(r0_keep[3]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_keep[5]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_keep[1]),
        .O(m_axis_tkeep[1]));
  LUT5 #(
    .INIT(32'hEDFF4800)) 
    m_axis_tlast_INST_0
       (.I0(\state_reg_n_0_[2] ),
        .I1(r1_last_reg_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m_axis_tlast_INST_0_i_1_n_0),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tlast_INST_0_i_1
       (.I0(r0_is_null_r[1]),
        .I1(r0_is_null_r[2]),
        .I2(r0_is_end),
        .I3(r0_last_reg_n_0),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(r1_user[0]),
        .I1(r0_user[6]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[12]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[0]),
        .O(m_axis_tuser[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(r1_user[1]),
        .I1(r0_user[7]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[13]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[1]),
        .O(m_axis_tuser[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(r1_user[2]),
        .I1(r0_user[8]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[14]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[2]),
        .O(m_axis_tuser[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(r1_user[3]),
        .I1(r0_user[9]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[15]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[3]),
        .O(m_axis_tuser[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[4]_INST_0 
       (.I0(r1_user[4]),
        .I1(r0_user[10]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[16]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[4]),
        .O(m_axis_tuser[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tuser[5]_INST_0 
       (.I0(r1_user[5]),
        .I1(r0_user[11]),
        .I2(\r0_out_sel_r_reg_n_0_[0] ),
        .I3(r0_user[17]),
        .I4(\r0_out_sel_r_reg_n_0_[1] ),
        .I5(r0_user[5]),
        .O(m_axis_tuser[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \r0_data[63]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg_n_0_[2] ),
        .O(r0_load));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[0]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[10]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[11]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[12]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[13]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[14]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[15]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[16]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[17]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[18]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[19]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[1]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[20]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[21]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[22]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[23]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[24]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[25]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[26]),
        .Q(p_0_in1_in[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[27]),
        .Q(p_0_in1_in[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[28]),
        .Q(p_0_in1_in[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[29]),
        .Q(p_0_in1_in[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[2]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[30]),
        .Q(p_0_in1_in[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[31]),
        .Q(p_0_in1_in[31]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[32]),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[33]),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[34]),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[35]),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[36]),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[37]),
        .Q(p_0_in1_in[37]),
        .R(1'b0));
  FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[38]),
        .Q(p_0_in1_in[38]),
        .R(1'b0));
  FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[39]),
        .Q(p_0_in1_in[39]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[3]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[40]),
        .Q(p_0_in1_in[40]),
        .R(1'b0));
  FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[41]),
        .Q(p_0_in1_in[41]),
        .R(1'b0));
  FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[42]),
        .Q(p_0_in1_in[42]),
        .R(1'b0));
  FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[43]),
        .Q(p_0_in1_in[43]),
        .R(1'b0));
  FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[44]),
        .Q(p_0_in1_in[44]),
        .R(1'b0));
  FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[45]),
        .Q(p_0_in1_in[45]),
        .R(1'b0));
  FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[46]),
        .Q(p_0_in1_in[46]),
        .R(1'b0));
  FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[47]),
        .Q(p_0_in1_in[47]),
        .R(1'b0));
  FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[48]),
        .Q(\r0_data_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[49]),
        .Q(\r0_data_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[4]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[50]),
        .Q(\r0_data_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[51]),
        .Q(\r0_data_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[52]),
        .Q(\r0_data_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \r0_data_reg[53] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[53]),
        .Q(\r0_data_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[54]),
        .Q(\r0_data_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[55]),
        .Q(\r0_data_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[56]),
        .Q(\r0_data_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[57]),
        .Q(\r0_data_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \r0_data_reg[58] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[58]),
        .Q(\r0_data_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \r0_data_reg[59] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[59]),
        .Q(\r0_data_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[5]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \r0_data_reg[60] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[60]),
        .Q(\r0_data_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \r0_data_reg[61] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[61]),
        .Q(\r0_data_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \r0_data_reg[62] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[62]),
        .Q(\r0_data_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \r0_data_reg[63] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[63]),
        .Q(\r0_data_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[6]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[7]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[8]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tdata[9]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  FDRE \r0_id_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[0]),
        .Q(r0_id[0]),
        .R(1'b0));
  FDRE \r0_id_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[10]),
        .Q(r0_id[10]),
        .R(1'b0));
  FDRE \r0_id_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[11]),
        .Q(r0_id[11]),
        .R(1'b0));
  FDRE \r0_id_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[12]),
        .Q(r0_id[12]),
        .R(1'b0));
  FDRE \r0_id_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[13]),
        .Q(r0_id[13]),
        .R(1'b0));
  FDRE \r0_id_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[14]),
        .Q(r0_id[14]),
        .R(1'b0));
  FDRE \r0_id_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[15]),
        .Q(r0_id[15]),
        .R(1'b0));
  FDRE \r0_id_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[16]),
        .Q(r0_id[16]),
        .R(1'b0));
  FDRE \r0_id_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[17]),
        .Q(r0_id[17]),
        .R(1'b0));
  FDRE \r0_id_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[18]),
        .Q(r0_id[18]),
        .R(1'b0));
  FDRE \r0_id_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[19]),
        .Q(r0_id[19]),
        .R(1'b0));
  FDRE \r0_id_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[1]),
        .Q(r0_id[1]),
        .R(1'b0));
  FDRE \r0_id_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[20]),
        .Q(r0_id[20]),
        .R(1'b0));
  FDRE \r0_id_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[21]),
        .Q(r0_id[21]),
        .R(1'b0));
  FDRE \r0_id_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[22]),
        .Q(r0_id[22]),
        .R(1'b0));
  FDRE \r0_id_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[23]),
        .Q(r0_id[23]),
        .R(1'b0));
  FDRE \r0_id_reg[24] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[24]),
        .Q(r0_id[24]),
        .R(1'b0));
  FDRE \r0_id_reg[25] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[25]),
        .Q(r0_id[25]),
        .R(1'b0));
  FDRE \r0_id_reg[26] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[26]),
        .Q(r0_id[26]),
        .R(1'b0));
  FDRE \r0_id_reg[27] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[27]),
        .Q(r0_id[27]),
        .R(1'b0));
  FDRE \r0_id_reg[28] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[28]),
        .Q(r0_id[28]),
        .R(1'b0));
  FDRE \r0_id_reg[29] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[29]),
        .Q(r0_id[29]),
        .R(1'b0));
  FDRE \r0_id_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[2]),
        .Q(r0_id[2]),
        .R(1'b0));
  FDRE \r0_id_reg[30] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[30]),
        .Q(r0_id[30]),
        .R(1'b0));
  FDRE \r0_id_reg[31] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[31]),
        .Q(r0_id[31]),
        .R(1'b0));
  FDRE \r0_id_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[3]),
        .Q(r0_id[3]),
        .R(1'b0));
  FDRE \r0_id_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[4]),
        .Q(r0_id[4]),
        .R(1'b0));
  FDRE \r0_id_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[5]),
        .Q(r0_id[5]),
        .R(1'b0));
  FDRE \r0_id_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[6]),
        .Q(r0_id[6]),
        .R(1'b0));
  FDRE \r0_id_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[7]),
        .Q(r0_id[7]),
        .R(1'b0));
  FDRE \r0_id_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[8]),
        .Q(r0_id[8]),
        .R(1'b0));
  FDRE \r0_id_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tid[9]),
        .Q(r0_id[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF1FFF00001000)) 
    \r0_is_null_r[1]_i_1 
       (.I0(s_axis_tkeep[2]),
        .I1(s_axis_tkeep[3]),
        .I2(s_axis_tvalid),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(r0_is_null_r[1]),
        .O(\r0_is_null_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FFF00001000)) 
    \r0_is_null_r[2]_i_1 
       (.I0(s_axis_tkeep[4]),
        .I1(s_axis_tkeep[5]),
        .I2(s_axis_tvalid),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(r0_is_null_r[2]),
        .O(\r0_is_null_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FFF00001000)) 
    \r0_is_null_r[3]_i_1 
       (.I0(s_axis_tkeep[6]),
        .I1(s_axis_tkeep[7]),
        .I2(s_axis_tvalid),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(r0_is_end),
        .O(\r0_is_null_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_is_null_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_is_null_r[1]_i_1_n_0 ),
        .Q(r0_is_null_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r0_is_null_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_is_null_r[2]_i_1_n_0 ),
        .Q(r0_is_null_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r0_is_null_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_is_null_r[3]_i_1_n_0 ),
        .Q(r0_is_end),
        .R(SR));
  FDRE \r0_keep_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[0]),
        .Q(r0_keep[0]),
        .R(1'b0));
  FDRE \r0_keep_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[1]),
        .Q(r0_keep[1]),
        .R(1'b0));
  FDRE \r0_keep_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[2]),
        .Q(r0_keep[2]),
        .R(1'b0));
  FDRE \r0_keep_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[3]),
        .Q(r0_keep[3]),
        .R(1'b0));
  FDRE \r0_keep_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[4]),
        .Q(r0_keep[4]),
        .R(1'b0));
  FDRE \r0_keep_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[5]),
        .Q(r0_keep[5]),
        .R(1'b0));
  FDRE \r0_keep_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[6]),
        .Q(r0_keep[6]),
        .R(1'b0));
  FDRE \r0_keep_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tkeep[7]),
        .Q(r0_keep[7]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tlast),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDDDFDDD02AA22AA)) 
    \r0_out_sel_next_r[0]_i_1 
       (.I0(m_axis_tready),
        .I1(r0_out_sel_next_r[1]),
        .I2(r0_is_null_r[2]),
        .I3(r0_is_end),
        .I4(r0_is_null_r[1]),
        .I5(r0_out_sel_next_r[0]),
        .O(\r0_out_sel_next_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCCCE)) 
    \r0_out_sel_next_r[1]_i_1 
       (.I0(Q[0]),
        .I1(\r0_out_sel_next_r[1]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(SR),
        .O(r0_out_sel_next_r_0));
  LUT5 #(
    .INIT(32'hF7F0F0F0)) 
    \r0_out_sel_next_r[1]_i_2 
       (.I0(r0_is_end),
        .I1(r0_is_null_r[2]),
        .I2(r0_out_sel_next_r[1]),
        .I3(r0_out_sel_next_r[0]),
        .I4(m_axis_tready),
        .O(\r0_out_sel_next_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0F08000000000)) 
    \r0_out_sel_next_r[1]_i_3 
       (.I0(r0_is_null_r[1]),
        .I1(r0_is_null_r[2]),
        .I2(r0_is_end),
        .I3(\r0_out_sel_r_reg_n_0_[1] ),
        .I4(\r0_out_sel_r_reg_n_0_[0] ),
        .I5(m_axis_tready),
        .O(\r0_out_sel_next_r[1]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r0_out_sel_next_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_next_r[0]_i_1_n_0 ),
        .Q(r0_out_sel_next_r[0]),
        .S(r0_out_sel_next_r_0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_next_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_next_r[1]_i_2_n_0 ),
        .Q(r0_out_sel_next_r[1]),
        .R(r0_out_sel_next_r_0));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \r0_out_sel_r[0]_i_1 
       (.I0(r0_out_sel_next_r[0]),
        .I1(m_axis_tready),
        .I2(r0_out_sel_r0),
        .I3(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_out_sel_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \r0_out_sel_r[1]_i_1 
       (.I0(r0_out_sel_next_r[1]),
        .I1(m_axis_tready),
        .I2(r0_out_sel_r0),
        .I3(\r0_out_sel_r_reg_n_0_[1] ),
        .O(\r0_out_sel_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_1_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[0] ),
        .R(r0_out_sel_next_r_0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[1]_i_1_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[1] ),
        .R(r0_out_sel_next_r_0));
  FDRE \r0_user_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[0]),
        .Q(r0_user[0]),
        .R(1'b0));
  FDRE \r0_user_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[10]),
        .Q(r0_user[10]),
        .R(1'b0));
  FDRE \r0_user_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[11]),
        .Q(r0_user[11]),
        .R(1'b0));
  FDRE \r0_user_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[12]),
        .Q(r0_user[12]),
        .R(1'b0));
  FDRE \r0_user_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[13]),
        .Q(r0_user[13]),
        .R(1'b0));
  FDRE \r0_user_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[14]),
        .Q(r0_user[14]),
        .R(1'b0));
  FDRE \r0_user_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[15]),
        .Q(r0_user[15]),
        .R(1'b0));
  FDRE \r0_user_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[16]),
        .Q(r0_user[16]),
        .R(1'b0));
  FDRE \r0_user_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[17]),
        .Q(r0_user[17]),
        .R(1'b0));
  FDRE \r0_user_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[18]),
        .Q(r0_user[18]),
        .R(1'b0));
  FDRE \r0_user_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[19]),
        .Q(r0_user[19]),
        .R(1'b0));
  FDRE \r0_user_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[1]),
        .Q(r0_user[1]),
        .R(1'b0));
  FDRE \r0_user_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[20]),
        .Q(r0_user[20]),
        .R(1'b0));
  FDRE \r0_user_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[21]),
        .Q(r0_user[21]),
        .R(1'b0));
  FDRE \r0_user_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[22]),
        .Q(r0_user[22]),
        .R(1'b0));
  FDRE \r0_user_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[23]),
        .Q(r0_user[23]),
        .R(1'b0));
  FDRE \r0_user_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[2]),
        .Q(r0_user[2]),
        .R(1'b0));
  FDRE \r0_user_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[3]),
        .Q(r0_user[3]),
        .R(1'b0));
  FDRE \r0_user_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[4]),
        .Q(r0_user[4]),
        .R(1'b0));
  FDRE \r0_user_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[5]),
        .Q(r0_user[5]),
        .R(1'b0));
  FDRE \r0_user_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[6]),
        .Q(r0_user[6]),
        .R(1'b0));
  FDRE \r0_user_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[7]),
        .Q(r0_user[7]),
        .R(1'b0));
  FDRE \r0_user_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[8]),
        .Q(r0_user[8]),
        .R(1'b0));
  FDRE \r0_user_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(s_axis_tuser[9]),
        .Q(r0_user[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[0]_i_1 
       (.I0(\r0_data_reg_n_0_[48] ),
        .I1(p_0_in1_in[16]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[32]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[10]_i_1 
       (.I0(\r0_data_reg_n_0_[58] ),
        .I1(p_0_in1_in[26]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[42]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[11]_i_1 
       (.I0(\r0_data_reg_n_0_[59] ),
        .I1(p_0_in1_in[27]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[43]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[12]_i_1 
       (.I0(\r0_data_reg_n_0_[60] ),
        .I1(p_0_in1_in[28]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[44]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[13]_i_1 
       (.I0(\r0_data_reg_n_0_[61] ),
        .I1(p_0_in1_in[29]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[45]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[14]_i_1 
       (.I0(\r0_data_reg_n_0_[62] ),
        .I1(p_0_in1_in[30]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[46]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[14]),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h10)) 
    \r1_data[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(r1_load));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[15]_i_2 
       (.I0(\r0_data_reg_n_0_[63] ),
        .I1(p_0_in1_in[31]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[47]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[1]_i_1 
       (.I0(\r0_data_reg_n_0_[49] ),
        .I1(p_0_in1_in[17]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[33]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[2]_i_1 
       (.I0(\r0_data_reg_n_0_[50] ),
        .I1(p_0_in1_in[18]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[34]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[3]_i_1 
       (.I0(\r0_data_reg_n_0_[51] ),
        .I1(p_0_in1_in[19]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[35]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[4]_i_1 
       (.I0(\r0_data_reg_n_0_[52] ),
        .I1(p_0_in1_in[20]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[36]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[5]_i_1 
       (.I0(\r0_data_reg_n_0_[53] ),
        .I1(p_0_in1_in[21]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[37]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[6]_i_1 
       (.I0(\r0_data_reg_n_0_[54] ),
        .I1(p_0_in1_in[22]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[38]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[7]_i_1 
       (.I0(\r0_data_reg_n_0_[55] ),
        .I1(p_0_in1_in[23]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[39]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[8]_i_1 
       (.I0(\r0_data_reg_n_0_[56] ),
        .I1(p_0_in1_in[24]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[40]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_data[9]_i_1 
       (.I0(\r0_data_reg_n_0_[57] ),
        .I1(p_0_in1_in[25]),
        .I2(r0_out_sel_next_r[0]),
        .I3(p_0_in1_in[41]),
        .I4(r0_out_sel_next_r[1]),
        .I5(p_0_in1_in[9]),
        .O(p_0_in[9]));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[0]),
        .Q(p_0_in1_in[48]),
        .R(1'b0));
  FDRE \r1_data_reg[10] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[10]),
        .Q(p_0_in1_in[58]),
        .R(1'b0));
  FDRE \r1_data_reg[11] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[11]),
        .Q(p_0_in1_in[59]),
        .R(1'b0));
  FDRE \r1_data_reg[12] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[12]),
        .Q(p_0_in1_in[60]),
        .R(1'b0));
  FDRE \r1_data_reg[13] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[13]),
        .Q(p_0_in1_in[61]),
        .R(1'b0));
  FDRE \r1_data_reg[14] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[14]),
        .Q(p_0_in1_in[62]),
        .R(1'b0));
  FDRE \r1_data_reg[15] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[15]),
        .Q(p_0_in1_in[63]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[1]),
        .Q(p_0_in1_in[49]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[2]),
        .Q(p_0_in1_in[50]),
        .R(1'b0));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[3]),
        .Q(p_0_in1_in[51]),
        .R(1'b0));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[4]),
        .Q(p_0_in1_in[52]),
        .R(1'b0));
  FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[5]),
        .Q(p_0_in1_in[53]),
        .R(1'b0));
  FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[6]),
        .Q(p_0_in1_in[54]),
        .R(1'b0));
  FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[7]),
        .Q(p_0_in1_in[55]),
        .R(1'b0));
  FDRE \r1_data_reg[8] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[8]),
        .Q(p_0_in1_in[56]),
        .R(1'b0));
  FDRE \r1_data_reg[9] 
       (.C(aclk),
        .CE(r1_load),
        .D(p_0_in[9]),
        .Q(p_0_in1_in[57]),
        .R(1'b0));
  FDRE \r1_id_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[0]),
        .Q(r1_id[0]),
        .R(1'b0));
  FDRE \r1_id_reg[10] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[10]),
        .Q(r1_id[10]),
        .R(1'b0));
  FDRE \r1_id_reg[11] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[11]),
        .Q(r1_id[11]),
        .R(1'b0));
  FDRE \r1_id_reg[12] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[12]),
        .Q(r1_id[12]),
        .R(1'b0));
  FDRE \r1_id_reg[13] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[13]),
        .Q(r1_id[13]),
        .R(1'b0));
  FDRE \r1_id_reg[14] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[14]),
        .Q(r1_id[14]),
        .R(1'b0));
  FDRE \r1_id_reg[15] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[15]),
        .Q(r1_id[15]),
        .R(1'b0));
  FDRE \r1_id_reg[16] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[16]),
        .Q(r1_id[16]),
        .R(1'b0));
  FDRE \r1_id_reg[17] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[17]),
        .Q(r1_id[17]),
        .R(1'b0));
  FDRE \r1_id_reg[18] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[18]),
        .Q(r1_id[18]),
        .R(1'b0));
  FDRE \r1_id_reg[19] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[19]),
        .Q(r1_id[19]),
        .R(1'b0));
  FDRE \r1_id_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[1]),
        .Q(r1_id[1]),
        .R(1'b0));
  FDRE \r1_id_reg[20] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[20]),
        .Q(r1_id[20]),
        .R(1'b0));
  FDRE \r1_id_reg[21] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[21]),
        .Q(r1_id[21]),
        .R(1'b0));
  FDRE \r1_id_reg[22] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[22]),
        .Q(r1_id[22]),
        .R(1'b0));
  FDRE \r1_id_reg[23] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[23]),
        .Q(r1_id[23]),
        .R(1'b0));
  FDRE \r1_id_reg[24] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[24]),
        .Q(r1_id[24]),
        .R(1'b0));
  FDRE \r1_id_reg[25] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[25]),
        .Q(r1_id[25]),
        .R(1'b0));
  FDRE \r1_id_reg[26] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[26]),
        .Q(r1_id[26]),
        .R(1'b0));
  FDRE \r1_id_reg[27] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[27]),
        .Q(r1_id[27]),
        .R(1'b0));
  FDRE \r1_id_reg[28] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[28]),
        .Q(r1_id[28]),
        .R(1'b0));
  FDRE \r1_id_reg[29] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[29]),
        .Q(r1_id[29]),
        .R(1'b0));
  FDRE \r1_id_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[2]),
        .Q(r1_id[2]),
        .R(1'b0));
  FDRE \r1_id_reg[30] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[30]),
        .Q(r1_id[30]),
        .R(1'b0));
  FDRE \r1_id_reg[31] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[31]),
        .Q(r1_id[31]),
        .R(1'b0));
  FDRE \r1_id_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[3]),
        .Q(r1_id[3]),
        .R(1'b0));
  FDRE \r1_id_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[4]),
        .Q(r1_id[4]),
        .R(1'b0));
  FDRE \r1_id_reg[5] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[5]),
        .Q(r1_id[5]),
        .R(1'b0));
  FDRE \r1_id_reg[6] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[6]),
        .Q(r1_id[6]),
        .R(1'b0));
  FDRE \r1_id_reg[7] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[7]),
        .Q(r1_id[7]),
        .R(1'b0));
  FDRE \r1_id_reg[8] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[8]),
        .Q(r1_id[8]),
        .R(1'b0));
  FDRE \r1_id_reg[9] 
       (.C(aclk),
        .CE(r1_load),
        .D(r0_id[9]),
        .Q(r1_id[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_keep[0]_i_1 
       (.I0(r0_keep[6]),
        .I1(r0_keep[2]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_keep[4]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_keep[0]),
        .O(\r1_keep[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_keep[1]_i_1 
       (.I0(r0_keep[7]),
        .I1(r0_keep[3]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_keep[5]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_keep[1]),
        .O(\r1_keep[1]_i_1_n_0 ));
  FDRE \r1_keep_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_keep[0]_i_1_n_0 ),
        .Q(r1_keep[0]),
        .R(1'b0));
  FDRE \r1_keep_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_keep[1]_i_1_n_0 ),
        .Q(r1_keep[1]),
        .R(1'b0));
  FDRE r1_last_reg
       (.C(aclk),
        .CE(r1_load),
        .D(r0_last_reg_n_0),
        .Q(r1_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[0]_i_1 
       (.I0(r0_user[18]),
        .I1(r0_user[6]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[12]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[0]),
        .O(\r1_user[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[1]_i_1 
       (.I0(r0_user[19]),
        .I1(r0_user[7]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[13]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[1]),
        .O(\r1_user[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[2]_i_1 
       (.I0(r0_user[20]),
        .I1(r0_user[8]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[14]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[2]),
        .O(\r1_user[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[3]_i_1 
       (.I0(r0_user[21]),
        .I1(r0_user[9]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[15]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[3]),
        .O(\r1_user[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[4]_i_1 
       (.I0(r0_user[22]),
        .I1(r0_user[10]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[16]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[4]),
        .O(\r1_user[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r1_user[5]_i_1 
       (.I0(r0_user[23]),
        .I1(r0_user[11]),
        .I2(r0_out_sel_next_r[0]),
        .I3(r0_user[17]),
        .I4(r0_out_sel_next_r[1]),
        .I5(r0_user[5]),
        .O(\r1_user[5]_i_1_n_0 ));
  FDRE \r1_user_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[0]_i_1_n_0 ),
        .Q(r1_user[0]),
        .R(1'b0));
  FDRE \r1_user_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[1]_i_1_n_0 ),
        .Q(r1_user[1]),
        .R(1'b0));
  FDRE \r1_user_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[2]_i_1_n_0 ),
        .Q(r1_user[2]),
        .R(1'b0));
  FDRE \r1_user_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[3]_i_1_n_0 ),
        .Q(r1_user[3]),
        .R(1'b0));
  FDRE \r1_user_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[4]_i_1_n_0 ),
        .Q(r1_user[4]),
        .R(1'b0));
  FDRE \r1_user_reg[5] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r1_user[5]_i_1_n_0 ),
        .Q(r1_user[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF3F30BFB)) 
    \state[0]_i_1 
       (.I0(r0_out_sel_r0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axis_tvalid),
        .I4(\state_reg_n_0_[2] ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hFFC0F08000000000)) 
    \state[0]_i_2 
       (.I0(r0_is_null_r[1]),
        .I1(r0_is_null_r[2]),
        .I2(r0_is_end),
        .I3(r0_out_sel_next_r[1]),
        .I4(r0_out_sel_next_r[0]),
        .I5(m_axis_tready),
        .O(r0_out_sel_r0));
  LUT6 #(
    .INIT(64'h0000F0F0FF30B0B0)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(m_axis_tready),
        .I2(Q[1]),
        .I3(s_axis_tvalid),
        .I4(Q[0]),
        .I5(\state_reg_n_0_[2] ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[1]_i_2 
       (.I0(r0_is_null_r[2]),
        .I1(r0_is_end),
        .I2(r0_is_null_r[1]),
        .O(\state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h05080000)) 
    \state[2]_i_1 
       (.I0(Q[0]),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c6_vfb_0_0_axis_converter,axis_dwidth_converter_v1_1_17_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_22c6_vfb_0_0_axis_converter" *) 
(* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
module bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [31:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [1:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [31:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [5:0]m_axis_tuser;

  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire [31:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [5:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [31:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [23:0]s_axis_tuser;
  wire s_axis_tvalid;

  bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter inst
       (.Q({m_axis_tvalid,s_axis_tready}),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "bd_22c6_vfb_0_0_axis_dconverter" *) 
module bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter
   (s_axis_tready,
    mdt_tv,
    m_axis_tlast,
    \state_reg[1] ,
    D,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    vfb_clk,
    s_axis_aresetn,
    s_fifo_tv,
    Q,
    \r0_keep_reg[7] ,
    s_axis_tlast,
    \r0_id_reg[25] ,
    s_axis_tuser,
    mdt_tr,
    sband_tu_r,
    sband_tact0,
    \vfb_data_reg[15] ,
    \vfb_sof_reg[0] ,
    \vfb_vcdt_reg[9] ,
    \vfb_data_reg[15]_0 ,
    \vfb_data_reg[15]_1 ,
    sband_tl_r_reg);
  output s_axis_tready;
  output mdt_tv;
  output m_axis_tlast;
  output \state_reg[1] ;
  output [9:0]D;
  output [15:0]\state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  input vfb_clk;
  input s_axis_aresetn;
  input s_fifo_tv;
  input [63:0]Q;
  input [7:0]\r0_keep_reg[7] ;
  input s_axis_tlast;
  input [25:0]\r0_id_reg[25] ;
  input [0:0]s_axis_tuser;
  input mdt_tr;
  input sband_tu_r;
  input sband_tact0;
  input [17:0]\vfb_data_reg[15] ;
  input \vfb_sof_reg[0] ;
  input [9:0]\vfb_vcdt_reg[9] ;
  input [7:0]\vfb_data_reg[15]_0 ;
  input \vfb_data_reg[15]_1 ;
  input sband_tl_r_reg;

  wire [9:0]D;
  wire [63:0]Q;
  wire [15:0]m_axis_tdata;
  wire [31:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tuser;
  wire mdt_tr;
  wire mdt_tv;
  wire [25:0]\r0_id_reg[25] ;
  wire [7:0]\r0_keep_reg[7] ;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_fifo_tv;
  wire sband_tact0;
  wire sband_tl_r_reg;
  wire sband_tu_r;
  wire \state_reg[1] ;
  wire [15:0]\state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire vfb_clk;
  wire [17:0]\vfb_data_reg[15] ;
  wire [7:0]\vfb_data_reg[15]_0 ;
  wire \vfb_data_reg[15]_1 ;
  wire \vfb_sof_reg[0] ;
  wire [9:0]\vfb_vcdt_reg[9] ;
  wire [5:3]NLW_axis_conv_inst_m_axis_tuser_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_22c6_vfb_0_0_axis_converter,axis_dwidth_converter_v1_1_17_axis_dwidth_converter,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3" *) 
  bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter axis_conv_inst
       (.aclk(vfb_clk),
        .aresetn(s_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(mdt_tr),
        .m_axis_tuser({NLW_axis_conv_inst_m_axis_tuser_UNCONNECTED[5:3],m_axis_tuser}),
        .m_axis_tvalid(mdt_tv),
        .s_axis_tdata(Q),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\r0_id_reg[25] }),
        .s_axis_tkeep(\r0_keep_reg[7] ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser({1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser,1'b0,1'b0,s_axis_tuser}),
        .s_axis_tvalid(s_fifo_tv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sband_tl_r_i_4
       (.I0(mdt_tv),
        .I1(sband_tl_r_reg),
        .O(\state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[0]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[0]),
        .O(\state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[10]_i_1 
       (.I0(m_axis_tdata[10]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [12]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [2]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[11]_i_1 
       (.I0(m_axis_tdata[11]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [13]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [3]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[12]_i_1 
       (.I0(m_axis_tdata[12]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [14]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [4]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [12]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[13]_i_1 
       (.I0(m_axis_tdata[13]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [15]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [5]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [13]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[14]_i_1 
       (.I0(m_axis_tdata[14]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [16]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [6]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [14]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[15]_i_2 
       (.I0(m_axis_tdata[15]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [17]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [7]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[1]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[1]),
        .O(\state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[2]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[2]),
        .O(\state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[3]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[3]),
        .O(\state_reg[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[4]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[4]),
        .O(\state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[5]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[5]),
        .O(\state_reg[1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[6]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[6]),
        .O(\state_reg[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_data[7]_i_1 
       (.I0(mdt_tv),
        .I1(m_axis_tdata[7]),
        .O(\state_reg[1]_0 [7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[8]_i_1 
       (.I0(m_axis_tdata[8]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [10]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [0]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \vfb_data[9]_i_1 
       (.I0(m_axis_tdata[9]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [11]),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15]_0 [1]),
        .I5(\vfb_data_reg[15]_1 ),
        .O(\state_reg[1]_0 [9]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \vfb_sof[0]_i_2 
       (.I0(m_axis_tuser[0]),
        .I1(mdt_tv),
        .I2(sband_tu_r),
        .I3(sband_tact0),
        .I4(\vfb_data_reg[15] [4]),
        .I5(\vfb_sof_reg[0] ),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[0]_i_1 
       (.I0(m_axis_tid[0]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [0]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[1]_i_1 
       (.I0(m_axis_tid[1]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [1]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[2]_i_1 
       (.I0(m_axis_tid[2]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [2]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[3]_i_1 
       (.I0(m_axis_tid[3]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [3]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[4]_i_1 
       (.I0(m_axis_tid[4]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [5]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[5]_i_1 
       (.I0(m_axis_tid[5]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [6]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[6]_i_1 
       (.I0(m_axis_tid[6]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [7]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[7]_i_1 
       (.I0(m_axis_tid[7]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [8]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vfb_vcdt[8]_i_1 
       (.I0(m_axis_tid[8]),
        .I1(mdt_tv),
        .I2(\vfb_data_reg[15] [9]),
        .I3(sband_tact0),
        .I4(\vfb_vcdt_reg[9] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \vfb_vcdt[9]_i_2 
       (.I0(m_axis_tid[9]),
        .I1(mdt_tv),
        .I2(\vfb_vcdt_reg[9] [9]),
        .I3(sband_tact0),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "bd_22c6_vfb_0_0_core" *) 
module bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core
   (vfb_valid_reg,
    vfb_eol_reg,
    mdt_tv,
    mdt_tr,
    vfb_vcdt,
    vfb_data,
    s_axis_tready,
    sdt_tv,
    sdt_tr,
    vfb_sof,
    vfb_ready,
    s_axis_aresetn,
    D,
    s_axis_tvalid,
    vfb_clk,
    s_axis_aclk);
  output vfb_valid_reg;
  output vfb_eol_reg;
  output mdt_tv;
  output mdt_tr;
  output [9:0]vfb_vcdt;
  output [15:0]vfb_data;
  output s_axis_tready;
  output sdt_tv;
  output sdt_tr;
  output [0:0]vfb_sof;
  input vfb_ready;
  input s_axis_aresetn;
  input [99:0]D;
  input s_axis_tvalid;
  input vfb_clk;
  input s_axis_aclk;

  wire [99:0]D;
  wire axis_dconverter_n_14;
  wire axis_dconverter_n_15;
  wire axis_dconverter_n_16;
  wire axis_dconverter_n_17;
  wire axis_dconverter_n_18;
  wire axis_dconverter_n_19;
  wire axis_dconverter_n_20;
  wire axis_dconverter_n_21;
  wire axis_dconverter_n_22;
  wire axis_dconverter_n_23;
  wire axis_dconverter_n_24;
  wire axis_dconverter_n_25;
  wire axis_dconverter_n_26;
  wire axis_dconverter_n_27;
  wire axis_dconverter_n_28;
  wire axis_dconverter_n_29;
  wire axis_dconverter_n_3;
  wire axis_dconverter_n_30;
  wire cur_dtype_udef;
  wire [23:16]fifo_td;
  wire fifo_tl;
  wire m_axis_tlast;
  wire mdt_tr;
  wire mdt_tv;
  wire op_inf_n_10;
  wire op_inf_n_11;
  wire op_inf_n_12;
  wire op_inf_n_13;
  wire op_inf_n_14;
  wire op_inf_n_35;
  wire op_inf_n_36;
  wire op_inf_n_37;
  wire op_inf_n_38;
  wire op_inf_n_39;
  wire op_inf_n_4;
  wire op_inf_n_40;
  wire op_inf_n_41;
  wire op_inf_n_42;
  wire op_inf_n_43;
  wire op_inf_n_44;
  wire op_inf_n_45;
  wire op_inf_n_46;
  wire op_inf_n_47;
  wire op_inf_n_48;
  wire op_inf_n_49;
  wire op_inf_n_5;
  wire op_inf_n_50;
  wire op_inf_n_51;
  wire op_inf_n_52;
  wire op_inf_n_53;
  wire op_inf_n_54;
  wire op_inf_n_55;
  wire op_inf_n_56;
  wire op_inf_n_57;
  wire op_inf_n_58;
  wire op_inf_n_59;
  wire op_inf_n_60;
  wire op_inf_n_61;
  wire op_inf_n_62;
  wire op_inf_n_63;
  wire op_inf_n_64;
  wire op_inf_n_65;
  wire op_inf_n_66;
  wire op_inf_n_67;
  wire op_inf_n_68;
  wire op_inf_n_69;
  wire op_inf_n_7;
  wire op_inf_n_70;
  wire op_inf_n_71;
  wire op_inf_n_72;
  wire op_inf_n_73;
  wire op_inf_n_74;
  wire op_inf_n_75;
  wire op_inf_n_76;
  wire op_inf_n_77;
  wire op_inf_n_78;
  wire op_inf_n_79;
  wire op_inf_n_8;
  wire op_inf_n_80;
  wire op_inf_n_81;
  wire op_inf_n_82;
  wire op_inf_n_83;
  wire op_inf_n_84;
  wire op_inf_n_85;
  wire op_inf_n_86;
  wire op_inf_n_87;
  wire op_inf_n_88;
  wire op_inf_n_89;
  wire op_inf_n_90;
  wire [9:0]p_1_in;
  wire reorder_n_1;
  wire reorder_n_23;
  wire reorder_n_5;
  wire reorder_n_93;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [63:0]s_fifo_td;
  wire [25:0]s_fifo_tid;
  wire [7:0]s_fifo_tk;
  wire s_fifo_tl;
  wire s_fifo_tr;
  wire [21:21]s_fifo_tu;
  wire s_fifo_tv;
  wire sband_tact0;
  wire [55:0]sband_td_r;
  wire [1:1]sband_tk;
  wire [6:1]sband_tk_r;
  wire [3:0]sband_ts;
  wire [9:4]sband_ts_0;
  wire [9:0]sband_ts_r;
  wire sband_tu;
  wire sband_tu_r;
  wire sdt_tr;
  wire sdt_tv;
  wire vfb_clk;
  wire [15:0]vfb_data;
  wire vfb_eol_reg;
  wire vfb_ready;
  wire [0:0]vfb_sof;
  wire vfb_valid_reg;
  wire [9:0]vfb_vcdt;

  bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter axis_dconverter
       (.D(p_1_in),
        .Q(s_fifo_td),
        .m_axis_tlast(m_axis_tlast),
        .mdt_tr(mdt_tr),
        .mdt_tv(mdt_tv),
        .\r0_id_reg[25] (s_fifo_tid),
        .\r0_keep_reg[7] (s_fifo_tk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(s_fifo_tl),
        .s_axis_tready(s_fifo_tr),
        .s_axis_tuser(s_fifo_tu),
        .s_fifo_tv(s_fifo_tv),
        .sband_tact0(sband_tact0),
        .sband_tl_r_reg(vfb_eol_reg),
        .sband_tu_r(sband_tu_r),
        .\state_reg[1] (axis_dconverter_n_3),
        .\state_reg[1]_0 ({axis_dconverter_n_14,axis_dconverter_n_15,axis_dconverter_n_16,axis_dconverter_n_17,axis_dconverter_n_18,axis_dconverter_n_19,axis_dconverter_n_20,axis_dconverter_n_21,axis_dconverter_n_22,axis_dconverter_n_23,axis_dconverter_n_24,axis_dconverter_n_25,axis_dconverter_n_26,axis_dconverter_n_27,axis_dconverter_n_28,axis_dconverter_n_29}),
        .\state_reg[1]_1 (axis_dconverter_n_30),
        .vfb_clk(vfb_clk),
        .\vfb_data_reg[15] ({fifo_td,sband_ts_0[8:4],reorder_n_23,sband_ts}),
        .\vfb_data_reg[15]_0 ({op_inf_n_83,op_inf_n_84,op_inf_n_85,op_inf_n_86,op_inf_n_87,op_inf_n_88,op_inf_n_89,op_inf_n_90}),
        .\vfb_data_reg[15]_1 (op_inf_n_4),
        .\vfb_sof_reg[0] (op_inf_n_7),
        .\vfb_vcdt_reg[9] (sband_ts_r));
  bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf op_inf
       (.D(sband_tk_r),
        .E(reorder_n_5),
        .Q({sband_tk,sband_ts_0,sband_ts}),
        .SR(reorder_n_1),
        .\buf_valid_reg[0] (reorder_n_93),
        .cur_dtype_udef(cur_dtype_udef),
        .cur_dtype_udef_reg(op_inf_n_5),
        .fifo_tl(fifo_tl),
        .m_axis_tlast(m_axis_tlast),
        .mdt_tr(mdt_tr),
        .mdt_tv(mdt_tv),
        .s_axis_aresetn(s_axis_aresetn),
        .sband_tact0(sband_tact0),
        .sband_tact_reg_0(op_inf_n_4),
        .\sband_td_r_reg[55]_0 ({op_inf_n_35,op_inf_n_36,op_inf_n_37,op_inf_n_38,op_inf_n_39,op_inf_n_40,op_inf_n_41,op_inf_n_42,op_inf_n_43,op_inf_n_44,op_inf_n_45,op_inf_n_46,op_inf_n_47,op_inf_n_48,op_inf_n_49,op_inf_n_50,op_inf_n_51,op_inf_n_52,op_inf_n_53,op_inf_n_54,op_inf_n_55,op_inf_n_56,op_inf_n_57,op_inf_n_58,op_inf_n_59,op_inf_n_60,op_inf_n_61,op_inf_n_62,op_inf_n_63,op_inf_n_64,op_inf_n_65,op_inf_n_66,op_inf_n_67,op_inf_n_68,op_inf_n_69,op_inf_n_70,op_inf_n_71,op_inf_n_72,op_inf_n_73,op_inf_n_74,op_inf_n_75,op_inf_n_76,op_inf_n_77,op_inf_n_78,op_inf_n_79,op_inf_n_80,op_inf_n_81,op_inf_n_82,op_inf_n_83,op_inf_n_84,op_inf_n_85,op_inf_n_86,op_inf_n_87,op_inf_n_88,op_inf_n_89,op_inf_n_90}),
        .\sband_td_r_reg[55]_1 (sband_td_r),
        .\sband_tk_r_reg[6]_0 ({op_inf_n_10,op_inf_n_11,op_inf_n_12,op_inf_n_13,op_inf_n_14}),
        .\sband_ts_r_reg[9]_0 (sband_ts_r),
        .sband_tu(sband_tu),
        .sband_tu_r(sband_tu_r),
        .sdt_tr(sdt_tr),
        .vfb_clk(vfb_clk),
        .vfb_data(vfb_data),
        .\vfb_data_reg[15]_0 ({axis_dconverter_n_14,axis_dconverter_n_15,axis_dconverter_n_16,axis_dconverter_n_17,axis_dconverter_n_18,axis_dconverter_n_19,axis_dconverter_n_20,axis_dconverter_n_21,axis_dconverter_n_22,axis_dconverter_n_23,axis_dconverter_n_24,axis_dconverter_n_25,axis_dconverter_n_26,axis_dconverter_n_27,axis_dconverter_n_28,axis_dconverter_n_29}),
        .vfb_eol_reg_0(vfb_eol_reg),
        .vfb_eol_reg_1(op_inf_n_7),
        .vfb_ready(vfb_ready),
        .vfb_sof(vfb_sof),
        .\vfb_sof_reg[0]_0 (axis_dconverter_n_3),
        .vfb_valid_reg_0(vfb_valid_reg),
        .vfb_valid_reg_1(op_inf_n_8),
        .vfb_vcdt(vfb_vcdt),
        .\vfb_vcdt_reg[9]_0 (p_1_in));
  bd_22c6_vfb_0_0_vfb_v1_0_12_reorder reorder
       (.D(D),
        .E(reorder_n_5),
        .Q({fifo_td,sband_tk,sband_ts_0,reorder_n_23,sband_ts}),
        .SR(reorder_n_1),
        .\buf_data_reg[0][107]_0 (sband_tk_r),
        .\buf_data_reg[0][171]_0 (sband_td_r),
        .\buf_valid_reg[0]_0 (op_inf_n_5),
        .\buf_valid_reg[1]_0 (s_axis_tready),
        .cur_dtype_sink_reg_0(reorder_n_93),
        .cur_dtype_udef(cur_dtype_udef),
        .fifo_tl(fifo_tl),
        .mdt_tv(mdt_tv),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(s_fifo_tl),
        .s_axis_tready(s_fifo_tr),
        .s_axis_tuser(s_fifo_tu),
        .s_axis_tvalid(s_axis_tvalid),
        .\s_fifo_td_reg[63]_0 (s_fifo_td),
        .\s_fifo_tid_reg[25]_0 (s_fifo_tid),
        .\s_fifo_tk_reg[7]_0 (s_fifo_tk),
        .s_fifo_tv(s_fifo_tv),
        .sband_tact0(sband_tact0),
        .\sband_td_r_reg[0] (vfb_valid_reg),
        .\sband_td_r_reg[47] ({op_inf_n_35,op_inf_n_36,op_inf_n_37,op_inf_n_38,op_inf_n_39,op_inf_n_40,op_inf_n_41,op_inf_n_42,op_inf_n_43,op_inf_n_44,op_inf_n_45,op_inf_n_46,op_inf_n_47,op_inf_n_48,op_inf_n_49,op_inf_n_50,op_inf_n_51,op_inf_n_52,op_inf_n_53,op_inf_n_54,op_inf_n_55,op_inf_n_56,op_inf_n_57,op_inf_n_58,op_inf_n_59,op_inf_n_60,op_inf_n_61,op_inf_n_62,op_inf_n_63,op_inf_n_64,op_inf_n_65,op_inf_n_66,op_inf_n_67,op_inf_n_68,op_inf_n_69,op_inf_n_70,op_inf_n_71,op_inf_n_72,op_inf_n_73,op_inf_n_74,op_inf_n_75,op_inf_n_76,op_inf_n_77,op_inf_n_78,op_inf_n_79,op_inf_n_80,op_inf_n_81,op_inf_n_82}),
        .\sband_tk_r_reg[5] ({op_inf_n_10,op_inf_n_11,op_inf_n_12,op_inf_n_13,op_inf_n_14}),
        .sband_tl_r_reg(vfb_eol_reg),
        .sband_tl_r_reg_0(op_inf_n_8),
        .sband_tl_r_reg_1(axis_dconverter_n_30),
        .sband_tu(sband_tu),
        .sdt_tv(sdt_tv),
        .vfb_ready(vfb_ready));
endmodule

(* ORIG_REF_NAME = "vfb_v1_0_12_op_inf" *) 
module bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf
   (sband_tu_r,
    vfb_eol_reg_0,
    vfb_valid_reg_0,
    vfb_sof,
    sband_tact_reg_0,
    cur_dtype_udef_reg,
    sdt_tr,
    vfb_eol_reg_1,
    vfb_valid_reg_1,
    mdt_tr,
    \sband_tk_r_reg[6]_0 ,
    \sband_ts_r_reg[9]_0 ,
    vfb_vcdt,
    \sband_td_r_reg[55]_0 ,
    vfb_data,
    SR,
    sband_tact0,
    fifo_tl,
    vfb_clk,
    sband_tu,
    vfb_ready,
    s_axis_aresetn,
    Q,
    mdt_tv,
    cur_dtype_udef,
    \buf_valid_reg[0] ,
    \vfb_sof_reg[0]_0 ,
    m_axis_tlast,
    E,
    D,
    \vfb_vcdt_reg[9]_0 ,
    \sband_td_r_reg[55]_1 ,
    \vfb_data_reg[15]_0 );
  output sband_tu_r;
  output vfb_eol_reg_0;
  output vfb_valid_reg_0;
  output [0:0]vfb_sof;
  output sband_tact_reg_0;
  output cur_dtype_udef_reg;
  output sdt_tr;
  output vfb_eol_reg_1;
  output vfb_valid_reg_1;
  output mdt_tr;
  output [4:0]\sband_tk_r_reg[6]_0 ;
  output [9:0]\sband_ts_r_reg[9]_0 ;
  output [9:0]vfb_vcdt;
  output [55:0]\sband_td_r_reg[55]_0 ;
  output [15:0]vfb_data;
  input [0:0]SR;
  input sband_tact0;
  input fifo_tl;
  input vfb_clk;
  input sband_tu;
  input vfb_ready;
  input s_axis_aresetn;
  input [10:0]Q;
  input mdt_tv;
  input cur_dtype_udef;
  input \buf_valid_reg[0] ;
  input \vfb_sof_reg[0]_0 ;
  input m_axis_tlast;
  input [0:0]E;
  input [5:0]D;
  input [9:0]\vfb_vcdt_reg[9]_0 ;
  input [55:0]\sband_td_r_reg[55]_1 ;
  input [15:0]\vfb_data_reg[15]_0 ;

  wire [5:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]SR;
  wire \buf_valid[1]_i_3_n_0 ;
  wire \buf_valid_reg[0] ;
  wire [3:0]cnt_done0;
  wire cur_dtype_udef;
  wire cur_dtype_udef_reg;
  wire fifo_tl;
  wire m_axis_tlast;
  wire mdt_tr;
  wire mdt_tv;
  wire s_axis_aresetn;
  wire sband_tact;
  wire sband_tact0;
  wire sband_tact_i_1_n_0;
  wire sband_tact_reg_0;
  wire [55:0]\sband_td_r_reg[55]_0 ;
  wire [55:0]\sband_td_r_reg[55]_1 ;
  wire [4:0]\sband_tk_r_reg[6]_0 ;
  wire \sband_tk_r_reg_n_0_[1] ;
  wire sband_tl_r;
  wire sband_tr2;
  wire [9:0]\sband_ts_r_reg[9]_0 ;
  wire sband_tu;
  wire sband_tu_r;
  wire sdt_tr;
  wire sdt_tr_INST_0_i_1_n_0;
  wire vfb_clk;
  wire \vfb_cnt[3]_i_1_n_0 ;
  wire [3:0]vfb_cnt_reg__0;
  wire [15:0]vfb_data;
  wire \vfb_data[15]_i_1_n_0 ;
  wire [15:0]\vfb_data_reg[15]_0 ;
  wire vfb_eol_i_1_n_0;
  wire vfb_eol_i_2_n_0;
  wire vfb_eol_reg_0;
  wire vfb_eol_reg_1;
  wire vfb_ready;
  wire [0:0]vfb_sof;
  wire \vfb_sof[0]_i_1_n_0 ;
  wire \vfb_sof[0]_i_3_n_0 ;
  wire \vfb_sof_reg[0]_0 ;
  wire vfb_valid_i_2_n_0;
  wire vfb_valid_reg_0;
  wire vfb_valid_reg_1;
  wire [9:0]vfb_vcdt;
  wire \vfb_vcdt[9]_i_1_n_0 ;
  wire [9:0]\vfb_vcdt_reg[9]_0 ;

  LUT6 #(
    .INIT(64'h00000000FFFFFF75)) 
    \buf_valid[1]_i_2 
       (.I0(cur_dtype_udef),
        .I1(\buf_valid[1]_i_3_n_0 ),
        .I2(vfb_valid_reg_0),
        .I3(vfb_eol_reg_0),
        .I4(mdt_tv),
        .I5(\buf_valid_reg[0] ),
        .O(cur_dtype_udef_reg));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \buf_valid[1]_i_3 
       (.I0(vfb_cnt_reg__0[1]),
        .I1(vfb_cnt_reg__0[0]),
        .I2(vfb_cnt_reg__0[2]),
        .I3(vfb_cnt_reg__0[3]),
        .I4(vfb_ready),
        .I5(vfb_valid_reg_0),
        .O(\buf_valid[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mdt_tr_INST_0
       (.I0(vfb_ready),
        .I1(vfb_valid_reg_0),
        .O(mdt_tr));
  LUT6 #(
    .INIT(64'hAFFFBFFFAAAAAAAA)) 
    sband_tact_i_1
       (.I0(sband_tact0),
        .I1(vfb_eol_reg_0),
        .I2(vfb_ready),
        .I3(vfb_valid_reg_0),
        .I4(sdt_tr_INST_0_i_1_n_0),
        .I5(sband_tact),
        .O(sband_tact_i_1_n_0));
  FDRE sband_tact_reg
       (.C(vfb_clk),
        .CE(1'b1),
        .D(sband_tact_i_1_n_0),
        .Q(sband_tact),
        .R(SR));
  FDRE \sband_td_r_reg[0] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [0]),
        .Q(\sband_td_r_reg[55]_0 [0]),
        .R(SR));
  FDRE \sband_td_r_reg[10] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [10]),
        .Q(\sband_td_r_reg[55]_0 [10]),
        .R(SR));
  FDRE \sband_td_r_reg[11] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [11]),
        .Q(\sband_td_r_reg[55]_0 [11]),
        .R(SR));
  FDRE \sband_td_r_reg[12] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [12]),
        .Q(\sband_td_r_reg[55]_0 [12]),
        .R(SR));
  FDRE \sband_td_r_reg[13] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [13]),
        .Q(\sband_td_r_reg[55]_0 [13]),
        .R(SR));
  FDRE \sband_td_r_reg[14] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [14]),
        .Q(\sband_td_r_reg[55]_0 [14]),
        .R(SR));
  FDRE \sband_td_r_reg[15] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [15]),
        .Q(\sband_td_r_reg[55]_0 [15]),
        .R(SR));
  FDRE \sband_td_r_reg[16] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [16]),
        .Q(\sband_td_r_reg[55]_0 [16]),
        .R(SR));
  FDRE \sband_td_r_reg[17] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [17]),
        .Q(\sband_td_r_reg[55]_0 [17]),
        .R(SR));
  FDRE \sband_td_r_reg[18] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [18]),
        .Q(\sband_td_r_reg[55]_0 [18]),
        .R(SR));
  FDRE \sband_td_r_reg[19] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [19]),
        .Q(\sband_td_r_reg[55]_0 [19]),
        .R(SR));
  FDRE \sband_td_r_reg[1] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [1]),
        .Q(\sband_td_r_reg[55]_0 [1]),
        .R(SR));
  FDRE \sband_td_r_reg[20] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [20]),
        .Q(\sband_td_r_reg[55]_0 [20]),
        .R(SR));
  FDRE \sband_td_r_reg[21] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [21]),
        .Q(\sband_td_r_reg[55]_0 [21]),
        .R(SR));
  FDRE \sband_td_r_reg[22] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [22]),
        .Q(\sband_td_r_reg[55]_0 [22]),
        .R(SR));
  FDRE \sband_td_r_reg[23] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [23]),
        .Q(\sband_td_r_reg[55]_0 [23]),
        .R(SR));
  FDRE \sband_td_r_reg[24] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [24]),
        .Q(\sband_td_r_reg[55]_0 [24]),
        .R(SR));
  FDRE \sband_td_r_reg[25] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [25]),
        .Q(\sband_td_r_reg[55]_0 [25]),
        .R(SR));
  FDRE \sband_td_r_reg[26] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [26]),
        .Q(\sband_td_r_reg[55]_0 [26]),
        .R(SR));
  FDRE \sband_td_r_reg[27] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [27]),
        .Q(\sband_td_r_reg[55]_0 [27]),
        .R(SR));
  FDRE \sband_td_r_reg[28] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [28]),
        .Q(\sband_td_r_reg[55]_0 [28]),
        .R(SR));
  FDRE \sband_td_r_reg[29] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [29]),
        .Q(\sband_td_r_reg[55]_0 [29]),
        .R(SR));
  FDRE \sband_td_r_reg[2] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [2]),
        .Q(\sband_td_r_reg[55]_0 [2]),
        .R(SR));
  FDRE \sband_td_r_reg[30] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [30]),
        .Q(\sband_td_r_reg[55]_0 [30]),
        .R(SR));
  FDRE \sband_td_r_reg[31] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [31]),
        .Q(\sband_td_r_reg[55]_0 [31]),
        .R(SR));
  FDRE \sband_td_r_reg[32] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [32]),
        .Q(\sband_td_r_reg[55]_0 [32]),
        .R(SR));
  FDRE \sband_td_r_reg[33] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [33]),
        .Q(\sband_td_r_reg[55]_0 [33]),
        .R(SR));
  FDRE \sband_td_r_reg[34] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [34]),
        .Q(\sband_td_r_reg[55]_0 [34]),
        .R(SR));
  FDRE \sband_td_r_reg[35] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [35]),
        .Q(\sband_td_r_reg[55]_0 [35]),
        .R(SR));
  FDRE \sband_td_r_reg[36] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [36]),
        .Q(\sband_td_r_reg[55]_0 [36]),
        .R(SR));
  FDRE \sband_td_r_reg[37] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [37]),
        .Q(\sband_td_r_reg[55]_0 [37]),
        .R(SR));
  FDRE \sband_td_r_reg[38] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [38]),
        .Q(\sband_td_r_reg[55]_0 [38]),
        .R(SR));
  FDRE \sband_td_r_reg[39] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [39]),
        .Q(\sband_td_r_reg[55]_0 [39]),
        .R(SR));
  FDRE \sband_td_r_reg[3] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [3]),
        .Q(\sband_td_r_reg[55]_0 [3]),
        .R(SR));
  FDRE \sband_td_r_reg[40] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [40]),
        .Q(\sband_td_r_reg[55]_0 [40]),
        .R(SR));
  FDRE \sband_td_r_reg[41] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [41]),
        .Q(\sband_td_r_reg[55]_0 [41]),
        .R(SR));
  FDRE \sband_td_r_reg[42] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [42]),
        .Q(\sband_td_r_reg[55]_0 [42]),
        .R(SR));
  FDRE \sband_td_r_reg[43] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [43]),
        .Q(\sband_td_r_reg[55]_0 [43]),
        .R(SR));
  FDRE \sband_td_r_reg[44] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [44]),
        .Q(\sband_td_r_reg[55]_0 [44]),
        .R(SR));
  FDRE \sband_td_r_reg[45] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [45]),
        .Q(\sband_td_r_reg[55]_0 [45]),
        .R(SR));
  FDRE \sband_td_r_reg[46] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [46]),
        .Q(\sband_td_r_reg[55]_0 [46]),
        .R(SR));
  FDRE \sband_td_r_reg[47] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [47]),
        .Q(\sband_td_r_reg[55]_0 [47]),
        .R(SR));
  FDRE \sband_td_r_reg[48] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [48]),
        .Q(\sband_td_r_reg[55]_0 [48]),
        .R(SR));
  FDRE \sband_td_r_reg[49] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [49]),
        .Q(\sband_td_r_reg[55]_0 [49]),
        .R(SR));
  FDRE \sband_td_r_reg[4] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [4]),
        .Q(\sband_td_r_reg[55]_0 [4]),
        .R(SR));
  FDRE \sband_td_r_reg[50] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [50]),
        .Q(\sband_td_r_reg[55]_0 [50]),
        .R(SR));
  FDRE \sband_td_r_reg[51] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [51]),
        .Q(\sband_td_r_reg[55]_0 [51]),
        .R(SR));
  FDRE \sband_td_r_reg[52] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [52]),
        .Q(\sband_td_r_reg[55]_0 [52]),
        .R(SR));
  FDRE \sband_td_r_reg[53] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [53]),
        .Q(\sband_td_r_reg[55]_0 [53]),
        .R(SR));
  FDRE \sband_td_r_reg[54] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [54]),
        .Q(\sband_td_r_reg[55]_0 [54]),
        .R(SR));
  FDRE \sband_td_r_reg[55] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [55]),
        .Q(\sband_td_r_reg[55]_0 [55]),
        .R(SR));
  FDRE \sband_td_r_reg[5] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [5]),
        .Q(\sband_td_r_reg[55]_0 [5]),
        .R(SR));
  FDRE \sband_td_r_reg[6] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [6]),
        .Q(\sband_td_r_reg[55]_0 [6]),
        .R(SR));
  FDRE \sband_td_r_reg[7] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [7]),
        .Q(\sband_td_r_reg[55]_0 [7]),
        .R(SR));
  FDRE \sband_td_r_reg[8] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [8]),
        .Q(\sband_td_r_reg[55]_0 [8]),
        .R(SR));
  FDRE \sband_td_r_reg[9] 
       (.C(vfb_clk),
        .CE(E),
        .D(\sband_td_r_reg[55]_1 [9]),
        .Q(\sband_td_r_reg[55]_0 [9]),
        .R(SR));
  FDRE \sband_tk_r_reg[1] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[0]),
        .Q(\sband_tk_r_reg_n_0_[1] ),
        .R(SR));
  FDRE \sband_tk_r_reg[2] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[1]),
        .Q(\sband_tk_r_reg[6]_0 [0]),
        .R(SR));
  FDRE \sband_tk_r_reg[3] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[2]),
        .Q(\sband_tk_r_reg[6]_0 [1]),
        .R(SR));
  FDRE \sband_tk_r_reg[4] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[3]),
        .Q(\sband_tk_r_reg[6]_0 [2]),
        .R(SR));
  FDRE \sband_tk_r_reg[5] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[4]),
        .Q(\sband_tk_r_reg[6]_0 [3]),
        .R(SR));
  FDRE \sband_tk_r_reg[6] 
       (.C(vfb_clk),
        .CE(E),
        .D(D[5]),
        .Q(\sband_tk_r_reg[6]_0 [4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAAA)) 
    sband_tl_r_i_3
       (.I0(vfb_valid_reg_0),
        .I1(vfb_ready),
        .I2(vfb_cnt_reg__0[3]),
        .I3(vfb_cnt_reg__0[2]),
        .I4(vfb_cnt_reg__0[0]),
        .I5(vfb_cnt_reg__0[1]),
        .O(vfb_valid_reg_1));
  FDRE sband_tl_r_reg
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(fifo_tl),
        .Q(sband_tl_r),
        .R(SR));
  FDRE \sband_ts_r_reg[0] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[0]),
        .Q(\sband_ts_r_reg[9]_0 [0]),
        .R(SR));
  FDRE \sband_ts_r_reg[1] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[1]),
        .Q(\sband_ts_r_reg[9]_0 [1]),
        .R(SR));
  FDRE \sband_ts_r_reg[2] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[2]),
        .Q(\sband_ts_r_reg[9]_0 [2]),
        .R(SR));
  FDRE \sband_ts_r_reg[3] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[3]),
        .Q(\sband_ts_r_reg[9]_0 [3]),
        .R(SR));
  FDRE \sband_ts_r_reg[4] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[4]),
        .Q(\sband_ts_r_reg[9]_0 [4]),
        .R(SR));
  FDRE \sband_ts_r_reg[5] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[5]),
        .Q(\sband_ts_r_reg[9]_0 [5]),
        .R(SR));
  FDRE \sband_ts_r_reg[6] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[6]),
        .Q(\sband_ts_r_reg[9]_0 [6]),
        .R(SR));
  FDRE \sband_ts_r_reg[7] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[7]),
        .Q(\sband_ts_r_reg[9]_0 [7]),
        .R(SR));
  FDRE \sband_ts_r_reg[8] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[8]),
        .Q(\sband_ts_r_reg[9]_0 [8]),
        .R(SR));
  FDRE \sband_ts_r_reg[9] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(Q[9]),
        .Q(\sband_ts_r_reg[9]_0 [9]),
        .R(SR));
  FDRE \sband_tu_r_reg[0] 
       (.C(vfb_clk),
        .CE(sband_tact0),
        .D(sband_tu),
        .Q(sband_tu_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h11010101)) 
    sdt_tr_INST_0
       (.I0(mdt_tv),
        .I1(vfb_eol_reg_0),
        .I2(vfb_valid_reg_0),
        .I3(vfb_ready),
        .I4(sdt_tr_INST_0_i_1_n_0),
        .O(sdt_tr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    sdt_tr_INST_0_i_1
       (.I0(vfb_cnt_reg__0[3]),
        .I1(vfb_cnt_reg__0[2]),
        .I2(vfb_cnt_reg__0[0]),
        .I3(vfb_cnt_reg__0[1]),
        .O(sdt_tr_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vfb_cnt[0]_i_1 
       (.I0(vfb_cnt_reg__0[0]),
        .O(cnt_done0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vfb_cnt[1]_i_1 
       (.I0(vfb_cnt_reg__0[0]),
        .I1(vfb_cnt_reg__0[1]),
        .O(cnt_done0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vfb_cnt[2]_i_1 
       (.I0(vfb_cnt_reg__0[2]),
        .I1(vfb_cnt_reg__0[0]),
        .I2(vfb_cnt_reg__0[1]),
        .O(cnt_done0[2]));
  LUT5 #(
    .INIT(32'hC080FFFF)) 
    \vfb_cnt[3]_i_1 
       (.I0(vfb_eol_reg_0),
        .I1(vfb_ready),
        .I2(vfb_valid_reg_0),
        .I3(sdt_tr_INST_0_i_1_n_0),
        .I4(s_axis_aresetn),
        .O(\vfb_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vfb_cnt[3]_i_2 
       (.I0(vfb_ready),
        .I1(vfb_valid_reg_0),
        .O(sband_tr2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vfb_cnt[3]_i_3 
       (.I0(vfb_cnt_reg__0[1]),
        .I1(vfb_cnt_reg__0[0]),
        .I2(vfb_cnt_reg__0[2]),
        .I3(vfb_cnt_reg__0[3]),
        .O(cnt_done0[3]));
  FDRE \vfb_cnt_reg[0] 
       (.C(vfb_clk),
        .CE(sband_tr2),
        .D(cnt_done0[0]),
        .Q(vfb_cnt_reg__0[0]),
        .R(\vfb_cnt[3]_i_1_n_0 ));
  FDRE \vfb_cnt_reg[1] 
       (.C(vfb_clk),
        .CE(sband_tr2),
        .D(cnt_done0[1]),
        .Q(vfb_cnt_reg__0[1]),
        .R(\vfb_cnt[3]_i_1_n_0 ));
  FDRE \vfb_cnt_reg[2] 
       (.C(vfb_clk),
        .CE(sband_tr2),
        .D(cnt_done0[2]),
        .Q(vfb_cnt_reg__0[2]),
        .R(\vfb_cnt[3]_i_1_n_0 ));
  FDRE \vfb_cnt_reg[3] 
       (.C(vfb_clk),
        .CE(sband_tr2),
        .D(cnt_done0[3]),
        .Q(vfb_cnt_reg__0[3]),
        .R(\vfb_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB0FF)) 
    \vfb_data[15]_i_1 
       (.I0(mdt_tv),
        .I1(vfb_eol_reg_0),
        .I2(vfb_ready),
        .I3(vfb_valid_reg_0),
        .O(\vfb_data[15]_i_1_n_0 ));
  FDRE \vfb_data_reg[0] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [0]),
        .Q(vfb_data[0]),
        .R(SR));
  FDRE \vfb_data_reg[10] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [10]),
        .Q(vfb_data[10]),
        .R(SR));
  FDRE \vfb_data_reg[11] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [11]),
        .Q(vfb_data[11]),
        .R(SR));
  FDRE \vfb_data_reg[12] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [12]),
        .Q(vfb_data[12]),
        .R(SR));
  FDRE \vfb_data_reg[13] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [13]),
        .Q(vfb_data[13]),
        .R(SR));
  FDRE \vfb_data_reg[14] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [14]),
        .Q(vfb_data[14]),
        .R(SR));
  FDRE \vfb_data_reg[15] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [15]),
        .Q(vfb_data[15]),
        .R(SR));
  FDRE \vfb_data_reg[1] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [1]),
        .Q(vfb_data[1]),
        .R(SR));
  FDRE \vfb_data_reg[2] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [2]),
        .Q(vfb_data[2]),
        .R(SR));
  FDRE \vfb_data_reg[3] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [3]),
        .Q(vfb_data[3]),
        .R(SR));
  FDRE \vfb_data_reg[4] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [4]),
        .Q(vfb_data[4]),
        .R(SR));
  FDRE \vfb_data_reg[5] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [5]),
        .Q(vfb_data[5]),
        .R(SR));
  FDRE \vfb_data_reg[6] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [6]),
        .Q(vfb_data[6]),
        .R(SR));
  FDRE \vfb_data_reg[7] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [7]),
        .Q(vfb_data[7]),
        .R(SR));
  FDRE \vfb_data_reg[8] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [8]),
        .Q(vfb_data[8]),
        .R(SR));
  FDRE \vfb_data_reg[9] 
       (.C(vfb_clk),
        .CE(\vfb_data[15]_i_1_n_0 ),
        .D(\vfb_data_reg[15]_0 [9]),
        .Q(vfb_data[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hC0FFC5C5C500C5C5)) 
    vfb_eol_i_1
       (.I0(vfb_eol_i_2_n_0),
        .I1(m_axis_tlast),
        .I2(mdt_tv),
        .I3(vfb_ready),
        .I4(vfb_valid_reg_0),
        .I5(vfb_eol_reg_0),
        .O(vfb_eol_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF00F7F7FFFFF7F7)) 
    vfb_eol_i_2
       (.I0(sband_tact_reg_0),
        .I1(sband_tl_r),
        .I2(\sband_tk_r_reg_n_0_[1] ),
        .I3(Q[10]),
        .I4(sband_tact0),
        .I5(fifo_tl),
        .O(vfb_eol_i_2_n_0));
  FDRE vfb_eol_reg
       (.C(vfb_clk),
        .CE(1'b1),
        .D(vfb_eol_i_1_n_0),
        .Q(vfb_eol_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBFBBBB88808888)) 
    \vfb_sof[0]_i_1 
       (.I0(\vfb_sof_reg[0]_0 ),
        .I1(mdt_tr),
        .I2(sband_tact0),
        .I3(sband_tact_reg_0),
        .I4(\vfb_sof[0]_i_3_n_0 ),
        .I5(vfb_sof),
        .O(\vfb_sof[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \vfb_sof[0]_i_3 
       (.I0(mdt_tv),
        .I1(vfb_valid_reg_0),
        .I2(vfb_ready),
        .I3(vfb_eol_reg_0),
        .O(\vfb_sof[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vfb_sof[0]_i_4 
       (.I0(vfb_eol_reg_0),
        .I1(vfb_ready),
        .I2(vfb_valid_reg_0),
        .O(vfb_eol_reg_1));
  FDRE \vfb_sof_reg[0] 
       (.C(vfb_clk),
        .CE(1'b1),
        .D(\vfb_sof[0]_i_1_n_0 ),
        .Q(vfb_sof),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBAFFFFFFFAFFFA)) 
    vfb_valid_i_2
       (.I0(mdt_tv),
        .I1(vfb_eol_reg_0),
        .I2(sband_tact0),
        .I3(sband_tact_reg_0),
        .I4(vfb_ready),
        .I5(vfb_valid_reg_0),
        .O(vfb_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    vfb_valid_i_3
       (.I0(sband_tact),
        .I1(vfb_cnt_reg__0[1]),
        .I2(vfb_cnt_reg__0[0]),
        .I3(vfb_cnt_reg__0[2]),
        .I4(vfb_cnt_reg__0[3]),
        .O(sband_tact_reg_0));
  FDRE vfb_valid_reg
       (.C(vfb_clk),
        .CE(1'b1),
        .D(vfb_valid_i_2_n_0),
        .Q(vfb_valid_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \vfb_vcdt[9]_i_1 
       (.I0(vfb_valid_reg_0),
        .I1(vfb_ready),
        .I2(sband_tact0),
        .I3(sband_tact),
        .I4(mdt_tv),
        .O(\vfb_vcdt[9]_i_1_n_0 ));
  FDRE \vfb_vcdt_reg[0] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [0]),
        .Q(vfb_vcdt[0]),
        .R(SR));
  FDRE \vfb_vcdt_reg[1] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [1]),
        .Q(vfb_vcdt[1]),
        .R(SR));
  FDRE \vfb_vcdt_reg[2] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [2]),
        .Q(vfb_vcdt[2]),
        .R(SR));
  FDRE \vfb_vcdt_reg[3] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [3]),
        .Q(vfb_vcdt[3]),
        .R(SR));
  FDRE \vfb_vcdt_reg[4] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [4]),
        .Q(vfb_vcdt[4]),
        .R(SR));
  FDRE \vfb_vcdt_reg[5] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [5]),
        .Q(vfb_vcdt[5]),
        .R(SR));
  FDRE \vfb_vcdt_reg[6] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [6]),
        .Q(vfb_vcdt[6]),
        .R(SR));
  FDRE \vfb_vcdt_reg[7] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [7]),
        .Q(vfb_vcdt[7]),
        .R(SR));
  FDRE \vfb_vcdt_reg[8] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [8]),
        .Q(vfb_vcdt[8]),
        .R(SR));
  FDRE \vfb_vcdt_reg[9] 
       (.C(vfb_clk),
        .CE(\vfb_vcdt[9]_i_1_n_0 ),
        .D(\vfb_vcdt_reg[9]_0 [9]),
        .Q(vfb_vcdt[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "vfb_v1_0_12_reorder" *) 
module bd_22c6_vfb_0_0_vfb_v1_0_12_reorder
   (s_axis_tuser,
    SR,
    s_fifo_tv,
    cur_dtype_udef,
    s_axis_tlast,
    E,
    sband_tact0,
    sband_tu,
    Q,
    fifo_tl,
    \buf_valid_reg[1]_0 ,
    \buf_data_reg[0][107]_0 ,
    \buf_data_reg[0][171]_0 ,
    sdt_tv,
    cur_dtype_sink_reg_0,
    \s_fifo_td_reg[63]_0 ,
    \s_fifo_tk_reg[7]_0 ,
    \s_fifo_tid_reg[25]_0 ,
    s_axis_aclk,
    vfb_ready,
    \sband_td_r_reg[0] ,
    \buf_valid_reg[0]_0 ,
    s_axis_aresetn,
    D,
    s_axis_tvalid,
    s_axis_tready,
    \sband_tk_r_reg[5] ,
    \sband_td_r_reg[47] ,
    mdt_tv,
    sband_tl_r_reg,
    sband_tl_r_reg_0,
    sband_tl_r_reg_1);
  output [0:0]s_axis_tuser;
  output [0:0]SR;
  output s_fifo_tv;
  output cur_dtype_udef;
  output s_axis_tlast;
  output [0:0]E;
  output sband_tact0;
  output sband_tu;
  output [19:0]Q;
  output fifo_tl;
  output \buf_valid_reg[1]_0 ;
  output [5:0]\buf_data_reg[0][107]_0 ;
  output [55:0]\buf_data_reg[0][171]_0 ;
  output sdt_tv;
  output cur_dtype_sink_reg_0;
  output [63:0]\s_fifo_td_reg[63]_0 ;
  output [7:0]\s_fifo_tk_reg[7]_0 ;
  output [25:0]\s_fifo_tid_reg[25]_0 ;
  input s_axis_aclk;
  input vfb_ready;
  input \sband_td_r_reg[0] ;
  input \buf_valid_reg[0]_0 ;
  input s_axis_aresetn;
  input [99:0]D;
  input s_axis_tvalid;
  input s_axis_tready;
  input [4:0]\sband_tk_r_reg[5] ;
  input [47:0]\sband_td_r_reg[47] ;
  input mdt_tv;
  input sband_tl_r_reg;
  input sband_tl_r_reg_0;
  input sband_tl_r_reg_1;

  wire [99:0]D;
  wire [0:0]E;
  wire [19:0]Q;
  wire [0:0]SR;
  wire \buf_data[0][172]_i_1_n_0 ;
  wire \buf_data[1][172]_i_1_n_0 ;
  wire [5:0]\buf_data_reg[0][107]_0 ;
  wire [55:0]\buf_data_reg[0][171]_0 ;
  wire [172:0]\buf_data_reg[1] ;
  wire \buf_valid[0]_i_1_n_0 ;
  wire \buf_valid[1]_i_1_n_0 ;
  wire \buf_valid_reg[0]_0 ;
  wire \buf_valid_reg[1]_0 ;
  wire \buf_valid_reg_n_0_[0] ;
  wire cur_dtype_pxls;
  wire cur_dtype_pxls_i_1_n_0;
  wire cur_dtype_pxls_i_2_n_0;
  wire cur_dtype_sink_i_1_n_0;
  wire cur_dtype_sink_reg_0;
  wire cur_dtype_sink_reg_n_0;
  wire cur_dtype_udef;
  wire cur_dtype_udef_i_1_n_0;
  wire [63:0]fifo_td;
  wire [7:0]fifo_tk;
  wire fifo_tl;
  wire fifo_tu;
  wire fifo_tv;
  wire [15:0]frmnum;
  wire mdt_tv;
  wire p_0_in;
  wire [172:0]p_2_in;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tlast_0;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \s_fifo_td[63]_i_1_n_0 ;
  wire \s_fifo_td[63]_i_2_n_0 ;
  wire [63:0]\s_fifo_td_reg[63]_0 ;
  wire [25:0]\s_fifo_tid_reg[25]_0 ;
  wire [7:0]\s_fifo_tk_reg[7]_0 ;
  wire s_fifo_tl_i_1_n_0;
  wire s_fifo_tv;
  wire s_fifo_tv_i_1_n_0;
  wire sband_tact0;
  wire \sband_td_r_reg[0] ;
  wire [47:0]\sband_td_r_reg[47] ;
  wire [4:0]\sband_tk_r_reg[5] ;
  wire sband_tl_r_reg;
  wire sband_tl_r_reg_0;
  wire sband_tl_r_reg_1;
  wire sband_tu;
  wire sdt_tv;
  wire sdt_tv_INST_0_i_1_n_0;
  wire vfb_ready;

  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][0]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [0]),
        .I4(D[0]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][100]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [100]),
        .I4(D[27]),
        .O(p_2_in[100]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][101]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [101]),
        .I4(D[28]),
        .O(p_2_in[101]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][102]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [102]),
        .I4(D[29]),
        .O(p_2_in[102]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][103]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [103]),
        .I4(D[30]),
        .O(p_2_in[103]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][104]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [104]),
        .I4(D[31]),
        .O(p_2_in[104]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][105]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [105]),
        .I4(D[32]),
        .O(p_2_in[105]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][106]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [106]),
        .I4(D[33]),
        .O(p_2_in[106]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][107]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [107]),
        .I4(D[34]),
        .O(p_2_in[107]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][108]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [108]),
        .I4(D[35]),
        .O(p_2_in[108]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][109]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [109]),
        .I4(D[36]),
        .O(p_2_in[109]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][110]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [110]),
        .I4(D[37]),
        .O(p_2_in[110]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][111]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [111]),
        .I4(D[38]),
        .O(p_2_in[111]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][112]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [112]),
        .I4(D[39]),
        .O(p_2_in[112]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][113]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [113]),
        .I4(D[40]),
        .O(p_2_in[113]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][114]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [114]),
        .I4(D[41]),
        .O(p_2_in[114]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][115]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [115]),
        .I4(D[42]),
        .O(p_2_in[115]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][116]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [116]),
        .I4(D[43]),
        .O(p_2_in[116]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][117]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [117]),
        .I4(D[44]),
        .O(p_2_in[117]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][118]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [118]),
        .I4(D[45]),
        .O(p_2_in[118]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][119]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [119]),
        .I4(D[46]),
        .O(p_2_in[119]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][120]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [120]),
        .I4(D[47]),
        .O(p_2_in[120]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][121]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [121]),
        .I4(D[48]),
        .O(p_2_in[121]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][122]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [122]),
        .I4(D[49]),
        .O(p_2_in[122]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][123]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [123]),
        .I4(D[50]),
        .O(p_2_in[123]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][124]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [124]),
        .I4(D[51]),
        .O(p_2_in[124]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][125]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [125]),
        .I4(D[52]),
        .O(p_2_in[125]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][126]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [126]),
        .I4(D[53]),
        .O(p_2_in[126]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][127]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [127]),
        .I4(D[54]),
        .O(p_2_in[127]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][128]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [128]),
        .I4(D[55]),
        .O(p_2_in[128]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][129]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [129]),
        .I4(D[56]),
        .O(p_2_in[129]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][130]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [130]),
        .I4(D[57]),
        .O(p_2_in[130]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][131]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [131]),
        .I4(D[58]),
        .O(p_2_in[131]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][132]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [132]),
        .I4(D[59]),
        .O(p_2_in[132]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][133]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [133]),
        .I4(D[60]),
        .O(p_2_in[133]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][134]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [134]),
        .I4(D[61]),
        .O(p_2_in[134]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][135]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [135]),
        .I4(D[62]),
        .O(p_2_in[135]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][136]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [136]),
        .I4(D[63]),
        .O(p_2_in[136]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][137]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [137]),
        .I4(D[64]),
        .O(p_2_in[137]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][138]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [138]),
        .I4(D[65]),
        .O(p_2_in[138]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][139]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [139]),
        .I4(D[66]),
        .O(p_2_in[139]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][140]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [140]),
        .I4(D[67]),
        .O(p_2_in[140]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][141]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [141]),
        .I4(D[68]),
        .O(p_2_in[141]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][142]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [142]),
        .I4(D[69]),
        .O(p_2_in[142]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][143]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [143]),
        .I4(D[70]),
        .O(p_2_in[143]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][144]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [144]),
        .I4(D[71]),
        .O(p_2_in[144]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][145]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [145]),
        .I4(D[72]),
        .O(p_2_in[145]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][146]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [146]),
        .I4(D[73]),
        .O(p_2_in[146]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][147]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [147]),
        .I4(D[74]),
        .O(p_2_in[147]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][148]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [148]),
        .I4(D[75]),
        .O(p_2_in[148]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][149]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [149]),
        .I4(D[76]),
        .O(p_2_in[149]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][150]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [150]),
        .I4(D[77]),
        .O(p_2_in[150]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][151]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [151]),
        .I4(D[78]),
        .O(p_2_in[151]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][152]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [152]),
        .I4(D[79]),
        .O(p_2_in[152]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][153]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [153]),
        .I4(D[80]),
        .O(p_2_in[153]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][154]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [154]),
        .I4(D[81]),
        .O(p_2_in[154]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][155]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [155]),
        .I4(D[82]),
        .O(p_2_in[155]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][156]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [156]),
        .I4(D[83]),
        .O(p_2_in[156]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][157]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [157]),
        .I4(D[84]),
        .O(p_2_in[157]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][158]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [158]),
        .I4(D[85]),
        .O(p_2_in[158]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][159]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [159]),
        .I4(D[86]),
        .O(p_2_in[159]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][160]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [160]),
        .I4(D[87]),
        .O(p_2_in[160]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][161]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [161]),
        .I4(D[88]),
        .O(p_2_in[161]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][162]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [162]),
        .I4(D[89]),
        .O(p_2_in[162]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][163]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [163]),
        .I4(D[90]),
        .O(p_2_in[163]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][164]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [164]),
        .I4(D[91]),
        .O(p_2_in[164]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][165]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [165]),
        .I4(D[92]),
        .O(p_2_in[165]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][166]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [166]),
        .I4(D[93]),
        .O(p_2_in[166]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][167]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [167]),
        .I4(D[94]),
        .O(p_2_in[167]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][168]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [168]),
        .I4(D[95]),
        .O(p_2_in[168]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][169]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [169]),
        .I4(D[96]),
        .O(p_2_in[169]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][170]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [170]),
        .I4(D[97]),
        .O(p_2_in[170]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][171]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [171]),
        .I4(D[98]),
        .O(p_2_in[171]));
  LUT4 #(
    .INIT(16'h04E4)) 
    \buf_data[0][172]_i_1 
       (.I0(p_0_in),
        .I1(s_axis_tvalid),
        .I2(\buf_valid_reg_n_0_[0] ),
        .I3(\buf_valid_reg[0]_0 ),
        .O(\buf_data[0][172]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][172]_i_2 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [172]),
        .I4(D[99]),
        .O(p_2_in[172]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][1]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [1]),
        .I4(D[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][20]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [20]),
        .I4(D[5]),
        .O(p_2_in[20]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][21]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [21]),
        .I4(D[6]),
        .O(p_2_in[21]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][22]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [22]),
        .I4(D[7]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][23]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [23]),
        .I4(D[8]),
        .O(p_2_in[23]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][24]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [24]),
        .I4(D[9]),
        .O(p_2_in[24]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][25]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [25]),
        .I4(D[10]),
        .O(p_2_in[25]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][26]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [26]),
        .I4(D[11]),
        .O(p_2_in[26]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][27]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [27]),
        .I4(D[12]),
        .O(p_2_in[27]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][28]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [28]),
        .I4(D[13]),
        .O(p_2_in[28]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][29]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [29]),
        .I4(D[14]),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][2]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [2]),
        .I4(D[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][30]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [30]),
        .I4(D[15]),
        .O(p_2_in[30]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][31]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [31]),
        .I4(D[16]),
        .O(p_2_in[31]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][32]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [32]),
        .I4(D[17]),
        .O(p_2_in[32]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][33]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [33]),
        .I4(D[18]),
        .O(p_2_in[33]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][34]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [34]),
        .I4(D[19]),
        .O(p_2_in[34]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][35]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [35]),
        .I4(D[20]),
        .O(p_2_in[35]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][3]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [3]),
        .I4(D[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][4]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [4]),
        .I4(D[4]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][68]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [68]),
        .I4(D[21]),
        .O(p_2_in[68]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][69]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [69]),
        .I4(D[22]),
        .O(p_2_in[69]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][70]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [70]),
        .I4(D[23]),
        .O(p_2_in[70]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][71]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [71]),
        .I4(D[24]),
        .O(p_2_in[71]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][72]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [72]),
        .I4(D[25]),
        .O(p_2_in[72]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \buf_data[0][73]_i_1 
       (.I0(p_0_in),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\buf_valid_reg[0]_0 ),
        .I3(\buf_data_reg[1] [73]),
        .I4(D[26]),
        .O(p_2_in[73]));
  LUT4 #(
    .INIT(16'h0800)) 
    \buf_data[1][172]_i_1 
       (.I0(\buf_valid_reg[0]_0 ),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(s_axis_tvalid),
        .O(\buf_data[1][172]_i_1_n_0 ));
  FDRE \buf_data_reg[0][0] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \buf_data_reg[0][100] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[100]),
        .Q(fifo_tk[2]),
        .R(SR));
  FDRE \buf_data_reg[0][101] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[101]),
        .Q(Q[11]),
        .R(SR));
  FDRE \buf_data_reg[0][102] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[102]),
        .Q(fifo_tk[0]),
        .R(SR));
  FDRE \buf_data_reg[0][103] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[103]),
        .Q(fifo_tk[1]),
        .R(SR));
  FDRE \buf_data_reg[0][104] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[104]),
        .Q(fifo_tk[6]),
        .R(SR));
  FDRE \buf_data_reg[0][105] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[105]),
        .Q(fifo_tk[7]),
        .R(SR));
  FDRE \buf_data_reg[0][106] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[106]),
        .Q(fifo_tk[4]),
        .R(SR));
  FDRE \buf_data_reg[0][107] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[107]),
        .Q(fifo_tk[5]),
        .R(SR));
  FDRE \buf_data_reg[0][108] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[108]),
        .Q(Q[12]),
        .R(SR));
  FDRE \buf_data_reg[0][109] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[109]),
        .Q(Q[13]),
        .R(SR));
  FDRE \buf_data_reg[0][110] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[110]),
        .Q(Q[14]),
        .R(SR));
  FDRE \buf_data_reg[0][111] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[111]),
        .Q(Q[15]),
        .R(SR));
  FDRE \buf_data_reg[0][112] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[112]),
        .Q(Q[16]),
        .R(SR));
  FDRE \buf_data_reg[0][113] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[113]),
        .Q(Q[17]),
        .R(SR));
  FDRE \buf_data_reg[0][114] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[114]),
        .Q(Q[18]),
        .R(SR));
  FDRE \buf_data_reg[0][115] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[115]),
        .Q(Q[19]),
        .R(SR));
  FDRE \buf_data_reg[0][116] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[116]),
        .Q(fifo_td[24]),
        .R(SR));
  FDRE \buf_data_reg[0][117] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[117]),
        .Q(fifo_td[25]),
        .R(SR));
  FDRE \buf_data_reg[0][118] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[118]),
        .Q(fifo_td[26]),
        .R(SR));
  FDRE \buf_data_reg[0][119] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[119]),
        .Q(fifo_td[27]),
        .R(SR));
  FDRE \buf_data_reg[0][120] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[120]),
        .Q(fifo_td[28]),
        .R(SR));
  FDRE \buf_data_reg[0][121] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[121]),
        .Q(fifo_td[29]),
        .R(SR));
  FDRE \buf_data_reg[0][122] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[122]),
        .Q(fifo_td[30]),
        .R(SR));
  FDRE \buf_data_reg[0][123] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[123]),
        .Q(fifo_td[31]),
        .R(SR));
  FDRE \buf_data_reg[0][124] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[124]),
        .Q(fifo_td[0]),
        .R(SR));
  FDRE \buf_data_reg[0][125] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[125]),
        .Q(fifo_td[1]),
        .R(SR));
  FDRE \buf_data_reg[0][126] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[126]),
        .Q(fifo_td[2]),
        .R(SR));
  FDRE \buf_data_reg[0][127] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[127]),
        .Q(fifo_td[3]),
        .R(SR));
  FDRE \buf_data_reg[0][128] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[128]),
        .Q(fifo_td[4]),
        .R(SR));
  FDRE \buf_data_reg[0][129] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[129]),
        .Q(fifo_td[5]),
        .R(SR));
  FDRE \buf_data_reg[0][130] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[130]),
        .Q(fifo_td[6]),
        .R(SR));
  FDRE \buf_data_reg[0][131] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[131]),
        .Q(fifo_td[7]),
        .R(SR));
  FDRE \buf_data_reg[0][132] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[132]),
        .Q(fifo_td[8]),
        .R(SR));
  FDRE \buf_data_reg[0][133] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[133]),
        .Q(fifo_td[9]),
        .R(SR));
  FDRE \buf_data_reg[0][134] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[134]),
        .Q(fifo_td[10]),
        .R(SR));
  FDRE \buf_data_reg[0][135] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[135]),
        .Q(fifo_td[11]),
        .R(SR));
  FDRE \buf_data_reg[0][136] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[136]),
        .Q(fifo_td[12]),
        .R(SR));
  FDRE \buf_data_reg[0][137] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[137]),
        .Q(fifo_td[13]),
        .R(SR));
  FDRE \buf_data_reg[0][138] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[138]),
        .Q(fifo_td[14]),
        .R(SR));
  FDRE \buf_data_reg[0][139] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[139]),
        .Q(fifo_td[15]),
        .R(SR));
  FDRE \buf_data_reg[0][140] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[140]),
        .Q(fifo_td[48]),
        .R(SR));
  FDRE \buf_data_reg[0][141] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[141]),
        .Q(fifo_td[49]),
        .R(SR));
  FDRE \buf_data_reg[0][142] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[142]),
        .Q(fifo_td[50]),
        .R(SR));
  FDRE \buf_data_reg[0][143] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[143]),
        .Q(fifo_td[51]),
        .R(SR));
  FDRE \buf_data_reg[0][144] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[144]),
        .Q(fifo_td[52]),
        .R(SR));
  FDRE \buf_data_reg[0][145] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[145]),
        .Q(fifo_td[53]),
        .R(SR));
  FDRE \buf_data_reg[0][146] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[146]),
        .Q(fifo_td[54]),
        .R(SR));
  FDRE \buf_data_reg[0][147] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[147]),
        .Q(fifo_td[55]),
        .R(SR));
  FDRE \buf_data_reg[0][148] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[148]),
        .Q(fifo_td[56]),
        .R(SR));
  FDRE \buf_data_reg[0][149] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[149]),
        .Q(fifo_td[57]),
        .R(SR));
  FDRE \buf_data_reg[0][150] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[150]),
        .Q(fifo_td[58]),
        .R(SR));
  FDRE \buf_data_reg[0][151] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[151]),
        .Q(fifo_td[59]),
        .R(SR));
  FDRE \buf_data_reg[0][152] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[152]),
        .Q(fifo_td[60]),
        .R(SR));
  FDRE \buf_data_reg[0][153] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[153]),
        .Q(fifo_td[61]),
        .R(SR));
  FDRE \buf_data_reg[0][154] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[154]),
        .Q(fifo_td[62]),
        .R(SR));
  FDRE \buf_data_reg[0][155] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[155]),
        .Q(fifo_td[63]),
        .R(SR));
  FDRE \buf_data_reg[0][156] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[156]),
        .Q(fifo_td[32]),
        .R(SR));
  FDRE \buf_data_reg[0][157] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[157]),
        .Q(fifo_td[33]),
        .R(SR));
  FDRE \buf_data_reg[0][158] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[158]),
        .Q(fifo_td[34]),
        .R(SR));
  FDRE \buf_data_reg[0][159] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[159]),
        .Q(fifo_td[35]),
        .R(SR));
  FDRE \buf_data_reg[0][160] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[160]),
        .Q(fifo_td[36]),
        .R(SR));
  FDRE \buf_data_reg[0][161] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[161]),
        .Q(fifo_td[37]),
        .R(SR));
  FDRE \buf_data_reg[0][162] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[162]),
        .Q(fifo_td[38]),
        .R(SR));
  FDRE \buf_data_reg[0][163] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[163]),
        .Q(fifo_td[39]),
        .R(SR));
  FDRE \buf_data_reg[0][164] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[164]),
        .Q(fifo_td[40]),
        .R(SR));
  FDRE \buf_data_reg[0][165] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[165]),
        .Q(fifo_td[41]),
        .R(SR));
  FDRE \buf_data_reg[0][166] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[166]),
        .Q(fifo_td[42]),
        .R(SR));
  FDRE \buf_data_reg[0][167] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[167]),
        .Q(fifo_td[43]),
        .R(SR));
  FDRE \buf_data_reg[0][168] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[168]),
        .Q(fifo_td[44]),
        .R(SR));
  FDRE \buf_data_reg[0][169] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[169]),
        .Q(fifo_td[45]),
        .R(SR));
  FDRE \buf_data_reg[0][170] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[170]),
        .Q(fifo_td[46]),
        .R(SR));
  FDRE \buf_data_reg[0][171] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[171]),
        .Q(fifo_td[47]),
        .R(SR));
  FDRE \buf_data_reg[0][172] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[172]),
        .Q(s_axis_tlast_0),
        .R(SR));
  FDRE \buf_data_reg[0][1] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \buf_data_reg[0][20] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(frmnum[0]),
        .R(SR));
  FDRE \buf_data_reg[0][21] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(frmnum[1]),
        .R(SR));
  FDRE \buf_data_reg[0][22] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(frmnum[2]),
        .R(SR));
  FDRE \buf_data_reg[0][23] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(frmnum[3]),
        .R(SR));
  FDRE \buf_data_reg[0][24] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(frmnum[4]),
        .R(SR));
  FDRE \buf_data_reg[0][25] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(frmnum[5]),
        .R(SR));
  FDRE \buf_data_reg[0][26] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(frmnum[6]),
        .R(SR));
  FDRE \buf_data_reg[0][27] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(frmnum[7]),
        .R(SR));
  FDRE \buf_data_reg[0][28] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(frmnum[8]),
        .R(SR));
  FDRE \buf_data_reg[0][29] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(frmnum[9]),
        .R(SR));
  FDRE \buf_data_reg[0][2] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \buf_data_reg[0][30] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(frmnum[10]),
        .R(SR));
  FDRE \buf_data_reg[0][31] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(frmnum[11]),
        .R(SR));
  FDRE \buf_data_reg[0][32] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[32]),
        .Q(frmnum[12]),
        .R(SR));
  FDRE \buf_data_reg[0][33] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[33]),
        .Q(frmnum[13]),
        .R(SR));
  FDRE \buf_data_reg[0][34] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[34]),
        .Q(frmnum[14]),
        .R(SR));
  FDRE \buf_data_reg[0][35] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[35]),
        .Q(frmnum[15]),
        .R(SR));
  FDRE \buf_data_reg[0][3] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \buf_data_reg[0][4] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \buf_data_reg[0][68] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[68]),
        .Q(Q[5]),
        .R(SR));
  FDRE \buf_data_reg[0][69] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[69]),
        .Q(Q[6]),
        .R(SR));
  FDRE \buf_data_reg[0][70] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[70]),
        .Q(Q[7]),
        .R(SR));
  FDRE \buf_data_reg[0][71] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[71]),
        .Q(Q[8]),
        .R(SR));
  FDRE \buf_data_reg[0][72] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[72]),
        .Q(Q[9]),
        .R(SR));
  FDRE \buf_data_reg[0][73] 
       (.C(s_axis_aclk),
        .CE(\buf_data[0][172]_i_1_n_0 ),
        .D(p_2_in[73]),
        .Q(Q[10]),
        .R(SR));
  FDRE \buf_data_reg[1][0] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[0]),
        .Q(\buf_data_reg[1] [0]),
        .R(SR));
  FDRE \buf_data_reg[1][100] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[27]),
        .Q(\buf_data_reg[1] [100]),
        .R(SR));
  FDRE \buf_data_reg[1][101] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[28]),
        .Q(\buf_data_reg[1] [101]),
        .R(SR));
  FDRE \buf_data_reg[1][102] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[29]),
        .Q(\buf_data_reg[1] [102]),
        .R(SR));
  FDRE \buf_data_reg[1][103] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[30]),
        .Q(\buf_data_reg[1] [103]),
        .R(SR));
  FDRE \buf_data_reg[1][104] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[31]),
        .Q(\buf_data_reg[1] [104]),
        .R(SR));
  FDRE \buf_data_reg[1][105] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[32]),
        .Q(\buf_data_reg[1] [105]),
        .R(SR));
  FDRE \buf_data_reg[1][106] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[33]),
        .Q(\buf_data_reg[1] [106]),
        .R(SR));
  FDRE \buf_data_reg[1][107] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[34]),
        .Q(\buf_data_reg[1] [107]),
        .R(SR));
  FDRE \buf_data_reg[1][108] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[35]),
        .Q(\buf_data_reg[1] [108]),
        .R(SR));
  FDRE \buf_data_reg[1][109] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[36]),
        .Q(\buf_data_reg[1] [109]),
        .R(SR));
  FDRE \buf_data_reg[1][110] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[37]),
        .Q(\buf_data_reg[1] [110]),
        .R(SR));
  FDRE \buf_data_reg[1][111] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[38]),
        .Q(\buf_data_reg[1] [111]),
        .R(SR));
  FDRE \buf_data_reg[1][112] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[39]),
        .Q(\buf_data_reg[1] [112]),
        .R(SR));
  FDRE \buf_data_reg[1][113] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[40]),
        .Q(\buf_data_reg[1] [113]),
        .R(SR));
  FDRE \buf_data_reg[1][114] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[41]),
        .Q(\buf_data_reg[1] [114]),
        .R(SR));
  FDRE \buf_data_reg[1][115] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[42]),
        .Q(\buf_data_reg[1] [115]),
        .R(SR));
  FDRE \buf_data_reg[1][116] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[43]),
        .Q(\buf_data_reg[1] [116]),
        .R(SR));
  FDRE \buf_data_reg[1][117] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[44]),
        .Q(\buf_data_reg[1] [117]),
        .R(SR));
  FDRE \buf_data_reg[1][118] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[45]),
        .Q(\buf_data_reg[1] [118]),
        .R(SR));
  FDRE \buf_data_reg[1][119] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[46]),
        .Q(\buf_data_reg[1] [119]),
        .R(SR));
  FDRE \buf_data_reg[1][120] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[47]),
        .Q(\buf_data_reg[1] [120]),
        .R(SR));
  FDRE \buf_data_reg[1][121] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[48]),
        .Q(\buf_data_reg[1] [121]),
        .R(SR));
  FDRE \buf_data_reg[1][122] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[49]),
        .Q(\buf_data_reg[1] [122]),
        .R(SR));
  FDRE \buf_data_reg[1][123] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[50]),
        .Q(\buf_data_reg[1] [123]),
        .R(SR));
  FDRE \buf_data_reg[1][124] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[51]),
        .Q(\buf_data_reg[1] [124]),
        .R(SR));
  FDRE \buf_data_reg[1][125] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[52]),
        .Q(\buf_data_reg[1] [125]),
        .R(SR));
  FDRE \buf_data_reg[1][126] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[53]),
        .Q(\buf_data_reg[1] [126]),
        .R(SR));
  FDRE \buf_data_reg[1][127] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[54]),
        .Q(\buf_data_reg[1] [127]),
        .R(SR));
  FDRE \buf_data_reg[1][128] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[55]),
        .Q(\buf_data_reg[1] [128]),
        .R(SR));
  FDRE \buf_data_reg[1][129] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[56]),
        .Q(\buf_data_reg[1] [129]),
        .R(SR));
  FDRE \buf_data_reg[1][130] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[57]),
        .Q(\buf_data_reg[1] [130]),
        .R(SR));
  FDRE \buf_data_reg[1][131] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[58]),
        .Q(\buf_data_reg[1] [131]),
        .R(SR));
  FDRE \buf_data_reg[1][132] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[59]),
        .Q(\buf_data_reg[1] [132]),
        .R(SR));
  FDRE \buf_data_reg[1][133] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[60]),
        .Q(\buf_data_reg[1] [133]),
        .R(SR));
  FDRE \buf_data_reg[1][134] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[61]),
        .Q(\buf_data_reg[1] [134]),
        .R(SR));
  FDRE \buf_data_reg[1][135] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[62]),
        .Q(\buf_data_reg[1] [135]),
        .R(SR));
  FDRE \buf_data_reg[1][136] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[63]),
        .Q(\buf_data_reg[1] [136]),
        .R(SR));
  FDRE \buf_data_reg[1][137] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[64]),
        .Q(\buf_data_reg[1] [137]),
        .R(SR));
  FDRE \buf_data_reg[1][138] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[65]),
        .Q(\buf_data_reg[1] [138]),
        .R(SR));
  FDRE \buf_data_reg[1][139] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[66]),
        .Q(\buf_data_reg[1] [139]),
        .R(SR));
  FDRE \buf_data_reg[1][140] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[67]),
        .Q(\buf_data_reg[1] [140]),
        .R(SR));
  FDRE \buf_data_reg[1][141] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[68]),
        .Q(\buf_data_reg[1] [141]),
        .R(SR));
  FDRE \buf_data_reg[1][142] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[69]),
        .Q(\buf_data_reg[1] [142]),
        .R(SR));
  FDRE \buf_data_reg[1][143] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[70]),
        .Q(\buf_data_reg[1] [143]),
        .R(SR));
  FDRE \buf_data_reg[1][144] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[71]),
        .Q(\buf_data_reg[1] [144]),
        .R(SR));
  FDRE \buf_data_reg[1][145] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[72]),
        .Q(\buf_data_reg[1] [145]),
        .R(SR));
  FDRE \buf_data_reg[1][146] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[73]),
        .Q(\buf_data_reg[1] [146]),
        .R(SR));
  FDRE \buf_data_reg[1][147] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[74]),
        .Q(\buf_data_reg[1] [147]),
        .R(SR));
  FDRE \buf_data_reg[1][148] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[75]),
        .Q(\buf_data_reg[1] [148]),
        .R(SR));
  FDRE \buf_data_reg[1][149] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[76]),
        .Q(\buf_data_reg[1] [149]),
        .R(SR));
  FDRE \buf_data_reg[1][150] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[77]),
        .Q(\buf_data_reg[1] [150]),
        .R(SR));
  FDRE \buf_data_reg[1][151] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[78]),
        .Q(\buf_data_reg[1] [151]),
        .R(SR));
  FDRE \buf_data_reg[1][152] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[79]),
        .Q(\buf_data_reg[1] [152]),
        .R(SR));
  FDRE \buf_data_reg[1][153] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[80]),
        .Q(\buf_data_reg[1] [153]),
        .R(SR));
  FDRE \buf_data_reg[1][154] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[81]),
        .Q(\buf_data_reg[1] [154]),
        .R(SR));
  FDRE \buf_data_reg[1][155] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[82]),
        .Q(\buf_data_reg[1] [155]),
        .R(SR));
  FDRE \buf_data_reg[1][156] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[83]),
        .Q(\buf_data_reg[1] [156]),
        .R(SR));
  FDRE \buf_data_reg[1][157] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[84]),
        .Q(\buf_data_reg[1] [157]),
        .R(SR));
  FDRE \buf_data_reg[1][158] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[85]),
        .Q(\buf_data_reg[1] [158]),
        .R(SR));
  FDRE \buf_data_reg[1][159] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[86]),
        .Q(\buf_data_reg[1] [159]),
        .R(SR));
  FDRE \buf_data_reg[1][160] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[87]),
        .Q(\buf_data_reg[1] [160]),
        .R(SR));
  FDRE \buf_data_reg[1][161] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[88]),
        .Q(\buf_data_reg[1] [161]),
        .R(SR));
  FDRE \buf_data_reg[1][162] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[89]),
        .Q(\buf_data_reg[1] [162]),
        .R(SR));
  FDRE \buf_data_reg[1][163] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[90]),
        .Q(\buf_data_reg[1] [163]),
        .R(SR));
  FDRE \buf_data_reg[1][164] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[91]),
        .Q(\buf_data_reg[1] [164]),
        .R(SR));
  FDRE \buf_data_reg[1][165] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[92]),
        .Q(\buf_data_reg[1] [165]),
        .R(SR));
  FDRE \buf_data_reg[1][166] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[93]),
        .Q(\buf_data_reg[1] [166]),
        .R(SR));
  FDRE \buf_data_reg[1][167] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[94]),
        .Q(\buf_data_reg[1] [167]),
        .R(SR));
  FDRE \buf_data_reg[1][168] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[95]),
        .Q(\buf_data_reg[1] [168]),
        .R(SR));
  FDRE \buf_data_reg[1][169] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[96]),
        .Q(\buf_data_reg[1] [169]),
        .R(SR));
  FDRE \buf_data_reg[1][170] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[97]),
        .Q(\buf_data_reg[1] [170]),
        .R(SR));
  FDRE \buf_data_reg[1][171] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[98]),
        .Q(\buf_data_reg[1] [171]),
        .R(SR));
  FDRE \buf_data_reg[1][172] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[99]),
        .Q(\buf_data_reg[1] [172]),
        .R(SR));
  FDRE \buf_data_reg[1][1] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[1]),
        .Q(\buf_data_reg[1] [1]),
        .R(SR));
  FDRE \buf_data_reg[1][20] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[5]),
        .Q(\buf_data_reg[1] [20]),
        .R(SR));
  FDRE \buf_data_reg[1][21] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[6]),
        .Q(\buf_data_reg[1] [21]),
        .R(SR));
  FDRE \buf_data_reg[1][22] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[7]),
        .Q(\buf_data_reg[1] [22]),
        .R(SR));
  FDRE \buf_data_reg[1][23] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[8]),
        .Q(\buf_data_reg[1] [23]),
        .R(SR));
  FDRE \buf_data_reg[1][24] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[9]),
        .Q(\buf_data_reg[1] [24]),
        .R(SR));
  FDRE \buf_data_reg[1][25] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[10]),
        .Q(\buf_data_reg[1] [25]),
        .R(SR));
  FDRE \buf_data_reg[1][26] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[11]),
        .Q(\buf_data_reg[1] [26]),
        .R(SR));
  FDRE \buf_data_reg[1][27] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[12]),
        .Q(\buf_data_reg[1] [27]),
        .R(SR));
  FDRE \buf_data_reg[1][28] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[13]),
        .Q(\buf_data_reg[1] [28]),
        .R(SR));
  FDRE \buf_data_reg[1][29] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[14]),
        .Q(\buf_data_reg[1] [29]),
        .R(SR));
  FDRE \buf_data_reg[1][2] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[2]),
        .Q(\buf_data_reg[1] [2]),
        .R(SR));
  FDRE \buf_data_reg[1][30] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[15]),
        .Q(\buf_data_reg[1] [30]),
        .R(SR));
  FDRE \buf_data_reg[1][31] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[16]),
        .Q(\buf_data_reg[1] [31]),
        .R(SR));
  FDRE \buf_data_reg[1][32] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[17]),
        .Q(\buf_data_reg[1] [32]),
        .R(SR));
  FDRE \buf_data_reg[1][33] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[18]),
        .Q(\buf_data_reg[1] [33]),
        .R(SR));
  FDRE \buf_data_reg[1][34] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[19]),
        .Q(\buf_data_reg[1] [34]),
        .R(SR));
  FDRE \buf_data_reg[1][35] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[20]),
        .Q(\buf_data_reg[1] [35]),
        .R(SR));
  FDRE \buf_data_reg[1][3] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[3]),
        .Q(\buf_data_reg[1] [3]),
        .R(SR));
  FDRE \buf_data_reg[1][4] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[4]),
        .Q(\buf_data_reg[1] [4]),
        .R(SR));
  FDRE \buf_data_reg[1][68] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[21]),
        .Q(\buf_data_reg[1] [68]),
        .R(SR));
  FDRE \buf_data_reg[1][69] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[22]),
        .Q(\buf_data_reg[1] [69]),
        .R(SR));
  FDRE \buf_data_reg[1][70] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[23]),
        .Q(\buf_data_reg[1] [70]),
        .R(SR));
  FDRE \buf_data_reg[1][71] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[24]),
        .Q(\buf_data_reg[1] [71]),
        .R(SR));
  FDRE \buf_data_reg[1][72] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[25]),
        .Q(\buf_data_reg[1] [72]),
        .R(SR));
  FDRE \buf_data_reg[1][73] 
       (.C(s_axis_aclk),
        .CE(\buf_data[1][172]_i_1_n_0 ),
        .D(D[26]),
        .Q(\buf_data_reg[1] [73]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCCF80000)) 
    \buf_valid[0]_i_1 
       (.I0(\buf_valid_reg[0]_0 ),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(s_axis_tvalid),
        .I3(p_0_in),
        .I4(s_axis_aresetn),
        .O(\buf_valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8B00000)) 
    \buf_valid[1]_i_1 
       (.I0(\buf_valid_reg[0]_0 ),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(s_axis_tvalid),
        .I4(s_axis_aresetn),
        .O(\buf_valid[1]_i_1_n_0 ));
  FDRE \buf_valid_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\buf_valid[0]_i_1_n_0 ),
        .Q(\buf_valid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buf_valid_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\buf_valid[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    cur_dtype_pxls_i_1
       (.I0(\s_fifo_td[63]_i_2_n_0 ),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(cur_dtype_pxls),
        .I3(cur_dtype_pxls_i_2_n_0),
        .O(cur_dtype_pxls_i_1_n_0));
  LUT4 #(
    .INIT(16'h40FF)) 
    cur_dtype_pxls_i_2
       (.I0(\buf_valid_reg[0]_0 ),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(s_axis_tlast_0),
        .I3(s_axis_aresetn),
        .O(cur_dtype_pxls_i_2_n_0));
  FDRE cur_dtype_pxls_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(cur_dtype_pxls_i_1_n_0),
        .Q(cur_dtype_pxls),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AAEA)) 
    cur_dtype_sink_i_1
       (.I0(cur_dtype_sink_reg_n_0),
        .I1(sdt_tv_INST_0_i_1_n_0),
        .I2(\buf_valid_reg_n_0_[0] ),
        .I3(\s_fifo_td[63]_i_2_n_0 ),
        .I4(cur_dtype_pxls_i_2_n_0),
        .O(cur_dtype_sink_i_1_n_0));
  FDRE cur_dtype_sink_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(cur_dtype_sink_i_1_n_0),
        .Q(cur_dtype_sink_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00F4)) 
    cur_dtype_udef_i_1
       (.I0(sdt_tv_INST_0_i_1_n_0),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(cur_dtype_udef),
        .I3(cur_dtype_pxls_i_2_n_0),
        .O(cur_dtype_udef_i_1_n_0));
  FDRE cur_dtype_udef_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(cur_dtype_udef_i_1_n_0),
        .Q(cur_dtype_udef),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(p_0_in),
        .O(\buf_valid_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h88080000)) 
    \s_fifo_td[63]_i_1 
       (.I0(\buf_valid_reg_n_0_[0] ),
        .I1(\s_fifo_td[63]_i_2_n_0 ),
        .I2(s_fifo_tv),
        .I3(s_axis_tready),
        .I4(cur_dtype_pxls),
        .O(\s_fifo_td[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \s_fifo_td[63]_i_2 
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(Q[5]),
        .O(\s_fifo_td[63]_i_2_n_0 ));
  FDRE \s_fifo_td_reg[0] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[0]),
        .Q(\s_fifo_td_reg[63]_0 [0]),
        .R(SR));
  FDRE \s_fifo_td_reg[10] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[10]),
        .Q(\s_fifo_td_reg[63]_0 [10]),
        .R(SR));
  FDRE \s_fifo_td_reg[11] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[11]),
        .Q(\s_fifo_td_reg[63]_0 [11]),
        .R(SR));
  FDRE \s_fifo_td_reg[12] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[12]),
        .Q(\s_fifo_td_reg[63]_0 [12]),
        .R(SR));
  FDRE \s_fifo_td_reg[13] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[13]),
        .Q(\s_fifo_td_reg[63]_0 [13]),
        .R(SR));
  FDRE \s_fifo_td_reg[14] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[14]),
        .Q(\s_fifo_td_reg[63]_0 [14]),
        .R(SR));
  FDRE \s_fifo_td_reg[15] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[15]),
        .Q(\s_fifo_td_reg[63]_0 [15]),
        .R(SR));
  FDRE \s_fifo_td_reg[16] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[12]),
        .Q(\s_fifo_td_reg[63]_0 [16]),
        .R(SR));
  FDRE \s_fifo_td_reg[17] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[13]),
        .Q(\s_fifo_td_reg[63]_0 [17]),
        .R(SR));
  FDRE \s_fifo_td_reg[18] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[14]),
        .Q(\s_fifo_td_reg[63]_0 [18]),
        .R(SR));
  FDRE \s_fifo_td_reg[19] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[15]),
        .Q(\s_fifo_td_reg[63]_0 [19]),
        .R(SR));
  FDRE \s_fifo_td_reg[1] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[1]),
        .Q(\s_fifo_td_reg[63]_0 [1]),
        .R(SR));
  FDRE \s_fifo_td_reg[20] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[16]),
        .Q(\s_fifo_td_reg[63]_0 [20]),
        .R(SR));
  FDRE \s_fifo_td_reg[21] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[17]),
        .Q(\s_fifo_td_reg[63]_0 [21]),
        .R(SR));
  FDRE \s_fifo_td_reg[22] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[18]),
        .Q(\s_fifo_td_reg[63]_0 [22]),
        .R(SR));
  FDRE \s_fifo_td_reg[23] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[19]),
        .Q(\s_fifo_td_reg[63]_0 [23]),
        .R(SR));
  FDRE \s_fifo_td_reg[24] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[24]),
        .Q(\s_fifo_td_reg[63]_0 [24]),
        .R(SR));
  FDRE \s_fifo_td_reg[25] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[25]),
        .Q(\s_fifo_td_reg[63]_0 [25]),
        .R(SR));
  FDRE \s_fifo_td_reg[26] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[26]),
        .Q(\s_fifo_td_reg[63]_0 [26]),
        .R(SR));
  FDRE \s_fifo_td_reg[27] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[27]),
        .Q(\s_fifo_td_reg[63]_0 [27]),
        .R(SR));
  FDRE \s_fifo_td_reg[28] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[28]),
        .Q(\s_fifo_td_reg[63]_0 [28]),
        .R(SR));
  FDRE \s_fifo_td_reg[29] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[29]),
        .Q(\s_fifo_td_reg[63]_0 [29]),
        .R(SR));
  FDRE \s_fifo_td_reg[2] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[2]),
        .Q(\s_fifo_td_reg[63]_0 [2]),
        .R(SR));
  FDRE \s_fifo_td_reg[30] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[30]),
        .Q(\s_fifo_td_reg[63]_0 [30]),
        .R(SR));
  FDRE \s_fifo_td_reg[31] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[31]),
        .Q(\s_fifo_td_reg[63]_0 [31]),
        .R(SR));
  FDRE \s_fifo_td_reg[32] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[32]),
        .Q(\s_fifo_td_reg[63]_0 [32]),
        .R(SR));
  FDRE \s_fifo_td_reg[33] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[33]),
        .Q(\s_fifo_td_reg[63]_0 [33]),
        .R(SR));
  FDRE \s_fifo_td_reg[34] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[34]),
        .Q(\s_fifo_td_reg[63]_0 [34]),
        .R(SR));
  FDRE \s_fifo_td_reg[35] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[35]),
        .Q(\s_fifo_td_reg[63]_0 [35]),
        .R(SR));
  FDRE \s_fifo_td_reg[36] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[36]),
        .Q(\s_fifo_td_reg[63]_0 [36]),
        .R(SR));
  FDRE \s_fifo_td_reg[37] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[37]),
        .Q(\s_fifo_td_reg[63]_0 [37]),
        .R(SR));
  FDRE \s_fifo_td_reg[38] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[38]),
        .Q(\s_fifo_td_reg[63]_0 [38]),
        .R(SR));
  FDRE \s_fifo_td_reg[39] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[39]),
        .Q(\s_fifo_td_reg[63]_0 [39]),
        .R(SR));
  FDRE \s_fifo_td_reg[3] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[3]),
        .Q(\s_fifo_td_reg[63]_0 [3]),
        .R(SR));
  FDRE \s_fifo_td_reg[40] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[40]),
        .Q(\s_fifo_td_reg[63]_0 [40]),
        .R(SR));
  FDRE \s_fifo_td_reg[41] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[41]),
        .Q(\s_fifo_td_reg[63]_0 [41]),
        .R(SR));
  FDRE \s_fifo_td_reg[42] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[42]),
        .Q(\s_fifo_td_reg[63]_0 [42]),
        .R(SR));
  FDRE \s_fifo_td_reg[43] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[43]),
        .Q(\s_fifo_td_reg[63]_0 [43]),
        .R(SR));
  FDRE \s_fifo_td_reg[44] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[44]),
        .Q(\s_fifo_td_reg[63]_0 [44]),
        .R(SR));
  FDRE \s_fifo_td_reg[45] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[45]),
        .Q(\s_fifo_td_reg[63]_0 [45]),
        .R(SR));
  FDRE \s_fifo_td_reg[46] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[46]),
        .Q(\s_fifo_td_reg[63]_0 [46]),
        .R(SR));
  FDRE \s_fifo_td_reg[47] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[47]),
        .Q(\s_fifo_td_reg[63]_0 [47]),
        .R(SR));
  FDRE \s_fifo_td_reg[48] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[48]),
        .Q(\s_fifo_td_reg[63]_0 [48]),
        .R(SR));
  FDRE \s_fifo_td_reg[49] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[49]),
        .Q(\s_fifo_td_reg[63]_0 [49]),
        .R(SR));
  FDRE \s_fifo_td_reg[4] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[4]),
        .Q(\s_fifo_td_reg[63]_0 [4]),
        .R(SR));
  FDRE \s_fifo_td_reg[50] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[50]),
        .Q(\s_fifo_td_reg[63]_0 [50]),
        .R(SR));
  FDRE \s_fifo_td_reg[51] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[51]),
        .Q(\s_fifo_td_reg[63]_0 [51]),
        .R(SR));
  FDRE \s_fifo_td_reg[52] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[52]),
        .Q(\s_fifo_td_reg[63]_0 [52]),
        .R(SR));
  FDRE \s_fifo_td_reg[53] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[53]),
        .Q(\s_fifo_td_reg[63]_0 [53]),
        .R(SR));
  FDRE \s_fifo_td_reg[54] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[54]),
        .Q(\s_fifo_td_reg[63]_0 [54]),
        .R(SR));
  FDRE \s_fifo_td_reg[55] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[55]),
        .Q(\s_fifo_td_reg[63]_0 [55]),
        .R(SR));
  FDRE \s_fifo_td_reg[56] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[56]),
        .Q(\s_fifo_td_reg[63]_0 [56]),
        .R(SR));
  FDRE \s_fifo_td_reg[57] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[57]),
        .Q(\s_fifo_td_reg[63]_0 [57]),
        .R(SR));
  FDRE \s_fifo_td_reg[58] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[58]),
        .Q(\s_fifo_td_reg[63]_0 [58]),
        .R(SR));
  FDRE \s_fifo_td_reg[59] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[59]),
        .Q(\s_fifo_td_reg[63]_0 [59]),
        .R(SR));
  FDRE \s_fifo_td_reg[5] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[5]),
        .Q(\s_fifo_td_reg[63]_0 [5]),
        .R(SR));
  FDRE \s_fifo_td_reg[60] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[60]),
        .Q(\s_fifo_td_reg[63]_0 [60]),
        .R(SR));
  FDRE \s_fifo_td_reg[61] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[61]),
        .Q(\s_fifo_td_reg[63]_0 [61]),
        .R(SR));
  FDRE \s_fifo_td_reg[62] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[62]),
        .Q(\s_fifo_td_reg[63]_0 [62]),
        .R(SR));
  FDRE \s_fifo_td_reg[63] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[63]),
        .Q(\s_fifo_td_reg[63]_0 [63]),
        .R(SR));
  FDRE \s_fifo_td_reg[6] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[6]),
        .Q(\s_fifo_td_reg[63]_0 [6]),
        .R(SR));
  FDRE \s_fifo_td_reg[7] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[7]),
        .Q(\s_fifo_td_reg[63]_0 [7]),
        .R(SR));
  FDRE \s_fifo_td_reg[8] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[8]),
        .Q(\s_fifo_td_reg[63]_0 [8]),
        .R(SR));
  FDRE \s_fifo_td_reg[9] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_td[9]),
        .Q(\s_fifo_td_reg[63]_0 [9]),
        .R(SR));
  FDRE \s_fifo_tid_reg[0] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\s_fifo_tid_reg[25]_0 [0]),
        .R(SR));
  FDRE \s_fifo_tid_reg[10] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[0]),
        .Q(\s_fifo_tid_reg[25]_0 [10]),
        .R(SR));
  FDRE \s_fifo_tid_reg[11] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[1]),
        .Q(\s_fifo_tid_reg[25]_0 [11]),
        .R(SR));
  FDRE \s_fifo_tid_reg[12] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[2]),
        .Q(\s_fifo_tid_reg[25]_0 [12]),
        .R(SR));
  FDRE \s_fifo_tid_reg[13] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[3]),
        .Q(\s_fifo_tid_reg[25]_0 [13]),
        .R(SR));
  FDRE \s_fifo_tid_reg[14] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[4]),
        .Q(\s_fifo_tid_reg[25]_0 [14]),
        .R(SR));
  FDRE \s_fifo_tid_reg[15] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[5]),
        .Q(\s_fifo_tid_reg[25]_0 [15]),
        .R(SR));
  FDRE \s_fifo_tid_reg[16] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[6]),
        .Q(\s_fifo_tid_reg[25]_0 [16]),
        .R(SR));
  FDRE \s_fifo_tid_reg[17] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[7]),
        .Q(\s_fifo_tid_reg[25]_0 [17]),
        .R(SR));
  FDRE \s_fifo_tid_reg[18] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[8]),
        .Q(\s_fifo_tid_reg[25]_0 [18]),
        .R(SR));
  FDRE \s_fifo_tid_reg[19] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[9]),
        .Q(\s_fifo_tid_reg[25]_0 [19]),
        .R(SR));
  FDRE \s_fifo_tid_reg[1] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\s_fifo_tid_reg[25]_0 [1]),
        .R(SR));
  FDRE \s_fifo_tid_reg[20] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[10]),
        .Q(\s_fifo_tid_reg[25]_0 [20]),
        .R(SR));
  FDRE \s_fifo_tid_reg[21] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[11]),
        .Q(\s_fifo_tid_reg[25]_0 [21]),
        .R(SR));
  FDRE \s_fifo_tid_reg[22] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[12]),
        .Q(\s_fifo_tid_reg[25]_0 [22]),
        .R(SR));
  FDRE \s_fifo_tid_reg[23] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[13]),
        .Q(\s_fifo_tid_reg[25]_0 [23]),
        .R(SR));
  FDRE \s_fifo_tid_reg[24] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[14]),
        .Q(\s_fifo_tid_reg[25]_0 [24]),
        .R(SR));
  FDRE \s_fifo_tid_reg[25] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(frmnum[15]),
        .Q(\s_fifo_tid_reg[25]_0 [25]),
        .R(SR));
  FDRE \s_fifo_tid_reg[2] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\s_fifo_tid_reg[25]_0 [2]),
        .R(SR));
  FDRE \s_fifo_tid_reg[3] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\s_fifo_tid_reg[25]_0 [3]),
        .R(SR));
  FDRE \s_fifo_tid_reg[4] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\s_fifo_tid_reg[25]_0 [4]),
        .R(SR));
  FDRE \s_fifo_tid_reg[5] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\s_fifo_tid_reg[25]_0 [5]),
        .R(SR));
  FDRE \s_fifo_tid_reg[6] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\s_fifo_tid_reg[25]_0 [6]),
        .R(SR));
  FDRE \s_fifo_tid_reg[7] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[8]),
        .Q(\s_fifo_tid_reg[25]_0 [7]),
        .R(SR));
  FDRE \s_fifo_tid_reg[8] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\s_fifo_tid_reg[25]_0 [8]),
        .R(SR));
  FDRE \s_fifo_tid_reg[9] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[10]),
        .Q(\s_fifo_tid_reg[25]_0 [9]),
        .R(SR));
  FDRE \s_fifo_tk_reg[0] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[0]),
        .Q(\s_fifo_tk_reg[7]_0 [0]),
        .R(SR));
  FDRE \s_fifo_tk_reg[1] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[1]),
        .Q(\s_fifo_tk_reg[7]_0 [1]),
        .R(SR));
  FDRE \s_fifo_tk_reg[2] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[2]),
        .Q(\s_fifo_tk_reg[7]_0 [2]),
        .R(SR));
  FDRE \s_fifo_tk_reg[3] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(Q[11]),
        .Q(\s_fifo_tk_reg[7]_0 [3]),
        .R(SR));
  FDRE \s_fifo_tk_reg[4] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[4]),
        .Q(\s_fifo_tk_reg[7]_0 [4]),
        .R(SR));
  FDRE \s_fifo_tk_reg[5] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[5]),
        .Q(\s_fifo_tk_reg[7]_0 [5]),
        .R(SR));
  FDRE \s_fifo_tk_reg[6] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[6]),
        .Q(\s_fifo_tk_reg[7]_0 [6]),
        .R(SR));
  FDRE \s_fifo_tk_reg[7] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tk[7]),
        .Q(\s_fifo_tk_reg[7]_0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAACA00C000000000)) 
    s_fifo_tl_i_1
       (.I0(fifo_tv),
        .I1(s_axis_tlast),
        .I2(s_fifo_tv),
        .I3(s_axis_tready),
        .I4(fifo_tl),
        .I5(s_axis_aresetn),
        .O(s_fifo_tl_i_1_n_0));
  FDRE s_fifo_tl_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s_fifo_tl_i_1_n_0),
        .Q(s_axis_tlast),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \s_fifo_tu[21]_i_1 
       (.I0(\buf_valid_reg[0]_0 ),
        .I1(Q[4]),
        .I2(fifo_tv),
        .O(fifo_tu));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_fifo_tu[21]_i_2 
       (.I0(cur_dtype_pxls),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(\s_fifo_td[63]_i_2_n_0 ),
        .O(fifo_tv));
  FDRE \s_fifo_tu_reg[21] 
       (.C(s_axis_aclk),
        .CE(\s_fifo_td[63]_i_1_n_0 ),
        .D(fifo_tu),
        .Q(s_axis_tuser),
        .R(SR));
  LUT6 #(
    .INIT(64'hF222222200000000)) 
    s_fifo_tv_i_1
       (.I0(s_fifo_tv),
        .I1(s_axis_tready),
        .I2(\s_fifo_td[63]_i_2_n_0 ),
        .I3(\buf_valid_reg_n_0_[0] ),
        .I4(cur_dtype_pxls),
        .I5(s_axis_aresetn),
        .O(s_fifo_tv_i_1_n_0));
  FDRE s_fifo_tv_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s_fifo_tv_i_1_n_0),
        .Q(s_fifo_tv),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[0]_i_1 
       (.I0(fifo_td[24]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [0]),
        .O(\buf_data_reg[0][171]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[10]_i_1 
       (.I0(fifo_td[2]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [10]),
        .O(\buf_data_reg[0][171]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[11]_i_1 
       (.I0(fifo_td[3]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [11]),
        .O(\buf_data_reg[0][171]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[12]_i_1 
       (.I0(fifo_td[4]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [12]),
        .O(\buf_data_reg[0][171]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[13]_i_1 
       (.I0(fifo_td[5]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [13]),
        .O(\buf_data_reg[0][171]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[14]_i_1 
       (.I0(fifo_td[6]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [14]),
        .O(\buf_data_reg[0][171]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[15]_i_1 
       (.I0(fifo_td[7]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [15]),
        .O(\buf_data_reg[0][171]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[16]_i_1 
       (.I0(fifo_td[8]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [16]),
        .O(\buf_data_reg[0][171]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[17]_i_1 
       (.I0(fifo_td[9]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [17]),
        .O(\buf_data_reg[0][171]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[18]_i_1 
       (.I0(fifo_td[10]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [18]),
        .O(\buf_data_reg[0][171]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[19]_i_1 
       (.I0(fifo_td[11]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [19]),
        .O(\buf_data_reg[0][171]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[1]_i_1 
       (.I0(fifo_td[25]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [1]),
        .O(\buf_data_reg[0][171]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[20]_i_1 
       (.I0(fifo_td[12]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [20]),
        .O(\buf_data_reg[0][171]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[21]_i_1 
       (.I0(fifo_td[13]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [21]),
        .O(\buf_data_reg[0][171]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[22]_i_1 
       (.I0(fifo_td[14]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [22]),
        .O(\buf_data_reg[0][171]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[23]_i_1 
       (.I0(fifo_td[15]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [23]),
        .O(\buf_data_reg[0][171]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[24]_i_1 
       (.I0(fifo_td[48]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [24]),
        .O(\buf_data_reg[0][171]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[25]_i_1 
       (.I0(fifo_td[49]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [25]),
        .O(\buf_data_reg[0][171]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[26]_i_1 
       (.I0(fifo_td[50]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [26]),
        .O(\buf_data_reg[0][171]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[27]_i_1 
       (.I0(fifo_td[51]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [27]),
        .O(\buf_data_reg[0][171]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[28]_i_1 
       (.I0(fifo_td[52]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [28]),
        .O(\buf_data_reg[0][171]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[29]_i_1 
       (.I0(fifo_td[53]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [29]),
        .O(\buf_data_reg[0][171]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[2]_i_1 
       (.I0(fifo_td[26]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [2]),
        .O(\buf_data_reg[0][171]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[30]_i_1 
       (.I0(fifo_td[54]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [30]),
        .O(\buf_data_reg[0][171]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[31]_i_1 
       (.I0(fifo_td[55]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [31]),
        .O(\buf_data_reg[0][171]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[32]_i_1 
       (.I0(fifo_td[56]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [32]),
        .O(\buf_data_reg[0][171]_0 [32]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[33]_i_1 
       (.I0(fifo_td[57]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [33]),
        .O(\buf_data_reg[0][171]_0 [33]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[34]_i_1 
       (.I0(fifo_td[58]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [34]),
        .O(\buf_data_reg[0][171]_0 [34]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[35]_i_1 
       (.I0(fifo_td[59]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [35]),
        .O(\buf_data_reg[0][171]_0 [35]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[36]_i_1 
       (.I0(fifo_td[60]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [36]),
        .O(\buf_data_reg[0][171]_0 [36]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[37]_i_1 
       (.I0(fifo_td[61]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [37]),
        .O(\buf_data_reg[0][171]_0 [37]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[38]_i_1 
       (.I0(fifo_td[62]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [38]),
        .O(\buf_data_reg[0][171]_0 [38]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[39]_i_1 
       (.I0(fifo_td[63]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [39]),
        .O(\buf_data_reg[0][171]_0 [39]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[3]_i_1 
       (.I0(fifo_td[27]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [3]),
        .O(\buf_data_reg[0][171]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[40]_i_1 
       (.I0(fifo_td[32]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [40]),
        .O(\buf_data_reg[0][171]_0 [40]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[41]_i_1 
       (.I0(fifo_td[33]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [41]),
        .O(\buf_data_reg[0][171]_0 [41]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[42]_i_1 
       (.I0(fifo_td[34]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [42]),
        .O(\buf_data_reg[0][171]_0 [42]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[43]_i_1 
       (.I0(fifo_td[35]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [43]),
        .O(\buf_data_reg[0][171]_0 [43]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[44]_i_1 
       (.I0(fifo_td[36]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [44]),
        .O(\buf_data_reg[0][171]_0 [44]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[45]_i_1 
       (.I0(fifo_td[37]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [45]),
        .O(\buf_data_reg[0][171]_0 [45]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[46]_i_1 
       (.I0(fifo_td[38]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [46]),
        .O(\buf_data_reg[0][171]_0 [46]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[47]_i_1 
       (.I0(fifo_td[39]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [47]),
        .O(\buf_data_reg[0][171]_0 [47]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[48]_i_1 
       (.I0(fifo_td[40]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [48]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[49]_i_1 
       (.I0(fifo_td[41]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [49]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[4]_i_1 
       (.I0(fifo_td[28]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [4]),
        .O(\buf_data_reg[0][171]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[50]_i_1 
       (.I0(fifo_td[42]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [50]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[51]_i_1 
       (.I0(fifo_td[43]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [51]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[52]_i_1 
       (.I0(fifo_td[44]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [52]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[53]_i_1 
       (.I0(fifo_td[45]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [53]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[54]_i_1 
       (.I0(fifo_td[46]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [54]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_td_r[55]_i_1 
       (.I0(fifo_td[47]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][171]_0 [55]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[5]_i_1 
       (.I0(fifo_td[29]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [5]),
        .O(\buf_data_reg[0][171]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[6]_i_1 
       (.I0(fifo_td[30]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [6]),
        .O(\buf_data_reg[0][171]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[7]_i_1 
       (.I0(fifo_td[31]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [7]),
        .O(\buf_data_reg[0][171]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[8]_i_1 
       (.I0(fifo_td[0]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [8]),
        .O(\buf_data_reg[0][171]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_td_r[9]_i_1 
       (.I0(fifo_td[1]),
        .I1(sband_tact0),
        .I2(\sband_td_r_reg[47] [9]),
        .O(\buf_data_reg[0][171]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_tk_r[1]_i_1 
       (.I0(fifo_tk[0]),
        .I1(sband_tact0),
        .I2(\sband_tk_r_reg[5] [0]),
        .O(\buf_data_reg[0][107]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_tk_r[2]_i_1 
       (.I0(fifo_tk[1]),
        .I1(sband_tact0),
        .I2(\sband_tk_r_reg[5] [1]),
        .O(\buf_data_reg[0][107]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_tk_r[3]_i_1 
       (.I0(fifo_tk[6]),
        .I1(sband_tact0),
        .I2(\sband_tk_r_reg[5] [2]),
        .O(\buf_data_reg[0][107]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_tk_r[4]_i_1 
       (.I0(fifo_tk[7]),
        .I1(sband_tact0),
        .I2(\sband_tk_r_reg[5] [3]),
        .O(\buf_data_reg[0][107]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sband_tk_r[5]_i_1 
       (.I0(fifo_tk[4]),
        .I1(sband_tact0),
        .I2(\sband_tk_r_reg[5] [4]),
        .O(\buf_data_reg[0][107]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \sband_tk_r[6]_i_1 
       (.I0(sband_tact0),
        .I1(vfb_ready),
        .I2(\sband_td_r_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sband_tk_r[6]_i_2 
       (.I0(fifo_tk[5]),
        .I1(sband_tact0),
        .O(\buf_data_reg[0][107]_0 [5]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    sband_tl_r_i_1
       (.I0(sdt_tv_INST_0_i_1_n_0),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(cur_dtype_udef),
        .I3(mdt_tv),
        .I4(sband_tl_r_reg),
        .I5(sband_tl_r_reg_0),
        .O(sband_tact0));
  LUT6 #(
    .INIT(64'h8888888800000080)) 
    sband_tl_r_i_2
       (.I0(s_axis_tlast_0),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(cur_dtype_udef),
        .I3(sband_tl_r_reg_0),
        .I4(sband_tl_r_reg_1),
        .I5(cur_dtype_sink_reg_0),
        .O(fifo_tl));
  LUT4 #(
    .INIT(16'hFBAA)) 
    sband_tl_r_i_5
       (.I0(cur_dtype_sink_reg_n_0),
        .I1(s_fifo_tv),
        .I2(s_axis_tready),
        .I3(cur_dtype_pxls),
        .O(cur_dtype_sink_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \sband_tu_r[0]_i_1 
       (.I0(cur_dtype_udef),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(sdt_tv_INST_0_i_1_n_0),
        .I3(\buf_valid_reg[0]_0 ),
        .I4(Q[4]),
        .O(sband_tu));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sdt_tv_INST_0
       (.I0(cur_dtype_udef),
        .I1(\buf_valid_reg_n_0_[0] ),
        .I2(sdt_tv_INST_0_i_1_n_0),
        .O(sdt_tv));
  LUT6 #(
    .INIT(64'hFF00EFFFFFFFFFFF)) 
    sdt_tv_INST_0_i_1
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(sdt_tv_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vfb_valid_i_1
       (.I0(s_axis_aresetn),
        .O(SR));
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
