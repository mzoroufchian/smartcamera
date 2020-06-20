-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 19 09:59:58 2019
-- Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/vhdl/zybo_base_linux/zybo_base_linux.srcs/sources_1/bd/system/ip/system_detec_movement_0_0/system_detec_movement_0_0_stub.vhdl
-- Design      : system_detec_movement_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_detec_movement_0_0 is
  Port ( 
    s_axi_detec_data_AWADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_detec_data_AWVALID : in STD_LOGIC;
    s_axi_detec_data_AWREADY : out STD_LOGIC;
    s_axi_detec_data_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_detec_data_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_detec_data_WVALID : in STD_LOGIC;
    s_axi_detec_data_WREADY : out STD_LOGIC;
    s_axi_detec_data_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_detec_data_BVALID : out STD_LOGIC;
    s_axi_detec_data_BREADY : in STD_LOGIC;
    s_axi_detec_data_ARADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_detec_data_ARVALID : in STD_LOGIC;
    s_axi_detec_data_ARREADY : out STD_LOGIC;
    s_axi_detec_data_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_detec_data_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_detec_data_RVALID : out STD_LOGIC;
    s_axi_detec_data_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );

end system_detec_movement_0_0;

architecture stub of system_detec_movement_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_detec_data_AWADDR[9:0],s_axi_detec_data_AWVALID,s_axi_detec_data_AWREADY,s_axi_detec_data_WDATA[31:0],s_axi_detec_data_WSTRB[3:0],s_axi_detec_data_WVALID,s_axi_detec_data_WREADY,s_axi_detec_data_BRESP[1:0],s_axi_detec_data_BVALID,s_axi_detec_data_BREADY,s_axi_detec_data_ARADDR[9:0],s_axi_detec_data_ARVALID,s_axi_detec_data_ARREADY,s_axi_detec_data_RDATA[31:0],s_axi_detec_data_RRESP[1:0],s_axi_detec_data_RVALID,s_axi_detec_data_RREADY,ap_clk,ap_rst_n,interrupt";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "detec_movement,Vivado 2018.3";
begin
end;
