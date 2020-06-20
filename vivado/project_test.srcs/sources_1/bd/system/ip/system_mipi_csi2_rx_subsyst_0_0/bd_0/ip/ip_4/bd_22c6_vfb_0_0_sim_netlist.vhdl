-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul  8 14:30:33 2019
-- Host        : mohammadali-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               e:/vhdl/zybo_base_linux/zybo_base_linux.srcs/sources_1/bd/system/ip/system_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_4/bd_22c6_vfb_0_0_sim_netlist.vhdl
-- Design      : bd_22c6_vfb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer : entity is "axis_dwidth_converter_v1_1_17_axisc_downsizer";
end bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer;

architecture STRUCTURE of bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \r0_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[63]\ : STD_LOGIC;
  signal r0_id : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r0_is_end : STD_LOGIC_VECTOR ( 2 to 2 );
  signal r0_is_null_r : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \r0_is_null_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_is_null_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \r0_is_null_r[3]_i_1_n_0\ : STD_LOGIC;
  signal r0_keep : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r0_last_reg_n_0 : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal r0_out_sel_next_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r0_out_sel_next_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_next_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \r0_out_sel_next_r[1]_i_3_n_0\ : STD_LOGIC;
  signal r0_out_sel_next_r_0 : STD_LOGIC;
  signal r0_out_sel_r0 : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[1]\ : STD_LOGIC;
  signal r0_user : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal r1_id : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r1_keep : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r1_keep[0]_i_1_n_0\ : STD_LOGIC;
  signal \r1_keep[1]_i_1_n_0\ : STD_LOGIC;
  signal r1_last_reg_n_0 : STD_LOGIC;
  signal r1_load : STD_LOGIC;
  signal r1_user : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r1_user[0]_i_1_n_0\ : STD_LOGIC;
  signal \r1_user[1]_i_1_n_0\ : STD_LOGIC;
  signal \r1_user[2]_i_1_n_0\ : STD_LOGIC;
  signal \r1_user[3]_i_1_n_0\ : STD_LOGIC;
  signal \r1_user[4]_i_1_n_0\ : STD_LOGIC;
  signal \r1_user[5]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(48),
      I1 => p_0_in1_in(16),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(32),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(58),
      I1 => p_0_in1_in(26),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(42),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(59),
      I1 => p_0_in1_in(27),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(43),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(60),
      I1 => p_0_in1_in(28),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(44),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(61),
      I1 => p_0_in1_in(29),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(45),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(62),
      I1 => p_0_in1_in(30),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(46),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(63),
      I1 => p_0_in1_in(31),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(47),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(49),
      I1 => p_0_in1_in(17),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(33),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(50),
      I1 => p_0_in1_in(18),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(34),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(51),
      I1 => p_0_in1_in(19),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(35),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(52),
      I1 => p_0_in1_in(20),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(36),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(53),
      I1 => p_0_in1_in(21),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(37),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(54),
      I1 => p_0_in1_in(22),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(38),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(55),
      I1 => p_0_in1_in(23),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(39),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(56),
      I1 => p_0_in1_in(24),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(40),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(57),
      I1 => p_0_in1_in(25),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(41),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(9),
      O => m_axis_tdata(9)
    );
\m_axis_tid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(0),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(0),
      O => m_axis_tid(0)
    );
\m_axis_tid[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(10),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(10),
      O => m_axis_tid(10)
    );
\m_axis_tid[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(11),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(11),
      O => m_axis_tid(11)
    );
\m_axis_tid[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(12),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(12),
      O => m_axis_tid(12)
    );
\m_axis_tid[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(13),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(13),
      O => m_axis_tid(13)
    );
\m_axis_tid[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(14),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(14),
      O => m_axis_tid(14)
    );
\m_axis_tid[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(15),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(15),
      O => m_axis_tid(15)
    );
\m_axis_tid[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(16),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(16),
      O => m_axis_tid(16)
    );
\m_axis_tid[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(17),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(17),
      O => m_axis_tid(17)
    );
\m_axis_tid[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(18),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(18),
      O => m_axis_tid(18)
    );
\m_axis_tid[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(19),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(19),
      O => m_axis_tid(19)
    );
\m_axis_tid[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(1),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(1),
      O => m_axis_tid(1)
    );
\m_axis_tid[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(20),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(20),
      O => m_axis_tid(20)
    );
\m_axis_tid[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(21),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(21),
      O => m_axis_tid(21)
    );
\m_axis_tid[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(22),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(22),
      O => m_axis_tid(22)
    );
\m_axis_tid[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(23),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(23),
      O => m_axis_tid(23)
    );
\m_axis_tid[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(24),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(24),
      O => m_axis_tid(24)
    );
\m_axis_tid[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(25),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(25),
      O => m_axis_tid(25)
    );
\m_axis_tid[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(26),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(26),
      O => m_axis_tid(26)
    );
\m_axis_tid[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(27),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(27),
      O => m_axis_tid(27)
    );
\m_axis_tid[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(28),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(28),
      O => m_axis_tid(28)
    );
\m_axis_tid[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(29),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(29),
      O => m_axis_tid(29)
    );
\m_axis_tid[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(2),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(2),
      O => m_axis_tid(2)
    );
\m_axis_tid[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(30),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(30),
      O => m_axis_tid(30)
    );
\m_axis_tid[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(31),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(31),
      O => m_axis_tid(31)
    );
\m_axis_tid[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(3),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(3),
      O => m_axis_tid(3)
    );
\m_axis_tid[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(4),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(4),
      O => m_axis_tid(4)
    );
\m_axis_tid[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(5),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(5),
      O => m_axis_tid(5)
    );
\m_axis_tid[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(6),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(6),
      O => m_axis_tid(6)
    );
\m_axis_tid[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(7),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(7),
      O => m_axis_tid(7)
    );
\m_axis_tid[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(8),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(8),
      O => m_axis_tid(8)
    );
\m_axis_tid[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => r1_id(9),
      I1 => \^q\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => r0_id(9),
      O => m_axis_tid(9)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_keep(0),
      I1 => r0_keep(2),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_keep(4),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_keep(0),
      O => m_axis_tkeep(0)
    );
\m_axis_tkeep[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_keep(1),
      I1 => r0_keep(3),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_keep(5),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_keep(1),
      O => m_axis_tkeep(1)
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EDFF4800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => r1_last_reg_n_0,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => m_axis_tlast_INST_0_i_1_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r0_is_null_r(1),
      I1 => r0_is_null_r(2),
      I2 => r0_is_end(2),
      I3 => r0_last_reg_n_0,
      O => m_axis_tlast_INST_0_i_1_n_0
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(0),
      I1 => r0_user(6),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(12),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(0),
      O => m_axis_tuser(0)
    );
\m_axis_tuser[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(1),
      I1 => r0_user(7),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(13),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(1),
      O => m_axis_tuser(1)
    );
\m_axis_tuser[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(2),
      I1 => r0_user(8),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(14),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(2),
      O => m_axis_tuser(2)
    );
\m_axis_tuser[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(3),
      I1 => r0_user(9),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(15),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(3),
      O => m_axis_tuser(3)
    );
\m_axis_tuser[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(4),
      I1 => r0_user(10),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(16),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(4),
      O => m_axis_tuser(4)
    );
\m_axis_tuser[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r1_user(5),
      I1 => r0_user(11),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => r0_user(17),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => r0_user(5),
      O => m_axis_tuser(5)
    );
\r0_data[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg_n_0_[2]\,
      O => r0_load
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(0),
      Q => p_0_in1_in(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(10),
      Q => p_0_in1_in(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(11),
      Q => p_0_in1_in(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(12),
      Q => p_0_in1_in(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(13),
      Q => p_0_in1_in(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(14),
      Q => p_0_in1_in(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(15),
      Q => p_0_in1_in(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(16),
      Q => p_0_in1_in(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(17),
      Q => p_0_in1_in(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(18),
      Q => p_0_in1_in(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(19),
      Q => p_0_in1_in(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(1),
      Q => p_0_in1_in(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(20),
      Q => p_0_in1_in(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(21),
      Q => p_0_in1_in(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(22),
      Q => p_0_in1_in(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(23),
      Q => p_0_in1_in(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(24),
      Q => p_0_in1_in(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(25),
      Q => p_0_in1_in(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(26),
      Q => p_0_in1_in(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(27),
      Q => p_0_in1_in(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(28),
      Q => p_0_in1_in(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(29),
      Q => p_0_in1_in(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(2),
      Q => p_0_in1_in(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(30),
      Q => p_0_in1_in(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(31),
      Q => p_0_in1_in(31),
      R => '0'
    );
\r0_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(32),
      Q => p_0_in1_in(32),
      R => '0'
    );
\r0_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(33),
      Q => p_0_in1_in(33),
      R => '0'
    );
\r0_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(34),
      Q => p_0_in1_in(34),
      R => '0'
    );
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(35),
      Q => p_0_in1_in(35),
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(36),
      Q => p_0_in1_in(36),
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(37),
      Q => p_0_in1_in(37),
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(38),
      Q => p_0_in1_in(38),
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(39),
      Q => p_0_in1_in(39),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(3),
      Q => p_0_in1_in(3),
      R => '0'
    );
\r0_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(40),
      Q => p_0_in1_in(40),
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(41),
      Q => p_0_in1_in(41),
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(42),
      Q => p_0_in1_in(42),
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(43),
      Q => p_0_in1_in(43),
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(44),
      Q => p_0_in1_in(44),
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(45),
      Q => p_0_in1_in(45),
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(46),
      Q => p_0_in1_in(46),
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(47),
      Q => p_0_in1_in(47),
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(48),
      Q => \r0_data_reg_n_0_[48]\,
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(49),
      Q => \r0_data_reg_n_0_[49]\,
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(4),
      Q => p_0_in1_in(4),
      R => '0'
    );
\r0_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(50),
      Q => \r0_data_reg_n_0_[50]\,
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(51),
      Q => \r0_data_reg_n_0_[51]\,
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(52),
      Q => \r0_data_reg_n_0_[52]\,
      R => '0'
    );
\r0_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(53),
      Q => \r0_data_reg_n_0_[53]\,
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(54),
      Q => \r0_data_reg_n_0_[54]\,
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(55),
      Q => \r0_data_reg_n_0_[55]\,
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(56),
      Q => \r0_data_reg_n_0_[56]\,
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(57),
      Q => \r0_data_reg_n_0_[57]\,
      R => '0'
    );
\r0_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(58),
      Q => \r0_data_reg_n_0_[58]\,
      R => '0'
    );
\r0_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(59),
      Q => \r0_data_reg_n_0_[59]\,
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(5),
      Q => p_0_in1_in(5),
      R => '0'
    );
\r0_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(60),
      Q => \r0_data_reg_n_0_[60]\,
      R => '0'
    );
\r0_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(61),
      Q => \r0_data_reg_n_0_[61]\,
      R => '0'
    );
\r0_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(62),
      Q => \r0_data_reg_n_0_[62]\,
      R => '0'
    );
\r0_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(63),
      Q => \r0_data_reg_n_0_[63]\,
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(6),
      Q => p_0_in1_in(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(7),
      Q => p_0_in1_in(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(8),
      Q => p_0_in1_in(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(9),
      Q => p_0_in1_in(9),
      R => '0'
    );
\r0_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(0),
      Q => r0_id(0),
      R => '0'
    );
\r0_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(10),
      Q => r0_id(10),
      R => '0'
    );
\r0_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(11),
      Q => r0_id(11),
      R => '0'
    );
\r0_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(12),
      Q => r0_id(12),
      R => '0'
    );
\r0_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(13),
      Q => r0_id(13),
      R => '0'
    );
\r0_id_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(14),
      Q => r0_id(14),
      R => '0'
    );
\r0_id_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(15),
      Q => r0_id(15),
      R => '0'
    );
\r0_id_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(16),
      Q => r0_id(16),
      R => '0'
    );
\r0_id_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(17),
      Q => r0_id(17),
      R => '0'
    );
\r0_id_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(18),
      Q => r0_id(18),
      R => '0'
    );
\r0_id_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(19),
      Q => r0_id(19),
      R => '0'
    );
\r0_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(1),
      Q => r0_id(1),
      R => '0'
    );
\r0_id_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(20),
      Q => r0_id(20),
      R => '0'
    );
\r0_id_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(21),
      Q => r0_id(21),
      R => '0'
    );
\r0_id_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(22),
      Q => r0_id(22),
      R => '0'
    );
\r0_id_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(23),
      Q => r0_id(23),
      R => '0'
    );
\r0_id_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(24),
      Q => r0_id(24),
      R => '0'
    );
\r0_id_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(25),
      Q => r0_id(25),
      R => '0'
    );
\r0_id_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(26),
      Q => r0_id(26),
      R => '0'
    );
\r0_id_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(27),
      Q => r0_id(27),
      R => '0'
    );
\r0_id_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(28),
      Q => r0_id(28),
      R => '0'
    );
\r0_id_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(29),
      Q => r0_id(29),
      R => '0'
    );
\r0_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(2),
      Q => r0_id(2),
      R => '0'
    );
\r0_id_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(30),
      Q => r0_id(30),
      R => '0'
    );
\r0_id_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(31),
      Q => r0_id(31),
      R => '0'
    );
\r0_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(3),
      Q => r0_id(3),
      R => '0'
    );
\r0_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(4),
      Q => r0_id(4),
      R => '0'
    );
\r0_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(5),
      Q => r0_id(5),
      R => '0'
    );
\r0_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(6),
      Q => r0_id(6),
      R => '0'
    );
\r0_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(7),
      Q => r0_id(7),
      R => '0'
    );
\r0_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(8),
      Q => r0_id(8),
      R => '0'
    );
\r0_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tid(9),
      Q => r0_id(9),
      R => '0'
    );
\r0_is_null_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1FFF00001000"
    )
        port map (
      I0 => s_axis_tkeep(2),
      I1 => s_axis_tkeep(3),
      I2 => s_axis_tvalid,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => r0_is_null_r(1),
      O => \r0_is_null_r[1]_i_1_n_0\
    );
\r0_is_null_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1FFF00001000"
    )
        port map (
      I0 => s_axis_tkeep(4),
      I1 => s_axis_tkeep(5),
      I2 => s_axis_tvalid,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => r0_is_null_r(2),
      O => \r0_is_null_r[2]_i_1_n_0\
    );
\r0_is_null_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1FFF00001000"
    )
        port map (
      I0 => s_axis_tkeep(6),
      I1 => s_axis_tkeep(7),
      I2 => s_axis_tvalid,
      I3 => \^q\(0),
      I4 => \state_reg_n_0_[2]\,
      I5 => r0_is_end(2),
      O => \r0_is_null_r[3]_i_1_n_0\
    );
\r0_is_null_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_is_null_r[1]_i_1_n_0\,
      Q => r0_is_null_r(1),
      R => SR(0)
    );
\r0_is_null_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_is_null_r[2]_i_1_n_0\,
      Q => r0_is_null_r(2),
      R => SR(0)
    );
\r0_is_null_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_is_null_r[3]_i_1_n_0\,
      Q => r0_is_end(2),
      R => SR(0)
    );
\r0_keep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(0),
      Q => r0_keep(0),
      R => '0'
    );
\r0_keep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(1),
      Q => r0_keep(1),
      R => '0'
    );
\r0_keep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(2),
      Q => r0_keep(2),
      R => '0'
    );
\r0_keep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(3),
      Q => r0_keep(3),
      R => '0'
    );
\r0_keep_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(4),
      Q => r0_keep(4),
      R => '0'
    );
\r0_keep_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(5),
      Q => r0_keep(5),
      R => '0'
    );
\r0_keep_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(6),
      Q => r0_keep(6),
      R => '0'
    );
\r0_keep_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tkeep(7),
      Q => r0_keep(7),
      R => '0'
    );
r0_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tlast,
      Q => r0_last_reg_n_0,
      R => '0'
    );
\r0_out_sel_next_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDFDDD02AA22AA"
    )
        port map (
      I0 => m_axis_tready,
      I1 => r0_out_sel_next_r(1),
      I2 => r0_is_null_r(2),
      I3 => r0_is_end(2),
      I4 => r0_is_null_r(1),
      I5 => r0_out_sel_next_r(0),
      O => \r0_out_sel_next_r[0]_i_1_n_0\
    );
\r0_out_sel_next_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCCE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r0_out_sel_next_r[1]_i_3_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => SR(0),
      O => r0_out_sel_next_r_0
    );
\r0_out_sel_next_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F0F0F0"
    )
        port map (
      I0 => r0_is_end(2),
      I1 => r0_is_null_r(2),
      I2 => r0_out_sel_next_r(1),
      I3 => r0_out_sel_next_r(0),
      I4 => m_axis_tready,
      O => \r0_out_sel_next_r[1]_i_2_n_0\
    );
\r0_out_sel_next_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0F08000000000"
    )
        port map (
      I0 => r0_is_null_r(1),
      I1 => r0_is_null_r(2),
      I2 => r0_is_end(2),
      I3 => \r0_out_sel_r_reg_n_0_[1]\,
      I4 => \r0_out_sel_r_reg_n_0_[0]\,
      I5 => m_axis_tready,
      O => \r0_out_sel_next_r[1]_i_3_n_0\
    );
\r0_out_sel_next_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_next_r[0]_i_1_n_0\,
      Q => r0_out_sel_next_r(0),
      S => r0_out_sel_next_r_0
    );
\r0_out_sel_next_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_next_r[1]_i_2_n_0\,
      Q => r0_out_sel_next_r(1),
      R => r0_out_sel_next_r_0
    );
\r0_out_sel_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => r0_out_sel_next_r(0),
      I1 => m_axis_tready,
      I2 => r0_out_sel_r0,
      I3 => \r0_out_sel_r_reg_n_0_[0]\,
      O => \r0_out_sel_r[0]_i_1_n_0\
    );
\r0_out_sel_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => r0_out_sel_next_r(1),
      I1 => m_axis_tready,
      I2 => r0_out_sel_r0,
      I3 => \r0_out_sel_r_reg_n_0_[1]\,
      O => \r0_out_sel_r[1]_i_1_n_0\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_r[0]_i_1_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[0]\,
      R => r0_out_sel_next_r_0
    );
\r0_out_sel_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_out_sel_r[1]_i_1_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[1]\,
      R => r0_out_sel_next_r_0
    );
\r0_user_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(0),
      Q => r0_user(0),
      R => '0'
    );
\r0_user_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(10),
      Q => r0_user(10),
      R => '0'
    );
\r0_user_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(11),
      Q => r0_user(11),
      R => '0'
    );
\r0_user_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(12),
      Q => r0_user(12),
      R => '0'
    );
\r0_user_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(13),
      Q => r0_user(13),
      R => '0'
    );
\r0_user_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(14),
      Q => r0_user(14),
      R => '0'
    );
\r0_user_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(15),
      Q => r0_user(15),
      R => '0'
    );
\r0_user_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(16),
      Q => r0_user(16),
      R => '0'
    );
\r0_user_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(17),
      Q => r0_user(17),
      R => '0'
    );
\r0_user_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(18),
      Q => r0_user(18),
      R => '0'
    );
\r0_user_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(19),
      Q => r0_user(19),
      R => '0'
    );
\r0_user_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(1),
      Q => r0_user(1),
      R => '0'
    );
\r0_user_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(20),
      Q => r0_user(20),
      R => '0'
    );
\r0_user_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(21),
      Q => r0_user(21),
      R => '0'
    );
\r0_user_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(22),
      Q => r0_user(22),
      R => '0'
    );
\r0_user_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(23),
      Q => r0_user(23),
      R => '0'
    );
\r0_user_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(2),
      Q => r0_user(2),
      R => '0'
    );
\r0_user_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(3),
      Q => r0_user(3),
      R => '0'
    );
\r0_user_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(4),
      Q => r0_user(4),
      R => '0'
    );
\r0_user_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(5),
      Q => r0_user(5),
      R => '0'
    );
\r0_user_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(6),
      Q => r0_user(6),
      R => '0'
    );
\r0_user_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(7),
      Q => r0_user(7),
      R => '0'
    );
\r0_user_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(8),
      Q => r0_user(8),
      R => '0'
    );
\r0_user_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tuser(9),
      Q => r0_user(9),
      R => '0'
    );
\r1_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[48]\,
      I1 => p_0_in1_in(16),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(32),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(0),
      O => p_0_in(0)
    );
\r1_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[58]\,
      I1 => p_0_in1_in(26),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(42),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(10),
      O => p_0_in(10)
    );
\r1_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[59]\,
      I1 => p_0_in1_in(27),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(43),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(11),
      O => p_0_in(11)
    );
\r1_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[60]\,
      I1 => p_0_in1_in(28),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(44),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(12),
      O => p_0_in(12)
    );
\r1_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[61]\,
      I1 => p_0_in1_in(29),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(45),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(13),
      O => p_0_in(13)
    );
\r1_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[62]\,
      I1 => p_0_in1_in(30),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(46),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(14),
      O => p_0_in(14)
    );
\r1_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => r1_load
    );
\r1_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[63]\,
      I1 => p_0_in1_in(31),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(47),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(15),
      O => p_0_in(15)
    );
\r1_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[49]\,
      I1 => p_0_in1_in(17),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(33),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(1),
      O => p_0_in(1)
    );
\r1_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[50]\,
      I1 => p_0_in1_in(18),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(34),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(2),
      O => p_0_in(2)
    );
\r1_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[51]\,
      I1 => p_0_in1_in(19),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(35),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(3),
      O => p_0_in(3)
    );
\r1_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[52]\,
      I1 => p_0_in1_in(20),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(36),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(4),
      O => p_0_in(4)
    );
\r1_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[53]\,
      I1 => p_0_in1_in(21),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(37),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(5),
      O => p_0_in(5)
    );
\r1_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[54]\,
      I1 => p_0_in1_in(22),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(38),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(6),
      O => p_0_in(6)
    );
\r1_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[55]\,
      I1 => p_0_in1_in(23),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(39),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(7),
      O => p_0_in(7)
    );
\r1_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[56]\,
      I1 => p_0_in1_in(24),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(40),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(8),
      O => p_0_in(8)
    );
\r1_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[57]\,
      I1 => p_0_in1_in(25),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(41),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(9),
      O => p_0_in(9)
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(0),
      Q => p_0_in1_in(48),
      R => '0'
    );
\r1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(10),
      Q => p_0_in1_in(58),
      R => '0'
    );
\r1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(11),
      Q => p_0_in1_in(59),
      R => '0'
    );
\r1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(12),
      Q => p_0_in1_in(60),
      R => '0'
    );
\r1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(13),
      Q => p_0_in1_in(61),
      R => '0'
    );
\r1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(14),
      Q => p_0_in1_in(62),
      R => '0'
    );
\r1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(15),
      Q => p_0_in1_in(63),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(1),
      Q => p_0_in1_in(49),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(2),
      Q => p_0_in1_in(50),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(3),
      Q => p_0_in1_in(51),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(4),
      Q => p_0_in1_in(52),
      R => '0'
    );
\r1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(5),
      Q => p_0_in1_in(53),
      R => '0'
    );
\r1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(6),
      Q => p_0_in1_in(54),
      R => '0'
    );
\r1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(7),
      Q => p_0_in1_in(55),
      R => '0'
    );
\r1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(8),
      Q => p_0_in1_in(56),
      R => '0'
    );
\r1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => p_0_in(9),
      Q => p_0_in1_in(57),
      R => '0'
    );
\r1_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(0),
      Q => r1_id(0),
      R => '0'
    );
\r1_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(10),
      Q => r1_id(10),
      R => '0'
    );
\r1_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(11),
      Q => r1_id(11),
      R => '0'
    );
\r1_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(12),
      Q => r1_id(12),
      R => '0'
    );
\r1_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(13),
      Q => r1_id(13),
      R => '0'
    );
\r1_id_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(14),
      Q => r1_id(14),
      R => '0'
    );
\r1_id_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(15),
      Q => r1_id(15),
      R => '0'
    );
\r1_id_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(16),
      Q => r1_id(16),
      R => '0'
    );
\r1_id_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(17),
      Q => r1_id(17),
      R => '0'
    );
\r1_id_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(18),
      Q => r1_id(18),
      R => '0'
    );
\r1_id_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(19),
      Q => r1_id(19),
      R => '0'
    );
\r1_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(1),
      Q => r1_id(1),
      R => '0'
    );
\r1_id_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(20),
      Q => r1_id(20),
      R => '0'
    );
\r1_id_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(21),
      Q => r1_id(21),
      R => '0'
    );
\r1_id_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(22),
      Q => r1_id(22),
      R => '0'
    );
\r1_id_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(23),
      Q => r1_id(23),
      R => '0'
    );
\r1_id_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(24),
      Q => r1_id(24),
      R => '0'
    );
\r1_id_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(25),
      Q => r1_id(25),
      R => '0'
    );
\r1_id_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(26),
      Q => r1_id(26),
      R => '0'
    );
\r1_id_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(27),
      Q => r1_id(27),
      R => '0'
    );
\r1_id_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(28),
      Q => r1_id(28),
      R => '0'
    );
\r1_id_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(29),
      Q => r1_id(29),
      R => '0'
    );
\r1_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(2),
      Q => r1_id(2),
      R => '0'
    );
\r1_id_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(30),
      Q => r1_id(30),
      R => '0'
    );
\r1_id_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(31),
      Q => r1_id(31),
      R => '0'
    );
\r1_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(3),
      Q => r1_id(3),
      R => '0'
    );
\r1_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(4),
      Q => r1_id(4),
      R => '0'
    );
\r1_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(5),
      Q => r1_id(5),
      R => '0'
    );
\r1_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(6),
      Q => r1_id(6),
      R => '0'
    );
\r1_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(7),
      Q => r1_id(7),
      R => '0'
    );
\r1_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(8),
      Q => r1_id(8),
      R => '0'
    );
\r1_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_id(9),
      Q => r1_id(9),
      R => '0'
    );
\r1_keep[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_keep(6),
      I1 => r0_keep(2),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_keep(4),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_keep(0),
      O => \r1_keep[0]_i_1_n_0\
    );
\r1_keep[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_keep(7),
      I1 => r0_keep(3),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_keep(5),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_keep(1),
      O => \r1_keep[1]_i_1_n_0\
    );
\r1_keep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_keep[0]_i_1_n_0\,
      Q => r1_keep(0),
      R => '0'
    );
\r1_keep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_keep[1]_i_1_n_0\,
      Q => r1_keep(1),
      R => '0'
    );
r1_last_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => r0_last_reg_n_0,
      Q => r1_last_reg_n_0,
      R => '0'
    );
\r1_user[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(18),
      I1 => r0_user(6),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(12),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(0),
      O => \r1_user[0]_i_1_n_0\
    );
\r1_user[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(19),
      I1 => r0_user(7),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(13),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(1),
      O => \r1_user[1]_i_1_n_0\
    );
\r1_user[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(20),
      I1 => r0_user(8),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(14),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(2),
      O => \r1_user[2]_i_1_n_0\
    );
\r1_user[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(21),
      I1 => r0_user(9),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(15),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(3),
      O => \r1_user[3]_i_1_n_0\
    );
\r1_user[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(22),
      I1 => r0_user(10),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(16),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(4),
      O => \r1_user[4]_i_1_n_0\
    );
\r1_user[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r0_user(23),
      I1 => r0_user(11),
      I2 => r0_out_sel_next_r(0),
      I3 => r0_user(17),
      I4 => r0_out_sel_next_r(1),
      I5 => r0_user(5),
      O => \r1_user[5]_i_1_n_0\
    );
\r1_user_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[0]_i_1_n_0\,
      Q => r1_user(0),
      R => '0'
    );
\r1_user_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[1]_i_1_n_0\,
      Q => r1_user(1),
      R => '0'
    );
\r1_user_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[2]_i_1_n_0\,
      Q => r1_user(2),
      R => '0'
    );
\r1_user_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[3]_i_1_n_0\,
      Q => r1_user(3),
      R => '0'
    );
\r1_user_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[4]_i_1_n_0\,
      Q => r1_user(4),
      R => '0'
    );
\r1_user_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r1_load,
      D => \r1_user[5]_i_1_n_0\,
      Q => r1_user(5),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3F30BFB"
    )
        port map (
      I0 => r0_out_sel_r0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => s_axis_tvalid,
      I4 => \state_reg_n_0_[2]\,
      O => state(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0F08000000000"
    )
        port map (
      I0 => r0_is_null_r(1),
      I1 => r0_is_null_r(2),
      I2 => r0_is_end(2),
      I3 => r0_out_sel_next_r(1),
      I4 => r0_out_sel_next_r(0),
      I5 => m_axis_tready,
      O => r0_out_sel_r0
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0FF30B0B0"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => m_axis_tready,
      I2 => \^q\(1),
      I3 => s_axis_tvalid,
      I4 => \^q\(0),
      I5 => \state_reg_n_0_[2]\,
      O => state(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => r0_is_null_r(2),
      I1 => r0_is_end(2),
      I2 => r0_is_null_r(1),
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05080000"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(1),
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(1),
      Q => \^q\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf is
  port (
    sband_tu_r : out STD_LOGIC;
    vfb_eol_reg_0 : out STD_LOGIC;
    vfb_valid_reg_0 : out STD_LOGIC;
    vfb_sof : out STD_LOGIC_VECTOR ( 0 to 0 );
    sband_tact_reg_0 : out STD_LOGIC;
    cur_dtype_udef_reg : out STD_LOGIC;
    sdt_tr : out STD_LOGIC;
    vfb_eol_reg_1 : out STD_LOGIC;
    vfb_valid_reg_1 : out STD_LOGIC;
    mdt_tr : out STD_LOGIC;
    \sband_tk_r_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \sband_ts_r_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vfb_vcdt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sband_td_r_reg[55]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    vfb_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sband_tact0 : in STD_LOGIC;
    fifo_tl : in STD_LOGIC;
    vfb_clk : in STD_LOGIC;
    sband_tu : in STD_LOGIC;
    vfb_ready : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mdt_tv : in STD_LOGIC;
    cur_dtype_udef : in STD_LOGIC;
    \buf_valid_reg[0]\ : in STD_LOGIC;
    \vfb_sof_reg[0]_0\ : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \vfb_vcdt_reg[9]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sband_td_r_reg[55]_1\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \vfb_data_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf : entity is "vfb_v1_0_12_op_inf";
end bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf;

architecture STRUCTURE of bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf is
  signal \buf_valid[1]_i_3_n_0\ : STD_LOGIC;
  signal cnt_done0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^mdt_tr\ : STD_LOGIC;
  signal sband_tact : STD_LOGIC;
  signal sband_tact_i_1_n_0 : STD_LOGIC;
  signal \^sband_tact_reg_0\ : STD_LOGIC;
  signal \sband_tk_r_reg_n_0_[1]\ : STD_LOGIC;
  signal sband_tl_r : STD_LOGIC;
  signal sband_tr2 : STD_LOGIC;
  signal sdt_tr_INST_0_i_1_n_0 : STD_LOGIC;
  signal \vfb_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \vfb_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \vfb_data[15]_i_1_n_0\ : STD_LOGIC;
  signal vfb_eol_i_1_n_0 : STD_LOGIC;
  signal vfb_eol_i_2_n_0 : STD_LOGIC;
  signal \^vfb_eol_reg_0\ : STD_LOGIC;
  signal \^vfb_sof\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \vfb_sof[0]_i_1_n_0\ : STD_LOGIC;
  signal \vfb_sof[0]_i_3_n_0\ : STD_LOGIC;
  signal vfb_valid_i_2_n_0 : STD_LOGIC;
  signal \^vfb_valid_reg_0\ : STD_LOGIC;
  signal \vfb_vcdt[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mdt_tr_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sdt_tr_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sdt_tr_INST_0_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vfb_cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vfb_cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vfb_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vfb_cnt[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vfb_sof[0]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vfb_sof[0]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of vfb_valid_i_3 : label is "soft_lutpair7";
begin
  mdt_tr <= \^mdt_tr\;
  sband_tact_reg_0 <= \^sband_tact_reg_0\;
  vfb_eol_reg_0 <= \^vfb_eol_reg_0\;
  vfb_sof(0) <= \^vfb_sof\(0);
  vfb_valid_reg_0 <= \^vfb_valid_reg_0\;
\buf_valid[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF75"
    )
        port map (
      I0 => cur_dtype_udef,
      I1 => \buf_valid[1]_i_3_n_0\,
      I2 => \^vfb_valid_reg_0\,
      I3 => \^vfb_eol_reg_0\,
      I4 => mdt_tv,
      I5 => \buf_valid_reg[0]\,
      O => cur_dtype_udef_reg
    );
\buf_valid[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(1),
      I1 => \vfb_cnt_reg__0\(0),
      I2 => \vfb_cnt_reg__0\(2),
      I3 => \vfb_cnt_reg__0\(3),
      I4 => vfb_ready,
      I5 => \^vfb_valid_reg_0\,
      O => \buf_valid[1]_i_3_n_0\
    );
mdt_tr_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vfb_ready,
      I1 => \^vfb_valid_reg_0\,
      O => \^mdt_tr\
    );
sband_tact_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBFFFAAAAAAAA"
    )
        port map (
      I0 => sband_tact0,
      I1 => \^vfb_eol_reg_0\,
      I2 => vfb_ready,
      I3 => \^vfb_valid_reg_0\,
      I4 => sdt_tr_INST_0_i_1_n_0,
      I5 => sband_tact,
      O => sband_tact_i_1_n_0
    );
sband_tact_reg: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => '1',
      D => sband_tact_i_1_n_0,
      Q => sband_tact,
      R => SR(0)
    );
\sband_td_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(0),
      Q => \sband_td_r_reg[55]_0\(0),
      R => SR(0)
    );
\sband_td_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(10),
      Q => \sband_td_r_reg[55]_0\(10),
      R => SR(0)
    );
\sband_td_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(11),
      Q => \sband_td_r_reg[55]_0\(11),
      R => SR(0)
    );
\sband_td_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(12),
      Q => \sband_td_r_reg[55]_0\(12),
      R => SR(0)
    );
\sband_td_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(13),
      Q => \sband_td_r_reg[55]_0\(13),
      R => SR(0)
    );
\sband_td_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(14),
      Q => \sband_td_r_reg[55]_0\(14),
      R => SR(0)
    );
\sband_td_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(15),
      Q => \sband_td_r_reg[55]_0\(15),
      R => SR(0)
    );
\sband_td_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(16),
      Q => \sband_td_r_reg[55]_0\(16),
      R => SR(0)
    );
\sband_td_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(17),
      Q => \sband_td_r_reg[55]_0\(17),
      R => SR(0)
    );
\sband_td_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(18),
      Q => \sband_td_r_reg[55]_0\(18),
      R => SR(0)
    );
\sband_td_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(19),
      Q => \sband_td_r_reg[55]_0\(19),
      R => SR(0)
    );
\sband_td_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(1),
      Q => \sband_td_r_reg[55]_0\(1),
      R => SR(0)
    );
\sband_td_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(20),
      Q => \sband_td_r_reg[55]_0\(20),
      R => SR(0)
    );
\sband_td_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(21),
      Q => \sband_td_r_reg[55]_0\(21),
      R => SR(0)
    );
\sband_td_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(22),
      Q => \sband_td_r_reg[55]_0\(22),
      R => SR(0)
    );
\sband_td_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(23),
      Q => \sband_td_r_reg[55]_0\(23),
      R => SR(0)
    );
\sband_td_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(24),
      Q => \sband_td_r_reg[55]_0\(24),
      R => SR(0)
    );
\sband_td_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(25),
      Q => \sband_td_r_reg[55]_0\(25),
      R => SR(0)
    );
\sband_td_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(26),
      Q => \sband_td_r_reg[55]_0\(26),
      R => SR(0)
    );
\sband_td_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(27),
      Q => \sband_td_r_reg[55]_0\(27),
      R => SR(0)
    );
\sband_td_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(28),
      Q => \sband_td_r_reg[55]_0\(28),
      R => SR(0)
    );
\sband_td_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(29),
      Q => \sband_td_r_reg[55]_0\(29),
      R => SR(0)
    );
\sband_td_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(2),
      Q => \sband_td_r_reg[55]_0\(2),
      R => SR(0)
    );
\sband_td_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(30),
      Q => \sband_td_r_reg[55]_0\(30),
      R => SR(0)
    );
\sband_td_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(31),
      Q => \sband_td_r_reg[55]_0\(31),
      R => SR(0)
    );
\sband_td_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(32),
      Q => \sband_td_r_reg[55]_0\(32),
      R => SR(0)
    );
\sband_td_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(33),
      Q => \sband_td_r_reg[55]_0\(33),
      R => SR(0)
    );
\sband_td_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(34),
      Q => \sband_td_r_reg[55]_0\(34),
      R => SR(0)
    );
\sband_td_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(35),
      Q => \sband_td_r_reg[55]_0\(35),
      R => SR(0)
    );
\sband_td_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(36),
      Q => \sband_td_r_reg[55]_0\(36),
      R => SR(0)
    );
\sband_td_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(37),
      Q => \sband_td_r_reg[55]_0\(37),
      R => SR(0)
    );
\sband_td_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(38),
      Q => \sband_td_r_reg[55]_0\(38),
      R => SR(0)
    );
\sband_td_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(39),
      Q => \sband_td_r_reg[55]_0\(39),
      R => SR(0)
    );
\sband_td_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(3),
      Q => \sband_td_r_reg[55]_0\(3),
      R => SR(0)
    );
\sband_td_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(40),
      Q => \sband_td_r_reg[55]_0\(40),
      R => SR(0)
    );
\sband_td_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(41),
      Q => \sband_td_r_reg[55]_0\(41),
      R => SR(0)
    );
\sband_td_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(42),
      Q => \sband_td_r_reg[55]_0\(42),
      R => SR(0)
    );
\sband_td_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(43),
      Q => \sband_td_r_reg[55]_0\(43),
      R => SR(0)
    );
\sband_td_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(44),
      Q => \sband_td_r_reg[55]_0\(44),
      R => SR(0)
    );
\sband_td_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(45),
      Q => \sband_td_r_reg[55]_0\(45),
      R => SR(0)
    );
\sband_td_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(46),
      Q => \sband_td_r_reg[55]_0\(46),
      R => SR(0)
    );
\sband_td_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(47),
      Q => \sband_td_r_reg[55]_0\(47),
      R => SR(0)
    );
\sband_td_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(48),
      Q => \sband_td_r_reg[55]_0\(48),
      R => SR(0)
    );
\sband_td_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(49),
      Q => \sband_td_r_reg[55]_0\(49),
      R => SR(0)
    );
\sband_td_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(4),
      Q => \sband_td_r_reg[55]_0\(4),
      R => SR(0)
    );
\sband_td_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(50),
      Q => \sband_td_r_reg[55]_0\(50),
      R => SR(0)
    );
\sband_td_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(51),
      Q => \sband_td_r_reg[55]_0\(51),
      R => SR(0)
    );
\sband_td_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(52),
      Q => \sband_td_r_reg[55]_0\(52),
      R => SR(0)
    );
\sband_td_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(53),
      Q => \sband_td_r_reg[55]_0\(53),
      R => SR(0)
    );
\sband_td_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(54),
      Q => \sband_td_r_reg[55]_0\(54),
      R => SR(0)
    );
\sband_td_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(55),
      Q => \sband_td_r_reg[55]_0\(55),
      R => SR(0)
    );
\sband_td_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(5),
      Q => \sband_td_r_reg[55]_0\(5),
      R => SR(0)
    );
\sband_td_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(6),
      Q => \sband_td_r_reg[55]_0\(6),
      R => SR(0)
    );
\sband_td_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(7),
      Q => \sband_td_r_reg[55]_0\(7),
      R => SR(0)
    );
\sband_td_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(8),
      Q => \sband_td_r_reg[55]_0\(8),
      R => SR(0)
    );
\sband_td_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => \sband_td_r_reg[55]_1\(9),
      Q => \sband_td_r_reg[55]_0\(9),
      R => SR(0)
    );
\sband_tk_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(0),
      Q => \sband_tk_r_reg_n_0_[1]\,
      R => SR(0)
    );
\sband_tk_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(1),
      Q => \sband_tk_r_reg[6]_0\(0),
      R => SR(0)
    );
\sband_tk_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(2),
      Q => \sband_tk_r_reg[6]_0\(1),
      R => SR(0)
    );
\sband_tk_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(3),
      Q => \sband_tk_r_reg[6]_0\(2),
      R => SR(0)
    );
\sband_tk_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(4),
      Q => \sband_tk_r_reg[6]_0\(3),
      R => SR(0)
    );
\sband_tk_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => E(0),
      D => D(5),
      Q => \sband_tk_r_reg[6]_0\(4),
      R => SR(0)
    );
sband_tl_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^vfb_valid_reg_0\,
      I1 => vfb_ready,
      I2 => \vfb_cnt_reg__0\(3),
      I3 => \vfb_cnt_reg__0\(2),
      I4 => \vfb_cnt_reg__0\(0),
      I5 => \vfb_cnt_reg__0\(1),
      O => vfb_valid_reg_1
    );
sband_tl_r_reg: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => fifo_tl,
      Q => sband_tl_r,
      R => SR(0)
    );
\sband_ts_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(0),
      Q => \sband_ts_r_reg[9]_0\(0),
      R => SR(0)
    );
\sband_ts_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(1),
      Q => \sband_ts_r_reg[9]_0\(1),
      R => SR(0)
    );
\sband_ts_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(2),
      Q => \sband_ts_r_reg[9]_0\(2),
      R => SR(0)
    );
\sband_ts_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(3),
      Q => \sband_ts_r_reg[9]_0\(3),
      R => SR(0)
    );
\sband_ts_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(4),
      Q => \sband_ts_r_reg[9]_0\(4),
      R => SR(0)
    );
\sband_ts_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(5),
      Q => \sband_ts_r_reg[9]_0\(5),
      R => SR(0)
    );
\sband_ts_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(6),
      Q => \sband_ts_r_reg[9]_0\(6),
      R => SR(0)
    );
\sband_ts_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(7),
      Q => \sband_ts_r_reg[9]_0\(7),
      R => SR(0)
    );
\sband_ts_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(8),
      Q => \sband_ts_r_reg[9]_0\(8),
      R => SR(0)
    );
\sband_ts_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => Q(9),
      Q => \sband_ts_r_reg[9]_0\(9),
      R => SR(0)
    );
\sband_tu_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tact0,
      D => sband_tu,
      Q => sband_tu_r,
      R => SR(0)
    );
sdt_tr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010101"
    )
        port map (
      I0 => mdt_tv,
      I1 => \^vfb_eol_reg_0\,
      I2 => \^vfb_valid_reg_0\,
      I3 => vfb_ready,
      I4 => sdt_tr_INST_0_i_1_n_0,
      O => sdt_tr
    );
sdt_tr_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(3),
      I1 => \vfb_cnt_reg__0\(2),
      I2 => \vfb_cnt_reg__0\(0),
      I3 => \vfb_cnt_reg__0\(1),
      O => sdt_tr_INST_0_i_1_n_0
    );
\vfb_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(0),
      O => cnt_done0(0)
    );
\vfb_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(0),
      I1 => \vfb_cnt_reg__0\(1),
      O => cnt_done0(1)
    );
\vfb_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(2),
      I1 => \vfb_cnt_reg__0\(0),
      I2 => \vfb_cnt_reg__0\(1),
      O => cnt_done0(2)
    );
\vfb_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C080FFFF"
    )
        port map (
      I0 => \^vfb_eol_reg_0\,
      I1 => vfb_ready,
      I2 => \^vfb_valid_reg_0\,
      I3 => sdt_tr_INST_0_i_1_n_0,
      I4 => s_axis_aresetn,
      O => \vfb_cnt[3]_i_1_n_0\
    );
\vfb_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vfb_ready,
      I1 => \^vfb_valid_reg_0\,
      O => sband_tr2
    );
\vfb_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \vfb_cnt_reg__0\(1),
      I1 => \vfb_cnt_reg__0\(0),
      I2 => \vfb_cnt_reg__0\(2),
      I3 => \vfb_cnt_reg__0\(3),
      O => cnt_done0(3)
    );
\vfb_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tr2,
      D => cnt_done0(0),
      Q => \vfb_cnt_reg__0\(0),
      R => \vfb_cnt[3]_i_1_n_0\
    );
\vfb_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tr2,
      D => cnt_done0(1),
      Q => \vfb_cnt_reg__0\(1),
      R => \vfb_cnt[3]_i_1_n_0\
    );
\vfb_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tr2,
      D => cnt_done0(2),
      Q => \vfb_cnt_reg__0\(2),
      R => \vfb_cnt[3]_i_1_n_0\
    );
\vfb_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => sband_tr2,
      D => cnt_done0(3),
      Q => \vfb_cnt_reg__0\(3),
      R => \vfb_cnt[3]_i_1_n_0\
    );
\vfb_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FF"
    )
        port map (
      I0 => mdt_tv,
      I1 => \^vfb_eol_reg_0\,
      I2 => vfb_ready,
      I3 => \^vfb_valid_reg_0\,
      O => \vfb_data[15]_i_1_n_0\
    );
\vfb_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(0),
      Q => vfb_data(0),
      R => SR(0)
    );
\vfb_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(10),
      Q => vfb_data(10),
      R => SR(0)
    );
\vfb_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(11),
      Q => vfb_data(11),
      R => SR(0)
    );
\vfb_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(12),
      Q => vfb_data(12),
      R => SR(0)
    );
\vfb_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(13),
      Q => vfb_data(13),
      R => SR(0)
    );
\vfb_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(14),
      Q => vfb_data(14),
      R => SR(0)
    );
\vfb_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(15),
      Q => vfb_data(15),
      R => SR(0)
    );
\vfb_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(1),
      Q => vfb_data(1),
      R => SR(0)
    );
\vfb_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(2),
      Q => vfb_data(2),
      R => SR(0)
    );
\vfb_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(3),
      Q => vfb_data(3),
      R => SR(0)
    );
\vfb_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(4),
      Q => vfb_data(4),
      R => SR(0)
    );
\vfb_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(5),
      Q => vfb_data(5),
      R => SR(0)
    );
\vfb_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(6),
      Q => vfb_data(6),
      R => SR(0)
    );
\vfb_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(7),
      Q => vfb_data(7),
      R => SR(0)
    );
\vfb_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(8),
      Q => vfb_data(8),
      R => SR(0)
    );
\vfb_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_data[15]_i_1_n_0\,
      D => \vfb_data_reg[15]_0\(9),
      Q => vfb_data(9),
      R => SR(0)
    );
vfb_eol_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FFC5C5C500C5C5"
    )
        port map (
      I0 => vfb_eol_i_2_n_0,
      I1 => m_axis_tlast,
      I2 => mdt_tv,
      I3 => vfb_ready,
      I4 => \^vfb_valid_reg_0\,
      I5 => \^vfb_eol_reg_0\,
      O => vfb_eol_i_1_n_0
    );
vfb_eol_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F7F7FFFFF7F7"
    )
        port map (
      I0 => \^sband_tact_reg_0\,
      I1 => sband_tl_r,
      I2 => \sband_tk_r_reg_n_0_[1]\,
      I3 => Q(10),
      I4 => sband_tact0,
      I5 => fifo_tl,
      O => vfb_eol_i_2_n_0
    );
vfb_eol_reg: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => '1',
      D => vfb_eol_i_1_n_0,
      Q => \^vfb_eol_reg_0\,
      R => SR(0)
    );
\vfb_sof[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBBB88808888"
    )
        port map (
      I0 => \vfb_sof_reg[0]_0\,
      I1 => \^mdt_tr\,
      I2 => sband_tact0,
      I3 => \^sband_tact_reg_0\,
      I4 => \vfb_sof[0]_i_3_n_0\,
      I5 => \^vfb_sof\(0),
      O => \vfb_sof[0]_i_1_n_0\
    );
\vfb_sof[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => mdt_tv,
      I1 => \^vfb_valid_reg_0\,
      I2 => vfb_ready,
      I3 => \^vfb_eol_reg_0\,
      O => \vfb_sof[0]_i_3_n_0\
    );
\vfb_sof[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^vfb_eol_reg_0\,
      I1 => vfb_ready,
      I2 => \^vfb_valid_reg_0\,
      O => vfb_eol_reg_1
    );
\vfb_sof_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => '1',
      D => \vfb_sof[0]_i_1_n_0\,
      Q => \^vfb_sof\(0),
      R => SR(0)
    );
vfb_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBAFFFFFFFAFFFA"
    )
        port map (
      I0 => mdt_tv,
      I1 => \^vfb_eol_reg_0\,
      I2 => sband_tact0,
      I3 => \^sband_tact_reg_0\,
      I4 => vfb_ready,
      I5 => \^vfb_valid_reg_0\,
      O => vfb_valid_i_2_n_0
    );
vfb_valid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => sband_tact,
      I1 => \vfb_cnt_reg__0\(1),
      I2 => \vfb_cnt_reg__0\(0),
      I3 => \vfb_cnt_reg__0\(2),
      I4 => \vfb_cnt_reg__0\(3),
      O => \^sband_tact_reg_0\
    );
vfb_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => '1',
      D => vfb_valid_i_2_n_0,
      Q => \^vfb_valid_reg_0\,
      R => SR(0)
    );
\vfb_vcdt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^vfb_valid_reg_0\,
      I1 => vfb_ready,
      I2 => sband_tact0,
      I3 => sband_tact,
      I4 => mdt_tv,
      O => \vfb_vcdt[9]_i_1_n_0\
    );
\vfb_vcdt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(0),
      Q => vfb_vcdt(0),
      R => SR(0)
    );
\vfb_vcdt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(1),
      Q => vfb_vcdt(1),
      R => SR(0)
    );
\vfb_vcdt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(2),
      Q => vfb_vcdt(2),
      R => SR(0)
    );
\vfb_vcdt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(3),
      Q => vfb_vcdt(3),
      R => SR(0)
    );
\vfb_vcdt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(4),
      Q => vfb_vcdt(4),
      R => SR(0)
    );
\vfb_vcdt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(5),
      Q => vfb_vcdt(5),
      R => SR(0)
    );
\vfb_vcdt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(6),
      Q => vfb_vcdt(6),
      R => SR(0)
    );
\vfb_vcdt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(7),
      Q => vfb_vcdt(7),
      R => SR(0)
    );
\vfb_vcdt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(8),
      Q => vfb_vcdt(8),
      R => SR(0)
    );
\vfb_vcdt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => vfb_clk,
      CE => \vfb_vcdt[9]_i_1_n_0\,
      D => \vfb_vcdt_reg[9]_0\(9),
      Q => vfb_vcdt(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_vfb_v1_0_12_reorder is
  port (
    s_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_fifo_tv : out STD_LOGIC;
    cur_dtype_udef : out STD_LOGIC;
    s_axis_tlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sband_tact0 : out STD_LOGIC;
    sband_tu : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_tl : out STD_LOGIC;
    \buf_valid_reg[1]_0\ : out STD_LOGIC;
    \buf_data_reg[0][107]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \buf_data_reg[0][171]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    sdt_tv : out STD_LOGIC;
    cur_dtype_sink_reg_0 : out STD_LOGIC;
    \s_fifo_td_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \s_fifo_tk_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_fifo_tid_reg[25]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    vfb_ready : in STD_LOGIC;
    \sband_td_r_reg[0]\ : in STD_LOGIC;
    \buf_valid_reg[0]_0\ : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 99 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \sband_tk_r_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \sband_td_r_reg[47]\ : in STD_LOGIC_VECTOR ( 47 downto 0 );
    mdt_tv : in STD_LOGIC;
    sband_tl_r_reg : in STD_LOGIC;
    sband_tl_r_reg_0 : in STD_LOGIC;
    sband_tl_r_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_vfb_v1_0_12_reorder : entity is "vfb_v1_0_12_reorder";
end bd_22c6_vfb_0_0_vfb_v1_0_12_reorder;

architecture STRUCTURE of bd_22c6_vfb_0_0_vfb_v1_0_12_reorder is
  signal \^q\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buf_data[0][172]_i_1_n_0\ : STD_LOGIC;
  signal \buf_data[1][172]_i_1_n_0\ : STD_LOGIC;
  signal \buf_data_reg[1]\ : STD_LOGIC_VECTOR ( 172 downto 0 );
  signal \buf_valid[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_valid[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_valid_reg_n_0_[0]\ : STD_LOGIC;
  signal cur_dtype_pxls : STD_LOGIC;
  signal cur_dtype_pxls_i_1_n_0 : STD_LOGIC;
  signal cur_dtype_pxls_i_2_n_0 : STD_LOGIC;
  signal cur_dtype_sink_i_1_n_0 : STD_LOGIC;
  signal \^cur_dtype_sink_reg_0\ : STD_LOGIC;
  signal cur_dtype_sink_reg_n_0 : STD_LOGIC;
  signal \^cur_dtype_udef\ : STD_LOGIC;
  signal cur_dtype_udef_i_1_n_0 : STD_LOGIC;
  signal fifo_td : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal fifo_tk : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^fifo_tl\ : STD_LOGIC;
  signal fifo_tu : STD_LOGIC;
  signal fifo_tv : STD_LOGIC;
  signal frmnum : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 172 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal s_axis_tlast_0 : STD_LOGIC;
  signal \s_fifo_td[63]_i_1_n_0\ : STD_LOGIC;
  signal \s_fifo_td[63]_i_2_n_0\ : STD_LOGIC;
  signal s_fifo_tl_i_1_n_0 : STD_LOGIC;
  signal \^s_fifo_tv\ : STD_LOGIC;
  signal s_fifo_tv_i_1_n_0 : STD_LOGIC;
  signal \^sband_tact0\ : STD_LOGIC;
  signal sdt_tv_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_data[0][2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \buf_valid[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \buf_valid[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of cur_dtype_pxls_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_fifo_tu[21]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sband_td_r[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sband_td_r[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sband_td_r[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sband_td_r[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sband_td_r[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sband_td_r[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sband_td_r[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sband_td_r[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sband_td_r[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sband_td_r[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sband_td_r[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sband_td_r[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sband_td_r[21]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sband_td_r[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sband_td_r[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sband_td_r[24]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sband_td_r[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sband_td_r[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sband_td_r[27]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sband_td_r[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sband_td_r[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sband_td_r[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sband_td_r[30]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sband_td_r[31]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sband_td_r[32]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sband_td_r[33]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sband_td_r[34]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sband_td_r[35]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sband_td_r[36]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sband_td_r[37]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sband_td_r[38]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sband_td_r[39]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sband_td_r[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sband_td_r[40]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sband_td_r[41]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sband_td_r[42]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sband_td_r[43]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sband_td_r[44]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sband_td_r[45]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sband_td_r[46]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sband_td_r[47]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sband_td_r[48]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sband_td_r[49]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sband_td_r[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sband_td_r[50]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sband_td_r[51]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sband_td_r[52]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sband_td_r[53]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sband_td_r[54]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sband_td_r[55]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sband_td_r[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sband_td_r[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sband_td_r[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sband_td_r[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sband_td_r[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sband_tk_r[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sband_tk_r[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sband_tk_r[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sband_tk_r[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sband_tk_r[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sband_tk_r[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sband_tk_r[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sband_tu_r[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of sdt_tv_INST_0 : label is "soft_lutpair13";
begin
  Q(19 downto 0) <= \^q\(19 downto 0);
  SR(0) <= \^sr\(0);
  cur_dtype_sink_reg_0 <= \^cur_dtype_sink_reg_0\;
  cur_dtype_udef <= \^cur_dtype_udef\;
  fifo_tl <= \^fifo_tl\;
  s_axis_tlast <= \^s_axis_tlast\;
  s_fifo_tv <= \^s_fifo_tv\;
  sband_tact0 <= \^sband_tact0\;
\buf_data[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(0),
      I4 => D(0),
      O => p_2_in(0)
    );
\buf_data[0][100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(100),
      I4 => D(27),
      O => p_2_in(100)
    );
\buf_data[0][101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(101),
      I4 => D(28),
      O => p_2_in(101)
    );
\buf_data[0][102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(102),
      I4 => D(29),
      O => p_2_in(102)
    );
\buf_data[0][103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(103),
      I4 => D(30),
      O => p_2_in(103)
    );
\buf_data[0][104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(104),
      I4 => D(31),
      O => p_2_in(104)
    );
\buf_data[0][105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(105),
      I4 => D(32),
      O => p_2_in(105)
    );
\buf_data[0][106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(106),
      I4 => D(33),
      O => p_2_in(106)
    );
\buf_data[0][107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(107),
      I4 => D(34),
      O => p_2_in(107)
    );
\buf_data[0][108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(108),
      I4 => D(35),
      O => p_2_in(108)
    );
\buf_data[0][109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(109),
      I4 => D(36),
      O => p_2_in(109)
    );
\buf_data[0][110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(110),
      I4 => D(37),
      O => p_2_in(110)
    );
\buf_data[0][111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(111),
      I4 => D(38),
      O => p_2_in(111)
    );
\buf_data[0][112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(112),
      I4 => D(39),
      O => p_2_in(112)
    );
\buf_data[0][113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(113),
      I4 => D(40),
      O => p_2_in(113)
    );
\buf_data[0][114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(114),
      I4 => D(41),
      O => p_2_in(114)
    );
\buf_data[0][115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(115),
      I4 => D(42),
      O => p_2_in(115)
    );
\buf_data[0][116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(116),
      I4 => D(43),
      O => p_2_in(116)
    );
\buf_data[0][117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(117),
      I4 => D(44),
      O => p_2_in(117)
    );
\buf_data[0][118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(118),
      I4 => D(45),
      O => p_2_in(118)
    );
\buf_data[0][119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(119),
      I4 => D(46),
      O => p_2_in(119)
    );
\buf_data[0][120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(120),
      I4 => D(47),
      O => p_2_in(120)
    );
\buf_data[0][121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(121),
      I4 => D(48),
      O => p_2_in(121)
    );
\buf_data[0][122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(122),
      I4 => D(49),
      O => p_2_in(122)
    );
\buf_data[0][123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(123),
      I4 => D(50),
      O => p_2_in(123)
    );
\buf_data[0][124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(124),
      I4 => D(51),
      O => p_2_in(124)
    );
\buf_data[0][125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(125),
      I4 => D(52),
      O => p_2_in(125)
    );
\buf_data[0][126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(126),
      I4 => D(53),
      O => p_2_in(126)
    );
\buf_data[0][127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(127),
      I4 => D(54),
      O => p_2_in(127)
    );
\buf_data[0][128]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(128),
      I4 => D(55),
      O => p_2_in(128)
    );
\buf_data[0][129]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(129),
      I4 => D(56),
      O => p_2_in(129)
    );
\buf_data[0][130]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(130),
      I4 => D(57),
      O => p_2_in(130)
    );
\buf_data[0][131]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(131),
      I4 => D(58),
      O => p_2_in(131)
    );
\buf_data[0][132]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(132),
      I4 => D(59),
      O => p_2_in(132)
    );
\buf_data[0][133]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(133),
      I4 => D(60),
      O => p_2_in(133)
    );
\buf_data[0][134]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(134),
      I4 => D(61),
      O => p_2_in(134)
    );
\buf_data[0][135]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(135),
      I4 => D(62),
      O => p_2_in(135)
    );
\buf_data[0][136]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(136),
      I4 => D(63),
      O => p_2_in(136)
    );
\buf_data[0][137]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(137),
      I4 => D(64),
      O => p_2_in(137)
    );
\buf_data[0][138]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(138),
      I4 => D(65),
      O => p_2_in(138)
    );
\buf_data[0][139]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(139),
      I4 => D(66),
      O => p_2_in(139)
    );
\buf_data[0][140]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(140),
      I4 => D(67),
      O => p_2_in(140)
    );
\buf_data[0][141]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(141),
      I4 => D(68),
      O => p_2_in(141)
    );
\buf_data[0][142]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(142),
      I4 => D(69),
      O => p_2_in(142)
    );
\buf_data[0][143]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(143),
      I4 => D(70),
      O => p_2_in(143)
    );
\buf_data[0][144]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(144),
      I4 => D(71),
      O => p_2_in(144)
    );
\buf_data[0][145]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(145),
      I4 => D(72),
      O => p_2_in(145)
    );
\buf_data[0][146]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(146),
      I4 => D(73),
      O => p_2_in(146)
    );
\buf_data[0][147]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(147),
      I4 => D(74),
      O => p_2_in(147)
    );
\buf_data[0][148]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(148),
      I4 => D(75),
      O => p_2_in(148)
    );
\buf_data[0][149]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(149),
      I4 => D(76),
      O => p_2_in(149)
    );
\buf_data[0][150]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(150),
      I4 => D(77),
      O => p_2_in(150)
    );
\buf_data[0][151]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(151),
      I4 => D(78),
      O => p_2_in(151)
    );
\buf_data[0][152]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(152),
      I4 => D(79),
      O => p_2_in(152)
    );
\buf_data[0][153]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(153),
      I4 => D(80),
      O => p_2_in(153)
    );
\buf_data[0][154]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(154),
      I4 => D(81),
      O => p_2_in(154)
    );
\buf_data[0][155]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(155),
      I4 => D(82),
      O => p_2_in(155)
    );
\buf_data[0][156]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(156),
      I4 => D(83),
      O => p_2_in(156)
    );
\buf_data[0][157]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(157),
      I4 => D(84),
      O => p_2_in(157)
    );
\buf_data[0][158]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(158),
      I4 => D(85),
      O => p_2_in(158)
    );
\buf_data[0][159]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(159),
      I4 => D(86),
      O => p_2_in(159)
    );
\buf_data[0][160]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(160),
      I4 => D(87),
      O => p_2_in(160)
    );
\buf_data[0][161]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(161),
      I4 => D(88),
      O => p_2_in(161)
    );
\buf_data[0][162]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(162),
      I4 => D(89),
      O => p_2_in(162)
    );
\buf_data[0][163]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(163),
      I4 => D(90),
      O => p_2_in(163)
    );
\buf_data[0][164]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(164),
      I4 => D(91),
      O => p_2_in(164)
    );
\buf_data[0][165]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(165),
      I4 => D(92),
      O => p_2_in(165)
    );
\buf_data[0][166]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(166),
      I4 => D(93),
      O => p_2_in(166)
    );
\buf_data[0][167]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(167),
      I4 => D(94),
      O => p_2_in(167)
    );
\buf_data[0][168]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(168),
      I4 => D(95),
      O => p_2_in(168)
    );
\buf_data[0][169]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(169),
      I4 => D(96),
      O => p_2_in(169)
    );
\buf_data[0][170]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(170),
      I4 => D(97),
      O => p_2_in(170)
    );
\buf_data[0][171]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(171),
      I4 => D(98),
      O => p_2_in(171)
    );
\buf_data[0][172]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04E4"
    )
        port map (
      I0 => p_0_in,
      I1 => s_axis_tvalid,
      I2 => \buf_valid_reg_n_0_[0]\,
      I3 => \buf_valid_reg[0]_0\,
      O => \buf_data[0][172]_i_1_n_0\
    );
\buf_data[0][172]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(172),
      I4 => D(99),
      O => p_2_in(172)
    );
\buf_data[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(1),
      I4 => D(1),
      O => p_2_in(1)
    );
\buf_data[0][20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(20),
      I4 => D(5),
      O => p_2_in(20)
    );
\buf_data[0][21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(21),
      I4 => D(6),
      O => p_2_in(21)
    );
\buf_data[0][22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(22),
      I4 => D(7),
      O => p_2_in(22)
    );
\buf_data[0][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(23),
      I4 => D(8),
      O => p_2_in(23)
    );
\buf_data[0][24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(24),
      I4 => D(9),
      O => p_2_in(24)
    );
\buf_data[0][25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(25),
      I4 => D(10),
      O => p_2_in(25)
    );
\buf_data[0][26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(26),
      I4 => D(11),
      O => p_2_in(26)
    );
\buf_data[0][27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(27),
      I4 => D(12),
      O => p_2_in(27)
    );
\buf_data[0][28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(28),
      I4 => D(13),
      O => p_2_in(28)
    );
\buf_data[0][29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(29),
      I4 => D(14),
      O => p_2_in(29)
    );
\buf_data[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(2),
      I4 => D(2),
      O => p_2_in(2)
    );
\buf_data[0][30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(30),
      I4 => D(15),
      O => p_2_in(30)
    );
\buf_data[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(31),
      I4 => D(16),
      O => p_2_in(31)
    );
\buf_data[0][32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(32),
      I4 => D(17),
      O => p_2_in(32)
    );
\buf_data[0][33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(33),
      I4 => D(18),
      O => p_2_in(33)
    );
\buf_data[0][34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(34),
      I4 => D(19),
      O => p_2_in(34)
    );
\buf_data[0][35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(35),
      I4 => D(20),
      O => p_2_in(35)
    );
\buf_data[0][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(3),
      I4 => D(3),
      O => p_2_in(3)
    );
\buf_data[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(4),
      I4 => D(4),
      O => p_2_in(4)
    );
\buf_data[0][68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(68),
      I4 => D(21),
      O => p_2_in(68)
    );
\buf_data[0][69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(69),
      I4 => D(22),
      O => p_2_in(69)
    );
\buf_data[0][70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(70),
      I4 => D(23),
      O => p_2_in(70)
    );
\buf_data[0][71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(71),
      I4 => D(24),
      O => p_2_in(71)
    );
\buf_data[0][72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(72),
      I4 => D(25),
      O => p_2_in(72)
    );
\buf_data[0][73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70800"
    )
        port map (
      I0 => p_0_in,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \buf_valid_reg[0]_0\,
      I3 => \buf_data_reg[1]\(73),
      I4 => D(26),
      O => p_2_in(73)
    );
\buf_data[1][172]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \buf_valid_reg[0]_0\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => s_axis_tvalid,
      O => \buf_data[1][172]_i_1_n_0\
    );
\buf_data_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\buf_data_reg[0][100]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(100),
      Q => fifo_tk(2),
      R => \^sr\(0)
    );
\buf_data_reg[0][101]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(101),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\buf_data_reg[0][102]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(102),
      Q => fifo_tk(0),
      R => \^sr\(0)
    );
\buf_data_reg[0][103]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(103),
      Q => fifo_tk(1),
      R => \^sr\(0)
    );
\buf_data_reg[0][104]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(104),
      Q => fifo_tk(6),
      R => \^sr\(0)
    );
\buf_data_reg[0][105]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(105),
      Q => fifo_tk(7),
      R => \^sr\(0)
    );
\buf_data_reg[0][106]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(106),
      Q => fifo_tk(4),
      R => \^sr\(0)
    );
\buf_data_reg[0][107]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(107),
      Q => fifo_tk(5),
      R => \^sr\(0)
    );
\buf_data_reg[0][108]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(108),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\buf_data_reg[0][109]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(109),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\buf_data_reg[0][110]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(110),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\buf_data_reg[0][111]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(111),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\buf_data_reg[0][112]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(112),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\buf_data_reg[0][113]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(113),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\buf_data_reg[0][114]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(114),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\buf_data_reg[0][115]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(115),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\buf_data_reg[0][116]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(116),
      Q => fifo_td(24),
      R => \^sr\(0)
    );
\buf_data_reg[0][117]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(117),
      Q => fifo_td(25),
      R => \^sr\(0)
    );
\buf_data_reg[0][118]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(118),
      Q => fifo_td(26),
      R => \^sr\(0)
    );
\buf_data_reg[0][119]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(119),
      Q => fifo_td(27),
      R => \^sr\(0)
    );
\buf_data_reg[0][120]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(120),
      Q => fifo_td(28),
      R => \^sr\(0)
    );
\buf_data_reg[0][121]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(121),
      Q => fifo_td(29),
      R => \^sr\(0)
    );
\buf_data_reg[0][122]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(122),
      Q => fifo_td(30),
      R => \^sr\(0)
    );
\buf_data_reg[0][123]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(123),
      Q => fifo_td(31),
      R => \^sr\(0)
    );
\buf_data_reg[0][124]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(124),
      Q => fifo_td(0),
      R => \^sr\(0)
    );
\buf_data_reg[0][125]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(125),
      Q => fifo_td(1),
      R => \^sr\(0)
    );
\buf_data_reg[0][126]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(126),
      Q => fifo_td(2),
      R => \^sr\(0)
    );
\buf_data_reg[0][127]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(127),
      Q => fifo_td(3),
      R => \^sr\(0)
    );
\buf_data_reg[0][128]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(128),
      Q => fifo_td(4),
      R => \^sr\(0)
    );
\buf_data_reg[0][129]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(129),
      Q => fifo_td(5),
      R => \^sr\(0)
    );
\buf_data_reg[0][130]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(130),
      Q => fifo_td(6),
      R => \^sr\(0)
    );
\buf_data_reg[0][131]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(131),
      Q => fifo_td(7),
      R => \^sr\(0)
    );
\buf_data_reg[0][132]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(132),
      Q => fifo_td(8),
      R => \^sr\(0)
    );
\buf_data_reg[0][133]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(133),
      Q => fifo_td(9),
      R => \^sr\(0)
    );
\buf_data_reg[0][134]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(134),
      Q => fifo_td(10),
      R => \^sr\(0)
    );
\buf_data_reg[0][135]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(135),
      Q => fifo_td(11),
      R => \^sr\(0)
    );
\buf_data_reg[0][136]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(136),
      Q => fifo_td(12),
      R => \^sr\(0)
    );
\buf_data_reg[0][137]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(137),
      Q => fifo_td(13),
      R => \^sr\(0)
    );
\buf_data_reg[0][138]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(138),
      Q => fifo_td(14),
      R => \^sr\(0)
    );
\buf_data_reg[0][139]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(139),
      Q => fifo_td(15),
      R => \^sr\(0)
    );
\buf_data_reg[0][140]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(140),
      Q => fifo_td(48),
      R => \^sr\(0)
    );
\buf_data_reg[0][141]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(141),
      Q => fifo_td(49),
      R => \^sr\(0)
    );
\buf_data_reg[0][142]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(142),
      Q => fifo_td(50),
      R => \^sr\(0)
    );
\buf_data_reg[0][143]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(143),
      Q => fifo_td(51),
      R => \^sr\(0)
    );
\buf_data_reg[0][144]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(144),
      Q => fifo_td(52),
      R => \^sr\(0)
    );
\buf_data_reg[0][145]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(145),
      Q => fifo_td(53),
      R => \^sr\(0)
    );
\buf_data_reg[0][146]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(146),
      Q => fifo_td(54),
      R => \^sr\(0)
    );
\buf_data_reg[0][147]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(147),
      Q => fifo_td(55),
      R => \^sr\(0)
    );
\buf_data_reg[0][148]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(148),
      Q => fifo_td(56),
      R => \^sr\(0)
    );
\buf_data_reg[0][149]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(149),
      Q => fifo_td(57),
      R => \^sr\(0)
    );
\buf_data_reg[0][150]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(150),
      Q => fifo_td(58),
      R => \^sr\(0)
    );
\buf_data_reg[0][151]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(151),
      Q => fifo_td(59),
      R => \^sr\(0)
    );
\buf_data_reg[0][152]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(152),
      Q => fifo_td(60),
      R => \^sr\(0)
    );
\buf_data_reg[0][153]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(153),
      Q => fifo_td(61),
      R => \^sr\(0)
    );
\buf_data_reg[0][154]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(154),
      Q => fifo_td(62),
      R => \^sr\(0)
    );
\buf_data_reg[0][155]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(155),
      Q => fifo_td(63),
      R => \^sr\(0)
    );
\buf_data_reg[0][156]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(156),
      Q => fifo_td(32),
      R => \^sr\(0)
    );
\buf_data_reg[0][157]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(157),
      Q => fifo_td(33),
      R => \^sr\(0)
    );
\buf_data_reg[0][158]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(158),
      Q => fifo_td(34),
      R => \^sr\(0)
    );
\buf_data_reg[0][159]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(159),
      Q => fifo_td(35),
      R => \^sr\(0)
    );
\buf_data_reg[0][160]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(160),
      Q => fifo_td(36),
      R => \^sr\(0)
    );
\buf_data_reg[0][161]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(161),
      Q => fifo_td(37),
      R => \^sr\(0)
    );
\buf_data_reg[0][162]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(162),
      Q => fifo_td(38),
      R => \^sr\(0)
    );
\buf_data_reg[0][163]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(163),
      Q => fifo_td(39),
      R => \^sr\(0)
    );
\buf_data_reg[0][164]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(164),
      Q => fifo_td(40),
      R => \^sr\(0)
    );
\buf_data_reg[0][165]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(165),
      Q => fifo_td(41),
      R => \^sr\(0)
    );
\buf_data_reg[0][166]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(166),
      Q => fifo_td(42),
      R => \^sr\(0)
    );
\buf_data_reg[0][167]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(167),
      Q => fifo_td(43),
      R => \^sr\(0)
    );
\buf_data_reg[0][168]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(168),
      Q => fifo_td(44),
      R => \^sr\(0)
    );
\buf_data_reg[0][169]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(169),
      Q => fifo_td(45),
      R => \^sr\(0)
    );
\buf_data_reg[0][170]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(170),
      Q => fifo_td(46),
      R => \^sr\(0)
    );
\buf_data_reg[0][171]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(171),
      Q => fifo_td(47),
      R => \^sr\(0)
    );
\buf_data_reg[0][172]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(172),
      Q => s_axis_tlast_0,
      R => \^sr\(0)
    );
\buf_data_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\buf_data_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(20),
      Q => frmnum(0),
      R => \^sr\(0)
    );
\buf_data_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(21),
      Q => frmnum(1),
      R => \^sr\(0)
    );
\buf_data_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(22),
      Q => frmnum(2),
      R => \^sr\(0)
    );
\buf_data_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(23),
      Q => frmnum(3),
      R => \^sr\(0)
    );
\buf_data_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(24),
      Q => frmnum(4),
      R => \^sr\(0)
    );
\buf_data_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(25),
      Q => frmnum(5),
      R => \^sr\(0)
    );
\buf_data_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(26),
      Q => frmnum(6),
      R => \^sr\(0)
    );
\buf_data_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(27),
      Q => frmnum(7),
      R => \^sr\(0)
    );
\buf_data_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(28),
      Q => frmnum(8),
      R => \^sr\(0)
    );
\buf_data_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(29),
      Q => frmnum(9),
      R => \^sr\(0)
    );
\buf_data_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\buf_data_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(30),
      Q => frmnum(10),
      R => \^sr\(0)
    );
\buf_data_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(31),
      Q => frmnum(11),
      R => \^sr\(0)
    );
\buf_data_reg[0][32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(32),
      Q => frmnum(12),
      R => \^sr\(0)
    );
\buf_data_reg[0][33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(33),
      Q => frmnum(13),
      R => \^sr\(0)
    );
\buf_data_reg[0][34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(34),
      Q => frmnum(14),
      R => \^sr\(0)
    );
\buf_data_reg[0][35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(35),
      Q => frmnum(15),
      R => \^sr\(0)
    );
\buf_data_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\buf_data_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\buf_data_reg[0][68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(68),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\buf_data_reg[0][69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(69),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\buf_data_reg[0][70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(70),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\buf_data_reg[0][71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(71),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\buf_data_reg[0][72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(72),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\buf_data_reg[0][73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[0][172]_i_1_n_0\,
      D => p_2_in(73),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\buf_data_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(0),
      Q => \buf_data_reg[1]\(0),
      R => \^sr\(0)
    );
\buf_data_reg[1][100]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(27),
      Q => \buf_data_reg[1]\(100),
      R => \^sr\(0)
    );
\buf_data_reg[1][101]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(28),
      Q => \buf_data_reg[1]\(101),
      R => \^sr\(0)
    );
\buf_data_reg[1][102]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(29),
      Q => \buf_data_reg[1]\(102),
      R => \^sr\(0)
    );
\buf_data_reg[1][103]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(30),
      Q => \buf_data_reg[1]\(103),
      R => \^sr\(0)
    );
\buf_data_reg[1][104]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(31),
      Q => \buf_data_reg[1]\(104),
      R => \^sr\(0)
    );
\buf_data_reg[1][105]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(32),
      Q => \buf_data_reg[1]\(105),
      R => \^sr\(0)
    );
\buf_data_reg[1][106]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(33),
      Q => \buf_data_reg[1]\(106),
      R => \^sr\(0)
    );
\buf_data_reg[1][107]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(34),
      Q => \buf_data_reg[1]\(107),
      R => \^sr\(0)
    );
\buf_data_reg[1][108]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(35),
      Q => \buf_data_reg[1]\(108),
      R => \^sr\(0)
    );
\buf_data_reg[1][109]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(36),
      Q => \buf_data_reg[1]\(109),
      R => \^sr\(0)
    );
\buf_data_reg[1][110]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(37),
      Q => \buf_data_reg[1]\(110),
      R => \^sr\(0)
    );
\buf_data_reg[1][111]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(38),
      Q => \buf_data_reg[1]\(111),
      R => \^sr\(0)
    );
\buf_data_reg[1][112]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(39),
      Q => \buf_data_reg[1]\(112),
      R => \^sr\(0)
    );
\buf_data_reg[1][113]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(40),
      Q => \buf_data_reg[1]\(113),
      R => \^sr\(0)
    );
\buf_data_reg[1][114]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(41),
      Q => \buf_data_reg[1]\(114),
      R => \^sr\(0)
    );
\buf_data_reg[1][115]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(42),
      Q => \buf_data_reg[1]\(115),
      R => \^sr\(0)
    );
\buf_data_reg[1][116]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(43),
      Q => \buf_data_reg[1]\(116),
      R => \^sr\(0)
    );
\buf_data_reg[1][117]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(44),
      Q => \buf_data_reg[1]\(117),
      R => \^sr\(0)
    );
\buf_data_reg[1][118]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(45),
      Q => \buf_data_reg[1]\(118),
      R => \^sr\(0)
    );
\buf_data_reg[1][119]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(46),
      Q => \buf_data_reg[1]\(119),
      R => \^sr\(0)
    );
\buf_data_reg[1][120]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(47),
      Q => \buf_data_reg[1]\(120),
      R => \^sr\(0)
    );
\buf_data_reg[1][121]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(48),
      Q => \buf_data_reg[1]\(121),
      R => \^sr\(0)
    );
\buf_data_reg[1][122]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(49),
      Q => \buf_data_reg[1]\(122),
      R => \^sr\(0)
    );
\buf_data_reg[1][123]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(50),
      Q => \buf_data_reg[1]\(123),
      R => \^sr\(0)
    );
\buf_data_reg[1][124]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(51),
      Q => \buf_data_reg[1]\(124),
      R => \^sr\(0)
    );
\buf_data_reg[1][125]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(52),
      Q => \buf_data_reg[1]\(125),
      R => \^sr\(0)
    );
\buf_data_reg[1][126]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(53),
      Q => \buf_data_reg[1]\(126),
      R => \^sr\(0)
    );
\buf_data_reg[1][127]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(54),
      Q => \buf_data_reg[1]\(127),
      R => \^sr\(0)
    );
\buf_data_reg[1][128]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(55),
      Q => \buf_data_reg[1]\(128),
      R => \^sr\(0)
    );
\buf_data_reg[1][129]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(56),
      Q => \buf_data_reg[1]\(129),
      R => \^sr\(0)
    );
\buf_data_reg[1][130]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(57),
      Q => \buf_data_reg[1]\(130),
      R => \^sr\(0)
    );
\buf_data_reg[1][131]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(58),
      Q => \buf_data_reg[1]\(131),
      R => \^sr\(0)
    );
\buf_data_reg[1][132]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(59),
      Q => \buf_data_reg[1]\(132),
      R => \^sr\(0)
    );
\buf_data_reg[1][133]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(60),
      Q => \buf_data_reg[1]\(133),
      R => \^sr\(0)
    );
\buf_data_reg[1][134]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(61),
      Q => \buf_data_reg[1]\(134),
      R => \^sr\(0)
    );
\buf_data_reg[1][135]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(62),
      Q => \buf_data_reg[1]\(135),
      R => \^sr\(0)
    );
\buf_data_reg[1][136]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(63),
      Q => \buf_data_reg[1]\(136),
      R => \^sr\(0)
    );
\buf_data_reg[1][137]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(64),
      Q => \buf_data_reg[1]\(137),
      R => \^sr\(0)
    );
\buf_data_reg[1][138]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(65),
      Q => \buf_data_reg[1]\(138),
      R => \^sr\(0)
    );
\buf_data_reg[1][139]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(66),
      Q => \buf_data_reg[1]\(139),
      R => \^sr\(0)
    );
\buf_data_reg[1][140]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(67),
      Q => \buf_data_reg[1]\(140),
      R => \^sr\(0)
    );
\buf_data_reg[1][141]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(68),
      Q => \buf_data_reg[1]\(141),
      R => \^sr\(0)
    );
\buf_data_reg[1][142]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(69),
      Q => \buf_data_reg[1]\(142),
      R => \^sr\(0)
    );
\buf_data_reg[1][143]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(70),
      Q => \buf_data_reg[1]\(143),
      R => \^sr\(0)
    );
\buf_data_reg[1][144]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(71),
      Q => \buf_data_reg[1]\(144),
      R => \^sr\(0)
    );
\buf_data_reg[1][145]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(72),
      Q => \buf_data_reg[1]\(145),
      R => \^sr\(0)
    );
\buf_data_reg[1][146]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(73),
      Q => \buf_data_reg[1]\(146),
      R => \^sr\(0)
    );
\buf_data_reg[1][147]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(74),
      Q => \buf_data_reg[1]\(147),
      R => \^sr\(0)
    );
\buf_data_reg[1][148]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(75),
      Q => \buf_data_reg[1]\(148),
      R => \^sr\(0)
    );
\buf_data_reg[1][149]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(76),
      Q => \buf_data_reg[1]\(149),
      R => \^sr\(0)
    );
\buf_data_reg[1][150]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(77),
      Q => \buf_data_reg[1]\(150),
      R => \^sr\(0)
    );
\buf_data_reg[1][151]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(78),
      Q => \buf_data_reg[1]\(151),
      R => \^sr\(0)
    );
\buf_data_reg[1][152]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(79),
      Q => \buf_data_reg[1]\(152),
      R => \^sr\(0)
    );
\buf_data_reg[1][153]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(80),
      Q => \buf_data_reg[1]\(153),
      R => \^sr\(0)
    );
\buf_data_reg[1][154]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(81),
      Q => \buf_data_reg[1]\(154),
      R => \^sr\(0)
    );
\buf_data_reg[1][155]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(82),
      Q => \buf_data_reg[1]\(155),
      R => \^sr\(0)
    );
\buf_data_reg[1][156]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(83),
      Q => \buf_data_reg[1]\(156),
      R => \^sr\(0)
    );
\buf_data_reg[1][157]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(84),
      Q => \buf_data_reg[1]\(157),
      R => \^sr\(0)
    );
\buf_data_reg[1][158]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(85),
      Q => \buf_data_reg[1]\(158),
      R => \^sr\(0)
    );
\buf_data_reg[1][159]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(86),
      Q => \buf_data_reg[1]\(159),
      R => \^sr\(0)
    );
\buf_data_reg[1][160]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(87),
      Q => \buf_data_reg[1]\(160),
      R => \^sr\(0)
    );
\buf_data_reg[1][161]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(88),
      Q => \buf_data_reg[1]\(161),
      R => \^sr\(0)
    );
\buf_data_reg[1][162]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(89),
      Q => \buf_data_reg[1]\(162),
      R => \^sr\(0)
    );
\buf_data_reg[1][163]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(90),
      Q => \buf_data_reg[1]\(163),
      R => \^sr\(0)
    );
\buf_data_reg[1][164]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(91),
      Q => \buf_data_reg[1]\(164),
      R => \^sr\(0)
    );
\buf_data_reg[1][165]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(92),
      Q => \buf_data_reg[1]\(165),
      R => \^sr\(0)
    );
\buf_data_reg[1][166]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(93),
      Q => \buf_data_reg[1]\(166),
      R => \^sr\(0)
    );
\buf_data_reg[1][167]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(94),
      Q => \buf_data_reg[1]\(167),
      R => \^sr\(0)
    );
\buf_data_reg[1][168]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(95),
      Q => \buf_data_reg[1]\(168),
      R => \^sr\(0)
    );
\buf_data_reg[1][169]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(96),
      Q => \buf_data_reg[1]\(169),
      R => \^sr\(0)
    );
\buf_data_reg[1][170]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(97),
      Q => \buf_data_reg[1]\(170),
      R => \^sr\(0)
    );
\buf_data_reg[1][171]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(98),
      Q => \buf_data_reg[1]\(171),
      R => \^sr\(0)
    );
\buf_data_reg[1][172]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(99),
      Q => \buf_data_reg[1]\(172),
      R => \^sr\(0)
    );
\buf_data_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(1),
      Q => \buf_data_reg[1]\(1),
      R => \^sr\(0)
    );
\buf_data_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(5),
      Q => \buf_data_reg[1]\(20),
      R => \^sr\(0)
    );
\buf_data_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(6),
      Q => \buf_data_reg[1]\(21),
      R => \^sr\(0)
    );
\buf_data_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(7),
      Q => \buf_data_reg[1]\(22),
      R => \^sr\(0)
    );
\buf_data_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(8),
      Q => \buf_data_reg[1]\(23),
      R => \^sr\(0)
    );
\buf_data_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(9),
      Q => \buf_data_reg[1]\(24),
      R => \^sr\(0)
    );
\buf_data_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(10),
      Q => \buf_data_reg[1]\(25),
      R => \^sr\(0)
    );
\buf_data_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(11),
      Q => \buf_data_reg[1]\(26),
      R => \^sr\(0)
    );
\buf_data_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(12),
      Q => \buf_data_reg[1]\(27),
      R => \^sr\(0)
    );
\buf_data_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(13),
      Q => \buf_data_reg[1]\(28),
      R => \^sr\(0)
    );
\buf_data_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(14),
      Q => \buf_data_reg[1]\(29),
      R => \^sr\(0)
    );
\buf_data_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(2),
      Q => \buf_data_reg[1]\(2),
      R => \^sr\(0)
    );
\buf_data_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(15),
      Q => \buf_data_reg[1]\(30),
      R => \^sr\(0)
    );
\buf_data_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(16),
      Q => \buf_data_reg[1]\(31),
      R => \^sr\(0)
    );
\buf_data_reg[1][32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(17),
      Q => \buf_data_reg[1]\(32),
      R => \^sr\(0)
    );
\buf_data_reg[1][33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(18),
      Q => \buf_data_reg[1]\(33),
      R => \^sr\(0)
    );
\buf_data_reg[1][34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(19),
      Q => \buf_data_reg[1]\(34),
      R => \^sr\(0)
    );
\buf_data_reg[1][35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(20),
      Q => \buf_data_reg[1]\(35),
      R => \^sr\(0)
    );
\buf_data_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(3),
      Q => \buf_data_reg[1]\(3),
      R => \^sr\(0)
    );
\buf_data_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(4),
      Q => \buf_data_reg[1]\(4),
      R => \^sr\(0)
    );
\buf_data_reg[1][68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(21),
      Q => \buf_data_reg[1]\(68),
      R => \^sr\(0)
    );
\buf_data_reg[1][69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(22),
      Q => \buf_data_reg[1]\(69),
      R => \^sr\(0)
    );
\buf_data_reg[1][70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(23),
      Q => \buf_data_reg[1]\(70),
      R => \^sr\(0)
    );
\buf_data_reg[1][71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(24),
      Q => \buf_data_reg[1]\(71),
      R => \^sr\(0)
    );
\buf_data_reg[1][72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(25),
      Q => \buf_data_reg[1]\(72),
      R => \^sr\(0)
    );
\buf_data_reg[1][73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \buf_data[1][172]_i_1_n_0\,
      D => D(26),
      Q => \buf_data_reg[1]\(73),
      R => \^sr\(0)
    );
\buf_valid[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCF80000"
    )
        port map (
      I0 => \buf_valid_reg[0]_0\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => s_axis_tvalid,
      I3 => p_0_in,
      I4 => s_axis_aresetn,
      O => \buf_valid[0]_i_1_n_0\
    );
\buf_valid[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B00000"
    )
        port map (
      I0 => \buf_valid_reg[0]_0\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => s_axis_tvalid,
      I4 => s_axis_aresetn,
      O => \buf_valid[1]_i_1_n_0\
    );
\buf_valid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \buf_valid[0]_i_1_n_0\,
      Q => \buf_valid_reg_n_0_[0]\,
      R => '0'
    );
\buf_valid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \buf_valid[1]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
cur_dtype_pxls_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \s_fifo_td[63]_i_2_n_0\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => cur_dtype_pxls,
      I3 => cur_dtype_pxls_i_2_n_0,
      O => cur_dtype_pxls_i_1_n_0
    );
cur_dtype_pxls_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \buf_valid_reg[0]_0\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => s_axis_tlast_0,
      I3 => s_axis_aresetn,
      O => cur_dtype_pxls_i_2_n_0
    );
cur_dtype_pxls_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => cur_dtype_pxls_i_1_n_0,
      Q => cur_dtype_pxls,
      R => '0'
    );
cur_dtype_sink_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAEA"
    )
        port map (
      I0 => cur_dtype_sink_reg_n_0,
      I1 => sdt_tv_INST_0_i_1_n_0,
      I2 => \buf_valid_reg_n_0_[0]\,
      I3 => \s_fifo_td[63]_i_2_n_0\,
      I4 => cur_dtype_pxls_i_2_n_0,
      O => cur_dtype_sink_i_1_n_0
    );
cur_dtype_sink_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => cur_dtype_sink_i_1_n_0,
      Q => cur_dtype_sink_reg_n_0,
      R => '0'
    );
cur_dtype_udef_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F4"
    )
        port map (
      I0 => sdt_tv_INST_0_i_1_n_0,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \^cur_dtype_udef\,
      I3 => cur_dtype_pxls_i_2_n_0,
      O => cur_dtype_udef_i_1_n_0
    );
cur_dtype_udef_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => cur_dtype_udef_i_1_n_0,
      Q => \^cur_dtype_udef\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => \buf_valid_reg[1]_0\
    );
\s_fifo_td[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88080000"
    )
        port map (
      I0 => \buf_valid_reg_n_0_[0]\,
      I1 => \s_fifo_td[63]_i_2_n_0\,
      I2 => \^s_fifo_tv\,
      I3 => s_axis_tready,
      I4 => cur_dtype_pxls,
      O => \s_fifo_td[63]_i_1_n_0\
    );
\s_fifo_td[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \^q\(7),
      I4 => \^q\(10),
      I5 => \^q\(5),
      O => \s_fifo_td[63]_i_2_n_0\
    );
\s_fifo_td_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(0),
      Q => \s_fifo_td_reg[63]_0\(0),
      R => \^sr\(0)
    );
\s_fifo_td_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(10),
      Q => \s_fifo_td_reg[63]_0\(10),
      R => \^sr\(0)
    );
\s_fifo_td_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(11),
      Q => \s_fifo_td_reg[63]_0\(11),
      R => \^sr\(0)
    );
\s_fifo_td_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(12),
      Q => \s_fifo_td_reg[63]_0\(12),
      R => \^sr\(0)
    );
\s_fifo_td_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(13),
      Q => \s_fifo_td_reg[63]_0\(13),
      R => \^sr\(0)
    );
\s_fifo_td_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(14),
      Q => \s_fifo_td_reg[63]_0\(14),
      R => \^sr\(0)
    );
\s_fifo_td_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(15),
      Q => \s_fifo_td_reg[63]_0\(15),
      R => \^sr\(0)
    );
\s_fifo_td_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(12),
      Q => \s_fifo_td_reg[63]_0\(16),
      R => \^sr\(0)
    );
\s_fifo_td_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(13),
      Q => \s_fifo_td_reg[63]_0\(17),
      R => \^sr\(0)
    );
\s_fifo_td_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(14),
      Q => \s_fifo_td_reg[63]_0\(18),
      R => \^sr\(0)
    );
\s_fifo_td_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(15),
      Q => \s_fifo_td_reg[63]_0\(19),
      R => \^sr\(0)
    );
\s_fifo_td_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(1),
      Q => \s_fifo_td_reg[63]_0\(1),
      R => \^sr\(0)
    );
\s_fifo_td_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(16),
      Q => \s_fifo_td_reg[63]_0\(20),
      R => \^sr\(0)
    );
\s_fifo_td_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(17),
      Q => \s_fifo_td_reg[63]_0\(21),
      R => \^sr\(0)
    );
\s_fifo_td_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(18),
      Q => \s_fifo_td_reg[63]_0\(22),
      R => \^sr\(0)
    );
\s_fifo_td_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(19),
      Q => \s_fifo_td_reg[63]_0\(23),
      R => \^sr\(0)
    );
\s_fifo_td_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(24),
      Q => \s_fifo_td_reg[63]_0\(24),
      R => \^sr\(0)
    );
\s_fifo_td_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(25),
      Q => \s_fifo_td_reg[63]_0\(25),
      R => \^sr\(0)
    );
\s_fifo_td_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(26),
      Q => \s_fifo_td_reg[63]_0\(26),
      R => \^sr\(0)
    );
\s_fifo_td_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(27),
      Q => \s_fifo_td_reg[63]_0\(27),
      R => \^sr\(0)
    );
\s_fifo_td_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(28),
      Q => \s_fifo_td_reg[63]_0\(28),
      R => \^sr\(0)
    );
\s_fifo_td_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(29),
      Q => \s_fifo_td_reg[63]_0\(29),
      R => \^sr\(0)
    );
\s_fifo_td_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(2),
      Q => \s_fifo_td_reg[63]_0\(2),
      R => \^sr\(0)
    );
\s_fifo_td_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(30),
      Q => \s_fifo_td_reg[63]_0\(30),
      R => \^sr\(0)
    );
\s_fifo_td_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(31),
      Q => \s_fifo_td_reg[63]_0\(31),
      R => \^sr\(0)
    );
\s_fifo_td_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(32),
      Q => \s_fifo_td_reg[63]_0\(32),
      R => \^sr\(0)
    );
\s_fifo_td_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(33),
      Q => \s_fifo_td_reg[63]_0\(33),
      R => \^sr\(0)
    );
\s_fifo_td_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(34),
      Q => \s_fifo_td_reg[63]_0\(34),
      R => \^sr\(0)
    );
\s_fifo_td_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(35),
      Q => \s_fifo_td_reg[63]_0\(35),
      R => \^sr\(0)
    );
\s_fifo_td_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(36),
      Q => \s_fifo_td_reg[63]_0\(36),
      R => \^sr\(0)
    );
\s_fifo_td_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(37),
      Q => \s_fifo_td_reg[63]_0\(37),
      R => \^sr\(0)
    );
\s_fifo_td_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(38),
      Q => \s_fifo_td_reg[63]_0\(38),
      R => \^sr\(0)
    );
\s_fifo_td_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(39),
      Q => \s_fifo_td_reg[63]_0\(39),
      R => \^sr\(0)
    );
\s_fifo_td_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(3),
      Q => \s_fifo_td_reg[63]_0\(3),
      R => \^sr\(0)
    );
\s_fifo_td_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(40),
      Q => \s_fifo_td_reg[63]_0\(40),
      R => \^sr\(0)
    );
\s_fifo_td_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(41),
      Q => \s_fifo_td_reg[63]_0\(41),
      R => \^sr\(0)
    );
\s_fifo_td_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(42),
      Q => \s_fifo_td_reg[63]_0\(42),
      R => \^sr\(0)
    );
\s_fifo_td_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(43),
      Q => \s_fifo_td_reg[63]_0\(43),
      R => \^sr\(0)
    );
\s_fifo_td_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(44),
      Q => \s_fifo_td_reg[63]_0\(44),
      R => \^sr\(0)
    );
\s_fifo_td_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(45),
      Q => \s_fifo_td_reg[63]_0\(45),
      R => \^sr\(0)
    );
\s_fifo_td_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(46),
      Q => \s_fifo_td_reg[63]_0\(46),
      R => \^sr\(0)
    );
\s_fifo_td_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(47),
      Q => \s_fifo_td_reg[63]_0\(47),
      R => \^sr\(0)
    );
\s_fifo_td_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(48),
      Q => \s_fifo_td_reg[63]_0\(48),
      R => \^sr\(0)
    );
\s_fifo_td_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(49),
      Q => \s_fifo_td_reg[63]_0\(49),
      R => \^sr\(0)
    );
\s_fifo_td_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(4),
      Q => \s_fifo_td_reg[63]_0\(4),
      R => \^sr\(0)
    );
\s_fifo_td_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(50),
      Q => \s_fifo_td_reg[63]_0\(50),
      R => \^sr\(0)
    );
\s_fifo_td_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(51),
      Q => \s_fifo_td_reg[63]_0\(51),
      R => \^sr\(0)
    );
\s_fifo_td_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(52),
      Q => \s_fifo_td_reg[63]_0\(52),
      R => \^sr\(0)
    );
\s_fifo_td_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(53),
      Q => \s_fifo_td_reg[63]_0\(53),
      R => \^sr\(0)
    );
\s_fifo_td_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(54),
      Q => \s_fifo_td_reg[63]_0\(54),
      R => \^sr\(0)
    );
\s_fifo_td_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(55),
      Q => \s_fifo_td_reg[63]_0\(55),
      R => \^sr\(0)
    );
\s_fifo_td_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(56),
      Q => \s_fifo_td_reg[63]_0\(56),
      R => \^sr\(0)
    );
\s_fifo_td_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(57),
      Q => \s_fifo_td_reg[63]_0\(57),
      R => \^sr\(0)
    );
\s_fifo_td_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(58),
      Q => \s_fifo_td_reg[63]_0\(58),
      R => \^sr\(0)
    );
\s_fifo_td_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(59),
      Q => \s_fifo_td_reg[63]_0\(59),
      R => \^sr\(0)
    );
\s_fifo_td_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(5),
      Q => \s_fifo_td_reg[63]_0\(5),
      R => \^sr\(0)
    );
\s_fifo_td_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(60),
      Q => \s_fifo_td_reg[63]_0\(60),
      R => \^sr\(0)
    );
\s_fifo_td_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(61),
      Q => \s_fifo_td_reg[63]_0\(61),
      R => \^sr\(0)
    );
\s_fifo_td_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(62),
      Q => \s_fifo_td_reg[63]_0\(62),
      R => \^sr\(0)
    );
\s_fifo_td_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(63),
      Q => \s_fifo_td_reg[63]_0\(63),
      R => \^sr\(0)
    );
\s_fifo_td_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(6),
      Q => \s_fifo_td_reg[63]_0\(6),
      R => \^sr\(0)
    );
\s_fifo_td_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(7),
      Q => \s_fifo_td_reg[63]_0\(7),
      R => \^sr\(0)
    );
\s_fifo_td_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(8),
      Q => \s_fifo_td_reg[63]_0\(8),
      R => \^sr\(0)
    );
\s_fifo_td_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_td(9),
      Q => \s_fifo_td_reg[63]_0\(9),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(0),
      Q => \s_fifo_tid_reg[25]_0\(0),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(0),
      Q => \s_fifo_tid_reg[25]_0\(10),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(1),
      Q => \s_fifo_tid_reg[25]_0\(11),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(2),
      Q => \s_fifo_tid_reg[25]_0\(12),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(3),
      Q => \s_fifo_tid_reg[25]_0\(13),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(4),
      Q => \s_fifo_tid_reg[25]_0\(14),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(5),
      Q => \s_fifo_tid_reg[25]_0\(15),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(6),
      Q => \s_fifo_tid_reg[25]_0\(16),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(7),
      Q => \s_fifo_tid_reg[25]_0\(17),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(8),
      Q => \s_fifo_tid_reg[25]_0\(18),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(9),
      Q => \s_fifo_tid_reg[25]_0\(19),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(1),
      Q => \s_fifo_tid_reg[25]_0\(1),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(10),
      Q => \s_fifo_tid_reg[25]_0\(20),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(11),
      Q => \s_fifo_tid_reg[25]_0\(21),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(12),
      Q => \s_fifo_tid_reg[25]_0\(22),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(13),
      Q => \s_fifo_tid_reg[25]_0\(23),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(14),
      Q => \s_fifo_tid_reg[25]_0\(24),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => frmnum(15),
      Q => \s_fifo_tid_reg[25]_0\(25),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(2),
      Q => \s_fifo_tid_reg[25]_0\(2),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(3),
      Q => \s_fifo_tid_reg[25]_0\(3),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(5),
      Q => \s_fifo_tid_reg[25]_0\(4),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(6),
      Q => \s_fifo_tid_reg[25]_0\(5),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(7),
      Q => \s_fifo_tid_reg[25]_0\(6),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(8),
      Q => \s_fifo_tid_reg[25]_0\(7),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(9),
      Q => \s_fifo_tid_reg[25]_0\(8),
      R => \^sr\(0)
    );
\s_fifo_tid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(10),
      Q => \s_fifo_tid_reg[25]_0\(9),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(0),
      Q => \s_fifo_tk_reg[7]_0\(0),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(1),
      Q => \s_fifo_tk_reg[7]_0\(1),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(2),
      Q => \s_fifo_tk_reg[7]_0\(2),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => \^q\(11),
      Q => \s_fifo_tk_reg[7]_0\(3),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(4),
      Q => \s_fifo_tk_reg[7]_0\(4),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(5),
      Q => \s_fifo_tk_reg[7]_0\(5),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(6),
      Q => \s_fifo_tk_reg[7]_0\(6),
      R => \^sr\(0)
    );
\s_fifo_tk_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tk(7),
      Q => \s_fifo_tk_reg[7]_0\(7),
      R => \^sr\(0)
    );
s_fifo_tl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACA00C000000000"
    )
        port map (
      I0 => fifo_tv,
      I1 => \^s_axis_tlast\,
      I2 => \^s_fifo_tv\,
      I3 => s_axis_tready,
      I4 => \^fifo_tl\,
      I5 => s_axis_aresetn,
      O => s_fifo_tl_i_1_n_0
    );
s_fifo_tl_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => s_fifo_tl_i_1_n_0,
      Q => \^s_axis_tlast\,
      R => '0'
    );
\s_fifo_tu[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \buf_valid_reg[0]_0\,
      I1 => \^q\(4),
      I2 => fifo_tv,
      O => fifo_tu
    );
\s_fifo_tu[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cur_dtype_pxls,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \s_fifo_td[63]_i_2_n_0\,
      O => fifo_tv
    );
\s_fifo_tu_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \s_fifo_td[63]_i_1_n_0\,
      D => fifo_tu,
      Q => s_axis_tuser(0),
      R => \^sr\(0)
    );
s_fifo_tv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222222200000000"
    )
        port map (
      I0 => \^s_fifo_tv\,
      I1 => s_axis_tready,
      I2 => \s_fifo_td[63]_i_2_n_0\,
      I3 => \buf_valid_reg_n_0_[0]\,
      I4 => cur_dtype_pxls,
      I5 => s_axis_aresetn,
      O => s_fifo_tv_i_1_n_0
    );
s_fifo_tv_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => s_fifo_tv_i_1_n_0,
      Q => \^s_fifo_tv\,
      R => '0'
    );
\sband_td_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(24),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(0),
      O => \buf_data_reg[0][171]_0\(0)
    );
\sband_td_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(2),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(10),
      O => \buf_data_reg[0][171]_0\(10)
    );
\sband_td_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(3),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(11),
      O => \buf_data_reg[0][171]_0\(11)
    );
\sband_td_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(4),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(12),
      O => \buf_data_reg[0][171]_0\(12)
    );
\sband_td_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(5),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(13),
      O => \buf_data_reg[0][171]_0\(13)
    );
\sband_td_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(6),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(14),
      O => \buf_data_reg[0][171]_0\(14)
    );
\sband_td_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(7),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(15),
      O => \buf_data_reg[0][171]_0\(15)
    );
\sband_td_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(8),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(16),
      O => \buf_data_reg[0][171]_0\(16)
    );
\sband_td_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(9),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(17),
      O => \buf_data_reg[0][171]_0\(17)
    );
\sband_td_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(10),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(18),
      O => \buf_data_reg[0][171]_0\(18)
    );
\sband_td_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(11),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(19),
      O => \buf_data_reg[0][171]_0\(19)
    );
\sband_td_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(25),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(1),
      O => \buf_data_reg[0][171]_0\(1)
    );
\sband_td_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(12),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(20),
      O => \buf_data_reg[0][171]_0\(20)
    );
\sband_td_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(13),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(21),
      O => \buf_data_reg[0][171]_0\(21)
    );
\sband_td_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(14),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(22),
      O => \buf_data_reg[0][171]_0\(22)
    );
\sband_td_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(15),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(23),
      O => \buf_data_reg[0][171]_0\(23)
    );
\sband_td_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(48),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(24),
      O => \buf_data_reg[0][171]_0\(24)
    );
\sband_td_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(49),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(25),
      O => \buf_data_reg[0][171]_0\(25)
    );
\sband_td_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(50),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(26),
      O => \buf_data_reg[0][171]_0\(26)
    );
\sband_td_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(51),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(27),
      O => \buf_data_reg[0][171]_0\(27)
    );
\sband_td_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(52),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(28),
      O => \buf_data_reg[0][171]_0\(28)
    );
\sband_td_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(53),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(29),
      O => \buf_data_reg[0][171]_0\(29)
    );
\sband_td_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(26),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(2),
      O => \buf_data_reg[0][171]_0\(2)
    );
\sband_td_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(54),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(30),
      O => \buf_data_reg[0][171]_0\(30)
    );
\sband_td_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(55),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(31),
      O => \buf_data_reg[0][171]_0\(31)
    );
\sband_td_r[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(56),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(32),
      O => \buf_data_reg[0][171]_0\(32)
    );
\sband_td_r[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(57),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(33),
      O => \buf_data_reg[0][171]_0\(33)
    );
\sband_td_r[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(58),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(34),
      O => \buf_data_reg[0][171]_0\(34)
    );
\sband_td_r[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(59),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(35),
      O => \buf_data_reg[0][171]_0\(35)
    );
\sband_td_r[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(60),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(36),
      O => \buf_data_reg[0][171]_0\(36)
    );
\sband_td_r[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(61),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(37),
      O => \buf_data_reg[0][171]_0\(37)
    );
\sband_td_r[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(62),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(38),
      O => \buf_data_reg[0][171]_0\(38)
    );
\sband_td_r[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(63),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(39),
      O => \buf_data_reg[0][171]_0\(39)
    );
\sband_td_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(27),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(3),
      O => \buf_data_reg[0][171]_0\(3)
    );
\sband_td_r[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(32),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(40),
      O => \buf_data_reg[0][171]_0\(40)
    );
\sband_td_r[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(33),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(41),
      O => \buf_data_reg[0][171]_0\(41)
    );
\sband_td_r[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(34),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(42),
      O => \buf_data_reg[0][171]_0\(42)
    );
\sband_td_r[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(35),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(43),
      O => \buf_data_reg[0][171]_0\(43)
    );
\sband_td_r[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(36),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(44),
      O => \buf_data_reg[0][171]_0\(44)
    );
\sband_td_r[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(37),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(45),
      O => \buf_data_reg[0][171]_0\(45)
    );
\sband_td_r[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(38),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(46),
      O => \buf_data_reg[0][171]_0\(46)
    );
\sband_td_r[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(39),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(47),
      O => \buf_data_reg[0][171]_0\(47)
    );
\sband_td_r[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(40),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(48)
    );
\sband_td_r[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(41),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(49)
    );
\sband_td_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(28),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(4),
      O => \buf_data_reg[0][171]_0\(4)
    );
\sband_td_r[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(42),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(50)
    );
\sband_td_r[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(43),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(51)
    );
\sband_td_r[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(44),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(52)
    );
\sband_td_r[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(45),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(53)
    );
\sband_td_r[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(46),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(54)
    );
\sband_td_r[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_td(47),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][171]_0\(55)
    );
\sband_td_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(29),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(5),
      O => \buf_data_reg[0][171]_0\(5)
    );
\sband_td_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(30),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(6),
      O => \buf_data_reg[0][171]_0\(6)
    );
\sband_td_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(31),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(7),
      O => \buf_data_reg[0][171]_0\(7)
    );
\sband_td_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(0),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(8),
      O => \buf_data_reg[0][171]_0\(8)
    );
\sband_td_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_td(1),
      I1 => \^sband_tact0\,
      I2 => \sband_td_r_reg[47]\(9),
      O => \buf_data_reg[0][171]_0\(9)
    );
\sband_tk_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tk(0),
      I1 => \^sband_tact0\,
      I2 => \sband_tk_r_reg[5]\(0),
      O => \buf_data_reg[0][107]_0\(0)
    );
\sband_tk_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tk(1),
      I1 => \^sband_tact0\,
      I2 => \sband_tk_r_reg[5]\(1),
      O => \buf_data_reg[0][107]_0\(1)
    );
\sband_tk_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tk(6),
      I1 => \^sband_tact0\,
      I2 => \sband_tk_r_reg[5]\(2),
      O => \buf_data_reg[0][107]_0\(2)
    );
\sband_tk_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tk(7),
      I1 => \^sband_tact0\,
      I2 => \sband_tk_r_reg[5]\(3),
      O => \buf_data_reg[0][107]_0\(3)
    );
\sband_tk_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_tk(4),
      I1 => \^sband_tact0\,
      I2 => \sband_tk_r_reg[5]\(4),
      O => \buf_data_reg[0][107]_0\(4)
    );
\sband_tk_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^sband_tact0\,
      I1 => vfb_ready,
      I2 => \sband_td_r_reg[0]\,
      O => E(0)
    );
\sband_tk_r[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_tk(5),
      I1 => \^sband_tact0\,
      O => \buf_data_reg[0][107]_0\(5)
    );
sband_tl_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => sdt_tv_INST_0_i_1_n_0,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \^cur_dtype_udef\,
      I3 => mdt_tv,
      I4 => sband_tl_r_reg,
      I5 => sband_tl_r_reg_0,
      O => \^sband_tact0\
    );
sband_tl_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800000080"
    )
        port map (
      I0 => s_axis_tlast_0,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => \^cur_dtype_udef\,
      I3 => sband_tl_r_reg_0,
      I4 => sband_tl_r_reg_1,
      I5 => \^cur_dtype_sink_reg_0\,
      O => \^fifo_tl\
    );
sband_tl_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => cur_dtype_sink_reg_n_0,
      I1 => \^s_fifo_tv\,
      I2 => s_axis_tready,
      I3 => cur_dtype_pxls,
      O => \^cur_dtype_sink_reg_0\
    );
\sband_tu_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^cur_dtype_udef\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => sdt_tv_INST_0_i_1_n_0,
      I3 => \buf_valid_reg[0]_0\,
      I4 => \^q\(4),
      O => sband_tu
    );
sdt_tv_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^cur_dtype_udef\,
      I1 => \buf_valid_reg_n_0_[0]\,
      I2 => sdt_tv_INST_0_i_1_n_0,
      O => sdt_tv
    );
sdt_tv_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => \^q\(9),
      I5 => \^q\(10),
      O => sdt_tv_INST_0_i_1_n_0
    );
vfb_valid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_17_axis_dwidth_converter";
end bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter;

architecture STRUCTURE of bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter is
  signal areset_r : STD_LOGIC;
  signal areset_r_i_1_n_0 : STD_LOGIC;
begin
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => areset_r_i_1_n_0
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => areset_r_i_1_n_0,
      Q => areset_r,
      R => '0'
    );
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axisc_downsizer
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => areset_r,
      aclk => aclk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tid(31 downto 0) => m_axis_tid(31 downto 0),
      m_axis_tkeep(1 downto 0) => m_axis_tkeep(1 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser(5 downto 0) => m_axis_tuser(5 downto 0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tid(31 downto 0) => s_axis_tid(31 downto 0),
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser(23 downto 0) => s_axis_tuser(23 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter : entity is "bd_22c6_vfb_0_0_axis_converter,axis_dwidth_converter_v1_1_17_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter : entity is "bd_22c6_vfb_0_0_axis_converter";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter : entity is "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3";
end bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter;

architecture STRUCTURE of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.bd_22c6_vfb_0_0_axis_dwidth_converter_v1_1_17_axis_dwidth_converter
     port map (
      Q(1) => m_axis_tvalid,
      Q(0) => s_axis_tready,
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tid(31 downto 0) => m_axis_tid(31 downto 0),
      m_axis_tkeep(1 downto 0) => m_axis_tkeep(1 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser(5 downto 0) => m_axis_tuser(5 downto 0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tid(31 downto 0) => s_axis_tid(31 downto 0),
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser(23 downto 0) => s_axis_tuser(23 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter is
  port (
    s_axis_tready : out STD_LOGIC;
    mdt_tv : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[1]_1\ : out STD_LOGIC;
    vfb_clk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_fifo_tv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \r0_keep_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    \r0_id_reg[25]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    mdt_tr : in STD_LOGIC;
    sband_tu_r : in STD_LOGIC;
    sband_tact0 : in STD_LOGIC;
    \vfb_data_reg[15]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \vfb_sof_reg[0]\ : in STD_LOGIC;
    \vfb_vcdt_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \vfb_data_reg[15]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \vfb_data_reg[15]_1\ : in STD_LOGIC;
    sband_tl_r_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter : entity is "bd_22c6_vfb_0_0_axis_dconverter";
end bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter;

architecture STRUCTURE of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter is
  signal m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_tid : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m_axis_tkeep : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_axis_tuser : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^mdt_tv\ : STD_LOGIC;
  signal NLW_axis_conv_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_conv_inst : label is "bd_22c6_vfb_0_0_axis_converter,axis_dwidth_converter_v1_1_17_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_conv_inst : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_conv_inst : label is "axis_dwidth_converter_v1_1_17_axis_dwidth_converter,Vivado 2018.3";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sband_tl_r_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vfb_data[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vfb_data[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vfb_data[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vfb_data[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vfb_data[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vfb_data[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vfb_data[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vfb_data[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vfb_vcdt[9]_i_2\ : label is "soft_lutpair1";
begin
  mdt_tv <= \^mdt_tv\;
axis_conv_inst: entity work.bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_converter
     port map (
      aclk => vfb_clk,
      aresetn => s_axis_aresetn,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tid(31 downto 0) => m_axis_tid(31 downto 0),
      m_axis_tkeep(1 downto 0) => m_axis_tkeep(1 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => mdt_tr,
      m_axis_tuser(5 downto 3) => NLW_axis_conv_inst_m_axis_tuser_UNCONNECTED(5 downto 3),
      m_axis_tuser(2 downto 0) => m_axis_tuser(2 downto 0),
      m_axis_tvalid => \^mdt_tv\,
      s_axis_tdata(63 downto 0) => Q(63 downto 0),
      s_axis_tid(31 downto 26) => B"000000",
      s_axis_tid(25 downto 0) => \r0_id_reg[25]\(25 downto 0),
      s_axis_tkeep(7 downto 0) => \r0_keep_reg[7]\(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(23 downto 22) => B"00",
      s_axis_tuser(21) => s_axis_tuser(0),
      s_axis_tuser(20 downto 19) => B"00",
      s_axis_tuser(18) => s_axis_tuser(0),
      s_axis_tuser(17 downto 16) => B"00",
      s_axis_tuser(15) => s_axis_tuser(0),
      s_axis_tuser(14 downto 13) => B"00",
      s_axis_tuser(12) => s_axis_tuser(0),
      s_axis_tuser(11 downto 10) => B"00",
      s_axis_tuser(9) => s_axis_tuser(0),
      s_axis_tuser(8 downto 7) => B"00",
      s_axis_tuser(6) => s_axis_tuser(0),
      s_axis_tuser(5 downto 4) => B"00",
      s_axis_tuser(3) => s_axis_tuser(0),
      s_axis_tuser(2 downto 1) => B"00",
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_fifo_tv
    );
sband_tl_r_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => sband_tl_r_reg,
      O => \state_reg[1]_1\
    );
\vfb_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(0),
      O => \state_reg[1]_0\(0)
    );
\vfb_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(10),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(12),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(2),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(10)
    );
\vfb_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(11),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(13),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(3),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(11)
    );
\vfb_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(12),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(14),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(4),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(12)
    );
\vfb_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(13),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(15),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(5),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(13)
    );
\vfb_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(14),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(16),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(6),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(14)
    );
\vfb_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(15),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(17),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(7),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(15)
    );
\vfb_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(1),
      O => \state_reg[1]_0\(1)
    );
\vfb_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(2),
      O => \state_reg[1]_0\(2)
    );
\vfb_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(3),
      O => \state_reg[1]_0\(3)
    );
\vfb_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(4),
      O => \state_reg[1]_0\(4)
    );
\vfb_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(5),
      O => \state_reg[1]_0\(5)
    );
\vfb_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(6),
      O => \state_reg[1]_0\(6)
    );
\vfb_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mdt_tv\,
      I1 => m_axis_tdata(7),
      O => \state_reg[1]_0\(7)
    );
\vfb_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(8),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(10),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(0),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(8)
    );
\vfb_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => m_axis_tdata(9),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(11),
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]_0\(1),
      I5 => \vfb_data_reg[15]_1\,
      O => \state_reg[1]_0\(9)
    );
\vfb_sof[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => m_axis_tuser(0),
      I1 => \^mdt_tv\,
      I2 => sband_tu_r,
      I3 => sband_tact0,
      I4 => \vfb_data_reg[15]\(4),
      I5 => \vfb_sof_reg[0]\,
      O => \state_reg[1]\
    );
\vfb_vcdt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(0),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(0),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(0),
      O => D(0)
    );
\vfb_vcdt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(1),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(1),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(1),
      O => D(1)
    );
\vfb_vcdt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(2),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(2),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(2),
      O => D(2)
    );
\vfb_vcdt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(3),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(3),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(3),
      O => D(3)
    );
\vfb_vcdt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(4),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(5),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(4),
      O => D(4)
    );
\vfb_vcdt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(5),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(6),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(5),
      O => D(5)
    );
\vfb_vcdt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(6),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(7),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(6),
      O => D(6)
    );
\vfb_vcdt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(7),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(8),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(7),
      O => D(7)
    );
\vfb_vcdt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => m_axis_tid(8),
      I1 => \^mdt_tv\,
      I2 => \vfb_data_reg[15]\(9),
      I3 => sband_tact0,
      I4 => \vfb_vcdt_reg[9]\(8),
      O => D(8)
    );
\vfb_vcdt[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => m_axis_tid(9),
      I1 => \^mdt_tv\,
      I2 => \vfb_vcdt_reg[9]\(9),
      I3 => sband_tact0,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core is
  port (
    vfb_valid_reg : out STD_LOGIC;
    vfb_eol_reg : out STD_LOGIC;
    mdt_tv : out STD_LOGIC;
    mdt_tr : out STD_LOGIC;
    vfb_vcdt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vfb_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tready : out STD_LOGIC;
    sdt_tv : out STD_LOGIC;
    sdt_tr : out STD_LOGIC;
    vfb_sof : out STD_LOGIC_VECTOR ( 0 to 0 );
    vfb_ready : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 99 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    vfb_clk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core : entity is "bd_22c6_vfb_0_0_core";
end bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core;

architecture STRUCTURE of bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core is
  signal axis_dconverter_n_14 : STD_LOGIC;
  signal axis_dconverter_n_15 : STD_LOGIC;
  signal axis_dconverter_n_16 : STD_LOGIC;
  signal axis_dconverter_n_17 : STD_LOGIC;
  signal axis_dconverter_n_18 : STD_LOGIC;
  signal axis_dconverter_n_19 : STD_LOGIC;
  signal axis_dconverter_n_20 : STD_LOGIC;
  signal axis_dconverter_n_21 : STD_LOGIC;
  signal axis_dconverter_n_22 : STD_LOGIC;
  signal axis_dconverter_n_23 : STD_LOGIC;
  signal axis_dconverter_n_24 : STD_LOGIC;
  signal axis_dconverter_n_25 : STD_LOGIC;
  signal axis_dconverter_n_26 : STD_LOGIC;
  signal axis_dconverter_n_27 : STD_LOGIC;
  signal axis_dconverter_n_28 : STD_LOGIC;
  signal axis_dconverter_n_29 : STD_LOGIC;
  signal axis_dconverter_n_3 : STD_LOGIC;
  signal axis_dconverter_n_30 : STD_LOGIC;
  signal cur_dtype_udef : STD_LOGIC;
  signal fifo_td : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal fifo_tl : STD_LOGIC;
  signal m_axis_tlast : STD_LOGIC;
  signal \^mdt_tr\ : STD_LOGIC;
  signal \^mdt_tv\ : STD_LOGIC;
  signal op_inf_n_10 : STD_LOGIC;
  signal op_inf_n_11 : STD_LOGIC;
  signal op_inf_n_12 : STD_LOGIC;
  signal op_inf_n_13 : STD_LOGIC;
  signal op_inf_n_14 : STD_LOGIC;
  signal op_inf_n_35 : STD_LOGIC;
  signal op_inf_n_36 : STD_LOGIC;
  signal op_inf_n_37 : STD_LOGIC;
  signal op_inf_n_38 : STD_LOGIC;
  signal op_inf_n_39 : STD_LOGIC;
  signal op_inf_n_4 : STD_LOGIC;
  signal op_inf_n_40 : STD_LOGIC;
  signal op_inf_n_41 : STD_LOGIC;
  signal op_inf_n_42 : STD_LOGIC;
  signal op_inf_n_43 : STD_LOGIC;
  signal op_inf_n_44 : STD_LOGIC;
  signal op_inf_n_45 : STD_LOGIC;
  signal op_inf_n_46 : STD_LOGIC;
  signal op_inf_n_47 : STD_LOGIC;
  signal op_inf_n_48 : STD_LOGIC;
  signal op_inf_n_49 : STD_LOGIC;
  signal op_inf_n_5 : STD_LOGIC;
  signal op_inf_n_50 : STD_LOGIC;
  signal op_inf_n_51 : STD_LOGIC;
  signal op_inf_n_52 : STD_LOGIC;
  signal op_inf_n_53 : STD_LOGIC;
  signal op_inf_n_54 : STD_LOGIC;
  signal op_inf_n_55 : STD_LOGIC;
  signal op_inf_n_56 : STD_LOGIC;
  signal op_inf_n_57 : STD_LOGIC;
  signal op_inf_n_58 : STD_LOGIC;
  signal op_inf_n_59 : STD_LOGIC;
  signal op_inf_n_60 : STD_LOGIC;
  signal op_inf_n_61 : STD_LOGIC;
  signal op_inf_n_62 : STD_LOGIC;
  signal op_inf_n_63 : STD_LOGIC;
  signal op_inf_n_64 : STD_LOGIC;
  signal op_inf_n_65 : STD_LOGIC;
  signal op_inf_n_66 : STD_LOGIC;
  signal op_inf_n_67 : STD_LOGIC;
  signal op_inf_n_68 : STD_LOGIC;
  signal op_inf_n_69 : STD_LOGIC;
  signal op_inf_n_7 : STD_LOGIC;
  signal op_inf_n_70 : STD_LOGIC;
  signal op_inf_n_71 : STD_LOGIC;
  signal op_inf_n_72 : STD_LOGIC;
  signal op_inf_n_73 : STD_LOGIC;
  signal op_inf_n_74 : STD_LOGIC;
  signal op_inf_n_75 : STD_LOGIC;
  signal op_inf_n_76 : STD_LOGIC;
  signal op_inf_n_77 : STD_LOGIC;
  signal op_inf_n_78 : STD_LOGIC;
  signal op_inf_n_79 : STD_LOGIC;
  signal op_inf_n_8 : STD_LOGIC;
  signal op_inf_n_80 : STD_LOGIC;
  signal op_inf_n_81 : STD_LOGIC;
  signal op_inf_n_82 : STD_LOGIC;
  signal op_inf_n_83 : STD_LOGIC;
  signal op_inf_n_84 : STD_LOGIC;
  signal op_inf_n_85 : STD_LOGIC;
  signal op_inf_n_86 : STD_LOGIC;
  signal op_inf_n_87 : STD_LOGIC;
  signal op_inf_n_88 : STD_LOGIC;
  signal op_inf_n_89 : STD_LOGIC;
  signal op_inf_n_90 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reorder_n_1 : STD_LOGIC;
  signal reorder_n_23 : STD_LOGIC;
  signal reorder_n_5 : STD_LOGIC;
  signal reorder_n_93 : STD_LOGIC;
  signal s_fifo_td : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_fifo_tid : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal s_fifo_tk : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_fifo_tl : STD_LOGIC;
  signal s_fifo_tr : STD_LOGIC;
  signal s_fifo_tu : STD_LOGIC_VECTOR ( 21 to 21 );
  signal s_fifo_tv : STD_LOGIC;
  signal sband_tact0 : STD_LOGIC;
  signal sband_td_r : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal sband_tk : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sband_tk_r : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal sband_ts : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sband_ts_0 : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal sband_ts_r : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sband_tu : STD_LOGIC;
  signal sband_tu_r : STD_LOGIC;
  signal \^vfb_eol_reg\ : STD_LOGIC;
  signal \^vfb_valid_reg\ : STD_LOGIC;
begin
  mdt_tr <= \^mdt_tr\;
  mdt_tv <= \^mdt_tv\;
  vfb_eol_reg <= \^vfb_eol_reg\;
  vfb_valid_reg <= \^vfb_valid_reg\;
axis_dconverter: entity work.bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_axis_dconverter
     port map (
      D(9 downto 0) => p_1_in(9 downto 0),
      Q(63 downto 0) => s_fifo_td(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      mdt_tr => \^mdt_tr\,
      mdt_tv => \^mdt_tv\,
      \r0_id_reg[25]\(25 downto 0) => s_fifo_tid(25 downto 0),
      \r0_keep_reg[7]\(7 downto 0) => s_fifo_tk(7 downto 0),
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tlast => s_fifo_tl,
      s_axis_tready => s_fifo_tr,
      s_axis_tuser(0) => s_fifo_tu(21),
      s_fifo_tv => s_fifo_tv,
      sband_tact0 => sband_tact0,
      sband_tl_r_reg => \^vfb_eol_reg\,
      sband_tu_r => sband_tu_r,
      \state_reg[1]\ => axis_dconverter_n_3,
      \state_reg[1]_0\(15) => axis_dconverter_n_14,
      \state_reg[1]_0\(14) => axis_dconverter_n_15,
      \state_reg[1]_0\(13) => axis_dconverter_n_16,
      \state_reg[1]_0\(12) => axis_dconverter_n_17,
      \state_reg[1]_0\(11) => axis_dconverter_n_18,
      \state_reg[1]_0\(10) => axis_dconverter_n_19,
      \state_reg[1]_0\(9) => axis_dconverter_n_20,
      \state_reg[1]_0\(8) => axis_dconverter_n_21,
      \state_reg[1]_0\(7) => axis_dconverter_n_22,
      \state_reg[1]_0\(6) => axis_dconverter_n_23,
      \state_reg[1]_0\(5) => axis_dconverter_n_24,
      \state_reg[1]_0\(4) => axis_dconverter_n_25,
      \state_reg[1]_0\(3) => axis_dconverter_n_26,
      \state_reg[1]_0\(2) => axis_dconverter_n_27,
      \state_reg[1]_0\(1) => axis_dconverter_n_28,
      \state_reg[1]_0\(0) => axis_dconverter_n_29,
      \state_reg[1]_1\ => axis_dconverter_n_30,
      vfb_clk => vfb_clk,
      \vfb_data_reg[15]\(17 downto 10) => fifo_td(23 downto 16),
      \vfb_data_reg[15]\(9 downto 5) => sband_ts_0(8 downto 4),
      \vfb_data_reg[15]\(4) => reorder_n_23,
      \vfb_data_reg[15]\(3 downto 0) => sband_ts(3 downto 0),
      \vfb_data_reg[15]_0\(7) => op_inf_n_83,
      \vfb_data_reg[15]_0\(6) => op_inf_n_84,
      \vfb_data_reg[15]_0\(5) => op_inf_n_85,
      \vfb_data_reg[15]_0\(4) => op_inf_n_86,
      \vfb_data_reg[15]_0\(3) => op_inf_n_87,
      \vfb_data_reg[15]_0\(2) => op_inf_n_88,
      \vfb_data_reg[15]_0\(1) => op_inf_n_89,
      \vfb_data_reg[15]_0\(0) => op_inf_n_90,
      \vfb_data_reg[15]_1\ => op_inf_n_4,
      \vfb_sof_reg[0]\ => op_inf_n_7,
      \vfb_vcdt_reg[9]\(9 downto 0) => sband_ts_r(9 downto 0)
    );
op_inf: entity work.bd_22c6_vfb_0_0_vfb_v1_0_12_op_inf
     port map (
      D(5 downto 0) => sband_tk_r(6 downto 1),
      E(0) => reorder_n_5,
      Q(10) => sband_tk(1),
      Q(9 downto 4) => sband_ts_0(9 downto 4),
      Q(3 downto 0) => sband_ts(3 downto 0),
      SR(0) => reorder_n_1,
      \buf_valid_reg[0]\ => reorder_n_93,
      cur_dtype_udef => cur_dtype_udef,
      cur_dtype_udef_reg => op_inf_n_5,
      fifo_tl => fifo_tl,
      m_axis_tlast => m_axis_tlast,
      mdt_tr => \^mdt_tr\,
      mdt_tv => \^mdt_tv\,
      s_axis_aresetn => s_axis_aresetn,
      sband_tact0 => sband_tact0,
      sband_tact_reg_0 => op_inf_n_4,
      \sband_td_r_reg[55]_0\(55) => op_inf_n_35,
      \sband_td_r_reg[55]_0\(54) => op_inf_n_36,
      \sband_td_r_reg[55]_0\(53) => op_inf_n_37,
      \sband_td_r_reg[55]_0\(52) => op_inf_n_38,
      \sband_td_r_reg[55]_0\(51) => op_inf_n_39,
      \sband_td_r_reg[55]_0\(50) => op_inf_n_40,
      \sband_td_r_reg[55]_0\(49) => op_inf_n_41,
      \sband_td_r_reg[55]_0\(48) => op_inf_n_42,
      \sband_td_r_reg[55]_0\(47) => op_inf_n_43,
      \sband_td_r_reg[55]_0\(46) => op_inf_n_44,
      \sband_td_r_reg[55]_0\(45) => op_inf_n_45,
      \sband_td_r_reg[55]_0\(44) => op_inf_n_46,
      \sband_td_r_reg[55]_0\(43) => op_inf_n_47,
      \sband_td_r_reg[55]_0\(42) => op_inf_n_48,
      \sband_td_r_reg[55]_0\(41) => op_inf_n_49,
      \sband_td_r_reg[55]_0\(40) => op_inf_n_50,
      \sband_td_r_reg[55]_0\(39) => op_inf_n_51,
      \sband_td_r_reg[55]_0\(38) => op_inf_n_52,
      \sband_td_r_reg[55]_0\(37) => op_inf_n_53,
      \sband_td_r_reg[55]_0\(36) => op_inf_n_54,
      \sband_td_r_reg[55]_0\(35) => op_inf_n_55,
      \sband_td_r_reg[55]_0\(34) => op_inf_n_56,
      \sband_td_r_reg[55]_0\(33) => op_inf_n_57,
      \sband_td_r_reg[55]_0\(32) => op_inf_n_58,
      \sband_td_r_reg[55]_0\(31) => op_inf_n_59,
      \sband_td_r_reg[55]_0\(30) => op_inf_n_60,
      \sband_td_r_reg[55]_0\(29) => op_inf_n_61,
      \sband_td_r_reg[55]_0\(28) => op_inf_n_62,
      \sband_td_r_reg[55]_0\(27) => op_inf_n_63,
      \sband_td_r_reg[55]_0\(26) => op_inf_n_64,
      \sband_td_r_reg[55]_0\(25) => op_inf_n_65,
      \sband_td_r_reg[55]_0\(24) => op_inf_n_66,
      \sband_td_r_reg[55]_0\(23) => op_inf_n_67,
      \sband_td_r_reg[55]_0\(22) => op_inf_n_68,
      \sband_td_r_reg[55]_0\(21) => op_inf_n_69,
      \sband_td_r_reg[55]_0\(20) => op_inf_n_70,
      \sband_td_r_reg[55]_0\(19) => op_inf_n_71,
      \sband_td_r_reg[55]_0\(18) => op_inf_n_72,
      \sband_td_r_reg[55]_0\(17) => op_inf_n_73,
      \sband_td_r_reg[55]_0\(16) => op_inf_n_74,
      \sband_td_r_reg[55]_0\(15) => op_inf_n_75,
      \sband_td_r_reg[55]_0\(14) => op_inf_n_76,
      \sband_td_r_reg[55]_0\(13) => op_inf_n_77,
      \sband_td_r_reg[55]_0\(12) => op_inf_n_78,
      \sband_td_r_reg[55]_0\(11) => op_inf_n_79,
      \sband_td_r_reg[55]_0\(10) => op_inf_n_80,
      \sband_td_r_reg[55]_0\(9) => op_inf_n_81,
      \sband_td_r_reg[55]_0\(8) => op_inf_n_82,
      \sband_td_r_reg[55]_0\(7) => op_inf_n_83,
      \sband_td_r_reg[55]_0\(6) => op_inf_n_84,
      \sband_td_r_reg[55]_0\(5) => op_inf_n_85,
      \sband_td_r_reg[55]_0\(4) => op_inf_n_86,
      \sband_td_r_reg[55]_0\(3) => op_inf_n_87,
      \sband_td_r_reg[55]_0\(2) => op_inf_n_88,
      \sband_td_r_reg[55]_0\(1) => op_inf_n_89,
      \sband_td_r_reg[55]_0\(0) => op_inf_n_90,
      \sband_td_r_reg[55]_1\(55 downto 0) => sband_td_r(55 downto 0),
      \sband_tk_r_reg[6]_0\(4) => op_inf_n_10,
      \sband_tk_r_reg[6]_0\(3) => op_inf_n_11,
      \sband_tk_r_reg[6]_0\(2) => op_inf_n_12,
      \sband_tk_r_reg[6]_0\(1) => op_inf_n_13,
      \sband_tk_r_reg[6]_0\(0) => op_inf_n_14,
      \sband_ts_r_reg[9]_0\(9 downto 0) => sband_ts_r(9 downto 0),
      sband_tu => sband_tu,
      sband_tu_r => sband_tu_r,
      sdt_tr => sdt_tr,
      vfb_clk => vfb_clk,
      vfb_data(15 downto 0) => vfb_data(15 downto 0),
      \vfb_data_reg[15]_0\(15) => axis_dconverter_n_14,
      \vfb_data_reg[15]_0\(14) => axis_dconverter_n_15,
      \vfb_data_reg[15]_0\(13) => axis_dconverter_n_16,
      \vfb_data_reg[15]_0\(12) => axis_dconverter_n_17,
      \vfb_data_reg[15]_0\(11) => axis_dconverter_n_18,
      \vfb_data_reg[15]_0\(10) => axis_dconverter_n_19,
      \vfb_data_reg[15]_0\(9) => axis_dconverter_n_20,
      \vfb_data_reg[15]_0\(8) => axis_dconverter_n_21,
      \vfb_data_reg[15]_0\(7) => axis_dconverter_n_22,
      \vfb_data_reg[15]_0\(6) => axis_dconverter_n_23,
      \vfb_data_reg[15]_0\(5) => axis_dconverter_n_24,
      \vfb_data_reg[15]_0\(4) => axis_dconverter_n_25,
      \vfb_data_reg[15]_0\(3) => axis_dconverter_n_26,
      \vfb_data_reg[15]_0\(2) => axis_dconverter_n_27,
      \vfb_data_reg[15]_0\(1) => axis_dconverter_n_28,
      \vfb_data_reg[15]_0\(0) => axis_dconverter_n_29,
      vfb_eol_reg_0 => \^vfb_eol_reg\,
      vfb_eol_reg_1 => op_inf_n_7,
      vfb_ready => vfb_ready,
      vfb_sof(0) => vfb_sof(0),
      \vfb_sof_reg[0]_0\ => axis_dconverter_n_3,
      vfb_valid_reg_0 => \^vfb_valid_reg\,
      vfb_valid_reg_1 => op_inf_n_8,
      vfb_vcdt(9 downto 0) => vfb_vcdt(9 downto 0),
      \vfb_vcdt_reg[9]_0\(9 downto 0) => p_1_in(9 downto 0)
    );
reorder: entity work.bd_22c6_vfb_0_0_vfb_v1_0_12_reorder
     port map (
      D(99 downto 0) => D(99 downto 0),
      E(0) => reorder_n_5,
      Q(19 downto 12) => fifo_td(23 downto 16),
      Q(11) => sband_tk(1),
      Q(10 downto 5) => sband_ts_0(9 downto 4),
      Q(4) => reorder_n_23,
      Q(3 downto 0) => sband_ts(3 downto 0),
      SR(0) => reorder_n_1,
      \buf_data_reg[0][107]_0\(5 downto 0) => sband_tk_r(6 downto 1),
      \buf_data_reg[0][171]_0\(55 downto 0) => sband_td_r(55 downto 0),
      \buf_valid_reg[0]_0\ => op_inf_n_5,
      \buf_valid_reg[1]_0\ => s_axis_tready,
      cur_dtype_sink_reg_0 => reorder_n_93,
      cur_dtype_udef => cur_dtype_udef,
      fifo_tl => fifo_tl,
      mdt_tv => \^mdt_tv\,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tlast => s_fifo_tl,
      s_axis_tready => s_fifo_tr,
      s_axis_tuser(0) => s_fifo_tu(21),
      s_axis_tvalid => s_axis_tvalid,
      \s_fifo_td_reg[63]_0\(63 downto 0) => s_fifo_td(63 downto 0),
      \s_fifo_tid_reg[25]_0\(25 downto 0) => s_fifo_tid(25 downto 0),
      \s_fifo_tk_reg[7]_0\(7 downto 0) => s_fifo_tk(7 downto 0),
      s_fifo_tv => s_fifo_tv,
      sband_tact0 => sband_tact0,
      \sband_td_r_reg[0]\ => \^vfb_valid_reg\,
      \sband_td_r_reg[47]\(47) => op_inf_n_35,
      \sband_td_r_reg[47]\(46) => op_inf_n_36,
      \sband_td_r_reg[47]\(45) => op_inf_n_37,
      \sband_td_r_reg[47]\(44) => op_inf_n_38,
      \sband_td_r_reg[47]\(43) => op_inf_n_39,
      \sband_td_r_reg[47]\(42) => op_inf_n_40,
      \sband_td_r_reg[47]\(41) => op_inf_n_41,
      \sband_td_r_reg[47]\(40) => op_inf_n_42,
      \sband_td_r_reg[47]\(39) => op_inf_n_43,
      \sband_td_r_reg[47]\(38) => op_inf_n_44,
      \sband_td_r_reg[47]\(37) => op_inf_n_45,
      \sband_td_r_reg[47]\(36) => op_inf_n_46,
      \sband_td_r_reg[47]\(35) => op_inf_n_47,
      \sband_td_r_reg[47]\(34) => op_inf_n_48,
      \sband_td_r_reg[47]\(33) => op_inf_n_49,
      \sband_td_r_reg[47]\(32) => op_inf_n_50,
      \sband_td_r_reg[47]\(31) => op_inf_n_51,
      \sband_td_r_reg[47]\(30) => op_inf_n_52,
      \sband_td_r_reg[47]\(29) => op_inf_n_53,
      \sband_td_r_reg[47]\(28) => op_inf_n_54,
      \sband_td_r_reg[47]\(27) => op_inf_n_55,
      \sband_td_r_reg[47]\(26) => op_inf_n_56,
      \sband_td_r_reg[47]\(25) => op_inf_n_57,
      \sband_td_r_reg[47]\(24) => op_inf_n_58,
      \sband_td_r_reg[47]\(23) => op_inf_n_59,
      \sband_td_r_reg[47]\(22) => op_inf_n_60,
      \sband_td_r_reg[47]\(21) => op_inf_n_61,
      \sband_td_r_reg[47]\(20) => op_inf_n_62,
      \sband_td_r_reg[47]\(19) => op_inf_n_63,
      \sband_td_r_reg[47]\(18) => op_inf_n_64,
      \sband_td_r_reg[47]\(17) => op_inf_n_65,
      \sband_td_r_reg[47]\(16) => op_inf_n_66,
      \sband_td_r_reg[47]\(15) => op_inf_n_67,
      \sband_td_r_reg[47]\(14) => op_inf_n_68,
      \sband_td_r_reg[47]\(13) => op_inf_n_69,
      \sband_td_r_reg[47]\(12) => op_inf_n_70,
      \sband_td_r_reg[47]\(11) => op_inf_n_71,
      \sband_td_r_reg[47]\(10) => op_inf_n_72,
      \sband_td_r_reg[47]\(9) => op_inf_n_73,
      \sband_td_r_reg[47]\(8) => op_inf_n_74,
      \sband_td_r_reg[47]\(7) => op_inf_n_75,
      \sband_td_r_reg[47]\(6) => op_inf_n_76,
      \sband_td_r_reg[47]\(5) => op_inf_n_77,
      \sband_td_r_reg[47]\(4) => op_inf_n_78,
      \sband_td_r_reg[47]\(3) => op_inf_n_79,
      \sband_td_r_reg[47]\(2) => op_inf_n_80,
      \sband_td_r_reg[47]\(1) => op_inf_n_81,
      \sband_td_r_reg[47]\(0) => op_inf_n_82,
      \sband_tk_r_reg[5]\(4) => op_inf_n_10,
      \sband_tk_r_reg[5]\(3) => op_inf_n_11,
      \sband_tk_r_reg[5]\(2) => op_inf_n_12,
      \sband_tk_r_reg[5]\(1) => op_inf_n_13,
      \sband_tk_r_reg[5]\(0) => op_inf_n_14,
      sband_tl_r_reg => \^vfb_eol_reg\,
      sband_tl_r_reg_0 => op_inf_n_8,
      sband_tl_r_reg_1 => axis_dconverter_n_30,
      sband_tu => sband_tu,
      sdt_tv => sdt_tv,
      vfb_ready => vfb_ready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_22c6_vfb_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mdt_tv : out STD_LOGIC;
    mdt_tr : out STD_LOGIC;
    sdt_tv : out STD_LOGIC;
    sdt_tr : out STD_LOGIC;
    vfb_tv : out STD_LOGIC;
    vfb_tr : out STD_LOGIC;
    vfb_clk : in STD_LOGIC;
    vfb_ready : in STD_LOGIC;
    vfb_valid : out STD_LOGIC;
    vfb_eol : out STD_LOGIC;
    vfb_sof : out STD_LOGIC_VECTOR ( 0 to 0 );
    vfb_vcdt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vfb_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_22c6_vfb_0_0 : entity is true;
  attribute AXIS_TDATA_WIDTH : integer;
  attribute AXIS_TDATA_WIDTH of bd_22c6_vfb_0_0 : entity is 64;
  attribute AXIS_TDEST_WIDTH : integer;
  attribute AXIS_TDEST_WIDTH of bd_22c6_vfb_0_0 : entity is 4;
  attribute AXIS_TUSER_WIDTH : integer;
  attribute AXIS_TUSER_WIDTH of bd_22c6_vfb_0_0 : entity is 96;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_22c6_vfb_0_0 : entity is "yes";
  attribute VFB_4PXL_W : integer;
  attribute VFB_4PXL_W of bd_22c6_vfb_0_0 : entity is 64;
  attribute VFB_BYPASS_WC : integer;
  attribute VFB_BYPASS_WC of bd_22c6_vfb_0_0 : entity is 0;
  attribute VFB_DATA_TYPE : integer;
  attribute VFB_DATA_TYPE of bd_22c6_vfb_0_0 : entity is 30;
  attribute VFB_DCONV_OWIDTH : integer;
  attribute VFB_DCONV_OWIDTH of bd_22c6_vfb_0_0 : entity is 16;
  attribute VFB_FIFO_DEPTH : integer;
  attribute VFB_FIFO_DEPTH of bd_22c6_vfb_0_0 : entity is 128;
  attribute VFB_FIFO_WIDTH : integer;
  attribute VFB_FIFO_WIDTH of bd_22c6_vfb_0_0 : entity is 64;
  attribute VFB_FILTER_VC : integer;
  attribute VFB_FILTER_VC of bd_22c6_vfb_0_0 : entity is 0;
  attribute VFB_OP_DWIDTH : integer;
  attribute VFB_OP_DWIDTH of bd_22c6_vfb_0_0 : entity is 16;
  attribute VFB_OP_PIXELS : integer;
  attribute VFB_OP_PIXELS of bd_22c6_vfb_0_0 : entity is 1;
  attribute VFB_PXL_W : integer;
  attribute VFB_PXL_W of bd_22c6_vfb_0_0 : entity is 16;
  attribute VFB_PXL_W_BB : integer;
  attribute VFB_PXL_W_BB of bd_22c6_vfb_0_0 : entity is 16;
  attribute VFB_REQ_BUFFER : integer;
  attribute VFB_REQ_BUFFER of bd_22c6_vfb_0_0 : entity is 0;
  attribute VFB_REQ_REORDER : integer;
  attribute VFB_REQ_REORDER of bd_22c6_vfb_0_0 : entity is 1;
  attribute VFB_TU_WIDTH : integer;
  attribute VFB_TU_WIDTH of bd_22c6_vfb_0_0 : entity is 1;
  attribute VFB_VC : integer;
  attribute VFB_VC of bd_22c6_vfb_0_0 : entity is 0;
end bd_22c6_vfb_0_0;

architecture STRUCTURE of bd_22c6_vfb_0_0 is
  signal \^vfb_ready\ : STD_LOGIC;
  signal \^vfb_tv\ : STD_LOGIC;
begin
  \^vfb_ready\ <= vfb_ready;
  vfb_tr <= \^vfb_ready\;
  vfb_tv <= \^vfb_tv\;
  vfb_valid <= \^vfb_tv\;
inst: entity work.bd_22c6_vfb_0_0_bd_22c6_vfb_0_0_core
     port map (
      D(99) => s_axis_tlast,
      D(98 downto 35) => s_axis_tdata(63 downto 0),
      D(34 downto 27) => s_axis_tkeep(7 downto 0),
      D(26 downto 21) => s_axis_tuser(69 downto 64),
      D(20 downto 5) => s_axis_tuser(31 downto 16),
      D(4) => s_axis_tuser(0),
      D(3 downto 0) => s_axis_tdest(3 downto 0),
      mdt_tr => mdt_tr,
      mdt_tv => mdt_tv,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sdt_tr => sdt_tr,
      sdt_tv => sdt_tv,
      vfb_clk => vfb_clk,
      vfb_data(15 downto 0) => vfb_data(15 downto 0),
      vfb_eol_reg => vfb_eol,
      vfb_ready => \^vfb_ready\,
      vfb_sof(0) => vfb_sof(0),
      vfb_valid_reg => \^vfb_tv\,
      vfb_vcdt(9 downto 0) => vfb_vcdt(9 downto 0)
    );
end STRUCTURE;
