cmake_minimum_required(VERSION 2.8)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)
set(CMAKE_SYSTEM_NAME Linux)
set(TOOLCHAIN_PREFIX /usr/bin/arm-poky-linux-gnueabi-)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
project( face_rec )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
file( GLOB DRIV_SOURCES driv/*.c )
file( GLOB DRIV_HEADERS driv/*.h )
add_executable( face_rec face_rec.cpp ${DRIV_SOURCES} ${DRIV_HEADERS})
target_link_libraries( face_rec ${OpenCV_LIBS} )