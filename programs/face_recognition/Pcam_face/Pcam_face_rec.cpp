


#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include <iostream>
#include <fstream>
#include <bits/stdc++.h>
#include <string.h>
using namespace std;
using namespace cv;
using namespace dnn;

// this is C :/

//IP driver
#include "driv/xdetectfaces.h"


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
int GetAndEnhance(Mat& frame_gray,Mat& Image);
void getdata();
struct framebuffer_info get_framebuffer_info(const char* framebuffer_device_path);
void rec_faces(Mat& frame, Net& NNet);
int check_face(Mat& face, Net& NNet);
//---------------------------------------------------------

//----------------global variables-------------------------
framebuffer_info fb_info;
ofstream ofs("/dev/fb0");
XDetectfaces facedetection;
VideoCapture capture(0);
Mat lookUpTable(1, 256, CV_8U); //for gamma correction
uchar* p;//for gamma correction
string str;
string names[5];
Point faces[20][2];
int nbr;
int name_nbr[20];
Mat persones;
//--------------------------------------------------------

int main( int argc, const char** argv )
{
	
	//--1. initialize facedetection module
	if(XDetectfaces_Initialize(&facedetection,"detectFaces"))
	{
		cout<<"Failed to initialize facedetection module";
		return -1;
	}
	cout<<"Successfully initialize facedetection module "<<facedetection.IsReady<<endl;
	
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
	
	//face rec network initialize
	const string torchConfigFile = "./openface.nn4.small2.v1.t7";
	Net NNet=readNetFromTorch(torchConfigFile);
	
	
	Mat Image;
	Mat Image_dete;
	GetAndEnhance(Image,Image_dete);
	while(1)
	{
		clock_t start, end;
		start=clock();
		if(!SendtoDetect(Image ))
			break;
		rec_faces(Image_dete,NNet);
		display(Image_dete);
		if(GetAndEnhance(Image,Image_dete))
			return -1;
		while(!XDetectfaces_IsDone(&facedetection));
		//cout<<"\033c"<<"done"<<endl;
		getdata();
		waitKey(10);
		end=clock();
		double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
		str+="Detection Time :";
		str+=to_string(time_taken); 
		str+=" Sec";
		//cout << " Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
		//cout << " sec " << endl; 
	}
	XDetectfaces_Release(&facedetection); //release facedetection module
	capture.release();//release Pcam
	
    return 0;
}
int GetAndEnhance(Mat& frame_gray,Mat& Image)
{
	Mat frame;
	if(!capture.read(Image))
	{
		capture.open(0);
		cout<<"restart capture"<<endl;
		if(!capture.read(Image)){
			capture.release();
			return -1;
		}
	}
	flip(Image, Image,-1);
	cvtColor( Image, frame_gray, COLOR_BGR2GRAY );	//convert to gray image 
	//LUT(frame, lookUpTable, frame_gray);		//gamma correction
    equalizeHist( frame_gray, frame_gray );			//enhance quality
	return 0;
}

int SendtoDetect( const Mat& frame )
{
    //-- Detect faces 
	for (int i=0;i<240;i++)
	{
		while(!XDetectfaces_IsReady(&facedetection));
		//cout<<"count:"<<XDetectfaces_Get_finished(&facedetection)<<endl;
		if(XDetectfaces_Write_inData_Bytes(&facedetection,0,(char* )(frame.ptr(i)),320)!=320)
		{
			cout<<"write error: could not write on IP"<<endl;
			return 0;
		}
		XDetectfaces_Start(&facedetection);
		//XDetectfaces_Read_inData_Bytes(&facedetection,0, (char* )frame2.ptr(i), 320); //for debuge 
	}
	//cout<<"data sent"<<endl;
	return 1;
}

void getdata()
{
	nbr=0;
	int result_size=0;
	if (XDetectfaces_Get_result_size_vld(&facedetection))
	{
		result_size=XDetectfaces_Get_result_size(&facedetection);
		//cout<<"result_size: "<<result_size<<endl;
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
				faces[nbr][0]=Point( x[i] , y[i] );
				faces[nbr][1]=Point( x[i] + width[i], y[i] + height[i] );
				nbr++;
			}
		}
	}
	str.clear();
	str="result size:"+to_string(result_size)+" faces:" +to_string(nbr);
	//cout<<"\rnumber of persones:"<<nbr<<flush;
}

void display(const Mat& frame)
{
	int framebuffer_width = fb_info.xres_virtual;
	Mat framebuffer_compat(720,1080,CV_8UC3);
	for ( int i = 0; i < nbr; i++ )
	{
		rectangle(frame, faces[i][0], faces[i][1],  Scalar(255,255,255), 1,8,0);
		if (name_nbr[i]==100)
			putText(frame, "unknown", faces[i][0], FONT_HERSHEY_PLAIN, 0.5, Scalar(255,0,0), 1,false);
		else
			putText(frame, names[name_nbr[i]], faces[i][0], FONT_HERSHEY_PLAIN, 0.5, Scalar(255,0,0), 1,false);
	}
	resize(frame, framebuffer_compat, framebuffer_compat.size(), 0, 0, INTER_LINEAR );
	putText(framebuffer_compat, str, Point(5,715), FONT_HERSHEY_PLAIN, 1, Scalar(0,0,0), 2,false);
	Size2f frame_size = framebuffer_compat.size();
	for (int y = 0; y < frame_size.height ; y++) 
	{
		ofs.seekp(y*framebuffer_width*3);
		ofs.write(reinterpret_cast<char*>(framebuffer_compat.ptr(y)),frame_size.width*3);
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

int check_face(Mat& face, Net& NNet)
{
	float bestMatchScore=0.8;
	int persone_nbr=100;
	Mat inputBlob = blobFromImage(face, 1.0/255, Size(96, 96), Scalar(0, 0, 0), true, false);
	NNet.setInput(inputBlob);
	Mat detection=NNet.forward();
	if(!persones.data)
	{
		//cout<<"rows: "<<detection.rows<<" cols:"<<detection.cols<<endl;
		persones.push_back(detection);
		cout<<"persone added"<<endl;
		//cout<<"persons matrix \n"<<persones<<endl;
		cout<<"enter a name:";
		cin>>names[0];
		return persone_nbr;
	}
	for(int i = 0; i < persones.rows; i++)
	{
		Mat personvec(detection.rows, detection.cols, CV_32F, persones.ptr<float>(i));
		//cout<<"persons vector\n"<<personvec<<endl;
		float score=detection.dot(personvec);
		cout<<"score: "<<score<<endl;
		if (score>bestMatchScore)
		{
			bestMatchScore=score;
			persone_nbr=i;
		}
	}
	
	return persone_nbr;
}

void rec_faces(Mat& frame, Net& NNet)
{
	for (int i=0;i<nbr;i++)
	{
		Mat temp=frame(Rect(faces[i][0],faces[i][1]));
		Mat face(96,96,CV_8UC3);
		resize(temp, face, face.size(), 0, 0, INTER_LINEAR );
		name_nbr[i]=check_face(face,NNet);
	}
}
