// ==============================================================
// File generated on Thu Jul 18 13:24:15 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CONTROL_BUS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0xc00 : Data signal of result_size
//         bit 31~0 - result_size[31:0] (Read)
// 0xc04 : Control signal of result_size
//         bit 0  - result_size_ap_vld (Read/COR)
//         others - reserved
// 0xc08 : Data signal of finished
//         bit 7~0 - finished[7:0] (Read)
//         others  - reserved
// 0xc0c : Control signal of finished
//         bit 0  - finished_ap_vld (Read/COR)
//         others - reserved
// 0x200 ~
// 0x3ff : Memory 'inData' (320 * 8b)
//         Word n : bit [ 7: 0] - inData[4n]
//                  bit [15: 8] - inData[4n+1]
//                  bit [23:16] - inData[4n+2]
//                  bit [31:24] - inData[4n+3]
// 0x400 ~
// 0x5ff : Memory 'result_x' (100 * 32b)
//         Word n : bit [31:0] - result_x[n]
// 0x600 ~
// 0x7ff : Memory 'result_y' (100 * 32b)
//         Word n : bit [31:0] - result_y[n]
// 0x800 ~
// 0x9ff : Memory 'result_w' (100 * 32b)
//         Word n : bit [31:0] - result_w[n]
// 0xa00 ~
// 0xbff : Memory 'result_h' (100 * 32b)
//         Word n : bit [31:0] - result_h[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL          0x000
#define XDETECTFACES_CONTROL_BUS_ADDR_GIE              0x004
#define XDETECTFACES_CONTROL_BUS_ADDR_IER              0x008
#define XDETECTFACES_CONTROL_BUS_ADDR_ISR              0x00c
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_SIZE_DATA 0xc00
#define XDETECTFACES_CONTROL_BUS_BITS_RESULT_SIZE_DATA 32
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_SIZE_CTRL 0xc04
#define XDETECTFACES_CONTROL_BUS_ADDR_FINISHED_DATA    0xc08
#define XDETECTFACES_CONTROL_BUS_BITS_FINISHED_DATA    8
#define XDETECTFACES_CONTROL_BUS_ADDR_FINISHED_CTRL    0xc0c
#define XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE      0x200
#define XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH      0x3ff
#define XDETECTFACES_CONTROL_BUS_WIDTH_INDATA          8
#define XDETECTFACES_CONTROL_BUS_DEPTH_INDATA          320
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE    0x400
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH    0x5ff
#define XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_X        32
#define XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_X        100
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE    0x600
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH    0x7ff
#define XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_Y        32
#define XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_Y        100
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE    0x800
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH    0x9ff
#define XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_W        32
#define XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_W        100
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE    0xa00
#define XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH    0xbff
#define XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_H        32
#define XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_H        100

