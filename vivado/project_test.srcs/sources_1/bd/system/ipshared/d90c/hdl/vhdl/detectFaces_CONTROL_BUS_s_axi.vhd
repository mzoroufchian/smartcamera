-- ==============================================================
-- File generated on Thu Jul 18 13:24:15 +0200 2019
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity detectFaces_CONTROL_BUS_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 12;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    -- axi4 lite slave signals
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    -- user signals
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    inData_address0       :in   STD_LOGIC_VECTOR(8 downto 0);
    inData_ce0            :in   STD_LOGIC;
    inData_q0             :out  STD_LOGIC_VECTOR(7 downto 0);
    result_x_address0     :in   STD_LOGIC_VECTOR(6 downto 0);
    result_x_ce0          :in   STD_LOGIC;
    result_x_we0          :in   STD_LOGIC;
    result_x_d0           :in   STD_LOGIC_VECTOR(31 downto 0);
    result_y_address0     :in   STD_LOGIC_VECTOR(6 downto 0);
    result_y_ce0          :in   STD_LOGIC;
    result_y_we0          :in   STD_LOGIC;
    result_y_d0           :in   STD_LOGIC_VECTOR(31 downto 0);
    result_w_address0     :in   STD_LOGIC_VECTOR(6 downto 0);
    result_w_ce0          :in   STD_LOGIC;
    result_w_we0          :in   STD_LOGIC;
    result_w_d0           :in   STD_LOGIC_VECTOR(31 downto 0);
    result_h_address0     :in   STD_LOGIC_VECTOR(6 downto 0);
    result_h_ce0          :in   STD_LOGIC;
    result_h_we0          :in   STD_LOGIC;
    result_h_d0           :in   STD_LOGIC_VECTOR(31 downto 0);
    result_size           :in   STD_LOGIC_VECTOR(31 downto 0);
    result_size_ap_vld    :in   STD_LOGIC;
    finished              :in   STD_LOGIC_VECTOR(7 downto 0);
    finished_ap_vld       :in   STD_LOGIC
);
end entity detectFaces_CONTROL_BUS_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read)
--         bit 7  - auto_restart (Read/Write)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0xc00 : Data signal of result_size
--         bit 31~0 - result_size[31:0] (Read)
-- 0xc04 : Control signal of result_size
--         bit 0  - result_size_ap_vld (Read/COR)
--         others - reserved
-- 0xc08 : Data signal of finished
--         bit 7~0 - finished[7:0] (Read)
--         others  - reserved
-- 0xc0c : Control signal of finished
--         bit 0  - finished_ap_vld (Read/COR)
--         others - reserved
-- 0x200 ~
-- 0x3ff : Memory 'inData' (320 * 8b)
--         Word n : bit [ 7: 0] - inData[4n]
--                  bit [15: 8] - inData[4n+1]
--                  bit [23:16] - inData[4n+2]
--                  bit [31:24] - inData[4n+3]
-- 0x400 ~
-- 0x5ff : Memory 'result_x' (100 * 32b)
--         Word n : bit [31:0] - result_x[n]
-- 0x600 ~
-- 0x7ff : Memory 'result_y' (100 * 32b)
--         Word n : bit [31:0] - result_y[n]
-- 0x800 ~
-- 0x9ff : Memory 'result_w' (100 * 32b)
--         Word n : bit [31:0] - result_w[n]
-- 0xa00 ~
-- 0xbff : Memory 'result_h' (100 * 32b)
--         Word n : bit [31:0] - result_h[n]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of detectFaces_CONTROL_BUS_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL            : INTEGER := 16#000#;
    constant ADDR_GIE                : INTEGER := 16#004#;
    constant ADDR_IER                : INTEGER := 16#008#;
    constant ADDR_ISR                : INTEGER := 16#00c#;
    constant ADDR_RESULT_SIZE_DATA_0 : INTEGER := 16#c00#;
    constant ADDR_RESULT_SIZE_CTRL   : INTEGER := 16#c04#;
    constant ADDR_FINISHED_DATA_0    : INTEGER := 16#c08#;
    constant ADDR_FINISHED_CTRL      : INTEGER := 16#c0c#;
    constant ADDR_INDATA_BASE        : INTEGER := 16#200#;
    constant ADDR_INDATA_HIGH        : INTEGER := 16#3ff#;
    constant ADDR_RESULT_X_BASE      : INTEGER := 16#400#;
    constant ADDR_RESULT_X_HIGH      : INTEGER := 16#5ff#;
    constant ADDR_RESULT_Y_BASE      : INTEGER := 16#600#;
    constant ADDR_RESULT_Y_HIGH      : INTEGER := 16#7ff#;
    constant ADDR_RESULT_W_BASE      : INTEGER := 16#800#;
    constant ADDR_RESULT_W_HIGH      : INTEGER := 16#9ff#;
    constant ADDR_RESULT_H_BASE      : INTEGER := 16#a00#;
    constant ADDR_RESULT_H_HIGH      : INTEGER := 16#bff#;
    constant ADDR_BITS         : INTEGER := 12;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_result_size     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_result_size_ap_vld : STD_LOGIC;
    signal int_finished        : UNSIGNED(7 downto 0) := (others => '0');
    signal int_finished_ap_vld : STD_LOGIC;
    -- memory signals
    signal int_inData_address0 : UNSIGNED(6 downto 0);
    signal int_inData_ce0      : STD_LOGIC;
    signal int_inData_we0      : STD_LOGIC;
    signal int_inData_be0      : UNSIGNED(3 downto 0);
    signal int_inData_d0       : UNSIGNED(31 downto 0);
    signal int_inData_q0       : UNSIGNED(31 downto 0);
    signal int_inData_address1 : UNSIGNED(6 downto 0);
    signal int_inData_ce1      : STD_LOGIC;
    signal int_inData_we1      : STD_LOGIC;
    signal int_inData_be1      : UNSIGNED(3 downto 0);
    signal int_inData_d1       : UNSIGNED(31 downto 0);
    signal int_inData_q1       : UNSIGNED(31 downto 0);
    signal int_inData_read     : STD_LOGIC;
    signal int_inData_write    : STD_LOGIC;
    signal int_inData_shift    : UNSIGNED(1 downto 0);
    signal int_result_x_address0 : UNSIGNED(6 downto 0);
    signal int_result_x_ce0    : STD_LOGIC;
    signal int_result_x_we0    : STD_LOGIC;
    signal int_result_x_be0    : UNSIGNED(3 downto 0);
    signal int_result_x_d0     : UNSIGNED(31 downto 0);
    signal int_result_x_q0     : UNSIGNED(31 downto 0);
    signal int_result_x_address1 : UNSIGNED(6 downto 0);
    signal int_result_x_ce1    : STD_LOGIC;
    signal int_result_x_we1    : STD_LOGIC;
    signal int_result_x_be1    : UNSIGNED(3 downto 0);
    signal int_result_x_d1     : UNSIGNED(31 downto 0);
    signal int_result_x_q1     : UNSIGNED(31 downto 0);
    signal int_result_x_read   : STD_LOGIC;
    signal int_result_x_write  : STD_LOGIC;
    signal int_result_y_address0 : UNSIGNED(6 downto 0);
    signal int_result_y_ce0    : STD_LOGIC;
    signal int_result_y_we0    : STD_LOGIC;
    signal int_result_y_be0    : UNSIGNED(3 downto 0);
    signal int_result_y_d0     : UNSIGNED(31 downto 0);
    signal int_result_y_q0     : UNSIGNED(31 downto 0);
    signal int_result_y_address1 : UNSIGNED(6 downto 0);
    signal int_result_y_ce1    : STD_LOGIC;
    signal int_result_y_we1    : STD_LOGIC;
    signal int_result_y_be1    : UNSIGNED(3 downto 0);
    signal int_result_y_d1     : UNSIGNED(31 downto 0);
    signal int_result_y_q1     : UNSIGNED(31 downto 0);
    signal int_result_y_read   : STD_LOGIC;
    signal int_result_y_write  : STD_LOGIC;
    signal int_result_w_address0 : UNSIGNED(6 downto 0);
    signal int_result_w_ce0    : STD_LOGIC;
    signal int_result_w_we0    : STD_LOGIC;
    signal int_result_w_be0    : UNSIGNED(3 downto 0);
    signal int_result_w_d0     : UNSIGNED(31 downto 0);
    signal int_result_w_q0     : UNSIGNED(31 downto 0);
    signal int_result_w_address1 : UNSIGNED(6 downto 0);
    signal int_result_w_ce1    : STD_LOGIC;
    signal int_result_w_we1    : STD_LOGIC;
    signal int_result_w_be1    : UNSIGNED(3 downto 0);
    signal int_result_w_d1     : UNSIGNED(31 downto 0);
    signal int_result_w_q1     : UNSIGNED(31 downto 0);
    signal int_result_w_read   : STD_LOGIC;
    signal int_result_w_write  : STD_LOGIC;
    signal int_result_h_address0 : UNSIGNED(6 downto 0);
    signal int_result_h_ce0    : STD_LOGIC;
    signal int_result_h_we0    : STD_LOGIC;
    signal int_result_h_be0    : UNSIGNED(3 downto 0);
    signal int_result_h_d0     : UNSIGNED(31 downto 0);
    signal int_result_h_q0     : UNSIGNED(31 downto 0);
    signal int_result_h_address1 : UNSIGNED(6 downto 0);
    signal int_result_h_ce1    : STD_LOGIC;
    signal int_result_h_we1    : STD_LOGIC;
    signal int_result_h_be1    : UNSIGNED(3 downto 0);
    signal int_result_h_d1     : UNSIGNED(31 downto 0);
    signal int_result_h_q1     : UNSIGNED(31 downto 0);
    signal int_result_h_read   : STD_LOGIC;
    signal int_result_h_write  : STD_LOGIC;

    component detectFaces_CONTROL_BUS_s_axi_ram is
        generic (
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  STD_LOGIC;
            be0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  STD_LOGIC;
            be1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component detectFaces_CONTROL_BUS_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_inData
int_inData : detectFaces_CONTROL_BUS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 80,
     AWIDTH   => log2(80))
port map (
     clk0     => ACLK,
     address0 => int_inData_address0,
     ce0      => int_inData_ce0,
     we0      => int_inData_we0,
     be0      => int_inData_be0,
     d0       => int_inData_d0,
     q0       => int_inData_q0,
     clk1     => ACLK,
     address1 => int_inData_address1,
     ce1      => int_inData_ce1,
     we1      => int_inData_we1,
     be1      => int_inData_be1,
     d1       => int_inData_d1,
     q1       => int_inData_q1);
-- int_result_x
int_result_x : detectFaces_CONTROL_BUS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 100,
     AWIDTH   => log2(100))
port map (
     clk0     => ACLK,
     address0 => int_result_x_address0,
     ce0      => int_result_x_ce0,
     we0      => int_result_x_we0,
     be0      => int_result_x_be0,
     d0       => int_result_x_d0,
     q0       => int_result_x_q0,
     clk1     => ACLK,
     address1 => int_result_x_address1,
     ce1      => int_result_x_ce1,
     we1      => int_result_x_we1,
     be1      => int_result_x_be1,
     d1       => int_result_x_d1,
     q1       => int_result_x_q1);
-- int_result_y
int_result_y : detectFaces_CONTROL_BUS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 100,
     AWIDTH   => log2(100))
port map (
     clk0     => ACLK,
     address0 => int_result_y_address0,
     ce0      => int_result_y_ce0,
     we0      => int_result_y_we0,
     be0      => int_result_y_be0,
     d0       => int_result_y_d0,
     q0       => int_result_y_q0,
     clk1     => ACLK,
     address1 => int_result_y_address1,
     ce1      => int_result_y_ce1,
     we1      => int_result_y_we1,
     be1      => int_result_y_be1,
     d1       => int_result_y_d1,
     q1       => int_result_y_q1);
-- int_result_w
int_result_w : detectFaces_CONTROL_BUS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 100,
     AWIDTH   => log2(100))
port map (
     clk0     => ACLK,
     address0 => int_result_w_address0,
     ce0      => int_result_w_ce0,
     we0      => int_result_w_we0,
     be0      => int_result_w_be0,
     d0       => int_result_w_d0,
     q0       => int_result_w_q0,
     clk1     => ACLK,
     address1 => int_result_w_address1,
     ce1      => int_result_w_ce1,
     we1      => int_result_w_we1,
     be1      => int_result_w_be1,
     d1       => int_result_w_d1,
     q1       => int_result_w_q1);
-- int_result_h
int_result_h : detectFaces_CONTROL_BUS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 100,
     AWIDTH   => log2(100))
port map (
     clk0     => ACLK,
     address0 => int_result_h_address0,
     ce0      => int_result_h_ce0,
     we0      => int_result_h_we0,
     be0      => int_result_h_be0,
     d0       => int_result_h_d0,
     q0       => int_result_h_q0,
     clk1     => ACLK,
     address1 => int_result_h_address1,
     ce1      => int_result_h_ce1,
     we1      => int_result_h_we1,
     be1      => int_result_h_be1,
     d1       => int_result_h_d1,
     q1       => int_result_h_q1);

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_inData_read = '0') and (int_result_x_read = '0') and (int_result_y_read = '0') and (int_result_w_read = '0') and (int_result_h_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_RESULT_SIZE_DATA_0 =>
                        rdata_data <= RESIZE(int_result_size(31 downto 0), 32);
                    when ADDR_RESULT_SIZE_CTRL =>
                        rdata_data <= (0 => int_result_size_ap_vld, others => '0');
                    when ADDR_FINISHED_DATA_0 =>
                        rdata_data <= RESIZE(int_finished(7 downto 0), 32);
                    when ADDR_FINISHED_CTRL =>
                        rdata_data <= (0 => int_finished_ap_vld, others => '0');
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                elsif (int_inData_read = '1') then
                    rdata_data <= int_inData_q1;
                elsif (int_result_x_read = '1') then
                    rdata_data <= int_result_x_q1;
                elsif (int_result_y_read = '1') then
                    rdata_data <= int_result_y_q1;
                elsif (int_result_w_read = '1') then
                    rdata_data <= int_result_w_q1;
                elsif (int_result_h_read = '1') then
                    rdata_data <= int_result_h_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_size <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (result_size_ap_vld = '1') then
                    int_result_size <= UNSIGNED(result_size); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_size_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (result_size_ap_vld = '1') then
                    int_result_size_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_RESULT_SIZE_CTRL) then
                    int_result_size_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_finished <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (finished_ap_vld = '1') then
                    int_finished <= UNSIGNED(finished); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_finished_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (finished_ap_vld = '1') then
                    int_finished_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_FINISHED_CTRL) then
                    int_finished_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- inData
    int_inData_address0  <= SHIFT_RIGHT(UNSIGNED(inData_address0), 2)(6 downto 0);
    int_inData_ce0       <= inData_ce0;
    int_inData_we0       <= '0';
    int_inData_be0       <= (others => '0');
    int_inData_d0        <= (others => '0');
    inData_q0            <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_inData_q0, TO_INTEGER(int_inData_shift) * 8)(7 downto 0));
    int_inData_address1  <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_inData_ce1       <= '1' when ar_hs = '1' or (int_inData_write = '1' and WVALID  = '1') else '0';
    int_inData_we1       <= '1' when int_inData_write = '1' and WVALID = '1' else '0';
    int_inData_be1       <= UNSIGNED(WSTRB);
    int_inData_d1        <= UNSIGNED(WDATA);
    -- result_x
    int_result_x_address0 <= UNSIGNED(result_x_address0);
    int_result_x_ce0     <= result_x_ce0;
    int_result_x_we0     <= result_x_we0;
    int_result_x_be0     <= (others => result_x_we0);
    int_result_x_d0      <= RESIZE(UNSIGNED(result_x_d0), 32);
    int_result_x_address1 <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_result_x_ce1     <= '1' when ar_hs = '1' or (int_result_x_write = '1' and WVALID  = '1') else '0';
    int_result_x_we1     <= '1' when int_result_x_write = '1' and WVALID = '1' else '0';
    int_result_x_be1     <= UNSIGNED(WSTRB);
    int_result_x_d1      <= UNSIGNED(WDATA);
    -- result_y
    int_result_y_address0 <= UNSIGNED(result_y_address0);
    int_result_y_ce0     <= result_y_ce0;
    int_result_y_we0     <= result_y_we0;
    int_result_y_be0     <= (others => result_y_we0);
    int_result_y_d0      <= RESIZE(UNSIGNED(result_y_d0), 32);
    int_result_y_address1 <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_result_y_ce1     <= '1' when ar_hs = '1' or (int_result_y_write = '1' and WVALID  = '1') else '0';
    int_result_y_we1     <= '1' when int_result_y_write = '1' and WVALID = '1' else '0';
    int_result_y_be1     <= UNSIGNED(WSTRB);
    int_result_y_d1      <= UNSIGNED(WDATA);
    -- result_w
    int_result_w_address0 <= UNSIGNED(result_w_address0);
    int_result_w_ce0     <= result_w_ce0;
    int_result_w_we0     <= result_w_we0;
    int_result_w_be0     <= (others => result_w_we0);
    int_result_w_d0      <= RESIZE(UNSIGNED(result_w_d0), 32);
    int_result_w_address1 <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_result_w_ce1     <= '1' when ar_hs = '1' or (int_result_w_write = '1' and WVALID  = '1') else '0';
    int_result_w_we1     <= '1' when int_result_w_write = '1' and WVALID = '1' else '0';
    int_result_w_be1     <= UNSIGNED(WSTRB);
    int_result_w_d1      <= UNSIGNED(WDATA);
    -- result_h
    int_result_h_address0 <= UNSIGNED(result_h_address0);
    int_result_h_ce0     <= result_h_ce0;
    int_result_h_we0     <= result_h_we0;
    int_result_h_be0     <= (others => result_h_we0);
    int_result_h_d0      <= RESIZE(UNSIGNED(result_h_d0), 32);
    int_result_h_address1 <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_result_h_ce1     <= '1' when ar_hs = '1' or (int_result_h_write = '1' and WVALID  = '1') else '0';
    int_result_h_we1     <= '1' when int_result_h_write = '1' and WVALID = '1' else '0';
    int_result_h_be1     <= UNSIGNED(WSTRB);
    int_result_h_d1      <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_inData_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_INDATA_BASE and raddr <= ADDR_INDATA_HIGH) then
                    int_inData_read <= '1';
                else
                    int_inData_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_inData_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_INDATA_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_INDATA_HIGH) then
                    int_inData_write <= '1';
                elsif (WVALID = '1') then
                    int_inData_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (inData_ce0 = '1') then
                    int_inData_shift <= UNSIGNED(inData_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_x_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_RESULT_X_BASE and raddr <= ADDR_RESULT_X_HIGH) then
                    int_result_x_read <= '1';
                else
                    int_result_x_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_x_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_RESULT_X_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_RESULT_X_HIGH) then
                    int_result_x_write <= '1';
                elsif (WVALID = '1') then
                    int_result_x_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_y_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_RESULT_Y_BASE and raddr <= ADDR_RESULT_Y_HIGH) then
                    int_result_y_read <= '1';
                else
                    int_result_y_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_y_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_RESULT_Y_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_RESULT_Y_HIGH) then
                    int_result_y_write <= '1';
                elsif (WVALID = '1') then
                    int_result_y_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_w_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_RESULT_W_BASE and raddr <= ADDR_RESULT_W_HIGH) then
                    int_result_w_read <= '1';
                else
                    int_result_w_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_w_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_RESULT_W_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_RESULT_W_HIGH) then
                    int_result_w_write <= '1';
                elsif (WVALID = '1') then
                    int_result_w_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_h_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_RESULT_H_BASE and raddr <= ADDR_RESULT_H_HIGH) then
                    int_result_h_read <= '1';
                else
                    int_result_h_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_result_h_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_RESULT_H_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_RESULT_H_HIGH) then
                    int_result_h_write <= '1';
                elsif (WVALID = '1') then
                    int_result_h_write <= '0';
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity detectFaces_CONTROL_BUS_s_axi_ram is
    generic (
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  STD_LOGIC;
        be0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  STD_LOGIC;
        be1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity detectFaces_CONTROL_BUS_s_axi_ram;

architecture behave of detectFaces_CONTROL_BUS_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
          if (address0 > DEPTH-1) then
              address0_tmp <= (others => '0');
          else
              address0_tmp <= address0;
          end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
          if (address1 > DEPTH-1) then
              address1_tmp <= (others => '0');
          else
              address1_tmp <= address1;
          end if;
    --synthesis translate_on
    end process;

    --read port 0
    process (clk0) begin
        if (clk0'event and clk0 = '1') then
            if (ce0 = '1') then
                q0 <= mem(to_integer(address0_tmp));
            end if;
        end if;
    end process;

    --read port 1
    process (clk1) begin
        if (clk1'event and clk1 = '1') then
            if (ce1 = '1') then
                q1 <= mem(to_integer(address1_tmp));
            end if;
        end if;
    end process;

    gen_write : for i in 0 to BYTES - 1 generate
    begin
        --write port 0
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1' and we0 = '1' and be0(i) = '1') then
                    mem(to_integer(address0_tmp))(8*i+7 downto 8*i) := d0(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

        --write port 1
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1' and we1 = '1' and be1(i) = '1') then
                    mem(to_integer(address1_tmp))(8*i+7 downto 8*i) := d1(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

    end generate;

end architecture behave;


