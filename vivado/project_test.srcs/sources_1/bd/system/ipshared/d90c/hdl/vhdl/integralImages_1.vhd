-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity integralImages_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    Data_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Data_ce0 : OUT STD_LOGIC;
    Data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    Sum_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Sum_ce0 : OUT STD_LOGIC;
    Sum_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    Sum_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Sum_ce1 : OUT STD_LOGIC;
    Sum_we1 : OUT STD_LOGIC;
    Sum_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    Sqsum_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Sqsum_ce0 : OUT STD_LOGIC;
    Sqsum_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    Sqsum_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Sqsum_ce1 : OUT STD_LOGIC;
    Sqsum_we1 : OUT STD_LOGIC;
    Sqsum_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of integralImages_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv10_271 : STD_LOGIC_VECTOR (9 downto 0) := "1001110001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_19 : STD_LOGIC_VECTOR (4 downto 0) := "11001";
    constant ap_const_lv10_19 : STD_LOGIC_VECTOR (9 downto 0) := "0000011001";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv11_19 : STD_LOGIC_VECTOR (10 downto 0) := "00000011001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_117 : STD_LOGIC_VECTOR (9 downto 0);
    signal y_reg_128 : STD_LOGIC_VECTOR (4 downto 0);
    signal s_reg_139 : STD_LOGIC_VECTOR (12 downto 0);
    signal x_reg_151 : STD_LOGIC_VECTOR (4 downto 0);
    signal sq_reg_162 : STD_LOGIC_VECTOR (20 downto 0);
    signal exitcond_flatten_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_348 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_flatten_reg_348_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_348_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_348_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_180_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal exitcond6_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond6_reg_357 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond6_reg_357_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond6_reg_357_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal x_mid2_fu_198_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal x_mid2_reg_363 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_mid2_v_fu_206_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_mid2_v_reg_369 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_mid2_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_mid2_reg_376 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_mid2_reg_376_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_mid2_reg_376_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal x_2_fu_234_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_115_cast_fu_252_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_115_cast_reg_387 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_115_cast_reg_387_pp0_iter2_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_115_cast_reg_387_pp0_iter3_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_116_cast_fu_256_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_116_cast_reg_398 : STD_LOGIC_VECTOR (63 downto 0);
    signal it_reg_413 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_4_fu_271_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal s_4_reg_418 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal Sum_load_reg_424 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_339_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal sq_4_reg_429 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal tq_3_fu_312_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tq_3_reg_434 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_phi_mux_y_phi_fu_132_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_s_phi_fu_143_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_phi_mux_sq_phi_fu_166_p4 : STD_LOGIC_VECTOR (20 downto 0);
    signal y_2_fu_186_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_mid1_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_319_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_328_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal s_mid2_fu_260_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_29_cast_fu_267_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal s_4_cast_fu_287_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sq_4_cast_fu_290_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_2_fu_293_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tq_2_fu_298_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_319_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_319_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_319_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_328_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_328_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_328_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_328_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_339_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_29_cast1_fu_284_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_339_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_339_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_319_p00 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_319_p20 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_328_p00 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_328_p30 : STD_LOGIC_VECTOR (10 downto 0);

    component detectFaces_mac_mdEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        din2 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component detectFaces_ama_aeOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (0 downto 0);
        din2 : IN STD_LOGIC_VECTOR (5 downto 0);
        din3 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (10 downto 0) );
    end component;


    component detectFaces_mac_mfYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (20 downto 0);
        dout : OUT STD_LOGIC_VECTOR (20 downto 0) );
    end component;



begin
    detectFaces_mac_mdEe_U9 : component detectFaces_mac_mdEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 6,
        din2_WIDTH => 5,
        dout_WIDTH => 10)
    port map (
        din0 => grp_fu_319_p0,
        din1 => grp_fu_319_p1,
        din2 => grp_fu_319_p2,
        dout => grp_fu_319_p3);

    detectFaces_ama_aeOg_U10 : component detectFaces_ama_aeOg
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 1,
        din2_WIDTH => 6,
        din3_WIDTH => 5,
        dout_WIDTH => 11)
    port map (
        din0 => grp_fu_328_p0,
        din1 => grp_fu_328_p1,
        din2 => grp_fu_328_p2,
        din3 => grp_fu_328_p3,
        dout => grp_fu_328_p4);

    detectFaces_mac_mfYi_U11 : component detectFaces_mac_mfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 21,
        dout_WIDTH => 21)
    port map (
        din0 => grp_fu_339_p0,
        din1 => grp_fu_339_p1,
        din2 => grp_fu_339_p2,
        dout => grp_fu_339_p3);





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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
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
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten_reg_117 <= indvar_flatten_next_fu_180_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_117 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    s_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
                s_reg_139 <= s_4_reg_418;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                s_reg_139 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;

    sq_reg_162_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
                sq_reg_162 <= sq_4_reg_429;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                sq_reg_162 <= ap_const_lv21_0;
            end if; 
        end if;
    end process;

    x_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_reg_151 <= x_2_fu_234_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                x_reg_151 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    y_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_reg_348 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                y_reg_128 <= tmp_mid2_v_reg_369;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                y_reg_128 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_mid2_reg_376_pp0_iter1_reg = ap_const_lv1_0) and (exitcond_flatten_reg_348_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                Sum_load_reg_424 <= Sum_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond6_reg_357 <= exitcond6_fu_192_p2;
                tmp_mid2_reg_376 <= tmp_mid2_fu_226_p3;
                x_mid2_reg_363 <= x_mid2_fu_198_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond6_reg_357_pp0_iter1_reg <= exitcond6_reg_357;
                exitcond_flatten_reg_348 <= exitcond_flatten_fu_174_p2;
                exitcond_flatten_reg_348_pp0_iter1_reg <= exitcond_flatten_reg_348;
                tmp_mid2_reg_376_pp0_iter1_reg <= tmp_mid2_reg_376;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                exitcond6_reg_357_pp0_iter2_reg <= exitcond6_reg_357_pp0_iter1_reg;
                exitcond_flatten_reg_348_pp0_iter2_reg <= exitcond_flatten_reg_348_pp0_iter1_reg;
                exitcond_flatten_reg_348_pp0_iter3_reg <= exitcond_flatten_reg_348_pp0_iter2_reg;
                    tmp_115_cast_reg_387_pp0_iter2_reg(9 downto 0) <= tmp_115_cast_reg_387(9 downto 0);
                    tmp_115_cast_reg_387_pp0_iter3_reg(9 downto 0) <= tmp_115_cast_reg_387_pp0_iter2_reg(9 downto 0);
                tmp_mid2_reg_376_pp0_iter2_reg <= tmp_mid2_reg_376_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                it_reg_413 <= Data_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                s_4_reg_418 <= s_4_fu_271_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then
                sq_4_reg_429 <= grp_fu_339_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_reg_348 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    tmp_115_cast_reg_387(9 downto 0) <= tmp_115_cast_fu_252_p1(9 downto 0);
                tmp_116_cast_reg_398 <= tmp_116_cast_fu_256_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_flatten_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_mid2_v_reg_369 <= tmp_mid2_v_fu_206_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_348_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tq_3_reg_434 <= tq_3_fu_312_p3;
            end if;
        end if;
    end process;
    tmp_115_cast_reg_387(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";
    tmp_115_cast_reg_387_pp0_iter2_reg(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";
    tmp_115_cast_reg_387_pp0_iter3_reg(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten_fu_174_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((exitcond_flatten_fu_174_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((exitcond_flatten_fu_174_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    Data_address0 <= tmp_115_cast_fu_252_p1(10 - 1 downto 0);

    Data_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            Data_ce0 <= ap_const_logic_1;
        else 
            Data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Sqsum_address0 <= tmp_116_cast_reg_398(10 - 1 downto 0);
    Sqsum_address1 <= tmp_115_cast_reg_387_pp0_iter3_reg(10 - 1 downto 0);

    Sqsum_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Sqsum_ce0 <= ap_const_logic_1;
        else 
            Sqsum_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    Sqsum_ce1_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            Sqsum_ce1 <= ap_const_logic_1;
        else 
            Sqsum_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    Sqsum_d1 <= tq_3_reg_434;

    Sqsum_we1_assign_proc : process(ap_block_pp0_stage0_11001, exitcond_flatten_reg_348_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((exitcond_flatten_reg_348_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            Sqsum_we1 <= ap_const_logic_1;
        else 
            Sqsum_we1 <= ap_const_logic_0;
        end if; 
    end process;

    Sum_address0 <= tmp_116_cast_fu_256_p1(10 - 1 downto 0);
    Sum_address1 <= tmp_115_cast_reg_387_pp0_iter2_reg(10 - 1 downto 0);

    Sum_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            Sum_ce0 <= ap_const_logic_1;
        else 
            Sum_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    Sum_ce1_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            Sum_ce1 <= ap_const_logic_1;
        else 
            Sum_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    Sum_d1 <= 
        s_4_cast_fu_287_p1 when (tmp_mid2_reg_376_pp0_iter2_reg(0) = '1') else 
        t_2_fu_293_p2;

    Sum_we1_assign_proc : process(ap_block_pp0_stage0_11001, exitcond_flatten_reg_348_pp0_iter2_reg, ap_enable_reg_pp0_iter3)
    begin
        if (((exitcond_flatten_reg_348_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            Sum_we1 <= ap_const_logic_1;
        else 
            Sum_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_174_p2)
    begin
        if ((exitcond_flatten_fu_174_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_s_phi_fu_143_p4_assign_proc : process(s_reg_139, exitcond_flatten_reg_348_pp0_iter2_reg, s_4_reg_418, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_348_pp0_iter2_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_s_phi_fu_143_p4 <= s_4_reg_418;
        else 
            ap_phi_mux_s_phi_fu_143_p4 <= s_reg_139;
        end if; 
    end process;


    ap_phi_mux_sq_phi_fu_166_p4_assign_proc : process(sq_reg_162, exitcond_flatten_reg_348_pp0_iter3_reg, sq_4_reg_429, ap_enable_reg_pp0_iter4, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_348_pp0_iter3_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_sq_phi_fu_166_p4 <= sq_4_reg_429;
        else 
            ap_phi_mux_sq_phi_fu_166_p4 <= sq_reg_162;
        end if; 
    end process;


    ap_phi_mux_y_phi_fu_132_p4_assign_proc : process(y_reg_128, exitcond_flatten_reg_348, ap_CS_fsm_pp0_stage0, tmp_mid2_v_reg_369, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten_reg_348 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_y_phi_fu_132_p4 <= tmp_mid2_v_reg_369;
        else 
            ap_phi_mux_y_phi_fu_132_p4 <= y_reg_128;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond6_fu_192_p2 <= "1" when (x_reg_151 = ap_const_lv5_19) else "0";
    exitcond_flatten_fu_174_p2 <= "1" when (indvar_flatten_reg_117 = ap_const_lv10_271) else "0";
    grp_fu_319_p0 <= grp_fu_319_p00(5 - 1 downto 0);
    grp_fu_319_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_mid2_v_reg_369),10));
    grp_fu_319_p1 <= ap_const_lv10_19(6 - 1 downto 0);
    grp_fu_319_p2 <= grp_fu_319_p20(5 - 1 downto 0);
    grp_fu_319_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_mid2_reg_363),10));
    grp_fu_328_p0 <= grp_fu_328_p00(5 - 1 downto 0);
    grp_fu_328_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_mid2_v_reg_369),6));
    grp_fu_328_p1 <= ap_const_lv6_3F(1 - 1 downto 0);
    grp_fu_328_p2 <= ap_const_lv11_19(6 - 1 downto 0);
    grp_fu_328_p3 <= grp_fu_328_p30(5 - 1 downto 0);
    grp_fu_328_p30 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_mid2_reg_363),11));
    grp_fu_339_p0 <= tmp_29_cast1_fu_284_p1(8 - 1 downto 0);
    grp_fu_339_p1 <= tmp_29_cast1_fu_284_p1(8 - 1 downto 0);
    grp_fu_339_p2 <= 
        ap_const_lv21_0 when (exitcond6_reg_357_pp0_iter2_reg(0) = '1') else 
        ap_phi_mux_sq_phi_fu_166_p4;
    indvar_flatten_next_fu_180_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_117) + unsigned(ap_const_lv10_1));
    s_4_cast_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(s_4_reg_418),32));
    s_4_fu_271_p2 <= std_logic_vector(unsigned(s_mid2_fu_260_p3) + unsigned(tmp_29_cast_fu_267_p1));
    s_mid2_fu_260_p3 <= 
        ap_const_lv13_0 when (exitcond6_reg_357_pp0_iter1_reg(0) = '1') else 
        ap_phi_mux_s_phi_fu_143_p4;
    sq_4_cast_fu_290_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_339_p3),32));
    t_2_fu_293_p2 <= std_logic_vector(unsigned(s_4_cast_fu_287_p1) + unsigned(Sum_load_reg_424));
    tmp_115_cast_fu_252_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_319_p3),64));
        tmp_116_cast_fu_256_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_328_p4),64));

    tmp_1_fu_220_p2 <= "1" when (ap_phi_mux_y_phi_fu_132_p4 = ap_const_lv5_0) else "0";
    tmp_29_cast1_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(it_reg_413),16));
    tmp_29_cast_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Data_q0),13));
    tmp_mid1_fu_214_p2 <= "1" when (y_2_fu_186_p2 = ap_const_lv5_0) else "0";
    tmp_mid2_fu_226_p3 <= 
        tmp_mid1_fu_214_p2 when (exitcond6_fu_192_p2(0) = '1') else 
        tmp_1_fu_220_p2;
    tmp_mid2_v_fu_206_p3 <= 
        y_2_fu_186_p2 when (exitcond6_fu_192_p2(0) = '1') else 
        ap_phi_mux_y_phi_fu_132_p4;
    tq_2_fu_298_p2 <= std_logic_vector(unsigned(sq_4_cast_fu_290_p1) + unsigned(Sqsum_q0));
    tq_3_fu_312_p3 <= 
        sq_4_cast_fu_290_p1 when (tmp_mid2_reg_376_pp0_iter2_reg(0) = '1') else 
        tq_2_fu_298_p2;
    x_2_fu_234_p2 <= std_logic_vector(unsigned(x_mid2_fu_198_p3) + unsigned(ap_const_lv5_1));
    x_mid2_fu_198_p3 <= 
        ap_const_lv5_0 when (exitcond6_fu_192_p2(0) = '1') else 
        x_reg_151;
    y_2_fu_186_p2 <= std_logic_vector(unsigned(ap_phi_mux_y_phi_fu_132_p4) + unsigned(ap_const_lv5_1));
end behav;
