// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XHLS_SATURATION_ENHANCE_H
#define XHLS_SATURATION_ENHANCE_H

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
#include "xhls_saturation_enhance_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHls_saturation_enhance_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHls_saturation_enhance;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_saturation_enhance_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_saturation_enhance_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_saturation_enhance_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_saturation_enhance_ReadReg(BaseAddress, RegOffset) \
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
int XHls_saturation_enhance_Initialize(XHls_saturation_enhance *InstancePtr, u16 DeviceId);
XHls_saturation_enhance_Config* XHls_saturation_enhance_LookupConfig(u16 DeviceId);
int XHls_saturation_enhance_CfgInitialize(XHls_saturation_enhance *InstancePtr, XHls_saturation_enhance_Config *ConfigPtr);
#else
int XHls_saturation_enhance_Initialize(XHls_saturation_enhance *InstancePtr, const char* InstanceName);
int XHls_saturation_enhance_Release(XHls_saturation_enhance *InstancePtr);
#endif


void XHls_saturation_enhance_Set_height(XHls_saturation_enhance *InstancePtr, u32 Data);
u32 XHls_saturation_enhance_Get_height(XHls_saturation_enhance *InstancePtr);
void XHls_saturation_enhance_Set_width(XHls_saturation_enhance *InstancePtr, u32 Data);
u32 XHls_saturation_enhance_Get_width(XHls_saturation_enhance *InstancePtr);
void XHls_saturation_enhance_Set_sat(XHls_saturation_enhance *InstancePtr, u32 Data);
u32 XHls_saturation_enhance_Get_sat(XHls_saturation_enhance *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
