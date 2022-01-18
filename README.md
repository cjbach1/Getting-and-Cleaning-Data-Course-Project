# Getting and Cleaning Data Course Project

* [Project Summary](#summary)
* [Repository Contents](#contents)
* [The Process](#process)

<h2 id=summary>Project Summary </h2>
The purpose of this project is to demonstrate collecting, manipulating, and cleaning a data set.  Utilizing data collected from the accelerometers within the Samsung Galaxy S smartphone found here (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) I merged data sets, extracted specific subsets, performed generally cleaning, executed some calculations, and exported a specific extraction to be used for future analysis.


<h2 id=contents>Repository Contents</h2>
The [cjbach1/Getting and Cleaning Data Course Project] ()

<table>
<tr><th>File Name</th><th>Description</th></tr>
<tr><td valign=top>README.md</td><td>Documentation explaining the project and how to use files contained in the repository.</td></tr>
<tr><td valign=top>read PUMS codebook.R</td><td>R script to read the American Community Survey Public Use Microdata Sample codebook and a single state's data. The codebook is distributed as a Microsoft Excel spreadsheet. The ACS survey data read is the output from the split PUMS person and households.R script. The script uses <code>read.fwf()</code> to read the survey data. </td></tr>
<tr><td valign=top>read PUMS codebook - readr version.R</td><td>R script to read the American Community Survey Public Use Microdata Sample codebook and a single state's data. The codebook is distributed as a Microsoft Excel spreadsheet. The ACS survey data read is the output from the split PUMS person and households.R script. The script uses Hadley Wickham's <code>readr</code> package <code>read_fwf()</code> function to read the survey data.</td></tr>
<tr><td valign=top>split PUMS person and households.R</td><td>R script to parse the census file and separate into two files for downstream processing: a person-level file and a household-level file. The script uses <code>readLines()</code> and <code>substr()</code> to split the data into the appropriate output files. </td></tr>
<tr><td valign=top>*.png</td><td>Graphics images to be embedded in the README.md file</td></tr>
<tr><td valign=top>data/5%_PUMS_record_layout.xls</td><td>Local copy of codebook describing the PUMS data file layout.</td></tr>
</table>



<h2 id=process>The Process</h2>





<!-- -->

    makeVector <- function(x = numeric()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setmean <- function(mean) m <<- mean
            getmean <- function() m
            list(set = set, get = get,
                 setmean = setmean,
                 getmean = getmean)
    }


In a Github repository the README explains the content of the repository and provides an overview of the project contained in the repository. A code book describes the data in a data set, including variable names, descriptions, data formats (i.e. character / numeric), and any special coding conventions (e.g. K = thousands, M = Millions, B = Billions) etc. 
