cmake_minimum_required(VERSION 2.8)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)
set(CMAKE_SYSTEM_NAME Linux)
set(TOOLCHAIN_PREFIX /usr/bin/arm-poky-linux-gnueabi-)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
project( Pcam_SW_detection )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
file( GLOB DRIV_HEADERS inc/*.h )
add_executable( Pcam_SW_detection haar.cpp ${DRIV_HEADERS})
target_link_libraries( Pcam_SW_detection ${OpenCV_LIBS} )