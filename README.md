# project3
The steps of making "datatidy.csv":

Downloading data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
Extracting the archive into the working directory.
Creating datasets "features", "data.train.x", "data.train.activity", "data.train.subject", "data.test.x", "data.test.activity", "data.test.subject" from the files in the working directory.
Merge "data.train.x", "data.train.activity", "data.train.subject" into one dataset "data.train", set the column names as "subject", "activity" and from the "features" dataset.
Merge "data.test.x", "data.test.activity", "data.test.subject" into one dataset "data.test", set the column names as "subject", "activity" and from the "features" dataset.
Merge "data.test" and "data.train" into one dataset "data.test", set the column names as "subject", "activity" and from the "features" dataset.
Subset "data.test" into "data_meansd" keeping only "subject" and "activity" columns and the colums which contained either std or mean.
Create "activity.names" dataset from "activity_labels.txt" from the zip file, choose "characher" type of data.
Add "activity.names" to data_meansd
Rename existing names into more understandable forms: prefix "t" -> Time_Domain_ prefix "f" -> Frequency_Domain_ Acc -> Accelerometer Mag -> Magnitude suffix "mean" -> Mean suffix "std" -> Standard_Deviation
"data_tidy" dataset was made by aggregation of means of all the activity-subject pairs.
