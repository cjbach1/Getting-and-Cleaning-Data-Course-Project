# Code Book for 'tidydata' data table.

* [Data Summary](#summary)
* [Transformations](#contents)

<h2 id=summary>Data Summary </h2>


This dataset was created for the Getting and Cleaning Data Assignment within the Data Science Specialization by Johns Hopkins University.  See [cjbach1/Getting and Cleaning Data Course Project](https://github.com/cjbach1/Getting-and-Cleaning-Data-Course-Project) repository for all relevant files. The original dataset is provided here (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and can be transformed to the data below utilizing the scipt 'run_analysis.R' in the GitHub repository.  

The first 2 variables uniquely identify each row in the data table as 'subject' and 'activity'.  The remaining 66 varaiables are averages of features that contain means and standard deviations fom the original dataset.  The table below describes each variable in detail.

| Index |           Variables          |  Class  |  Range  | Description                                                                                               |
|-------|------------------------------| --------|---------|-----------------------------------------------------------------------------------------------------------|
|    1  | subject                      | integer |  1 - 30 | Identifies the person in the experiment.                                                                             |
|    2  | activity                     | factor  |  1 -  6 | Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
|    3  | timeBodyaccelerationmean()-X       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on X axis.                                            |
|    4  | timeBodyaccelerationmean()-Y       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Y axis.                                            |
|    5  | timeBodyaccelerationmean()-Z       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Z axis.                                            |
|    6  | timeBodyaccelerationstandarddeviation()-X        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on X axis.                              |
|    7  | timeBodyaccelerationstandarddeviation()-Y        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Y axis.                              |
|    8  | timeBodyaccelerationstandarddeviation()-Z        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Z axis.                              |
|    9  | timeGravityaccelerationmean()-X    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on X axis.                                         |
|   10  | timeGravityaccelerationmean()-Y    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Y axis.                                         |
|   11  | timeGravityaccelerationmean()-Z    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Z axis.                                         |
|   12  | timeGravityaccelerationstandarddeviation()-X     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on X axis.                           |
|   13  | timeGravityaccelerationstandarddeviation()-Y     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Y axis.                           |
|   14  | timeGravityaccelerationstandarddeviation()-Z     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Z axis.                           |
|   15  | timeBodyaccelerationJerkmean()-X   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on X axis.                                |
|   16  | timeBodyaccelerationJerkmean()-Y   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Y axis.                                |
|   17  | timeBodyaccelerationJerkmean()-Z   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Z axis.                                |
|   18  | timeBodyaccelerationJerkstandarddeviation()-X    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on X axis.                  |
|   19  | timeBodyaccelerationJerkstandarddeviation()-Y    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.                  |
|   20  | timeBodyaccelerationJerkstandarddeviation()-Z    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.                  |
|   21  | timeBodyGyromean()-X      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on X axis.                                             |
|   22  | timeBodyGyromean()-Y      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Y axis.                                             |
|   23  | timeBodyGyromean()-Z      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Z axis.                                             |
|   24  | timeBodyGyrostandarddeviation()-X       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on X axis.                               |
|   25  | timeBodyGyrostandarddeviation()-Y       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Y axis.                               |
|   26  | timeBodyGyrostandarddeviation()-Z       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Z axis.                               |
|   27  | timeBodyGyroJerkmean()-X  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on X axis.                                 |
|   28  | timeBodyGyroJerkmean()-Y  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Y axis.                                 |
|   29  | timeBodyGyroJerkmean()-Z  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Z axis.                                 |
|   30  | timeBodyGyroJerkstandarddeviation()-X   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on X axis.                   |
|   31  | timeBodyGyroJerkstandarddeviation()-Y   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.                   |
|   32  | timeBodyGyroJerkstandarddeviation()-Z   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.                   |
|   33  | timeBodyaccelerationmagnitudemean()      | numeric | [-1, 1] | Time domain, Average of means for the magnitude of body acceleration.                                     |
|   34  | timeBodyaccelerationmagnitudestandarddeviation()       | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of body acceleration.                       |
|   35  | timeGravityaccelerationmagnitudemean()   | numeric | [-1, 1] | Time domain, Average of means for the magnitude of gravity acceleration.                                  |
|   36  | timeGravityaccelerationmagnitudestandarddeviation()    | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of gravity acceleration.                    |
|   38  | timeBodyaccelerationJerkmagnitudemean()  | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of body accelaration.                            |
|   38  | timeBodyaccelerationJerkmagnitudestandarddeviation()   | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.              |
|   39  | timeBodyGyromagnitudemean()     | numeric | [-1, 1] | Time domain, Average of means for the magnitude of angular velocity.                                      |
|   40  | timeBodyGyromagnitudestandarddeviation()      | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of angular velocity.                        |
|   41  | timeBodyGyroJerkmagnitudemean() | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of the angular velocity.                         |
|   42  | timeBodyGyroJerkmagnitudestandarddeviation()  | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.           |
|   43  | frequencyBodyaccelerationmean()-X       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on X axis.                                       |
|   44  | frequencyBodyaccelerationmean()-Y       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Y axis.                                       |
|   45  | frequencyBodyaccelerationmean()-Z       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Z axis.                                       |
|   46  | frequencyBodyaccelerationstandarddeviation()-X        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on X axis.                         |
|   47  | frequencyBodyaccelerationstandarddeviation()-Y        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Y axis.                         |
|   48  | frequencyBodyaccelerationstandarddeviation()-Z        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Z axis.                         |
|   49  | frequencyBodyaccelerationJerkmean()-X   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on X axis.                       |
|   50  | frequencyBodyaccelerationJerkmean()-Y   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Y axis.                       |
|   51  | frequencyBodyaccelerationJerkmean()-Z   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Z axis.                       |
|   52  | frequencyBodyaccelerationJerkstandarddeviation()-X    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.         |
|   53  | frequencyBodyaccelerationJerkstandarddeviation()-Y    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.         |
|   54  | frequencyBodyaccelerationJerkstandarddeviation()-Z    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.         |
|   55  | frequencyBodyGyromean()-X      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on X axis.                            |
|   56  | frequencyBodyGyromean()-Y      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Y axis.                            |
|   57  | frequencyBodyGyromean()-Z      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Z axis.                            |
|   58  | frequencyBodyGyrostandarddeviation()-X       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.              |
|   59  | frequencyBodyGyrostandarddeviation()-Y       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.              |
|   60  | frequencyBodyGyrostandarddeviation()-Z       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.              |
|   61  | frequencyBodyaccelerationmagnitudemean()      | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of body acceleration.                                |
|   62  | frequencyBodyaccelerationmagnitudestandarddeviation()       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of body acceleration.                  |
|   63  | frequencyBodyaccelerationJerkmagnitudemean()  | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of body acceleration.                       |
|   64  | frequencyBodyaccelerationJerkmagnitudestandarddeviation()   | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.         |
|   65  | frequencyBodyGyromagnitudemean()     | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of angular velocity.                                 |
|   66  | frequencyBodyGyromagnitudestandarddeviation()      | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of angular velocity.                   |
|   67  | frequencyBodyGyroJerkmagnitudemean() | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of angular velocity.                        |
|   68  | frequencyBodyGyroJerkmagnitudestandarddeviation()  | numeric | [-1, 1] | Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.           |
 


<h2 id=contents>Transformations</h2>

The script "run_analysis.R" does the following:
   
1.  It downloads and unzips the original data sets, loads the necessary libraries (<code>library(dplyr)</code> and <code>library(data.table)</code>) and reads the data into R.  There are two distinct directories of test and training data, to which three text files are provided in each relating to the the experiment subject (read in as testsubject or trainsubject objects), activity (read in as testy or trainy), and features (read in as testx or trainx) are provided.
2.  It joins like data sets (ex testx with testy and testsubject with trainsubject) to create 3 objects with the test and train populations combined.  <code>colnames()</code> is used to clean and <code>%>% relocate(Subject) %>%</code> is used to arrange all three objects which are then joined into a single data set via <code>cbind()</code> to create the totaldata object.
3.  It creates a subset of data by extracting only mean and standard deviation measurements now stored in the object extractedtotaldata.  I utilized <code>grep("mean\\(\\)|std\\(\\)", names(totaldata), ignore.case = TRUE)</code> to extract the substring of any column names (features) that contained mean and standard deviation measurements.
4.  It cleanes up variable names to be more/better descriptive utilizing the <code>gsub()</code> function.
5.  It creates a second, independent tidy data set with the average of each variable for each activity and each subject.  I utilized the following code to extract and then order the new subset: <code>aggregate(. ~Subject + Activity, extractedtotaldata, mean)</code> and <code>tidydata <- tidydata[order(tidydata$Subject,tidydata$Activity),]</code>.



*****

For additional information regarding the original dataset and specifics regarding how the data was collected and measured, please see the 'features_info.txt' and the 'README.txt' files provided in the 'UCI HAR Dataset' directory.
