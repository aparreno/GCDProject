# GCDProject
Getting and Cleaning Data Course Project

The variables of the data are named as following:
Variable names from data read from Subject_*.txt and y_*.txt are changed to "subject" and "activity"
The variables from data read from X_*.txt are set according to features.txt.

##Variable "subject"
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Variable "activity"
Activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

## Sensor Variables
86 variables named according to features.txt from "tbodyaccmeanx" to "fbodybodygyrojerkmagstd". The sensor accelerometer and gyroscope data are captured in 3-axial linear acceleration and 3-axial angular velocity. Only the measurements on the mean and standard deviation for each measurement in time and frequency domain variables are selected. Each variable has the average value for each activity and each subject.