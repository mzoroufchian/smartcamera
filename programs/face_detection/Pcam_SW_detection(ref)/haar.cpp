/*
Copyright (c) 2016-2017, Cornell University
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/


#include <string.h>
#include <math.h>
#include <iomanip>
#include "inc/haar.h"
#include "inc/sqrt.h"
#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <bits/stdc++.h>
using namespace std;
using namespace cv;

// this is C :/
#include <stdint.h> // for uint32_t
#include <sys/ioctl.h> // for ioctl
#include <linux/fb.h> // for fb_
#include <fcntl.h> // for O_RDWR


#define gamma	0.4		//gamma correction factor
//------------------------structures-----------------------
typedef struct{ 
    int bits_per_pixel; int xres_virtual; 
}framebuffer_info;
//---------------------------------------------------------

/****************************************************************************************/
/* DECLARATION OF FUNCTIONS 
****************************************************************************************/
void detectFaces( unsigned char Data[IMAGE_WIDTH], 
                  int _result_x[RESULT_SIZE], 
                  int _result_y[RESULT_SIZE], 
                  int _result_w[RESULT_SIZE], 
                  int _result_h[RESULT_SIZE], 
                  int *result_size,
				  char *finished);
				  
void integralImages(int height, 
					int width,
					unsigned char Data[WINDOW_SIZE][WINDOW_SIZE],
					int Sum[WINDOW_SIZE][WINDOW_SIZE],
					int Sqsum[WINDOW_SIZE][WINDOW_SIZE]);

void imageScaler(int src_height,
				int src_width,
				unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH],
				int dest_height,int dest_width,
				unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH]);

void processImage( float factor,
				  int sum_row,
				  int sum_col,
				  int *AllCandidates_x,
				  int *AllCandidates_y,
				  int *AllCandidates_w,
				  int *AllCandidates_h,
				  int *AllCandidates_size,
				  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH],
				  MySize winSize
				);


int cascadeClassifier(int II[WINDOW_SIZE][WINDOW_SIZE],int SII[WINDOW_SIZE][WINDOW_SIZE],MyPoint pt);

int weakClassifier( int stddev,int coord[12], int haar_counter,int w_id);

void display(const Mat& frame);

void GetAndEnhance(Mat& frame_gray,Mat& Image);

framebuffer_info get_framebuffer_info(const char* framebuffer_device_path);

unsigned int int_sqrt   ( unsigned int  value);

inline  int  myRound ( float value )
{
  return (int)(value + (value >= 0 ? 0.5 : -0.5));
}

void rec(Mat& frame);
	
//----------------global variables-------------------------
framebuffer_info fb_info;
ofstream ofs("/dev/fb0");
//VideoCapture capture(0);
Mat lookUpTable(1, 256, CV_8U); //for gamma correction
uchar* p;//for gamma correction
int x[RESULT_SIZE];
int y[RESULT_SIZE];
int w[RESULT_SIZE];
int h[RESULT_SIZE];
int *resultsize;
char *finish;
//--------------------------------------------------------

//========================================================================================
// main
//========================================================================================

int main( int argc, const char** argv )
{
    /*if ( ! capture.isOpened() )
    {
        cout << "--(!)Error opening video capture\n";
        return -1;
    }*/
	if ( argc != 2 )
    {
        cout<<"usage: face.out <Image_Path>\n";
        return -1;
    }
	
	fb_info = get_framebuffer_info("/dev/fb0");
	
	//LUT for gamma correction
	p= lookUpTable.ptr();
	for( int i = 0; i < 256; ++i)
        p[i] = saturate_cast<uchar>(pow(i / 255.0, gamma) * 255.0);
	
	Mat Image;
	Mat Image_dete;
	Mat frame;
	int size;
	char fini;
	resultsize=&size;
	finish=&fini;
	Image_dete = imread( argv[1], 1 );
	 if ( !Image_dete.data )	//check for image
    {
        cout<<"No image data \n";
        return -1;
    }
	//while(1)
	{
		clock_t start, end;
		
		
		cvtColor( Image_dete, frame, COLOR_BGR2GRAY );	//convert to gray image 
		//LUT(frame, lookUpTable, Image);		//gamma correction
		equalizeHist( frame, Image );			//enhance quality
		//GetAndEnhance(Image,Image_dete);
		start=clock();
		for(int i=0; i<240;i++)
		{
			detectFaces((unsigned char* )(Image.ptr(i)),x,y,w,h,resultsize,finish);
			cout<<"count:"<<int(fini)<<endl;
		}
		end=clock();
		rec(Image_dete);
		display(Image_dete);
		
		double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
		cout << "Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
		cout << " sec " << endl; 
	}
	
	//capture.release();//release Pcam
	
    return 0;
}

void rec(Mat& frame)
{
	int nbr=0;
	char valid[*resultsize];
	for(int i=*resultsize-1;i>=0;i--)
		{
			valid[i]=1;
			for(int j=*resultsize-1;j>=0;j--)
			{
				if (j==i)
					continue;
				else 
					if (x[i]>=x[j] && y[i]>=y[j] && x[i]<=x[j]+w[j] && y[i]<=y[j]+h[j])
				{
					valid[i]=0;
					break;
				}
			}
		}
		for ( int i = 0; i < *resultsize; i++ )
		{
			if(valid[i])
			{
				Point p1( x[i] , y[i] );
				Point p2( x[i] + w[i], y[i] + h[i] );
				rectangle(frame, p1, p2, 255, 2,8,0);
				nbr++;
			}
		}
	cout<<"result size:"<<*resultsize<<endl;
	cout<<"number of persones:"<<nbr<<endl;
}

void display(const Mat& frame)
{
	int framebuffer_width = fb_info.xres_virtual;
	Mat framebuffer_compat(720,1080,CV_8UC3);
	resize(frame, framebuffer_compat, framebuffer_compat.size(), 0, 0, INTER_LINEAR );
	Size2f frame_size = framebuffer_compat.size();
	for (int y = 0; y < frame_size.height ; y++) 
	{
		ofs.seekp(y*framebuffer_width*3);
		ofs.write(reinterpret_cast<char*>(framebuffer_compat.ptr(y)),frame_size.width*3);
	}
}

void GetAndEnhance(Mat& frame_gray,Mat& Image)
{
	Mat frame;
	//capture.read(Image);
	flip(Image, Image,-1);
	cvtColor( Image, frame, COLOR_BGR2GRAY );	//convert to gray image 
	LUT(frame, lookUpTable, frame_gray);		//gamma correction
    equalizeHist( frame_gray, frame_gray );			//enhance quality
}

framebuffer_info get_framebuffer_info(const char* framebuffer_device_path) {
    framebuffer_info info;
    struct fb_var_screeninfo screen_info;
    int fd = -1;
    fd = open(framebuffer_device_path, O_RDWR);
    if (fd >= 0) {
        if (!ioctl(fd, FBIOGET_VSCREENINFO, &screen_info)) {
            info.xres_virtual = screen_info.xres_virtual;
            info.bits_per_pixel = screen_info.bits_per_pixel;
        }
    }
    return info;
};

void detectFaces
( 
  unsigned char inData[IMAGE_WIDTH],  // input port
  int result_x[RESULT_SIZE],          // Output ports
  int result_y[RESULT_SIZE],
  int result_w[RESULT_SIZE],
  int result_h[RESULT_SIZE],
  int *result_size,
  char *finished
)

{

   static unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH];
   int i, j;

   int result_x_Scale[RESULT_SIZE];
   int result_y_Scale[RESULT_SIZE];
   int result_w_Scale[RESULT_SIZE];
   int result_h_Scale[RESULT_SIZE];
   int res_size_Scale = 0;
   int *result_size_Scale = &res_size_Scale;

  /* Here we save the 320 X 240 image into the BRAMS. The CPU makes 240 calls to this hardware function haar
  * first 239 calls just load the BRAMs with the image and last 240th call does the actual face detection
  * This is a hacky way because SDSoC does not allow to send 320X240 image at once. In future sdsalloc can be 
  * used allocate the memory directly into the FPGA. */

  static int counter = 0;
  if ( counter < IMAGE_HEIGHT){
    for( j = 0; j < IMAGE_WIDTH; j++){
         Data[counter][j] = inData[j];
    }
    counter++;
    if ( counter < IMAGE_HEIGHT ){
 /*     for ( i = 0; i < RESULT_SIZE; i++){
        result_x[i] = 0;
        result_y[i] = 0;
        result_w[i] = 0;
        result_h[i] = 0;
      }
      *result_size = 0;*/
      *finished=counter;
      return ;    // return to the CPU to get next line in gthe image
    }
  }

  *result_size = 0;

  float  scaleFactor = 1.2;
  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH];  

  float factor;
  int height,width;

  MySize winSize0;
  winSize0.width = 24;
  winSize0.height= 24;

  factor = 1.1;

  // Loop for image pyramid formation

  while ( IMAGE_WIDTH/factor > WINDOW_SIZE && IMAGE_HEIGHT/factor > WINDOW_SIZE )
  {

    /* size of the window scaled up */
    MySize winSize = { myRound(winSize0.width*factor), myRound(winSize0.height*factor) };

    /* size of the image scaled down */
    MySize sz = { (IMAGE_WIDTH/factor), (IMAGE_HEIGHT/factor) };
    
    height = sz.height;
    width  = sz.width;

    imageScaler     ( IMAGE_HEIGHT,
					  IMAGE_WIDTH,	
                      Data, 
                      height,
					  width,
                      IMG1_data
                    ); 
   
  
    processImage       ( factor, 
                         height, 
                         width,
                         result_x_Scale,
                         result_y_Scale,
                         result_w_Scale,
                         result_h_Scale,
                         result_size_Scale,
                         IMG1_data,
                         winSize
                       ); 
    factor *= scaleFactor;
  }

   for ( i = 0; i < RESULT_SIZE; i++){
      result_x[i] = result_x_Scale[i];
      result_y[i] = result_y_Scale[i];
      result_w[i] = result_w_Scale[i];
      result_h[i] = result_h_Scale[i];
   }
   *result_size = *result_size_Scale;
   *finished=255;
   counter=0;
   return ;
}

void processImage

( float factor,
  int sum_row,
  int sum_col, 
  int *AllCandidates_x,
  int *AllCandidates_y,
  int *AllCandidates_w,
  int *AllCandidates_h,
  int *AllCandidates_size, 
  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH], 
  MySize winSize
)
{
	MyPoint p;
	int result;
	int step;
	 
	int u,v;
	int x,y,i,j,k;
	int m,n;

	int SUM1_data[WINDOW_SIZE][WINDOW_SIZE], SQSUM1_data[WINDOW_SIZE][WINDOW_SIZE];
	unsigned char win_data[WINDOW_SIZE][WINDOW_SIZE];



	for( y = 0; y < sum_row - WINDOW_SIZE + 1; y+=1 ){
		for ( x = 0; x < sum_col - WINDOW_SIZE + 1; x+=1 ){
				//*******************mohammadali *************************
			for( n = 0; n < WINDOW_SIZE; n++ ){
				for ( m = 0; m < WINDOW_SIZE ; m++ ){
					win_data[n][m]=IMG1_data[y+n][x+m];
				}
			}
		//*******************mohammadali *************************
			 p.x = x;
			 p.y = y;

				 //*******************mohammadali *************************
			integralImages( WINDOW_SIZE, WINDOW_SIZE ,win_data, SUM1_data, SQSUM1_data );
				 //*******************mohammadali *************************

			result = cascadeClassifier ( SUM1_data,SQSUM1_data,p);

			if ( result > 0 ) {
				MyRect r = {myRound(p.x*factor), myRound(p.y*factor), winSize.width, winSize.height};
				AllCandidates_x[*AllCandidates_size]=r.x;
				AllCandidates_y[*AllCandidates_size]=r.y;
				AllCandidates_w[*AllCandidates_size]=r.width;
				AllCandidates_h[*AllCandidates_size]=r.height;
				*AllCandidates_size=*AllCandidates_size+1;
			}
		}
	}
}

int cascadeClassifier (int II[WINDOW_SIZE][WINDOW_SIZE],int SII[WINDOW_SIZE][WINDOW_SIZE],MyPoint pt)
{
  int i, j, k;
  int mean;
  int stddev = 0;
  int haar_counter = 0;
  int w_index = 0;
  int r_index = 0;
  int stage_sum=0;

  #include "inc/haar_dataRcc_with_partitioning.h"

  static int coord[12];

  stddev =                    SII[0][0]
                           -  SII[0][WINDOW_SIZE-1]
                           -  SII[WINDOW_SIZE-1][0]
                           +  SII[WINDOW_SIZE-1][WINDOW_SIZE-1];

  mean =                      II[0][0]
                           -  II[0][WINDOW_SIZE-1]
                           -  II[WINDOW_SIZE-1][0]
                           +  II[WINDOW_SIZE-1][WINDOW_SIZE-1];

  stddev = (stddev*(WINDOW_SIZE-1)*(WINDOW_SIZE-1));
  stddev =  stddev - mean*mean; 
 
  if( stddev > 0 )
  {
    stddev = int_sqrt(stddev);  
  }
  else{
    stddev = 1;
  }

  MyRect tr0,tr1,tr2;
  
  int r_id;
  int w_id;
  int s;

	for ( i = 0; i < 25; i++ ) {
		for ( j = 0; j < stages_array[i] ; j++ ){

      if ( j == 0 ) {
        stage_sum = 0; s=0;
      } 
   
      r_id = r_index;
      w_id = w_index;

      tr0.x =  rectangles_array0[haar_counter];
      tr0.width = rectangles_array2[haar_counter];
      tr0.y =  rectangles_array1[haar_counter];
      tr0.height = rectangles_array3[haar_counter];
   
      tr1.x = rectangles_array4[haar_counter];
      tr1.width = rectangles_array6[haar_counter];
      tr1.y = rectangles_array5[haar_counter];
      tr1.height = rectangles_array7[haar_counter];
    
      tr2.x =     rectangles_array8[haar_counter];
      tr2.width = rectangles_array10[haar_counter];
      tr2.y =     rectangles_array9[haar_counter];
      tr2.height = rectangles_array11[haar_counter];

      coord[0] = II[tr0.y][tr0.x];
      coord[1] = II[tr0.y][tr0.x+tr0.width];
      coord[2] = II[tr0.y+tr0.height][tr0.x];
      coord[3] = II[tr0.y+tr0.height][tr0.x+tr0.width];
     
      coord[4] = II[tr1.y][tr1.x];
      coord[5] = II[tr1.y][tr1.x+tr1.width];
      coord[6] = II[tr1.y+tr1.height][tr1.x];
      coord[7] = II[tr1.y+tr1.height][tr1.x+tr1.width];

      if (!(tr2.x ==0 && tr2.width==0 && tr2.y==0 && tr2.height==0 ) && tr2.width!=0 && tr2.height!=0)
      {
        coord[8] = II[tr2.y][tr2.x];
        coord[9] = II[tr2.y][tr2.x+tr2.width];
        coord[10] = II[tr2.y+tr2.height][tr2.x];
        coord[11] = II[tr2.y+tr2.height][tr2.x+tr2.width];
      }
      else
      {
        coord[8] = 0;
        coord[9] = 0;
        coord[10] = 0;
        coord[11] = 0; 
      }
      
      s = weakClassifier      ( stddev, 
                                coord,
                                haar_counter,
                                w_id				
                              );
        
      stage_sum = stage_sum + s;
      haar_counter = haar_counter+1;
      w_index = w_index+3;
      r_index = r_index+12;
    } /* end of j loop */

    if( stage_sum < 0.4*stages_thresh_array[i] ){
       return -i;
    }    
  } /* end of i loop */

 return 1;
}
 
int weakClassifier
(
  int stddev,
  int coord[12],  
  int haar_counter,
  int w_id 
)
{                                                                                             
  #include "inc/haar_dataEWC_with_partitioning.h"
  int t = tree_thresh_array[haar_counter] * stddev; 
  
  int sum0 =0;
  int sum1 =0;
  int sum2 =0;
  int final_sum =0;
  int return_value;
	             
  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * weights_array0[haar_counter];//[w_id] area of 1st filter block (rectangle) multiplied by its weigh
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * weights_array1[haar_counter];//[w_id+1];    
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * weights_array2[haar_counter];//[w_id+2]; 
  final_sum = sum0+sum1+sum2;
  
  if(final_sum >= t) 
  {
    return_value =  alpha2_array[haar_counter];  
  }
  else   
  {
    return_value =  alpha1_array[haar_counter];
  }
  
  return return_value ; 

}

/***********************************************************
 * This function downsample an image using nearest neighbor
 * It is used to build the image pyramid
 **********************************************************/
void imageScaler
(
  int src_height,
  int src_width,
  unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH], 
  int dest_height,
  int dest_width,
  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH]
)
{
  int y;
  int j;
  int x;
  int i;
  unsigned char* t;
  unsigned char* p;
  int w1 = src_width;
  int h1 = src_height;
  int w2 = dest_width;
  int h2 = dest_height;

  int rat = 0;

  int x_ratio = (int)((w1<<16)/w2) +1; 
  int y_ratio = (int)((h1<<16)/h2) +1;


  nearestNeighborL1:  
  for ( i = 0 ; i < IMAGE_HEIGHT ; i++ )
  { 
      nearestNeighborL1_1:  
      for (j=0;j < IMAGE_WIDTH ;j++)
      {
        if ( j < w2 && i < h2 ) 
        {
          IMG1_data[i][j] =  Data[(i*y_ratio)>>16][(j*x_ratio)>>16];
        }
      }
  }
}

unsigned int int_sqrt 
( 
  unsigned int value
)
{
  int i;
  unsigned int a = 0, b = 0, c = 0;



  for ( i = 0 ; i < (32 >> 1) ; i++ )
  {
    c<<= 2;   
    #define UPPERBITS(value) (value>>30)
    c += UPPERBITS(value);
    #undef UPPERBITS
    value <<= 2;
    a <<= 1;
    b = (a<<1) | 1;
    if ( c >= b )
    {
      c -= b;
      a++;
    }
  }
  return a;
}


int max
(
  int a,
   int b
)
{
 if ( a > b )
   return a;
 else 
   return b;
}

int min
(
  int a,
  int b
)
{
  if ( a < b )
    return a;
  else 
    return b;
}
void integralImages( int height, int width, unsigned char Data[WINDOW_SIZE][WINDOW_SIZE], int Sum[WINDOW_SIZE][WINDOW_SIZE], int Sqsum[WINDOW_SIZE][WINDOW_SIZE])
{
  int x, y, s, sq, t, tq;
  unsigned char it;

  for( y = 0; y < height; y++)
    {
      s = 0;
      sq = 0;
      /* loop over the number of columns */
      for( x = 0; x < width; x ++)
	{
	  it = Data[y][x];
	  /* sum of the current row (integer)*/
	  s += it;
	  sq += it*it;

	  t = s;
	  tq = sq;
	  if (y != 0)
	    {
	      t += Sum[(y-1)][x];
	      tq += Sqsum[(y-1)][x];
	    }
	  Sum[y][x]=t;
	  Sqsum[y][x]=tq;
	}
    }
}

