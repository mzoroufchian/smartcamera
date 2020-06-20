# ==============================================================
# File generated on Fri Jul 19 09:53:10 +0200 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XDetec_movement" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_DETEC_DATA_BASEADDR" \
        "C_S_AXI_DETEC_DATA_HIGHADDR"

    xdefine_config_file $drv_handle "xdetec_movement_g.c" "XDetec_movement" \
        "DEVICE_ID" \
        "C_S_AXI_DETEC_DATA_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XDetec_movement" \
        "DEVICE_ID" \
        "C_S_AXI_DETEC_DATA_BASEADDR" \
        "C_S_AXI_DETEC_DATA_HIGHADDR"
}

