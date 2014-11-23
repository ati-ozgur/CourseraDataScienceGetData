library("stringr")
# Merges the training and the test sets to create one data set.


# Feature,Class and subject data files are read and combined to one dataset here.

trainFeatures <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
trainClass <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")


testFeatures <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
testClass <- read.table("UCI HAR Dataset/test/Y_test.txt", quote="\"")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")


mergedClass <- rbind(trainClass,testClass)
names(mergedClass) <- c("activityLabel")

mergedSubject <- rbind(trainSubject,testSubject)
names(mergedSubject) <- c("subject")



mergedFeatures <- rbind(trainFeatures,testFeatures)

#features.txt file read and features names are cleaned and changed to descriptive names here.


features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
colnames(features) <- c("ID","FeatureName")
features[,2] <- str_replace_all(features[,2],"\\(\\)","")
features[,2] <- str_replace_all(features[,2],"\\(","_")
features[,2] <- str_replace_all(features[,2],"\\)","_")
features[,2] <- str_replace_all(features[,2],",","_")
features[,2] <- str_replace_all(features[,2],"-","_")
features[,2] <- str_replace_all(features[,2],"Acc","Accelerometer")
features[,2] <- str_replace_all(features[,2],"Gyro","Gyroscope")






colnames(mergedFeatures) <- features[,2] 

# full merged dataset here

mergedDataset <- cbind(mergedFeatures,mergedSubject,mergedClass)


# temporary variables are cleaned.

rm("features")
rm("mergedClass")
rm("mergedFeatures")
rm("mergedSubject")
rm("testClass")
rm("testFeatures")
rm("testSubject")
rm("trainClass")
rm("trainFeatures")
rm("trainSubject")


