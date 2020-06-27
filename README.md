

# SMART CAMERA project for Xilinx Open Hardware 2020 design contest

#### Warning: Built for Vivado 2018.3
#### Notice: Git Large File Storage (LFS) is required to clone this repository (https://git-lfs.github.com/)

All files for regenerating Linux and Hardware design is included here, for more information see README inside each folder.

Link to project's introduction Video: https://youtu.be/JW_5zZQR6VQ

## HLS
Includes all source codes for Haar cascade Face detection IP with vivado HLS. [more information](HLS/README.md)
Based on this project: https://github.com/cornell-zhang/facedetect-fpga.git
#### N.B. Source codes from original project has been modified for addaptation to Zybo Z7-20.

## Linux
Includes laset kernel and root files for a rapid usage of project. [more information](Linux/README.md)

## programs
Includes source code of all programs for Zybo smart camera including facial recognition exemple included in Linux. [more information](programs/README.md)

## vivado
Includes all the files and the script for regenerating vivado project. [more information](vivado/README.md)
#### notice mipi licence is requierd.

## Yocto 
Includes all files for regenerating Linux for Yocto project. [more information](Yocto/README.md)

## Known Issues
* if camera stream has been stoped, a reboot is needed.
* sometimes due to bad initializations camera feed is not decoded correctly, a reboot is needed.
