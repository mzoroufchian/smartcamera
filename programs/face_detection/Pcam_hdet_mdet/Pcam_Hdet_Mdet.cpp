


#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <bits/stdc++.h>
#include <string.h>
using namespace std;
using namespace cv;

// this is C :/

//IP driver
#include "driv/xdetectfaces.h"
#include "driv/xdetec_movement.h"

#include <stdint.h> // for uint32_t
#include <sys/ioctl.h> // for ioctl
#include <linux/fb.h> // for fb_
#include <fcntl.h> // for O_RDWR

//------------------------macros---------------------------
#define gamma	0.1		//gamma correction factor
//---------------------------------------------------------

//------------------------structures-----------------------
struct framebuffer_info { 
    uint32_t bits_per_pixel; uint32_t xres_virtual; 
};
//---------------------------------------------------------


//--------------function deceleration----------------------
int SendtoDetect(const Mat& frame );
void display(const Mat& frame);
void GetAndEnhance(Mat& frame_gray,Mat& Image,Mat& Image_move);
void getdata(Mat& frame);
int checkmove(Mat& Image_move);
struct framebuffer_info get_framebuffer_info(const char* framebuffer_device_path);
void sendpic(Mat& Image_move);
//---------------------------------------------------------

//----------------global variables-------------------------
framebuffer_info fb_info;
ofstream ofs("/dev/fb0");
XDetectfaces facedetection;
XDetec_movement movedetection;
VideoCapture capture(0);
Mat lookUpTable(1, 256, CV_8U); //for gamma correction
uchar* p;//for gamma correction
string str;
char flag=1,flag2=0;
//--------------------------------------------------------

int main( int argc, const char** argv )
{
	int move_pre=0;
	//--1. initialize facedetection module
	if(XDetectfaces_Initialize(&facedetection,"detectFaces"))
	{
		cout<<"Failed to initialize facedetection module";
		return -1;
	}
	cout<<"Successfully initialize facedetection module "<<facedetection.IsReady<<endl;
	
	if(XDetec_movement_Initialize(&movedetection,"detec_movement"))
	{
		cout<<"Failed to initialize movement module";
		return -1;
	}
	cout<<"Successfully initialize movement module "<<movedetection.IsReady<<endl;
	
    if ( ! capture.isOpened() )
    {
        cout << "--(!)Error opening video capture\n";
        return -1;
    }
	
	fb_info = get_framebuffer_info("/dev/fb0");
	
	//LUT for gamma correction
	p= lookUpTable.ptr();
	for( int i = 0; i < 256; ++i)
        p[i] = saturate_cast<uchar>(pow(i / 255.0, gamma) * 255.0);
	
	Mat Image;
	Mat Image_dete;
	Mat Image_move(120,160,CV_8UC1);
	GetAndEnhance(Image,Image_dete,Image_move);
	sendpic(Image_move);
	while(1)
	{
		clock_t start, end;
		start=clock();
		if(!SendtoDetect(Image ))
			break;
		display(Image_dete);
		GetAndEnhance(Image,Image_dete,Image_move);
		int move=checkmove(Image_move);
		while(!XDetectfaces_IsDone(&facedetection));
		//cout<<"\033c"<<"done"<<endl;
		getdata(Image_dete);
		waitKey(10);
		end=clock();
		double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
		str+=" -Detection Time :";
		str+=to_string(time_taken); 
		str+=" Sec";
		if(move >= (move_pre + (0.05*move_pre)) || move <= (move_pre - (0.05*move_pre)))
		{
			str+=(" -Movement detected (diff="+to_string(move)+")");
			move_pre=move;
		}
		else
		{
			str+=(" -No Movement(diff="+to_string(move)+")");
			move_pre=move;
		}
		//cout << " Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
		//cout << " sec " << endl; 
	}
	XDetectfaces_Release(&facedetection); //release facedetection module
	capture.release();//release Pcam
	XDetec_movement_Release(&movedetection);
	
    return 0;
}
void GetAndEnhance(Mat& frame_gray,Mat& Image,Mat& Image_move)
{
	Mat frame;
	capture.read(Image);
	flip(Image, Image,-1);
	cvtColor( Image, frame_gray, COLOR_BGR2GRAY );	//convert to gray image 
	//LUT(frame, lookUpTable, frame_gray);		//gamma correction
    equalizeHist( frame_gray, frame_gray );			//enhance quality
	resize(frame_gray, Image_move, Image_move.size(), 0, 0, INTER_LINEAR );
	GaussianBlur( Image_move, Image_move, Size( 31, 31 ), 0, 0 );
}

int SendtoDetect( const Mat& frame )
{
    //-- Detect faces 
	for (int i=0;i<240;i++)
	{
		while(!XDetectfaces_IsReady(&facedetection));
		if(XDetectfaces_Write_inData_Bytes(&facedetection,0,(char* )(frame.ptr(i)),320)!=320)
		{
			cout<<"write error: could not write on IP"<<endl;
			return 0;
		}
		XDetectfaces_Start(&facedetection);
	}
	return 1;
}

void getdata(Mat& frame)
{
	int nbr=0;
	int result_size=0;
	if (XDetectfaces_Get_result_size_vld(&facedetection))
	{
		result_size=XDetectfaces_Get_result_size(&facedetection);
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
				rectangle(frame, p1, p2,  Scalar(255,255,255), 1,8,0);
				nbr++;
			}
		}
	}
	str.clear();
	str="-result size:"+to_string(result_size)+" -faces:" +to_string(nbr);
	//cout<<"\rnumber of persones:"<<nbr<<flush;
	if (flag && nbr)
	{
		flag=0;
		flag2=1;
	}
}

void display(const Mat& frame)
{
	int framebuffer_width = fb_info.xres_virtual;
	Mat framebuffer_compat(720,1080,CV_8UC3);
	resize(frame, framebuffer_compat, framebuffer_compat.size(), 0, 0, INTER_LINEAR );
	putText(framebuffer_compat, str, Point(5,715), FONT_HERSHEY_PLAIN, 1, Scalar(0,0,0), 2,false);
	Size2f frame_size = framebuffer_compat.size();
	for (int y = 0; y < frame_size.height ; y++) 
	{
		ofs.seekp(y*framebuffer_width*3);
		ofs.write(reinterpret_cast<char*>(framebuffer_compat.ptr(y)),frame_size.width*3);
	}
	if(flag2)
	{
		imwrite( "faces.jpg", framebuffer_compat );
		flag2=0;
		cout<<"image saved"<<endl;
	}
}

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

int checkmove(Mat& Image_move)
{
	for (int i=0;i<120;i++)
	{
		while(!XDetec_movement_IsReady(&movedetection));
		if(XDetec_movement_Write_inData_Bytes(&movedetection,0,(char* )(Image_move.ptr(i)),160)!=160)
		{
			cout<<"write error: could not write on IP"<<endl;
			return -1;
		}
		XDetec_movement_Start(&movedetection); 
	}
	while(!XDetec_movement_IsDone(&movedetection));
	//cout<<" motion:"<<XDetec_movement_Get_motion(&movedetection)<<endl;
	return XDetec_movement_Get_position(&movedetection);

}
void sendpic(Mat& Image_move)
{
	for (int i=0;i<120;i++)
	{
		while(!XDetec_movement_IsReady(&movedetection));
		if(XDetec_movement_Write_inData_Bytes(&movedetection,0,(char* )(Image_move.ptr(i)),160)!=160)
		{
			cout<<"write error: could not write on IP"<<endl;
			return;
		}
		XDetec_movement_Start(&movedetection); 
	}

}