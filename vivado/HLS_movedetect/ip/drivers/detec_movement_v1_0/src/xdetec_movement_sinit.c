// ==============================================================
// File generated on Fri Jul 19 09:53:10 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdetec_movement.h"

extern XDetec_movement_Config XDetec_movement_ConfigTable[];

XDetec_movement_Config *XDetec_movement_LookupConfig(u16 DeviceId) {
	XDetec_movement_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDETEC_MOVEMENT_NUM_INSTANCES; Index++) {
		if (XDetec_movement_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDetec_movement_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDetec_movement_Initialize(XDetec_movement *InstancePtr, u16 DeviceId) {
	XDetec_movement_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDetec_movement_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDetec_movement_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

