--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Jul 19 09:58:20 2019
--Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    SPI_io0_io : inout STD_LOGIC;
    SPI_io1_io : inout STD_LOGIC;
    SPI_sck_io : inout STD_LOGIC;
    SPI_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    UART_0_rxd : in STD_LOGIC;
    UART_0_txd : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    UART_1_txd : out STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ac_bclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_iic_scl_io : inout STD_LOGIC;
    ac_iic_sda_io : inout STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pblrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_recdat : in STD_LOGIC_VECTOR ( 0 to 0 );
    ac_reclrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_iic_scl_io : inout STD_LOGIC;
    cam_iic_sda_io : inout STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rst_b_tri_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_io : inout STD_LOGIC;
    hdmi_in_ddc_sda_io : inout STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_scl_io : inout STD_LOGIC;
    hdmi_out_ddc_sda_io : inout STD_LOGIC;
    leds_4bits_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    lora_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    pmodble_tri_io : inout STD_LOGIC_VECTOR ( 5 downto 0 );
    pwm_rgb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sys_clock : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    pwm_rgb : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ac_recdat : in STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_reclrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_mclk : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    ac_muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_bclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pblrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lora_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lora_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    lora_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    UART_0_rxd : in STD_LOGIC;
    UART_0_txd : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    UART_1_txd : out STD_LOGIC;
    pmodble_tri_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    pmodble_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    pmodble_tri_t : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SPI_io0_i : in STD_LOGIC;
    SPI_io0_o : out STD_LOGIC;
    SPI_io0_t : out STD_LOGIC;
    SPI_io1_i : in STD_LOGIC;
    SPI_io1_o : out STD_LOGIC;
    SPI_io1_t : out STD_LOGIC;
    SPI_sck_i : in STD_LOGIC;
    SPI_sck_o : out STD_LOGIC;
    SPI_sck_t : out STD_LOGIC;
    SPI_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_ss_t : out STD_LOGIC;
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_sda_i : in STD_LOGIC;
    hdmi_out_ddc_sda_o : out STD_LOGIC;
    hdmi_out_ddc_sda_t : out STD_LOGIC;
    hdmi_out_ddc_scl_i : in STD_LOGIC;
    hdmi_out_ddc_scl_o : out STD_LOGIC;
    hdmi_out_ddc_scl_t : out STD_LOGIC;
    leds_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_4bits_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    eth_rst_b_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ac_iic_sda_i : in STD_LOGIC;
    ac_iic_sda_o : out STD_LOGIC;
    ac_iic_sda_t : out STD_LOGIC;
    ac_iic_scl_i : in STD_LOGIC;
    ac_iic_scl_o : out STD_LOGIC;
    ac_iic_scl_t : out STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal SPI_io0_i : STD_LOGIC;
  signal SPI_io0_o : STD_LOGIC;
  signal SPI_io0_t : STD_LOGIC;
  signal SPI_io1_i : STD_LOGIC;
  signal SPI_io1_o : STD_LOGIC;
  signal SPI_io1_t : STD_LOGIC;
  signal SPI_sck_i : STD_LOGIC;
  signal SPI_sck_o : STD_LOGIC;
  signal SPI_sck_t : STD_LOGIC;
  signal SPI_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_ss_t : STD_LOGIC;
  signal ac_iic_scl_i : STD_LOGIC;
  signal ac_iic_scl_o : STD_LOGIC;
  signal ac_iic_scl_t : STD_LOGIC;
  signal ac_iic_sda_i : STD_LOGIC;
  signal ac_iic_sda_o : STD_LOGIC;
  signal ac_iic_sda_t : STD_LOGIC;
  signal cam_iic_scl_i : STD_LOGIC;
  signal cam_iic_scl_o : STD_LOGIC;
  signal cam_iic_scl_t : STD_LOGIC;
  signal cam_iic_sda_i : STD_LOGIC;
  signal cam_iic_sda_o : STD_LOGIC;
  signal cam_iic_sda_t : STD_LOGIC;
  signal eth_rst_b_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eth_rst_b_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hdmi_in_ddc_scl_i : STD_LOGIC;
  signal hdmi_in_ddc_scl_o : STD_LOGIC;
  signal hdmi_in_ddc_scl_t : STD_LOGIC;
  signal hdmi_in_ddc_sda_i : STD_LOGIC;
  signal hdmi_in_ddc_sda_o : STD_LOGIC;
  signal hdmi_in_ddc_sda_t : STD_LOGIC;
  signal hdmi_out_ddc_scl_i : STD_LOGIC;
  signal hdmi_out_ddc_scl_o : STD_LOGIC;
  signal hdmi_out_ddc_scl_t : STD_LOGIC;
  signal hdmi_out_ddc_sda_i : STD_LOGIC;
  signal hdmi_out_ddc_sda_o : STD_LOGIC;
  signal hdmi_out_ddc_sda_t : STD_LOGIC;
  signal leds_4bits_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_4bits_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_4bits_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_4bits_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_4bits_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_4bits_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_4bits_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_4bits_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_4bits_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_4bits_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_4bits_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_4bits_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_4bits_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_4bits_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_4bits_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_4bits_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal lora_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lora_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal lora_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal lora_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal lora_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lora_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal lora_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal lora_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal lora_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lora_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal lora_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal lora_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal lora_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lora_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal lora_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal lora_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmodble_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmodble_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmodble_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmodble_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmodble_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmodble_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmodble_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmodble_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmodble_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmodble_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmodble_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmodble_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmodble_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmodble_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmodble_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmodble_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmodble_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmodble_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmodble_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmodble_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmodble_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmodble_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmodble_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmodble_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
begin
SPI_io0_iobuf: component IOBUF
     port map (
      I => SPI_io0_o,
      IO => SPI_io0_io,
      O => SPI_io0_i,
      T => SPI_io0_t
    );
SPI_io1_iobuf: component IOBUF
     port map (
      I => SPI_io1_o,
      IO => SPI_io1_io,
      O => SPI_io1_i,
      T => SPI_io1_t
    );
SPI_sck_iobuf: component IOBUF
     port map (
      I => SPI_sck_o,
      IO => SPI_sck_io,
      O => SPI_sck_i,
      T => SPI_sck_t
    );
SPI_ss_iobuf_0: component IOBUF
     port map (
      I => SPI_ss_o_0(0),
      IO => SPI_ss_io(0),
      O => SPI_ss_i_0(0),
      T => SPI_ss_t
    );
ac_iic_scl_iobuf: component IOBUF
     port map (
      I => ac_iic_scl_o,
      IO => ac_iic_scl_io,
      O => ac_iic_scl_i,
      T => ac_iic_scl_t
    );
ac_iic_sda_iobuf: component IOBUF
     port map (
      I => ac_iic_sda_o,
      IO => ac_iic_sda_io,
      O => ac_iic_sda_i,
      T => ac_iic_sda_t
    );
cam_iic_scl_iobuf: component IOBUF
     port map (
      I => cam_iic_scl_o,
      IO => cam_iic_scl_io,
      O => cam_iic_scl_i,
      T => cam_iic_scl_t
    );
cam_iic_sda_iobuf: component IOBUF
     port map (
      I => cam_iic_sda_o,
      IO => cam_iic_sda_io,
      O => cam_iic_sda_i,
      T => cam_iic_sda_t
    );
eth_rst_b_tri_iobuf_0: component IOBUF
     port map (
      I => eth_rst_b_tri_o_0(0),
      IO => eth_rst_b_tri_io(0),
      O => eth_rst_b_tri_i_0(0),
      T => eth_rst_b_tri_t_0(0)
    );
hdmi_in_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_scl_o,
      IO => hdmi_in_ddc_scl_io,
      O => hdmi_in_ddc_scl_i,
      T => hdmi_in_ddc_scl_t
    );
hdmi_in_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_in_ddc_sda_o,
      IO => hdmi_in_ddc_sda_io,
      O => hdmi_in_ddc_sda_i,
      T => hdmi_in_ddc_sda_t
    );
hdmi_out_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_scl_o,
      IO => hdmi_out_ddc_scl_io,
      O => hdmi_out_ddc_scl_i,
      T => hdmi_out_ddc_scl_t
    );
hdmi_out_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_sda_o,
      IO => hdmi_out_ddc_sda_io,
      O => hdmi_out_ddc_sda_i,
      T => hdmi_out_ddc_sda_t
    );
leds_4bits_tri_iobuf_0: component IOBUF
     port map (
      I => leds_4bits_tri_o_0(0),
      IO => leds_4bits_tri_io(0),
      O => leds_4bits_tri_i_0(0),
      T => leds_4bits_tri_t_0(0)
    );
leds_4bits_tri_iobuf_1: component IOBUF
     port map (
      I => leds_4bits_tri_o_1(1),
      IO => leds_4bits_tri_io(1),
      O => leds_4bits_tri_i_1(1),
      T => leds_4bits_tri_t_1(1)
    );
leds_4bits_tri_iobuf_2: component IOBUF
     port map (
      I => leds_4bits_tri_o_2(2),
      IO => leds_4bits_tri_io(2),
      O => leds_4bits_tri_i_2(2),
      T => leds_4bits_tri_t_2(2)
    );
leds_4bits_tri_iobuf_3: component IOBUF
     port map (
      I => leds_4bits_tri_o_3(3),
      IO => leds_4bits_tri_io(3),
      O => leds_4bits_tri_i_3(3),
      T => leds_4bits_tri_t_3(3)
    );
lora_tri_iobuf_0: component IOBUF
     port map (
      I => lora_tri_o_0(0),
      IO => lora_tri_io(0),
      O => lora_tri_i_0(0),
      T => lora_tri_t_0(0)
    );
lora_tri_iobuf_1: component IOBUF
     port map (
      I => lora_tri_o_1(1),
      IO => lora_tri_io(1),
      O => lora_tri_i_1(1),
      T => lora_tri_t_1(1)
    );
lora_tri_iobuf_2: component IOBUF
     port map (
      I => lora_tri_o_2(2),
      IO => lora_tri_io(2),
      O => lora_tri_i_2(2),
      T => lora_tri_t_2(2)
    );
lora_tri_iobuf_3: component IOBUF
     port map (
      I => lora_tri_o_3(3),
      IO => lora_tri_io(3),
      O => lora_tri_i_3(3),
      T => lora_tri_t_3(3)
    );
pmodble_tri_iobuf_0: component IOBUF
     port map (
      I => pmodble_tri_o_0(0),
      IO => pmodble_tri_io(0),
      O => pmodble_tri_i_0(0),
      T => pmodble_tri_t_0(0)
    );
pmodble_tri_iobuf_1: component IOBUF
     port map (
      I => pmodble_tri_o_1(1),
      IO => pmodble_tri_io(1),
      O => pmodble_tri_i_1(1),
      T => pmodble_tri_t_1(1)
    );
pmodble_tri_iobuf_2: component IOBUF
     port map (
      I => pmodble_tri_o_2(2),
      IO => pmodble_tri_io(2),
      O => pmodble_tri_i_2(2),
      T => pmodble_tri_t_2(2)
    );
pmodble_tri_iobuf_3: component IOBUF
     port map (
      I => pmodble_tri_o_3(3),
      IO => pmodble_tri_io(3),
      O => pmodble_tri_i_3(3),
      T => pmodble_tri_t_3(3)
    );
pmodble_tri_iobuf_4: component IOBUF
     port map (
      I => pmodble_tri_o_4(4),
      IO => pmodble_tri_io(4),
      O => pmodble_tri_i_4(4),
      T => pmodble_tri_t_4(4)
    );
pmodble_tri_iobuf_5: component IOBUF
     port map (
      I => pmodble_tri_o_5(5),
      IO => pmodble_tri_io(5),
      O => pmodble_tri_i_5(5),
      T => pmodble_tri_t_5(5)
    );
system_i: component system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      SPI_io0_i => SPI_io0_i,
      SPI_io0_o => SPI_io0_o,
      SPI_io0_t => SPI_io0_t,
      SPI_io1_i => SPI_io1_i,
      SPI_io1_o => SPI_io1_o,
      SPI_io1_t => SPI_io1_t,
      SPI_sck_i => SPI_sck_i,
      SPI_sck_o => SPI_sck_o,
      SPI_sck_t => SPI_sck_t,
      SPI_ss_i(0) => SPI_ss_i_0(0),
      SPI_ss_o(0) => SPI_ss_o_0(0),
      SPI_ss_t => SPI_ss_t,
      UART_0_rxd => UART_0_rxd,
      UART_0_txd => UART_0_txd,
      UART_1_rxd => UART_1_rxd,
      UART_1_txd => UART_1_txd,
      Vaux14_v_n => Vaux14_v_n,
      Vaux14_v_p => Vaux14_v_p,
      Vaux15_v_n => Vaux15_v_n,
      Vaux15_v_p => Vaux15_v_p,
      Vaux6_v_n => Vaux6_v_n,
      Vaux6_v_p => Vaux6_v_p,
      Vaux7_v_n => Vaux7_v_n,
      Vaux7_v_p => Vaux7_v_p,
      Vp_Vn_v_n => Vp_Vn_v_n,
      Vp_Vn_v_p => Vp_Vn_v_p,
      ac_bclk(0) => ac_bclk(0),
      ac_iic_scl_i => ac_iic_scl_i,
      ac_iic_scl_o => ac_iic_scl_o,
      ac_iic_scl_t => ac_iic_scl_t,
      ac_iic_sda_i => ac_iic_sda_i,
      ac_iic_sda_o => ac_iic_sda_o,
      ac_iic_sda_t => ac_iic_sda_t,
      ac_mclk => ac_mclk,
      ac_muten(0) => ac_muten(0),
      ac_pbdat(0) => ac_pbdat(0),
      ac_pblrc(0) => ac_pblrc(0),
      ac_recdat(0) => ac_recdat(0),
      ac_reclrc(0) => ac_reclrc(0),
      btns_4bits_tri_i(3 downto 0) => btns_4bits_tri_i(3 downto 0),
      cam_gpio(0) => cam_gpio(0),
      cam_iic_scl_i => cam_iic_scl_i,
      cam_iic_scl_o => cam_iic_scl_o,
      cam_iic_scl_t => cam_iic_scl_t,
      cam_iic_sda_i => cam_iic_sda_i,
      cam_iic_sda_o => cam_iic_sda_o,
      cam_iic_sda_t => cam_iic_sda_t,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_data_hs_n(1 downto 0) => dphy_data_hs_n(1 downto 0),
      dphy_data_hs_p(1 downto 0) => dphy_data_hs_p(1 downto 0),
      dphy_data_lp_n(1 downto 0) => dphy_data_lp_n(1 downto 0),
      dphy_data_lp_p(1 downto 0) => dphy_data_lp_p(1 downto 0),
      eth_rst_b_tri_i(0) => eth_rst_b_tri_i_0(0),
      eth_rst_b_tri_o(0) => eth_rst_b_tri_o_0(0),
      eth_rst_b_tri_t(0) => eth_rst_b_tri_t_0(0),
      hdmi_in_clk_n => hdmi_in_clk_n,
      hdmi_in_clk_p => hdmi_in_clk_p,
      hdmi_in_data_n(2 downto 0) => hdmi_in_data_n(2 downto 0),
      hdmi_in_data_p(2 downto 0) => hdmi_in_data_p(2 downto 0),
      hdmi_in_ddc_scl_i => hdmi_in_ddc_scl_i,
      hdmi_in_ddc_scl_o => hdmi_in_ddc_scl_o,
      hdmi_in_ddc_scl_t => hdmi_in_ddc_scl_t,
      hdmi_in_ddc_sda_i => hdmi_in_ddc_sda_i,
      hdmi_in_ddc_sda_o => hdmi_in_ddc_sda_o,
      hdmi_in_ddc_sda_t => hdmi_in_ddc_sda_t,
      hdmi_in_hpd(0) => hdmi_in_hpd(0),
      hdmi_out_clk_n => hdmi_out_clk_n,
      hdmi_out_clk_p => hdmi_out_clk_p,
      hdmi_out_data_n(2 downto 0) => hdmi_out_data_n(2 downto 0),
      hdmi_out_data_p(2 downto 0) => hdmi_out_data_p(2 downto 0),
      hdmi_out_ddc_scl_i => hdmi_out_ddc_scl_i,
      hdmi_out_ddc_scl_o => hdmi_out_ddc_scl_o,
      hdmi_out_ddc_scl_t => hdmi_out_ddc_scl_t,
      hdmi_out_ddc_sda_i => hdmi_out_ddc_sda_i,
      hdmi_out_ddc_sda_o => hdmi_out_ddc_sda_o,
      hdmi_out_ddc_sda_t => hdmi_out_ddc_sda_t,
      leds_4bits_tri_i(3) => leds_4bits_tri_i_3(3),
      leds_4bits_tri_i(2) => leds_4bits_tri_i_2(2),
      leds_4bits_tri_i(1) => leds_4bits_tri_i_1(1),
      leds_4bits_tri_i(0) => leds_4bits_tri_i_0(0),
      leds_4bits_tri_o(3) => leds_4bits_tri_o_3(3),
      leds_4bits_tri_o(2) => leds_4bits_tri_o_2(2),
      leds_4bits_tri_o(1) => leds_4bits_tri_o_1(1),
      leds_4bits_tri_o(0) => leds_4bits_tri_o_0(0),
      leds_4bits_tri_t(3) => leds_4bits_tri_t_3(3),
      leds_4bits_tri_t(2) => leds_4bits_tri_t_2(2),
      leds_4bits_tri_t(1) => leds_4bits_tri_t_1(1),
      leds_4bits_tri_t(0) => leds_4bits_tri_t_0(0),
      lora_tri_i(3) => lora_tri_i_3(3),
      lora_tri_i(2) => lora_tri_i_2(2),
      lora_tri_i(1) => lora_tri_i_1(1),
      lora_tri_i(0) => lora_tri_i_0(0),
      lora_tri_o(3) => lora_tri_o_3(3),
      lora_tri_o(2) => lora_tri_o_2(2),
      lora_tri_o(1) => lora_tri_o_1(1),
      lora_tri_o(0) => lora_tri_o_0(0),
      lora_tri_t(3) => lora_tri_t_3(3),
      lora_tri_t(2) => lora_tri_t_2(2),
      lora_tri_t(1) => lora_tri_t_1(1),
      lora_tri_t(0) => lora_tri_t_0(0),
      pmodble_tri_i(5) => pmodble_tri_i_5(5),
      pmodble_tri_i(4) => pmodble_tri_i_4(4),
      pmodble_tri_i(3) => pmodble_tri_i_3(3),
      pmodble_tri_i(2) => pmodble_tri_i_2(2),
      pmodble_tri_i(1) => pmodble_tri_i_1(1),
      pmodble_tri_i(0) => pmodble_tri_i_0(0),
      pmodble_tri_o(5) => pmodble_tri_o_5(5),
      pmodble_tri_o(4) => pmodble_tri_o_4(4),
      pmodble_tri_o(3) => pmodble_tri_o_3(3),
      pmodble_tri_o(2) => pmodble_tri_o_2(2),
      pmodble_tri_o(1) => pmodble_tri_o_1(1),
      pmodble_tri_o(0) => pmodble_tri_o_0(0),
      pmodble_tri_t(5) => pmodble_tri_t_5(5),
      pmodble_tri_t(4) => pmodble_tri_t_4(4),
      pmodble_tri_t(3) => pmodble_tri_t_3(3),
      pmodble_tri_t(2) => pmodble_tri_t_2(2),
      pmodble_tri_t(1) => pmodble_tri_t_1(1),
      pmodble_tri_t(0) => pmodble_tri_t_0(0),
      pwm_rgb(5 downto 0) => pwm_rgb(5 downto 0),
      sws_4bits_tri_i(3 downto 0) => sws_4bits_tri_i(3 downto 0),
      sys_clock => sys_clock
    );
end STRUCTURE;
