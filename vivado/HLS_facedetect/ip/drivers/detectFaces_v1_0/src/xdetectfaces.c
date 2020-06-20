// ==============================================================
// File generated on Thu Jul 18 13:24:15 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdetectfaces.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDetectfaces_CfgInitialize(XDetectfaces *InstancePtr, XDetectfaces_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDetectfaces_Start(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDetectfaces_IsDone(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDetectfaces_IsIdle(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDetectfaces_IsReady(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDetectfaces_EnableAutoRestart(XDetectfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XDetectfaces_DisableAutoRestart(XDetectfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

u32 XDetectfaces_Get_result_size(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_RESULT_SIZE_DATA);
    return Data;
}

u32 XDetectfaces_Get_result_size_vld(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_RESULT_SIZE_CTRL);
    return Data & 0x1;
}

u32 XDetectfaces_Get_finished(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_FINISHED_DATA);
    return Data;
}

u32 XDetectfaces_Get_finished_vld(XDetectfaces *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_FINISHED_CTRL);
    return Data & 0x1;
}

u32 XDetectfaces_Get_inData_BaseAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE);
}

u32 XDetectfaces_Get_inData_HighAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH);
}

u32 XDetectfaces_Get_inData_TotalBytes(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + 1);
}

u32 XDetectfaces_Get_inData_BitWidth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_WIDTH_INDATA;
}

u32 XDetectfaces_Get_inData_Depth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_DEPTH_INDATA;
}

u32 XDetectfaces_Write_inData_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_inData_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetectfaces_Write_inData_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_inData_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_INDATA_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_INDATA_BASE + offset + i);
    }
    return length;
}

u32 XDetectfaces_Get_result_x_BaseAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE);
}

u32 XDetectfaces_Get_result_x_HighAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH);
}

u32 XDetectfaces_Get_result_x_TotalBytes(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + 1);
}

u32 XDetectfaces_Get_result_x_BitWidth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_X;
}

u32 XDetectfaces_Get_result_x_Depth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_X;
}

u32 XDetectfaces_Write_result_x_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_x_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetectfaces_Write_result_x_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_x_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_X_BASE + offset + i);
    }
    return length;
}

u32 XDetectfaces_Get_result_y_BaseAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE);
}

u32 XDetectfaces_Get_result_y_HighAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH);
}

u32 XDetectfaces_Get_result_y_TotalBytes(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + 1);
}

u32 XDetectfaces_Get_result_y_BitWidth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_Y;
}

u32 XDetectfaces_Get_result_y_Depth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_Y;
}

u32 XDetectfaces_Write_result_y_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_y_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetectfaces_Write_result_y_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_y_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_Y_BASE + offset + i);
    }
    return length;
}

u32 XDetectfaces_Get_result_w_BaseAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE);
}

u32 XDetectfaces_Get_result_w_HighAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH);
}

u32 XDetectfaces_Get_result_w_TotalBytes(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + 1);
}

u32 XDetectfaces_Get_result_w_BitWidth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_W;
}

u32 XDetectfaces_Get_result_w_Depth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_W;
}

u32 XDetectfaces_Write_result_w_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_w_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetectfaces_Write_result_w_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_w_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_W_BASE + offset + i);
    }
    return length;
}

u32 XDetectfaces_Get_result_h_BaseAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE);
}

u32 XDetectfaces_Get_result_h_HighAddress(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH);
}

u32 XDetectfaces_Get_result_h_TotalBytes(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + 1);
}

u32 XDetectfaces_Get_result_h_BitWidth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_WIDTH_RESULT_H;
}

u32 XDetectfaces_Get_result_h_Depth(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETECTFACES_CONTROL_BUS_DEPTH_RESULT_H;
}

u32 XDetectfaces_Write_result_h_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_h_Words(XDetectfaces *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetectfaces_Write_result_h_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetectfaces_Read_result_h_Bytes(XDetectfaces *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_HIGH - XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_bus_BaseAddress + XDETECTFACES_CONTROL_BUS_ADDR_RESULT_H_BASE + offset + i);
    }
    return length;
}

void XDetectfaces_InterruptGlobalEnable(XDetectfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_GIE, 1);
}

void XDetectfaces_InterruptGlobalDisable(XDetectfaces *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_GIE, 0);
}

void XDetectfaces_InterruptEnable(XDetectfaces *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_IER);
    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XDetectfaces_InterruptDisable(XDetectfaces *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_IER);
    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XDetectfaces_InterruptClear(XDetectfaces *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetectfaces_WriteReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XDetectfaces_InterruptGetEnabled(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_IER);
}

u32 XDetectfaces_InterruptGetStatus(XDetectfaces *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDetectfaces_ReadReg(InstancePtr->Control_bus_BaseAddress, XDETECTFACES_CONTROL_BUS_ADDR_ISR);
}

