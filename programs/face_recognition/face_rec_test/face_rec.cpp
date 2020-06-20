


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



//--------------function deceleration----------------------
int SendtoDetect(const Mat& frame );
void getdata();
void check_face(Mat& face, Net& NNet);
void rec_faces(Mat& frame, Net& NNet);
//---------------------------------------------------------

//----------------global variables-------------------------
XDetectfaces facedetection;
Point faces[20][2];
int nbr;
Mat persones;
string str;
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
		
	
	//face rec network initialize
	const string torchConfigFile = "./openface.nn4.small2.v1.t7";
	Net NNet=readNetFromTorch(torchConfigFile);
	Mat image;
	image = imread( argv[1], 1 );
	 if ( !image.data )
    {
        cout<<"No image data \n";
        return -1;
    }
	Mat image_gray;
	cvtColor( image, image_gray, COLOR_BGR2GRAY );
	
	clock_t start, end;
	start=clock();
	if(!SendtoDetect(image_gray ))
		return -1;
	while(!XDetectfaces_IsDone(&facedetection));
	getdata();
	rec_faces(image,NNet);
	end=clock();
	double time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
	cout << " Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
	cout << " sec " << endl;
	
	start=clock();
	if(!SendtoDetect(image_gray ))
		return -1;
	while(!XDetectfaces_IsDone(&facedetection));
	getdata();
	rec_faces(image,NNet);
	end=clock();
	time_taken = double(end - start) / double(CLOCKS_PER_SEC); 
	cout << " Time  total taken by program is : " << fixed << time_taken << setprecision(5); 
	cout << " sec " << endl;
	
	XDetectfaces_Release(&facedetection); //release facedetection module
	
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
	cout<<"number of persones: "<<nbr<<endl;
}

void check_face(Mat& face, Net& NNet)
{
	float bestMatchScore=0.5;
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
		return;
	}
	for(int i = 0; i < persones.rows; i++)
	{
		Mat personvec(detection.rows, detection.cols, CV_32F, persones.ptr<float>(i));
		//cout<<"persons vector\n"<<personvec<<endl;
		float score=detection.dot(personvec);
		if (score>bestMatchScore)
		{
			bestMatchScore=score;
			persone_nbr=i;
			cout<<"score: "<<score<<endl;
		}
	}
	cout<<"detected person: "<<persone_nbr<<endl;
}

void rec_faces(Mat& frame, Net& NNet)
{
	for (int i=0;i<nbr;i++)
	{
		Mat temp=frame(Rect(faces[i][0],faces[i][1]));
		Mat face(96,96,CV_8UC3);
		resize(temp, face, face.size(), 0, 0, INTER_LINEAR );
		check_face(face,NNet);
	}
}