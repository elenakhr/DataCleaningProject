# Getting and Cleaning Data Course Project

## Project Files
* run_analysis.R : the R-code run on the data set
* tidydata.txt : the clean data extracted from the original data using run_analysis.R
* CodeBook.md : the CodeBook reference to the variables in Tidy.txt
* README.md : the analysis of the code in run_analysis.R

## run_alalysis.R
The script includes the following steps:1. Downloads and unzips original dataset, if it is not found in the working directory
1. Reads data common to the test and training set
1. Cleans up the feature names: removes backets, dots, commas and makes the names more readable
1. Reads and merges the training and the test sets to create one data set.
1. Extracts the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names, extracted from features.txt, to name the activities in the data set
1. Labels the data set with descriptive activity names from activity_labels.txt
1. Creates a tidy data set with the average for each variable per each activity and each subject and writes it into tidydata.txt

## Running the script

1. In R environment set working directory to the location of the script
1. Source the script
1. Verify that tidydata.txt file is created in the working directory



