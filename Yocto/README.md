

# Yocto Linux for SMART CAMERA

# Build using script

run following comands to start building

```
$./build_linux.sh
```
when finished open “uEnv.txt” inside “yocto_image/ToSDCard” directory and change “bootargs” to following:

```
bootargs=earlyprintk console=ttyPS0,115200 uio_pdrv_genirq.of_id=generic-uio root=/dev/mmcblk0p2 rw rootwait
```
continue steps from 'preparing sdcard'
# Build manually 

## Preparation for Yocto
A Linux operating system is needed to use yocto. 
Open Linux terminal and follow the steps below:

```
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
```
copy “meta-smartcam” folder to “yocto/layers”.
in yocto root directory do followinf:

```
source layers/poky/oe-init-build-env
cd conf/
gedit bblayers.conf &
```

Add following lines to bblayers.conf:
```
BBLAYERS ?= " \
  /home/<your_user_name>/yocto/layers/poky/meta \
  /home/<your_user_name>/yocto/layers/meta-openembedded/meta-oe \
  /home/<your_user_name>/yocto/layers/poky/meta-poky \
  /home/<your_user_name>/yocto/layers/poky/meta-yocto-bsp \
  /home/<your_user_name>/yocto/layers/meta-xilinx/meta-xilinx-bsp \
  /home/<your_user_name>/yocto/layers/meta-smartcam \
```

Copy (and replace) “local.conf” to “build/conf/”.
Continue as following:
```
cd ..
cd layers
sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat
```

##	Exporting hardware
Copy “hw-description” folder to project root directory.
Edith FILESEXTRAPATH_prepend and HW_BD inside “layers/meta-smartcam/recipes-bsp/reference-design/zybo-smartcam-linux.bb” 
accordingly (exemple HW_BD = "system" name of block design and FILESEXTRAPATH_prepend point to <project_vivado>.sdk).

## Generating Linux
Run following command to generate Linux (depending on machine it might take several hours) it must be run on project root 
directory (yocto directory)
```
source layers/poky/poky/oe-init-build-env
```
After this command terminal will automatically change directory to build
```
bitbake core-image-minimal 
```
It is possible to increase build speed by using parallel build, to do so you can edith following comands in local.conf 
(depending on machine capabilities):

```
BB_NUMBER_THREADS ?= "6"
PARALLEL_MAKE ?= "-j 6"
```

## Preparing images (after build)
Create new directory named “yocto_image” and inside it two other directories named “root” and “ToSDCard”.
Copy “fill_yocto_image.sh” to “yocto_image”, this is the script to fill “root” and “ToSDCard”.
Run following commands inside yocto_image directory:
```
chmod u+x fill_yocto_image.sh
./fill_yocto_image.sh
```
open “uEnv.txt” inside “ToSDCard” directory and change “bootargs” to following:
```
	bootargs=earlyprintk console=ttyPS0,115200 uio_pdrv_genirq.of_id=generic-uio root=/dev/mmcblk0p2 rw rootwait
```
# preparing sdcard
Format an SD card with two partitions: The first should be at least 500 MB and be FAT formatted. The second needs 
to be at least 1.5 GB (3 GB is preferred) and formatted as ext4. The second partition will be overwritten, so don't
put anything on it that you don't want to lose. If you are uncertain how to do this in Ubuntu, gparted is a 
well-documented tool that can make the process easy.
In this tutorial we named first partition BOOT and second rootfs.

# copy rootfs and kernel
Follow below steps to copy and run your linux distribution
1.	Obtain a microSD card that has two partitions, its first partition formatted as a FAT filesystem (BOOT) and second partition as ext4(rootfs).
2.	run following commands to copy Linux kernel

```
rm -rf /media/<your_user_name>/BOOT/*
cp /home/<your_user_name>/Yocto/yocto_image/ToSDCard/*  /media/<your_user_name>/BOOT/
```

3.	run following commands to copy rootfs

```
sudo rm -rf /media/<your_user_name>/rootfs/*
sudo tar x -C /media/<your_user_name>/rootfs -f /home/<your_user_name>/Yocto/yocto_image/root/core-image-minimal-zybo-smartcam.rootfs.tar.gz
```

4.	Eject the SD card from your computer and insert it into the Zybo Z7
5.	Attach a power source and select it with JP5 (note that using USB for power may not provide sufficient current)
6.	Attache Pcam 5C to Zybo
7.	If not already done to provide power, attach a microUSB cable between the computer and the Zybo Z7
8.	Open a terminal program (such as putty) and connect to the Zybo Z7 with 115200/8/N/1 settings (and no Hardware flow control). 
9.	Attach the Zybo Z7 to your computer using Ethernet (after boot ethernet need to be configured with: “ifconfig eth0 <IP-address-if-needed>”)
10.	Attach the Zybo Z7 to an HDMI monitor (HDMI TX port).
11.	Use following username and password:

```
Login: root
Password: zyboZybo
```

12.	After login goto face-recognition subfolder and run cam_script with following commands:

```
cd /home/root/face-recognition
./cam_script
```

13.	camera output is shown on monitor, the program asks name for the first 5 detected faces (when each one is detected) later they will be used as the reference for facial recognition.

