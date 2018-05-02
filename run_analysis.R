## load the reshape2 library for data manipulation
library(dplyr)

## define target zip file
targetFile <- "UCI HAR Dataset.zip"
# define target url
targetURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Download, unzip and load the dataset
# first check if file exists
if(!file.exists(filename)){
    # dowload the dataset from the url
    download.file(targetURL, targetFile, method="curl")
}

## Unzip the target file containing the data
# define target data
targetData <- "UCI HAR Dataset"
# check if the data directory does not exist already
if(!file.exists(targetData)){
    # unzip the target file
    unzip(targetFile)
}