

# SMART CAMERA project for Xilinx Open Hardware 2020 design contest

#### Warning: Built for Vivado 2018.3
#### Notice: Git Large File Storage (LFS) is required to clone this repository

All files for regenerating Linux and Hardware design is included here, for more information see README inside each folder.

## HLS
Includes all source codes for Haar cascade Face detection IP with vivado HLS. 
based on this project: https://github.com/cornell-zhang/facedetect-fpga.git
#### N.B. Source codes from original project has been modified for addaptation to Zybo Z7-20.

## Linux
Includes laset kernel and root files for a rapid usage of project.

## programs
Includes source code of all programs for Zybo smart camera including facial recognition exemple included in Linux.

## vivado
Includes all the files and the script for regenerating vivado project.
#### notice mipi licence is requierd.

## Yocto 
Includes all files for regenerating Linux for Yocto project.

## Known Issues
* if camera stream has been stoped, a reboot is needed.
* sometimes due to bad initializations camera feed is not decoded currectly, a reboot is needed.
