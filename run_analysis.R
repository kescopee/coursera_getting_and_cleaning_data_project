# load the dplyr library for data manipulation
library(dplyr)
# define target file name
file <- "UCI HAR Dataset.zip"
# define target url
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# define dataset name
targetFolder <- "UCI HAR Dataset"
# check if it doesn't exists
if(!file.exists(file)){
    # download file from the url
    download.file(url, file, method="auto")
}
# unzip dataset if the directory does not exist
if(!file.exists(targetFolder)){
    unzip(file)
}
# retrieve all features contained in the 'features.txt' file
features <- read.table(
    file.path(targetFolder, "features.txt"),
    as.is = TRUE
)
# retrieve the activity labels contained in the 'activity_labels.txt. file
activities <- read.table(
    file.path(targetFolder, "activity_labels.txt")
)
# modify column names
colnames(activities) <- c("activityId", "activityLabel")
## retrieve training and test dataset
# test dataset
test <- read.table(file.path(targetFolder, "test", "X_test.txt"))
testActivities <- read.table(file.path(targetFolder, "test", "y_test.txt"))
testSubjects <- read.table(file.path(targetFolder, "test", "subject_test.txt"))
# training dataset
train <- read.table(file.path(targetFolder, "train", "X_train.txt"))
trainActivities <- read.table(file.path(targetFolder, "train", "y_train.txt"))
trainSubjects <- read.table(file.path(targetFolder, "train", "subject_train.txt"))
# merge the train and test data into one data set
# by using the rbind & cbind to concatenate into single data table
test <- cbind(testSubjects, test, testActivities)
train <- cbind(trainSubjects, train, trainActivities)
allActivites <- rbind(train, test)
# remove tables to save memory (i.e make computationally efficient)
rm(
    list = c(
        'test', 'testSubjects', 'testActivities',
        'train', 'trainSubjects', 'trainActivities'
    )
)
# define and assign column names
colnames(allActivites) <- c("subject", "activity", features[,2])
# target columns to keep/store
targetColumns <- grepl("mean|std|activity|subject", colnames(allActivites))
allActivites <- allActivites[,targetColumns]
# change activity into factor levels
allActivites$activity <- factor(
    allActivites$activity,
    levels = activities[,1],
    labels = activities[,2]
)
# remove special characters and get the column names
allActivitesCols <- gsub("[\\(\\)-]", "", colnames(allActivites))
# label the data set with descriptive variable names
allActivitesCols <- gsub("mean", "Mean", allActivitesCols)
allActivitesCols <- gsub("^t", "timeDomain", allActivitesCols)
allActivitesCols <- gsub("Mag", "Magnitude", allActivitesCols)
allActivitesCols <- gsub("Freq", "Frequency", allActivitesCols)
allActivitesCols <- gsub("Gyro", "Gyroscope", allActivitesCols)
allActivitesCols <- gsub("Acc", "Accelerometer", allActivitesCols)
allActivitesCols <- gsub("^f", "frequencyDomain", allActivitesCols)
allActivitesCols <- gsub("std", "StandardDeviation", allActivitesCols)
# clean duplicate column name (same string)
allActivitesCols <- gsub("BodyBody", "Body", allActivitesCols)
# update all activties column name using the new labels
colnames(allActivites) <- allActivitesCols
# group by (and summarize) activity and subject based on mean
allActivitesMeans <- allActivites %>% 
                    group_by(activity, subject) %>%
                    summarize_all(funs(mean))
# store the means as an independent tidy data set
write.table(
    allActivitesMeans, 
    file = "tidy_data.txt", 
    row.names = FALSE, 
    quote = FALSE,
    sep = '\t'
)
