// ==============================================================
// File generated on Thu Jul 18 15:48:46 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDETEC_MOVEMENT_H
#define XDETEC_MOVEMENT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdetec_movement_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Detec_data_BaseAddress;
} XDetec_movement_Config;
#endif

typedef struct {
    u32 Detec_data_BaseAddress;
    u32 IsReady;
} XDetec_movement;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDetec_movement_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDetec_movement_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDetec_movement_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDetec_movement_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDetec_movement_Initialize(XDetec_movement *InstancePtr, u16 DeviceId);
XDetec_movement_Config* XDetec_movement_LookupConfig(u16 DeviceId);
int XDetec_movement_CfgInitialize(XDetec_movement *InstancePtr, XDetec_movement_Config *ConfigPtr);
#else
int XDetec_movement_Initialize(XDetec_movement *InstancePtr, const char* InstanceName);
int XDetec_movement_Release(XDetec_movement *InstancePtr);
#endif

void XDetec_movement_Start(XDetec_movement *InstancePtr);
u32 XDetec_movement_IsDone(XDetec_movement *InstancePtr);
u32 XDetec_movement_IsIdle(XDetec_movement *InstancePtr);
u32 XDetec_movement_IsReady(XDetec_movement *InstancePtr);
void XDetec_movement_EnableAutoRestart(XDetec_movement *InstancePtr);
void XDetec_movement_DisableAutoRestart(XDetec_movement *InstancePtr);

u32 XDetec_movement_Get_motion(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_motion_vld(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_position(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_position_vld(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_finished(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_finished_vld(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_inData_BaseAddress(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_inData_HighAddress(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_inData_TotalBytes(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_inData_BitWidth(XDetec_movement *InstancePtr);
u32 XDetec_movement_Get_inData_Depth(XDetec_movement *InstancePtr);
u32 XDetec_movement_Write_inData_Words(XDetec_movement *InstancePtr, int offset, int *data, int length);
u32 XDetec_movement_Read_inData_Words(XDetec_movement *InstancePtr, int offset, int *data, int length);
u32 XDetec_movement_Write_inData_Bytes(XDetec_movement *InstancePtr, int offset, char *data, int length);
u32 XDetec_movement_Read_inData_Bytes(XDetec_movement *InstancePtr, int offset, char *data, int length);

void XDetec_movement_InterruptGlobalEnable(XDetec_movement *InstancePtr);
void XDetec_movement_InterruptGlobalDisable(XDetec_movement *InstancePtr);
void XDetec_movement_InterruptEnable(XDetec_movement *InstancePtr, u32 Mask);
void XDetec_movement_InterruptDisable(XDetec_movement *InstancePtr, u32 Mask);
void XDetec_movement_InterruptClear(XDetec_movement *InstancePtr, u32 Mask);
u32 XDetec_movement_InterruptGetEnabled(XDetec_movement *InstancePtr);
u32 XDetec_movement_InterruptGetStatus(XDetec_movement *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
