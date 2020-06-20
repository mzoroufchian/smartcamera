#!/bin/bash

sudo apt-get install git
mkdir Yocto
cd Yocto/
mkdir layers
cd layers/
mkdir poky
git clone git://git.yoctoproject.org/poky
cd poky/
git checkout thud
cd ..
git clone git://git.yoctoproject.org/meta-xilinx
cd meta-xilinx
git checkout thud
cd ..
git clone git://git.openembedded.org/meta-openembedded
cd meta-openembedded
git checkout thud
cd ../..
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat
cp -rf ../hw-description .
cp -rf ../meta-smartcam layers/
source layers/poky/oe-init-build-env
cp -f ../../local.conf conf/
bitbake-layers add-layer ../layers/meta-openembedded/meta-oe
bitbake-layers add-layer ../layers/meta-xilinx/meta-xilinx-bsp
bitbake-layers add-layer ../layers/meta-smartcam
bitbake core-image-minimal
cd ..
mkdir yocto_image
cd yocto_image
mkdir ToSDCard
mkdir root
sync
export PATH_TO_DEPLOY_IMAGE=../build/tmp/deploy/images/zybo-smartcam
cp -ip ${PATH_TO_DEPLOY_IMAGE}/bitstream-* ToSDCard/bitstream
cp -ip ${PATH_TO_DEPLOY_IMAGE}/boot.bin-zybo-smartcam-* ToSDCard/boot.bin
cp -ip ${PATH_TO_DEPLOY_IMAGE}/u-boot-zybo-smartcam-*.img ToSDCard/u-boot.img
cp -ip ${PATH_TO_DEPLOY_IMAGE}/uEnv.txt ToSDCard/uEnv.txt
#cp -ip ${PATH_TO_DEPLOY_IMAGE}/core-image-minimal-zybo-smartcam-*.rootfs.cpio.gz.u-boot ToSDCard/core-image-minimal-zybo-smartcam.rootfs.cpio.gz.u-boot
cp -ip ${PATH_TO_DEPLOY_IMAGE}/core-image-minimal-zybo-smartcam-*.rootfs.tar.gz root/core-image-minimal-zybo-smartcam.rootfs.tar.gz
cp -ip ${PATH_TO_DEPLOY_IMAGE}/uImage--*-zybo-smartcam-*.bin ToSDCard/uImage
cp -ip ${PATH_TO_DEPLOY_IMAGE}/devicetree/smartcam-system.dtb ToSDCard/smartcam-system.dtb
sync

