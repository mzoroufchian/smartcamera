

# SMART CAMERA Linux

## Linux
Includes laset kernel and root files for a rapid usage of project.

### preparing sdcard
Format an SD card with two partitions: The first should be at least 500 MB and be FAT formatted. The second needs to be at least 1.5 GB (3 GB is preferred) and formatted as ext4. The second partition will be overwritten, so don't put anything on it that you don't want to lose. If you are uncertain how to do this in Ubuntu, gparted is a well-documented tool that can make the process easy.
In this tutorial we named first partition BOOT and second rootfs.

### copy rootfs and kernel
Follow below steps to copy and run your linux distribution
1.	Obtain a microSD card that has two partitions, its first partition formatted as a FAT filesystem (BOOT) and second partition as ext4(rootfs).
2.	run following commands to copy Linux kernel

```
rm -rf /media/<your_user_name> /BOOT/*
cp BOOT/*  /media/<your_user_name>/BOOT/
```

3.	run following commands to copy rootfs

```
sudo rm -rf /media/<your_user_name>/rootfs/*
sudo tar x -C /media/<your_user_name>/rootfs -f rootfs/core-image-minimal-zybo-smartcam.rootfs.tar.gz
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


