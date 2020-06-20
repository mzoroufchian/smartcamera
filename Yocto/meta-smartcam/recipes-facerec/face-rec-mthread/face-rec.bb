SUMMARY = "Face recognirion and detection programe"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
DEPENDS = "opencv"

SRC_URI = "\
	file://CMakeLists.txt \
	file://Mthr_face_rec.cpp \
	file://driv \
	file://cam_script \
	file://openface.nn4.small2.v1.t7 \
	"
inherit pkgconfig cmake

S = "${WORKDIR}"
PR = "r1"
PV = "0.1"
EXTRA_OECMAKE = ""

do_install() {
	install -d ${D}/home/root/face-recognition
	install -m 0755 ${S}/cam_script ${D}/home/root/face-recognition
	install -m 0755 ${S}/openface.nn4.small2.v1.t7 ${D}/home/root/face-recognition
	install -m 0755 ${S}/build/Mthr_face_rec ${D}/home/root/face-recognition
}
FILES_${PN} = "/home/root/face-recognition"
RDEPENDS_${PN} += "bash"
