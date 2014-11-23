wantedFeatures <- unique( which(!is.na(str_match(names(mergedDataset),"Mean|mean|Std|std|activityLabel"))))


mergedDataset_extracted <- mergedDataset[,wantedFeatures]



