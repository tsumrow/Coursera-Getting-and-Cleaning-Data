## getting-and-cleaning-data-2015
Assignment for the Coursera Getting and Cleaning Data class


## Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1. a tidy data set as described below

2. a link to a Github repository with your script for performing the analysis
3. a code book named CodeBook.md that describes the variables, the data, and any transformations or work that you performed to clean up the data
4. a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  


## Description
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files contained in this repository
- README.md - This file
- LICENSE.md - License terms of usage
- CodeBook.md - A description of the variables, data, and any transformations or work that was performed to create the tidy data
- run_analysis.R - An R script that is used to tranform the data into the tidy data set

## How to use the script
1. Clone this repository - `git clone git@github.com:tsumrow/Coursera-Getting-and-Cleaning-Data`
2. Download the raw data set - [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Unzip the dataset and copy the directory `UCI HAR Dataset` to the cloned repository root directory
4. Open R and set the working directory to the cloned repository root directory
5. Run the run_analysis.R script

The run_analysis.R script will generate a tidy data set in the cloned repository root directory named file `tidy_data_set.txt`
