library("stringr")
# Merges the training and the test sets to create one data set.


trainFeatures <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
trainClass <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")

testFeatures <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
testClass <- read.table("UCI HAR Dataset/test/Y_test.txt", quote="\"")

mergedClass <- rbind(trainClass,testClass)

names(mergedClass) <- c("activityLabel")

mergedFeatures <- rbind(trainFeatures,testFeatures)

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

mergedDataset <- cbind(mergedFeatures,mergedClass)



rm("features")
rm("mergedClass")
rm("mergedFeatures")
rm("testClass")
rm("testFeatures")
rm("trainClass")
rm("trainFeatures")

