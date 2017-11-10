# Getting and Cleaning Data Course Project

This repo contains the documentation and script for the course Project assignement, wich is based on the Human Activity Recognition Using Smartphones Dataset.

The data set includes the following files:

* README.md
* CodeBook.md
* run_analysis.R

***

## 1 - Environment

* R version: 3.4.2 (2017-09-28)
* Platform: x86_64-apple-darwin15.6.0
* dplyr version: 0.7.4

## 2 - Script Execution

The script contained in this repo executes te following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the script is a Tidy data set that is writen down in the "Out_TidyData.txt" text file on the working directory.

## 3 - Credits

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
