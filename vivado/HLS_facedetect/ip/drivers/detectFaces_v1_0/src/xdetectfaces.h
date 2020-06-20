// ==============================================================
// File generated on Thu Jul 18 13:24:15 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDETECTFACES_H
#define XDETECTFACES_H

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
#include "xdetectfaces_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XDetectfaces_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XDetectfaces;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDetectfaces_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDetectfaces_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDetectfaces_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDetectfaces_ReadReg(BaseAddress, RegOffset) \
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
int XDetectfaces_Initialize(XDetectfaces *InstancePtr, u16 DeviceId);
XDetectfaces_Config* XDetectfaces_LookupConfig(u16 DeviceId);
int XDetectfaces_CfgInitialize(XDetectfaces *InstancePtr, XDetectfaces_Config *ConfigPtr);
#else
int XDetectfaces_Initialize(XDetectfaces *InstancePtr, const char* InstanceName);
int XDetectfaces_Release(XDetectfaces *InstancePtr);
#endif

void XDetectfaces_Start(XDetectfaces *InstancePtr);
u32 XDetectfaces_IsDone(XDetectfaces *InstancePtr);
u32 XDetectfaces_IsIdle(XDetectfaces *InstancePtr);
u32 XDetectfaces_IsReady(XDetectfaces *InstancePtr);
void XDetectfaces_EnableAutoRestart(XDetectfaces *InstancePtr);
void XDetectfaces_DisableAutoRestart(XDetectfaces *InstancePtr);

u32 XDetectfaces_Get_result_size(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_size_vld(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_finished(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_finished_vld(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_inData_BaseAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_inData_HighAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_inData_TotalBytes(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_inData_BitWidth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_inData_Depth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Write_inData_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Read_inData_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Write_inData_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Read_inData_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Get_result_x_BaseAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_x_HighAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_x_TotalBytes(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_x_BitWidth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_x_Depth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Write_result_x_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Read_result_x_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Write_result_x_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Read_result_x_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Get_result_y_BaseAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_y_HighAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_y_TotalBytes(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_y_BitWidth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_y_Depth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Write_result_y_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Read_result_y_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Write_result_y_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Read_result_y_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Get_result_w_BaseAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_w_HighAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_w_TotalBytes(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_w_BitWidth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_w_Depth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Write_result_w_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Read_result_w_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Write_result_w_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Read_result_w_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Get_result_h_BaseAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_h_HighAddress(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_h_TotalBytes(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_h_BitWidth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Get_result_h_Depth(XDetectfaces *InstancePtr);
u32 XDetectfaces_Write_result_h_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Read_result_h_Words(XDetectfaces *InstancePtr, int offset, int *data, int length);
u32 XDetectfaces_Write_result_h_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);
u32 XDetectfaces_Read_result_h_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length);

void XDetectfaces_InterruptGlobalEnable(XDetectfaces *InstancePtr);
void XDetectfaces_InterruptGlobalDisable(XDetectfaces *InstancePtr);
void XDetectfaces_InterruptEnable(XDetectfaces *InstancePtr, u32 Mask);
void XDetectfaces_InterruptDisable(XDetectfaces *InstancePtr, u32 Mask);
void XDetectfaces_InterruptClear(XDetectfaces *InstancePtr, u32 Mask);
u32 XDetectfaces_InterruptGetEnabled(XDetectfaces *InstancePtr);
u32 XDetectfaces_InterruptGetStatus(XDetectfaces *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
