#!/bin/bash

export PATH_TO_DEPLOY_IMAGE=../build/tmp/deploy/images/zybo-smartcam
cp -ip ${PATH_TO_DEPLOY_IMAGE}/bitstream-* ToSDCard/bitstream
cp -ip ${PATH_TO_DEPLOY_IMAGE}/boot.bin-zybo-smartcam-* ToSDCard/boot.bin
cp -ip ${PATH_TO_DEPLOY_IMAGE}/u-boot-zybo-smartcam-*.img ToSDCard/u-boot.img
cp -ip ${PATH_TO_DEPLOY_IMAGE}/uEnv.txt ToSDCard/uEnv.txt
#cp -ip ${PATH_TO_DEPLOY_IMAGE}/core-image-minimal-zybo-smartcam-*.rootfs.cpio.gz.u-boot ToSDCard/core-image-minimal-zybo-smartcam.rootfs.cpio.gz.u-boot
cp -ip ${PATH_TO_DEPLOY_IMAGE}/core-image-minimal-zybo-smartcam-*.rootfs.tar.gz root/core-image-minimal-zybo-smartcam.rootfs.tar.gz
cp -ip ${PATH_TO_DEPLOY_IMAGE}/uImage--*-zybo-smartcam-*.bin ToSDCard/uImage
cp -ip ${PATH_TO_DEPLOY_IMAGE}/devicetree/smartcam-system.dtb ToSDCard/smartcam-system.dtb
