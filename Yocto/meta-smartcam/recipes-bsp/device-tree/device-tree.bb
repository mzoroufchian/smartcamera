SUMMARY = "smartcam BSP device trees"
DESCRIPTION = "smartcam BSP device trees from within layer."
SECTION = "bsp"

# the device trees from within the layer are licensed as MIT
LICENSE = "MIT"
#LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit devicetree

PROVIDES = "virtual/dtb"

COMPATIBLE_MACHINE_zybo-smartcam = ".*"
SRC_URI_append_zybo-smartcam =  "file://smartcam-system.dts"
#FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

