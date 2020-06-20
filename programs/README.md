
# Programs for Zybo Smart Camera
Copy files to Zybo Smart Camera by scp (in windows with a program like Winscp).
run following comands (inside each program repository) in order to compile and run the programs.

```
cmake .
make
```

if there is cam_script in the program's sub folder:
```
chmod +x cam_script
./cam_script
```
#### Warning: make sure executable name in cam_script is correct.

if there is no cam_script in the program's sub folder:
```
./<program_name> <photo_name>.jpg
```

## face_recognition
Includes 4 diffrent implementatins:
1. face_rec_test: face recognition test with an image.
2. Pcam_face: test with video stream. after detection of first image a name for that image is requested. that image will be used as the refrence.
3. multithread: multi thread implementation of same program. first five images are used as refrence.
4. multithread_2: multi thread implementation of same program. add all unkown faces to database if user acept. limite set 100 faces

## face_detection

1. HW_Facedetection: face detection inside a photo.
2. Pcam_HW_detection: face detection from video stream.
3. Pcam_HW_detection_2: face detection from video stream in parallel of CPU.
4. Pcam_hdet_mdet: face and movement detection from video stream.
5. Pcam_SW_detection(ref): software implementation of same algorithm as refrence. input is a photo.

