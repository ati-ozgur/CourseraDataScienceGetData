library("stringr")
# Merges the training and the test sets to create one data set.


trainFeatures <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
trainClass <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")


features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
colnames(features) <- c("ID","FeatureName")

features[,2] <- str_replace_all(features[,2],"\\(\\)","")

features[,2] <- str_replace_all(features[,2],"\\(","_")
features[,2] <- str_replace_all(features[,2],"\\)","_")

features[,2] <- str_replace_all(features[,2],",","_")

colnames(trainFeatures) <- features[,2] 


#names(features)[1] <- "ID"
#names(features)[2] <- "FeatureName"
