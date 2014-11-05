zipFileName = "data.zip"


if (!file.exists(zipFileName)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile = zipFileName, method = "curl")  
  
}
unzip(zipFileName)
