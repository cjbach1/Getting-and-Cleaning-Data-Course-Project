## downloading the zip file to working directory, unzipping, and loading packages
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "C:/Users/Corey/Desktop/RStudio/Getting and Cleaning Data Course Project/ucizip.zip")
unzip("C:/Users/Corey/Desktop/RStudio/Getting and Cleaning Data Course Project/ucizip.zip")
library(dplyr)
library(data.table)

## reading features and activity metadata
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

## reading test data
testx <- read.table("UCI HAR Dataset/test/X_test.txt")
testy <- read.table("UCI HAR Dataset/test/Y_test.txt")
testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")

## reading train data
trainx <- read.table("UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Merging training and test data sets
totalx <- rbind(testx, trainx)
totaly <- rbind(testy, trainy)
totalsubject <- rbind(testsubject, trainsubject)

## Naming the columns, arranging the columns and merging the complete data set now stored in "totaldata".
colnames(totalx) <- t(features[2])
colnames(totaly) <- "Activity"
colnames(totalsubject) <- "Subject"
totaldata <- cbind(totalx, totaly, totalsubject)
totaldata <- totaldata %>% relocate(Subject) %>% relocate(Activity, .after=Subject)

## Creating a subset of data by extracting only mean and standard deviation measurements now stored in "extractedtotaldata".
columnsmeanstd <- grep("mean\\(\\)|std\\(\\)", names(totaldata), ignore.case = TRUE)
neededcolumns <- c(1, 2, columnsmeanstd)
extractedtotaldata <- totaldata[, neededcolumns]

## Changing activity variable in "extractedtotaldata" set from numeric values to descriptive names
extractedtotaldata[,2] <- activities[extractedtotaldata[,2],2]
head(extractedtotaldata)

## Cleaning up variable names to be more/better descriptive
names(extractedtotaldata) <- gsub("^t", "time", names(extractedtotaldata))
names(extractedtotaldata) <- gsub("^f", "frequency", names(extractedtotaldata))
names(extractedtotaldata) <- gsub("acc", "acceleration", names(extractedtotaldata), ignore.case = TRUE)
names(extractedtotaldata) <- gsub("mag", "magnitude", names(extractedtotaldata), ignore.case = TRUE)
names(extractedtotaldata) <- gsub("-mean()", "mean", names(extractedtotaldata), ignore.case = TRUE)
names(extractedtotaldata) <- gsub("-std()", "standarddeviation", names(extractedtotaldata), ignore.case = TRUE)
names(extractedtotaldata) <- gsub("()", "", names(extractedtotaldata))
names(extractedtotaldata) <- gsub("BodyBody", "Body", names(extractedtotaldata))

## Creating a second, independent tidy data set with the average of each variable for each activity and each subject
extractedtotaldata$Subject <- as.factor(extractedtotaldata$Subject)
extractedtotaldata <- data.table(extractedtotaldata)
tidydata <- aggregate(. ~Subject + Activity, extractedtotaldata, mean)
tidydata <- tidydata[order(tidydata$Subject,tidydata$Activity),]
write.table(tidydata, file = "tidydataoutput.txt", row.names = FALSE)
