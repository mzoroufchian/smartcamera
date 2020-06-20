// ==============================================================
// File generated on Thu Jul 18 15:48:46 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// detec_data
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
// 0x200 : Data signal of motion
//         bit 7~0 - motion[7:0] (Read)
//         others  - reserved
// 0x204 : Control signal of motion
//         bit 0  - motion_ap_vld (Read/COR)
//         others - reserved
// 0x208 : Data signal of position
//         bit 31~0 - position[31:0] (Read)
// 0x20c : Control signal of position
//         bit 0  - position_ap_vld (Read/COR)
//         others - reserved
// 0x210 : Data signal of finished
//         bit 7~0 - finished[7:0] (Read)
//         others  - reserved
// 0x214 : Control signal of finished
//         bit 0  - finished_ap_vld (Read/COR)
//         others - reserved
// 0x100 ~
// 0x1ff : Memory 'inData' (160 * 8b)
//         Word n : bit [ 7: 0] - inData[4n]
//                  bit [15: 8] - inData[4n+1]
//                  bit [23:16] - inData[4n+2]
//                  bit [31:24] - inData[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL       0x000
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_GIE           0x004
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER           0x008
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_ISR           0x00c
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_MOTION_DATA   0x200
#define XDETEC_MOVEMENT_DETEC_DATA_BITS_MOTION_DATA   8
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_MOTION_CTRL   0x204
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_POSITION_DATA 0x208
#define XDETEC_MOVEMENT_DETEC_DATA_BITS_POSITION_DATA 32
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_POSITION_CTRL 0x20c
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_FINISHED_DATA 0x210
#define XDETEC_MOVEMENT_DETEC_DATA_BITS_FINISHED_DATA 8
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_FINISHED_CTRL 0x214
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE   0x100
#define XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH   0x1ff
#define XDETEC_MOVEMENT_DETEC_DATA_WIDTH_INDATA       8
#define XDETEC_MOVEMENT_DETEC_DATA_DEPTH_INDATA       160

