// ==============================================================
// File generated on Fri Jul 19 09:53:10 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdetec_movement.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDetec_movement_CfgInitialize(XDetec_movement *InstancePtr, XDetec_movement_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Detec_data_BaseAddress = ConfigPtr->Detec_data_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDetec_movement_Start(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL) & 0x80;
    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDetec_movement_IsDone(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDetec_movement_IsIdle(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDetec_movement_IsReady(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDetec_movement_EnableAutoRestart(XDetec_movement *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL, 0x80);
}

void XDetec_movement_DisableAutoRestart(XDetec_movement *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_AP_CTRL, 0);
}

u32 XDetec_movement_Get_motion(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_MOTION_DATA);
    return Data;
}

u32 XDetec_movement_Get_motion_vld(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_MOTION_CTRL);
    return Data & 0x1;
}

u32 XDetec_movement_Get_position(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_POSITION_DATA);
    return Data;
}

u32 XDetec_movement_Get_position_vld(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_POSITION_CTRL);
    return Data & 0x1;
}

u32 XDetec_movement_Get_finished(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_FINISHED_DATA);
    return Data;
}

u32 XDetec_movement_Get_finished_vld(XDetec_movement *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_FINISHED_CTRL);
    return Data & 0x1;
}

u32 XDetec_movement_Get_inData_BaseAddress(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE);
}

u32 XDetec_movement_Get_inData_HighAddress(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH);
}

u32 XDetec_movement_Get_inData_TotalBytes(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH - XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + 1);
}

u32 XDetec_movement_Get_inData_BitWidth(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETEC_MOVEMENT_DETEC_DATA_WIDTH_INDATA;
}

u32 XDetec_movement_Get_inData_Depth(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDETEC_MOVEMENT_DETEC_DATA_DEPTH_INDATA;
}

u32 XDetec_movement_Write_inData_Words(XDetec_movement *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH - XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XDetec_movement_Read_inData_Words(XDetec_movement *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH - XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + (offset + i)*4);
    }
    return length;
}

u32 XDetec_movement_Write_inData_Bytes(XDetec_movement *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH - XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XDetec_movement_Read_inData_Bytes(XDetec_movement *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_HIGH - XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Detec_data_BaseAddress + XDETEC_MOVEMENT_DETEC_DATA_ADDR_INDATA_BASE + offset + i);
    }
    return length;
}

void XDetec_movement_InterruptGlobalEnable(XDetec_movement *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_GIE, 1);
}

void XDetec_movement_InterruptGlobalDisable(XDetec_movement *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_GIE, 0);
}

void XDetec_movement_InterruptEnable(XDetec_movement *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER);
    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER, Register | Mask);
}

void XDetec_movement_InterruptDisable(XDetec_movement *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER);
    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER, Register & (~Mask));
}

void XDetec_movement_InterruptClear(XDetec_movement *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDetec_movement_WriteReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_ISR, Mask);
}

u32 XDetec_movement_InterruptGetEnabled(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_IER);
}

u32 XDetec_movement_InterruptGetStatus(XDetec_movement *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDetec_movement_ReadReg(InstancePtr->Detec_data_BaseAddress, XDETEC_MOVEMENT_DETEC_DATA_ADDR_ISR);
}

