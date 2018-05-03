# Getting & Cleaning Data - Project

This repo contains the getting and cleaning data course project, which is
part of the Data Science course offered by the John Hopkin University (JHU).
The R script (i.e `run_analysis.R`) works as follows:

- The source data is downloaded if it does not already exists within the current working directory
- The zip file is unzipped and the data read, split and stored in variable (i.e. train and test data)
- The training and test data are merged to create on data set.
- Measurements on the standard deviation and mean for each measurement is extracted
- The data set is labeled with appropriate descriptive variable names
- From step 4, a second independent tidy data set created, which contains the average of each variable for each activity and subject
- Finally the data set is written to a text file `tidy_data.txt`.