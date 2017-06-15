Getting and Cleaning Data Course Project
========================================================

Purpose 
-----------------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 
You will be graded by your peers on a series of yes/no questions related to the project. 
You will be required to submit: 

1. a tidy data set as described below;
2. a link to a Github repository with your script for performing the analysis; and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called ``CodeBook.md``. 

You should also include a ``README.md`` in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

Objectives
-----------------

`run_analysis.R` performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

run_analysis.R
-----------------

1. Downloads data from given dataset and unzips the file into the UCI HAR Dataset folder. 
2. Reads files which are going to be used for this project and converts them into datatable
3. Uses descriptive activity names to name the activities in the data set with gsub, setnames, and make.names functions
4. Merges the training and the test sets to create one data set with cbind and rbind functions
5. Selects only those column that matches mean or std using dplyr library and write result into merge_data.txt file
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
7. Writes result into tidy_data.txt file.