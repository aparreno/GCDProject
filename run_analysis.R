library(dplyr)

#store current working directory
dir <- getwd()
#go to test directory
setwd("UCI HAR Dataset/test")

#read test files
s <- read.table("subject_test.txt")
x <- read.table("X_test.txt")
y <- read.table("y_test.txt")
#change variable name
s <- select(s, subject = V1)
y <- select(y, activity = V1)

#bind files in columns
test <- cbind(s, x, y)

#go back to original directory and go to train directory
setwd(dir)
setwd("UCI HAR Dataset/train")

#read train files
st <- read.table("subject_train.txt")
xt <- read.table("X_train.txt")
yt <- read.table("y_train.txt")

#change variable name
st <- select(st, subject = V1)
yt <- select(yt, activity = V1)

#bind files in columns and change variable names
train <- cbind(st, xt, yt)
#train <- select(train, subject = X1, set = starts_with("X2."), labels = X5)
setwd(dir)

#create a one data set with train and test data
data <- rbind(test, train)

#read features.txt and change the name of the dataset variables
setwd("UCI HAR Dataset")
features <- read.table("features.txt")
names(data)[2:562] <- as.vector(features$V2) 

#delete duplicated variables from data
data <- data[,!duplicated(colnames(data))]

#select variables for extracting only the measurements 
#on the mean and standard deviation for each measurement
data2 <- select(data, contains("subject"), contains("activity"), contains("mean"), contains("std"))


#read activity_labels.txt to name the activities in the data set
activities <- read.table("activity_labels.txt")
setwd(dir)

# then name the activities in the data set
data3 <- mutate(data2, activity=activities[activity, 2])

#Appropriately labels the data set with descriptive variable names
# according to 
data4 <- data3
names(data4) <- tolower(names(data4)) 
names(data4) <- gsub("-", "", names(data4))
names(data4) <- gsub(",", "", names(data4))
names(data4) <- gsub('\\(', "", names(data4))
names(data4) <- gsub('\\)', "", names(data4))

#group data by subject and activity and data set 
#with the average of each variable for each activity and each subject
data5 <- group_by(data4, subject, activity) %>% summarise_each(funs(mean))

#create txt file with data set result of 5 steps
write.table(data5, file = "course_project_data.txt" ,row.name=FALSE) 

#create csv file with data set result of 5 steps for a easier review
write.csv(data5, file = "course_project_data.csv") 

