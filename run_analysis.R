features <- read.csv('./features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

data.train.x <- read.table('./X_train.txt')
data.train.activity <- read.csv('./y_train.txt', header = FALSE, sep = ' ')
data.train.subject <- read.csv('./subject_train.txt',header = FALSE, sep = ' ')

data.train <-  data.frame(data.train.subject, data.train.activity, data.train.x)
names(data.train) <- c(c('subject', 'activity'), features)
features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

data.train.x <- read.table('./UCI HAR Dataset/train/X_train.txt')
data.train.activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
data.train.subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')

data.train <-  data.frame(data.train.subject, data.train.activity, data.train.x)
names(data.train) <- c(c('subject', 'activity'), features)

data.test.x <- read.table('./UCI HAR Dataset/test/X_test.txt')
data.test.activity <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
data.test.subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')

data.test <-  data.frame(data.test.subject, data.test.activity, data.test.x)
names(data.test) <- c(c('subject', 'activity'), features)

data_train_test <- rbind(data.train, data.test)
mean_and_sd <- grep('mean|std', features)
data_meansd <- data_train_test[,c(1,2,mean_and_sd + 2)]
data_meansd

activity.names <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
activity.names <- as.character(activity.names[,2])
data_meansd$activity <- activity.names[data_meansd$activity]
data_meansd

name.new <- names(data_meansd)
name.new <- gsub("[(][)]", "", name.new)
name.new <- gsub("^t", "Time_Domain_", name.new)
name.new <- gsub("^f", "Frequency_Domain_", name.new)
name.new <- gsub("Acc", "Accelerometer", name.new)
name.new <- gsub("Gyro", "Gyroscope", name.new)
name.new <- gsub("Mag", "Magnitude", name.new)
name.new <- gsub("-mean-", "_Mean_", name.new)
name.new <- gsub("-std-", "_Standard_Deviation_", name.new)
name.new <- gsub("-", "_", name.new)
names(data_meansd) <- name.new
data_meansd

data_tidy <- aggregate(data_meansd[,3:81], by = list(activity = data_meansd$activity, subject = data_meansd$subject),FUN = mean)
write.table(x = data_tidy, file = "data_tidy.txt", row.names = FALSE)
data_tidy 
