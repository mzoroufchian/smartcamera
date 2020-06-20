


#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <bits/stdc++.h>
using namespace std;
using namespace cv;

#include "driv/xdetectfaces.h"

// this is C :/
#include <stdint.h> // for uint32_t
#include <sys/ioctl.h> // for ioctl
#include <linux/fb.h> // for fb_
#include <fcntl.h> // for O_RDWR
struct framebuffer_info { 
    uint32_t bits_per_pixel; uint32_t xres_virtual; 
};

struct framebuffer_info get_framebuffer_info(const char* framebuffer_device_path) {
    struct framebuffer_info info;
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

XDetectfaces facedetection;
void detectAndDisplay( Mat frame );
void display(Mat frame);


framebuffer_info fb_info;
ofstream ofs("/dev/fb0");
int main( int argc, const char** argv )
{
	
	//--1. initialize facedetection module
	if(XDetectfaces_Initialize(&facedetection,"detectFaces"))
	{
		cout<<"Failed to initialize facedetection module";
		return -1;
	}
	cout<<"Successfully initialize facedetection module "<<facedetection.IsReady<<endl;
	VideoCapture capture(0);
    if ( ! capture.isOpened() )
    {
        cout << "--(!)Error opening video capture\n";
        return -1;
    }

    Mat image;
	fb_info = get_framebuffer_info("/dev/fb0");
	//XDetectfaces_Start(&facedetection);
	cout<<XDetectfaces_IsReady(&facedetection)<<endl;	//for debuge
	cout<<XDetectfaces_IsIdle(&facedetection)<<endl;	//for debuge	
	while(1)
	{
		clock_t start, end;
		start=clock();
		capture.read(image);
		flip(image, image,-1);
		detectAndDisplay( image ); //start detection
		waitKey(100);
		end=clock();
		double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
		cout << "Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
		cout << " sec " << endl; 
	}
	XDetectfaces_Release(&facedetection); //release facedetection module
    return 0;
}
void detectAndDisplay( Mat frame )
{
	int nbr=0;
	int result_size=0;
    Mat frame_gray;
	cv::Mat frame2(240,320,CV_8UC1); //for debuge
    cvtColor( frame, frame_gray, COLOR_BGR2GRAY );	//convert to gray image 
    equalizeHist( frame_gray, frame_gray );			//enhance quality
	clock_t start, end; 
	start=clock();
    //-- Detect faces 
	for (int i=0;i<240;i++)
	{
		while(!XDetectfaces_IsReady(&facedetection));
		//cout<<"count:"<<XDetectfaces_Get_finished(&facedetection)<<endl;
		if(XDetectfaces_Write_inData_Bytes(&facedetection,0,(char* )(frame_gray.ptr(i)),320)!=320)
		{
			cout<<"write error :"<<i<<endl;
			return;
		}
		XDetectfaces_Start(&facedetection);
		//XDetectfaces_Read_inData_Bytes(&facedetection,0, (char* )frame2.ptr(i), 320); //for debuge 
	}
	cout<<"data sent"<<endl;
	while(!XDetectfaces_IsDone(&facedetection));
	cout<<"done"<<endl;
	
	// execution time
	end=clock();
	double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
    cout << "Time taken by IP is : " << fixed << time_taken << setprecision(5); 
    cout << " sec " << endl; 
	// execution time
    if (XDetectfaces_Get_result_size_vld(&facedetection))
	{
		result_size=XDetectfaces_Get_result_size(&facedetection);
		cout<<"result_size: "<<result_size<<endl;
	}
	else 
	{
		cout<<"result not valid"<<endl;
		result_size=XDetectfaces_Get_result_size(&facedetection);
		cout<<"result_size: "<<result_size<<endl;
	}
	if(result_size)
	{
		//------------------------------------
		int x[result_size];
		int y[result_size];
		int width[result_size];
		int height[result_size];
		char valid[result_size];
		XDetectfaces_Read_result_x_Words(&facedetection, 0, x, result_size);
		XDetectfaces_Read_result_y_Words(&facedetection, 0, y, result_size);
		XDetectfaces_Read_result_w_Words(&facedetection, 0, width, result_size);
		XDetectfaces_Read_result_h_Words(&facedetection, 0, height, result_size);
		for(int i=result_size-1;i>=0;i--)
		{
			valid[i]=1;
			for(int j=result_size-1;j>=0;j--)
			{
				if (j==i)
					continue;
				else 
					if (x[i]>=x[j] && y[i]>=y[j] && x[i]<=x[j]+width[j] && y[i]<=y[j]+height[j])
				{
					valid[i]=0;
					break;
				}
			}
		}
		for ( int i = 0; i < result_size; i++ )
		{
			if(valid[i])
			{
				Point p1( x[i] , y[i] );
				Point p2( x[i] + width[i], y[i] + height[i] );
				rectangle(frame, p1, p2, 255, 2,8,0);
				nbr++;
			}
		}
	}
	display(frame);
    //-- Show what you got
	//imwrite( "faces.jpg", frame );
	cout<<"number of persones:"<<nbr<<endl;
	//cout<<"done :"<<XDetectfaces_IsDone(&facedetection)<<endl;
}

void display(Mat frame)
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