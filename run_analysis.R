library(dplyr)
library(stringr)

if(!file.exists("./UCI HAR Dataset")){
  print("Dataset doesn't exist in the workin directory, downloading...")
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                 destfile = "dataset.zip")
  print("Unzipping data archive...")
  unzip("dataset.zip", exdir = getwd())
}

## Cast all to tbl_df
dataFolder <- "./UCI HAR Dataset/"

print("Reading activity labels ...")
labels <- tbl_df(read.csv(paste(dataFolder, "activity_labels.txt", sep=""), sep=" ", header = FALSE))
## change these calls to colnames
colnames(labels)<-c("labelid","activity")

print("Reading features.txt, which is measure names...")
features<-tbl_df(read.csv(paste(dataFolder, "features.txt", sep = ""), sep=" ", header = FALSE, stringsAsFactors = FALSE))
colnames(features) <- c("featureid","featurename") 
#here we need to change feature names to proper names

print("Cleaning the names of the measures...")
xnames <- gsub("-","",gsub(",", "", gsub("\\)", "", gsub("\\(","", gsub("\\(\\)","", features$featurename)))))
xnames <- gsub("mean", "Mean", xnames)
xnames <- gsub("std", "Std", xnames)
xnames <- gsub("^t", "Time", xnames)
xnames <- gsub("^f", "Frequency", xnames)
xnames <- gsub("BodyBody", "Body", xnames)
xnames <- gsub("^angle", "Angle", xnames)

##Reading subject files
print("Reading files from the test folder...")
subject_test<-tbl_df(read.table(paste(dataFolder,"test/subject_test.txt", sep = ""), sep="", header = FALSE, stringsAsFactors = F))
colnames(subject_test)<-c("subject")

label_test<-tbl_df(read.table(paste(dataFolder,"test/y_test.txt", sep=""), sep=" ", header = FALSE, stringsAsFactors=F))
colnames(label_test)<-c("labelid")

measure_test<-tbl_df(read.table(paste(dataFolder,"test/x_test.txt", sep = ""),sep="",stringsAsFactors=F,header=F))
print("Setting colnames for measure_text")
colnames(measure_test)<-c(xnames)

print("Merging subject, labels and measures for test..")
label_measure_test <- cbind.data.frame(label_test, measure_test)
data_test <- cbind.data.frame(subject_test, label_measure_test)

print("Test data processed and merged")

## Training Set
print("Reading files from the training folder...")
subject_train<-tbl_df(read.table(paste(dataFolder, "train/subject_train.txt", sep = ""), sep="", header = FALSE, stringsAsFactors = FALSE))
colnames(subject_train)<-c("subject")

label_train<-tbl_df(read.table(paste(dataFolder,"train/y_train.txt", sep = ""), sep="", header = FALSE, stringsAsFactors = FALSE))
colnames(label_train)<-c("labelid")

measure_train<-tbl_df(read.table(paste(dataFolder,"train/x_train.txt", sep = ""),sep="",stringsAsFactors=F,header=F))

print("setting colnames for measure_train...")
colnames(measure_train)<-c(xnames)

print("Merging subject, labels, measures for test..")
label_measure_train <- cbind.data.frame(label_train, measure_train)
data_train <- cbind.data.frame(subject_train, label_measure_train)

print("Train data processed and merged")

data_all <- rbind(data_test, data_train)
print("Test and Train data successfully merged")

#Colums that has to be selected
selcol<-grep("[Mm]ean|[Ss]td", xnames)

print("Selecting only required columns...")
data_filtered<- tbl_df(data_all[, c(1,2,selcol+2)])

print("Setting proper labeles to activities...")
data_labeled<-inner_join(data_filtered, labels, by=c("labelid" ="labelid"))

# Geting tidy set
print("Getting tidy data set...")
tidy_data <- data_labeled %>%  
  select(subject, activity, TimeBodyAccMeanX:AngleZgravityMean) %>%
  group_by(subject, activity) %>% 
  summarize_all(mean)

print("Writing tidy data set into the file...")
write.table(tidy_data,file="tidydata.txt", row.names=F)

print("Processing completed, tidydata.txt is written into working directory")

# message("This will work too")
# tidy_data2 <- data_labeled %>%  
#  select(subject, labelname, TimeBodyAccMeanX:AngleZgravityMean) %>%  
#  group_by(subject,labelname) %>% 
#  summarize_at(vars(TimeBodyAccMeanX:AngleZgravityMean),mean)
#write.csv(tidy_data2,file="tidydata2.txt")