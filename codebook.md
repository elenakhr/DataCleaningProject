# Codebook

The source for the data is "Human Activity Recognition Using Smartphones Dataset" that can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experimental set up is described in the "UCI HAR Dataset/README.txt" file. The features measured are described in "UCI HAR Dataset/features_info.txt" file

##tidydata.txt
 
The file (tidydata.txt) is created by running run_analysis.R file. The test and training sets from the original data were merged and only MEAN and STD values of measurements were extracted. The tidydata.txt file contains the mean value for by each subject and activity for each measurement


## Variables in the 

* subject - Participant ID
* activity - Activity performed

These colums (variables) contains the mean values of each mesurement for subject and activity
* TimeBodyAccMeanX
* TimeBodyAccMeanY
* TimeBodyAccMeanZ
* TimeBodyAccStdX
* TimeBodyAccStdY
* TimeBodyAccStdZ
* TimeGravityAccMeanX
* TimeGravityAccMeanY
* TimeGravityAccMeanZ
* TimeGravityAccStdX
* TimeGravityAccStdY
* TimeGravityAccStdZ
* TimeBodyAccJerkMeanX
* TimeBodyAccJerkMeanY
* TimeBodyAccJerkMeanZ
* TimeBodyAccJerkStdX
* TimeBodyAccJerkStdY
* TimeBodyAccJerkStdZ
* TimeBodyGyroMeanX
* TimeBodyGyroMeanY
* TimeBodyGyroMeanZ
* TimeBodyGyroStdX
* TimeBodyGyroStdY
* TimeBodyGyroStdZ
* TimeBodyGyroJerkMeanX
* TimeBodyGyroJerkMeanY
* TimeBodyGyroJerkMeanZ
* TimeBodyGyroJerkStdX
* TimeBodyGyroJerkStdY
* TimeBodyGyroJerkStdZ
* TimeBodyAccMagMean
* TimeBodyAccMagStd
* TimeGravityAccMagMean
* TimeGravityAccMagStd
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStd
* TimeBodyGyroMagMean
* TimeBodyGyroMagStd
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStd
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStdX
* FrequencyBodyAccStdY
* FrequencyBodyAccStdZ
* FrequencyBodyAccMeanFreqX
* FrequencyBodyAccMeanFreqY
* FrequencyBodyAccMeanFreqZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStdX
* FrequencyBodyAccJerkStdY
* FrequencyBodyAccJerkStdZ
* FrequencyBodyAccJerkMeanFreqX
* FrequencyBodyAccJerkMeanFreqY
* FrequencyBodyAccJerkMeanFreqZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStdX
* FrequencyBodyGyroStdY
* FrequencyBodyGyroStdZ
* FrequencyBodyGyroMeanFreqX
* FrequencyBodyGyroMeanFreqY
* FrequencyBodyGyroMeanFreqZ
* FrequencyBodyAccMagMean
* FrequencyBodyAccMagStd
* FrequencyBodyAccMagMeanFreq
* FrequencyBodyAccJerkMagMean
* FrequencyBodyAccJerkMagStd
* FrequencyBodyAccJerkMagMeanFreq
* FrequencyBodyGyroMagMean
* FrequencyBodyGyroMagStd
* FrequencyBodyGyroMagMeanFreq
* FrequencyBodyGyroJerkMagMean
* FrequencyBodyGyroJerkMagStd
* FrequencyBodyGyroJerkMagMeanFreq
* AngletBodyAccMeangravity
* AngletBodyAccJerkMeangravityMean
* AngletBodyGyroMeangravityMean
* AngletBodyGyroJerkMeangravityMean
* AngleXgravityMean
* AngleYgravityMean
* AngleZgravityMean

## Following activied were measured:
(List / Map)

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


