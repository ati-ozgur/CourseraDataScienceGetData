suppressPackageStartupMessages(library(dplyr))

source("downloadDataFile.R")

#1. Merges the training and the test sets to create one data set.
source("CreateOneDataSetFromTrainAndTestSet.R")


#2.Extracts only the measurements on the mean and standard deviation for each measurement.

wantedFeatures <- unique( which(!is.na(str_match(names(mergedDataset),"Mean|mean|Std|std|activityLabel|subject"))))
mergedDataset_extracted <- mergedDataset[,wantedFeatures]



#3.Uses descriptive activity names to name the activities in the data set

mergedDataset_extracted[mergedDataset_extracted$activityLabel == 1,88] <- "WALKING"
mergedDataset_extracted[mergedDataset_extracted$activityLabel == 2,88] <- "WALKING_UPSTAIRS"
mergedDataset_extracted[mergedDataset_extracted$activityLabel == 3,88] <- "WALKING_DOWNSTAIRS"
mergedDataset_extracted[mergedDataset_extracted$activityLabel == 4,88] <- "SITTING"
mergedDataset_extracted[mergedDataset_extracted$activityLabel == 5,88] <- "STANDING"
mergedDataset_extracted[mergedDataset_extracted$activityLabel == 6,88] <- "LAYING"





#4.Appropriately labels the data set with descriptive variable names. 
# Features renamed before. 

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- mergedDataset_extracted %>% 
  group_by(activityLabel,subject) %>%
  summarise_each(funs(mean))
