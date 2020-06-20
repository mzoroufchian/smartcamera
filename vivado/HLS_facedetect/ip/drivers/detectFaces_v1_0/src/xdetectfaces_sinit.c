// ==============================================================
// File generated on Thu Jul 18 13:24:15 +0200 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdetectfaces.h"

extern XDetectfaces_Config XDetectfaces_ConfigTable[];

XDetectfaces_Config *XDetectfaces_LookupConfig(u16 DeviceId) {
	XDetectfaces_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDETECTFACES_NUM_INSTANCES; Index++) {
		if (XDetectfaces_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDetectfaces_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDetectfaces_Initialize(XDetectfaces *InstancePtr, u16 DeviceId) {
	XDetectfaces_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDetectfaces_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDetectfaces_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

