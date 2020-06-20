FILESEXTRAPATHS_prepend := "${THISDIR}/linux-xlnx:"

SRC_URI_append_zybo-smartcam = " \
	file://0001-drm-xilinx-Add-encoder-for-Digilent-boards.patch \
	file://0002-clk-Add-driver-for-axi_dynclk-IP-Core.patch \
	file://0003-drm-xilinx-Fix-DPMS-transition-to-on.patch \
	file://ov5640.patch \
	file://mipi-2.patch \
	"

SRC_URI_append_minized-zynq7 = " file://0004-minized-wifi-bluetooth.cfg"
