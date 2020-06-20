-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity imageScaler is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    Data_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
    Data_ce0 : OUT STD_LOGIC;
    Data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    dest_height : IN STD_LOGIC_VECTOR (31 downto 0);
    dest_width : IN STD_LOGIC_VECTOR (31 downto 0);
    IMG1_data_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
    IMG1_data_ce0 : OUT STD_LOGIC;
    IMG1_data_we0 : OUT STD_LOGIC;
    IMG1_data_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of imageScaler is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (32 downto 0) := "000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (32 downto 0) := "000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (32 downto 0) := "000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (32 downto 0) := "000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (32 downto 0) := "000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (32 downto 0) := "000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (32 downto 0) := "000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (32 downto 0) := "000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (32 downto 0) := "000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (32 downto 0) := "001000000000000000000000000000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (32 downto 0) := "010000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (32 downto 0) := "100000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_1400000 : STD_LOGIC_VECTOR (31 downto 0) := "00000001010000000000000000000000";
    constant ap_const_lv32_F00000 : STD_LOGIC_VECTOR (31 downto 0) := "00000000111100000000000000000000";
    constant ap_const_lv17_12C00 : STD_LOGIC_VECTOR (16 downto 0) := "10010110000000000";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv9_140 : STD_LOGIC_VECTOR (8 downto 0) := "101000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_119 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_reg_130 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_reg_141 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal x_ratio_fu_164_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_ratio_reg_391 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state31 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state31 : signal is "none";
    signal y_ratio_fu_170_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal y_ratio_reg_396 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_31_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_31_reg_401 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state32_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state33_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state34_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state35_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_flatten_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_406 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_191_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal exitcond7_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond7_reg_415 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_mid2_fu_209_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_mid2_reg_420 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_mid2_reg_420_pp0_iter1_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal j_mid2_reg_420_pp0_iter2_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_34_mid1_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_mid1_reg_426 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_36_mid2_v_v_v_v_fu_226_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_mid2_v_v_v_v_reg_431 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_mid2_v_v_v_v_reg_431_pp0_iter1_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_mid2_v_v_v_v_reg_431_pp0_iter2_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal j_1_fu_234_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_278_reg_444 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_279_reg_449 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_cond_fu_281_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_reg_454 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_reg_454_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_280_reg_458 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state32 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_phi_mux_i_phi_fu_134_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_180_cast_fu_331_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_181_cast_fu_373_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_152_p0 : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_fu_158_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_152_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_158_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast2_fu_176_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_fu_197_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_cast2_mid1_fu_217_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_36_mid2_v_v_v_fu_248_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_mid2_v_v_v_fu_248_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_cast1_fu_273_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_33_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_mid2_fu_240_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_fu_287_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_34_fu_287_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl2_cast_fu_302_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal p_shl3_cast_fu_309_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_143_fu_316_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_36_cast_fu_322_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_147_fu_325_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_144_fu_336_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_145_fu_347_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl_cast_fu_343_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal p_shl1_cast_fu_354_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_146_fu_358_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_37_cast_fu_364_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_148_fu_367_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_152_ap_start : STD_LOGIC;
    signal grp_fu_152_ap_done : STD_LOGIC;
    signal grp_fu_158_ap_start : STD_LOGIC;
    signal grp_fu_158_ap_done : STD_LOGIC;
    signal ap_CS_fsm_state36 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state36 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal tmp_36_mid2_v_v_v_fu_248_p10 : STD_LOGIC_VECTOR (31 downto 0);

    component detectFaces_sdiv_bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (26 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component detectFaces_sdiv_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (25 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    detectFaces_sdiv_bkb_U1 : component detectFaces_sdiv_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 31,
        din0_WIDTH => 27,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_152_ap_start,
        done => grp_fu_152_ap_done,
        din0 => grp_fu_152_p0,
        din1 => dest_width,
        ce => ap_const_logic_1,
        dout => grp_fu_152_p2);

    detectFaces_sdiv_cud_U2 : component detectFaces_sdiv_cud
    generic map (
        ID => 1,
        NUM_STAGE => 30,
        din0_WIDTH => 26,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_158_ap_start,
        done => grp_fu_158_ap_done,
        din0 => grp_fu_158_p0,
        din1 => dest_height,
        ce => ap_const_logic_1,
        dout => grp_fu_158_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state32) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state31)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state32)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state32);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state31)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (exitcond_flatten_reg_406 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_130 <= tmp_36_mid2_v_v_v_v_reg_431;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state31)) then 
                i_reg_130 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                indvar_flatten_reg_119 <= indvar_flatten_next_fu_191_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state31)) then 
                indvar_flatten_reg_119 <= ap_const_lv17_0;
            end if; 
        end if;
    end process;

    j_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_reg_141 <= j_1_fu_234_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state31)) then 
                j_reg_141 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond7_reg_415 <= exitcond7_fu_203_p2;
                j_mid2_reg_420 <= j_mid2_fu_209_p3;
                tmp_34_mid1_reg_426 <= tmp_34_mid1_fu_221_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_flatten_reg_406 <= exitcond_flatten_fu_185_p2;
                j_mid2_reg_420_pp0_iter1_reg <= j_mid2_reg_420;
                tmp_31_reg_401 <= tmp_31_fu_180_p2;
                tmp_36_mid2_v_v_v_v_reg_431_pp0_iter1_reg <= tmp_36_mid2_v_v_v_v_reg_431;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                j_mid2_reg_420_pp0_iter2_reg <= j_mid2_reg_420_pp0_iter1_reg;
                or_cond_reg_454_pp0_iter2_reg <= or_cond_reg_454;
                tmp_36_mid2_v_v_v_v_reg_431_pp0_iter2_reg <= tmp_36_mid2_v_v_v_v_reg_431_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_406 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                or_cond_reg_454 <= or_cond_fu_281_p2;
                tmp_278_reg_444 <= tmp_36_mid2_v_v_v_fu_248_p2(25 downto 16);
                tmp_279_reg_449 <= tmp_36_mid2_v_v_v_fu_248_p2(27 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (or_cond_fu_281_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_280_reg_458 <= tmp_34_fu_287_p2(31 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_36_mid2_v_v_v_v_reg_431 <= tmp_36_mid2_v_v_v_v_fu_226_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state31)) then
                x_ratio_reg_391 <= x_ratio_fu_164_p2;
                y_ratio_reg_396 <= y_ratio_fu_170_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten_fu_185_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_flatten_fu_185_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state36;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    Data_address0 <= tmp_180_cast_fu_331_p1(17 - 1 downto 0);

    Data_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            Data_ce0 <= ap_const_logic_1;
        else 
            Data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IMG1_data_address0 <= tmp_181_cast_fu_373_p1(17 - 1 downto 0);

    IMG1_data_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            IMG1_data_ce0 <= ap_const_logic_1;
        else 
            IMG1_data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    IMG1_data_d0 <= Data_q0;

    IMG1_data_we0_assign_proc : process(ap_block_pp0_stage0_11001, or_cond_reg_454_pp0_iter2_reg, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (or_cond_reg_454_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            IMG1_data_we0 <= ap_const_logic_1;
        else 
            IMG1_data_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(31);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state31 <= ap_CS_fsm(30);
    ap_CS_fsm_state36 <= ap_CS_fsm(32);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state32_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state33_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state34_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state35_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state32_assign_proc : process(exitcond_flatten_fu_185_p2)
    begin
        if ((exitcond_flatten_fu_185_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state32 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state32 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state36)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state36) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_phi_fu_134_p4_assign_proc : process(i_reg_130, ap_CS_fsm_pp0_stage0, exitcond_flatten_reg_406, tmp_36_mid2_v_v_v_v_reg_431, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (exitcond_flatten_reg_406 = ap_const_lv1_0))) then 
            ap_phi_mux_i_phi_fu_134_p4 <= tmp_36_mid2_v_v_v_v_reg_431;
        else 
            ap_phi_mux_i_phi_fu_134_p4 <= i_reg_130;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state36)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond7_fu_203_p2 <= "1" when (j_reg_141 = ap_const_lv9_140) else "0";
    exitcond_flatten_fu_185_p2 <= "1" when (indvar_flatten_reg_119 = ap_const_lv17_12C00) else "0";

    grp_fu_152_ap_start_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_152_ap_start <= ap_const_logic_1;
        else 
            grp_fu_152_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_152_p0 <= ap_const_lv32_1400000(27 - 1 downto 0);

    grp_fu_158_ap_start_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_158_ap_start <= ap_const_logic_1;
        else 
            grp_fu_158_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_158_p0 <= ap_const_lv32_F00000(26 - 1 downto 0);
    i_2_fu_197_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_phi_fu_134_p4) + unsigned(ap_const_lv8_1));
    i_cast2_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i_phi_fu_134_p4),32));
    i_cast2_mid1_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_fu_197_p2),32));
    indvar_flatten_next_fu_191_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_119) + unsigned(ap_const_lv17_1));
    j_1_fu_234_p2 <= std_logic_vector(unsigned(j_mid2_fu_209_p3) + unsigned(ap_const_lv9_1));
    j_cast1_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_mid2_reg_420),32));
    j_mid2_fu_209_p3 <= 
        ap_const_lv9_0 when (exitcond7_fu_203_p2(0) = '1') else 
        j_reg_141;
    or_cond_fu_281_p2 <= (tmp_34_mid2_fu_240_p3 and tmp_33_fu_276_p2);
    p_shl1_cast_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_145_fu_347_p3),17));
    p_shl2_cast_fu_302_p3 <= (tmp_278_reg_444 & ap_const_lv8_0);
    p_shl3_cast_fu_309_p3 <= (tmp_279_reg_449 & ap_const_lv6_0);
    p_shl_cast_fu_343_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_144_fu_336_p3),17));
    tmp_143_fu_316_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_302_p3) + unsigned(p_shl3_cast_fu_309_p3));
    tmp_144_fu_336_p3 <= (tmp_36_mid2_v_v_v_v_reg_431_pp0_iter2_reg & ap_const_lv8_0);
    tmp_145_fu_347_p3 <= (tmp_36_mid2_v_v_v_v_reg_431_pp0_iter2_reg & ap_const_lv6_0);
    tmp_146_fu_358_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_343_p1) + unsigned(p_shl1_cast_fu_354_p1));
    tmp_147_fu_325_p2 <= std_logic_vector(unsigned(tmp_143_fu_316_p2) + unsigned(tmp_36_cast_fu_322_p1));
    tmp_148_fu_367_p2 <= std_logic_vector(unsigned(tmp_146_fu_358_p2) + unsigned(tmp_37_cast_fu_364_p1));
        tmp_180_cast_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_147_fu_325_p2),64));

    tmp_181_cast_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_148_fu_367_p2),64));
    tmp_31_fu_180_p2 <= "1" when (signed(i_cast2_fu_176_p1) < signed(dest_height)) else "0";
    tmp_33_fu_276_p2 <= "1" when (signed(j_cast1_fu_273_p1) < signed(dest_width)) else "0";
    tmp_34_fu_287_p0 <= j_cast1_fu_273_p1(9 - 1 downto 0);
    tmp_34_fu_287_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &tmp_34_fu_287_p0) * signed(x_ratio_reg_391))), 32));
    tmp_34_mid1_fu_221_p2 <= "1" when (signed(i_cast2_mid1_fu_217_p1) < signed(dest_height)) else "0";
    tmp_34_mid2_fu_240_p3 <= 
        tmp_34_mid1_reg_426 when (exitcond7_reg_415(0) = '1') else 
        tmp_31_reg_401;
        tmp_36_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_280_reg_458),18));

    tmp_36_mid2_v_v_v_fu_248_p1 <= tmp_36_mid2_v_v_v_fu_248_p10(8 - 1 downto 0);
    tmp_36_mid2_v_v_v_fu_248_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_36_mid2_v_v_v_v_reg_431),32));
    tmp_36_mid2_v_v_v_fu_248_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(y_ratio_reg_396) * signed('0' &tmp_36_mid2_v_v_v_fu_248_p1))), 32));
    tmp_36_mid2_v_v_v_v_fu_226_p3 <= 
        i_2_fu_197_p2 when (exitcond7_fu_203_p2(0) = '1') else 
        ap_phi_mux_i_phi_fu_134_p4;
    tmp_37_cast_fu_364_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_mid2_reg_420_pp0_iter2_reg),17));
    x_ratio_fu_164_p2 <= std_logic_vector(unsigned(grp_fu_152_p2) + unsigned(ap_const_lv32_1));
    y_ratio_fu_170_p2 <= std_logic_vector(unsigned(grp_fu_158_p2) + unsigned(ap_const_lv32_1));
end behav;
