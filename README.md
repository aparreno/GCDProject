# GCDProject
Getting and Cleaning Data Course Project

The script first merges the training and the test sets to create one data set. 
For it, first set the current working directory to a variable to be able to have a reference to change between directories.

## Test
The files subject_test.txt, X_test.txt and y_test.txt are read and assigned to variables s, x and y. Variable names from s and y are changed to subject and activity. All test data are binded in columns and assigned to test variable.

## Train
The files subject_train.txt, X_train.txt and y_train.txt are read and assigned to variables st, xt and yt. Variable names from st and yt are changed to subject and activity. All train data are binded in columns and assigned to train variable.

## First data set
The first data set is created by merging test and train variables with rbind

## Extracts only the measurements on the mean and standard deviation for each measurement. 
features.txt is read and the names of the dataset variables are changed. Duplicated variable names are detected and removed as they are not mean or standard deviation columns.
Then variables for extracting only the measurements on the mean and standard deviation for each measurement are selected.

## Uses descriptive activity names to name the activities in the data set
activity_labels.txt is read to name the activities in the data set.

## Appropriately labels the data set with descriptive variable names. 
According to lectures I have chose to put all variable names in lower case and remove all non-alphabetic characters.

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Group data by subject and activity and data set with the average of each variable for each activity and each subject.
Finally, create a txt file with data set result of 5 steps. A csv file with data set result of 5 steps has been created as well for a easier review.
