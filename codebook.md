The steps of making "datatidy.csv":
1) Downloading data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
2) Extracting the archive into the working directory.
3) Creating datasets "features", "data.train.x", "data.train.activity", "data.train.subject", "data.test.x", "data.test.activity", "data.test.subject" from the files in the working directory.
4) Merge "data.train.x", "data.train.activity", "data.train.subject" into one dataset "data.train", set the column names as "subject", "activity" and from the "features" dataset.
5) Merge  "data.test.x", "data.test.activity", "data.test.subject"  into one dataset "data.test", set the column names as "subject", "activity" and from the "features" dataset.
6) Merge "data.test" and "data.train" into one dataset "data.test", set the column names as "subject", "activity" and from the "features" dataset.
7) Subset "data.test" into "data_meansd" keeping only "subject" and "activity" columns and the colums which contained either std or mean.
8) Create "activity.names" dataset from "activity_labels.txt" from the zip file, choose "characher" type of data.
9) Add "activity.names" to data_meansd
10) Rename existing names into more understandable forms:
prefix "t" -> Time_Domain_ 
prefix "f" -> Frequency_Domain_
Acc -> Accelerometer
Mag -> Magnitude
suffix "mean" -> Mean
suffix "std" -> _Standard_Deviation_
11) "data_tidy" dataset was made by aggregation of means of all the activity-subject pairs.

Variables in data_tidy:
activity - type of activity, c(WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,Standing,LAYING)
subject - ID of subject, int (1-30)
tBodyAcc-mean()-X	the average value for this feature, num (range: -1:1)
tBodyAcc-mean()-Y	the average value for this feature, num (range: -1:1)
tBodyAcc-mean()-Z	the average value for this feature, num (range: -1:1)
tBodyAcc-std()-X	the average value for this feature, num (range: -1:1)
tBodyAcc-std()-Y	the average value for this feature, num (range: -1:1)
tBodyAcc-std()-Z	the average value for this feature, num (range: -1:1)
tGravityAcc-mean()-X	the average value for this feature, num (range: -1:1)
tGravityAcc-mean()-Y	the average value for this feature, num (range: -1:1)
tGravityAcc-mean()-Z	the average value for this feature, num (range: -1:1)
tGravityAcc-std()-X	the average value for this feature, num (range: -1:1)
tGravityAcc-std()-Y	the average value for this feature, num (range: -1:1)
tGravityAcc-std()-Z	the average value for this feature, num (range: -1:1)
tBodyAccJerk-mean()-X	the average value for this feature, num (range: -1:1)
tBodyAccJerk-mean()-Y	the average value for this feature, num (range: -1:1)
tBodyAccJerk-mean()-Z	the average value for this feature, num (range: -1:1)
tBodyAccJerk-std()-X	the average value for this feature, num (range: -1:1)
tBodyAccJerk-std()-Y	the average value for this feature, num (range: -1:1)
tBodyAccJerk-std()-Z	the average value for this feature, num (range: -1:1)
tBodyGyro-mean()-X	the average value for this feature, num (range: -1:1)
tBodyGyro-mean()-Y	the average value for this feature, num (range: -1:1)
tBodyGyro-mean()-Z	the average value for this feature, num (range: -1:1)
tBodyGyro-std()-X	the average value for this feature, num (range: -1:1)
tBodyGyro-std()-Y	the average value for this feature, num (range: -1:1)
tBodyGyro-std()-Z	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-mean()-X	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-mean()-Y	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-mean()-Z	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-std()-X	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-std()-Y	the average value for this feature, num (range: -1:1)
tBodyGyroJerk-std()-Z	the average value for this feature, num (range: -1:1)
tBodyAccMag-mean()	the average value for this feature, num (range: -1:1)
tBodyAccMag-std()	the average value for this feature, num (range: -1:1)
tGravityAccMag-mean()	the average value for this feature, num (range: -1:1)
tGravityAccMag-std()	the average value for this feature, num (range: -1:1)
tBodyAccJerkMag-mean()	the average value for this feature, num (range: -1:1)
tBodyAccJerkMag-std()	the average value for this feature, num (range: -1:1)
tBodyGyroMag-mean()	the average value for this feature, num (range: -1:1)
tBodyGyroMag-std()	the average value for this feature, num (range: -1:1)
tBodyGyroJerkMag-mean()	the average value for this feature, num (range: -1:1)
tBodyGyroJerkMag-std()	the average value for this feature, num (range: -1:1)
fBodyAcc-mean()-X	the average value for this feature, num (range: -1:1)
fBodyAcc-mean()-Y	the average value for this feature, num (range: -1:1)
fBodyAcc-mean()-Z	the average value for this feature, num (range: -1:1)
fBodyAcc-std()-X	the average value for this feature, num (range: -1:1)
fBodyAcc-std()-Y	the average value for this feature, num (range: -1:1)
fBodyAcc-std()-Z	the average value for this feature, num (range: -1:1)
fBodyAccJerk-mean()-X	the average value for this feature, num (range: -1:1)
fBodyAccJerk-mean()-Y	the average value for this feature, num (range: -1:1)
fBodyAccJerk-mean()-Z	the average value for this feature, num (range: -1:1)
fBodyAccJerk-std()-X	the average value for this feature, num (range: -1:1)
fBodyAccJerk-std()-Y	the average value for this feature, num (range: -1:1)
fBodyAccJerk-std()-Z	the average value for this feature, num (range: -1:1)
fBodyGyro-mean()-X	the average value for this feature, num (range: -1:1)
fBodyGyro-mean()-Y	the average value for this feature, num (range: -1:1)
fBodyGyro-mean()-Z	the average value for this feature, num (range: -1:1)
fBodyGyro-std()-X	the average value for this feature, num (range: -1:1)
fBodyGyro-std()-Y	the average value for this feature, num (range: -1:1)
fBodyGyro-std()-Z	the average value for this feature, num (range: -1:1)
fBodyAccMag-mean()	the average value for this feature, num (range: -1:1)
fBodyAccMag-std()	the average value for this feature, num (range: -1:1)
fBodyBodyAccJerkMag-mean()	the average value for this feature, num (range: -1:1)
fBodyBodyAccJerkMag-std()	the average value for this feature, num (range: -1:1)
fBodyBodyGyroMag-mean()	the average value for this feature, num (range: -1:1)
fBodyBodyGyroMag-std()	the average value for this feature, num (range: -1:1)
fBodyBodyGyroJerkMag-mean()	the average value for this feature, num (range: -1:1)
fBodyBodyGyroJerkMag-std()	the average value for this feature, num (range: -1:1)


