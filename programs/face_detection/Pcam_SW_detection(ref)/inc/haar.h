#ifndef __HAAR_H__
#define __HAAR_H__



const int ROWS = 25;
const int COLS = 25;

const int NUM_BANKS = 12;
const int SIZE = 2913;



#ifndef __PARAMETERS__
#define __PARAMETERS__

#define IMAGE_HEIGHT 240 
#define IMAGE_WIDTH 320
#define IMAGE_MAXGREY 255
#define IMAGE_SIZE  ( IMAGE_HEIGHT * IMAGE_WIDTH )

#define RESULT_SIZE 100

#define TOTAL_NODES 2913
#define TOTAL_STAGES 25
#define TOTAL_COORDINATES TOTAL_NODES*12
#define TOTAL_WEIGHTS TOTAL_NODES*3

#define WINDOW_SIZE 25
#define SQ_SIZE 2
#define PYRAMID_HEIGHT 12

#define OUTPUT_FILENAME "Output.pgm"
#define INPUT_IMAGE "image0_320_240.h"

#endif

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MyPoint
{
    int x;
    int y;
}
MyPoint;

typedef struct
{
    int width;
    int height;
}
MySize;

typedef struct
{
    int x; 
    int y;
    int width;
    int height;
}
MyRect;

typedef struct 
{
        int width;
        int height;
        int maxgrey;
        int flag;
}
MyInputImage;

#ifdef __cplusplus
}
#endif

#endif
