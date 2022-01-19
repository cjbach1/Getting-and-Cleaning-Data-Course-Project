# Getting and Cleaning Data Course Project

* [Project Summary](#summary)
* [Repository Contents](#contents)
* [The Process](#process)

<h2 id=summary>Project Summary </h2>
The purpose of this project is to demonstrate collecting, manipulating, and cleaning a data set.  Utilizing data collected from the accelerometers within the Samsung Galaxy S smartphone found here (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) I merged data sets, extracted specific subsets, performed generally cleaning, executed some calculations, and exported a specific extraction to be used for future analysis.


<h2 id=contents>Repository Contents</h2>
The [cjbach1/Getting and Cleaning Data Course Project](https://github.com/cjbach1/Getting-and-Cleaning-Data-Course-Project) repository contains the following files:



<table>
<tr><th>File Name</th><th>Description</th></tr>
<tr><td valign=top>README.md</td><td>Documentation explaining the project and how to use files contained in the repository.</td></tr>
<tr><td valign=top>CodeBook.md</td><td>Codebook describing the tidydataoutput.txt file layout. </td></tr>
<tr><td valign=top>run_analysis.R</td><td>R script to download, merge, extract, clean, and subset the datasets.  See process section below for further details.</td></tr>
<tr><td valign=top>tidydataoutput.txt</td><td> Final data extraction for future analysis. </td></tr>
</table>



<h2 id=process>The Process</h2>
I created the script "run_analysis.R" which does the following:
   
1.  It downloads and unzips the original data sets, loads the necessary libraries (<code>library(dplyr)</code> and <code>library(data.table)</code>) and reads the data into R.  There are two distinct directories of test and training data, to which three text files are provided in each relating to the the experiment subject (read in as testsubject or trainsubject objects), activity (read in as testy or trainy), and features (read in as testx or trainx) are provided.
2.  It joins like data sets (ex testx with testy and testsubject with trainsubject) to create 3 objects with the test and train populations combined.  <code>colnames()</code> is used to clean and <code>%>% relocate(Subject) %>%</code> is used to arrange all three objects which are then joined into a single data set via <code>cbind()</code> to create the totaldata object.
3.  It creates a subset of data by extracting only mean and standard deviation measurements now stored in the object extractedtotaldata.  I utilized <code>grep("mean\\(\\)|std\\(\\)", names(totaldata), ignore.case = TRUE)</code> to extract the substring of any column names (features) that contained mean and standard deviation measurements.
4.  It cleanes up variable names to be more/better descriptive utilizing the <code>gsub()</code> function.
5.  It creates a second, independent tidy data set with the average of each variable for each activity and each subject.  I utilized the following code to extract and then order the new subset: <code>aggregate(. ~Subject + Activity, extractedtotaldata, mean)</code> and <code>tidydata <- tidydata[order(tidydata$Subject,tidydata$Activity),]</code>.
 
