##
## Coursera Getting and Cleaning Data Course Project
## Date: 2017-10
## Author: Gabriel Paredes
## Version: 1.0
##

# Load the requied Library
library(dplyr)

# 1. Merges the training and the test sets to create one data set.
## Reads Features and Activity Labels
features_labels <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

## Reads Test Data
X_test <- read.table("test/X_test.txt")
Y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## Reads Training Data
X_train <- read.table("train/X_train.txt")
Y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

## Merges the data
X_data <- rbind(X_test, X_train)
Y_data <- rbind(Y_test, Y_train)
subject_data <- rbind(subject_test, subject_train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std_index <- grep("(mean|std)\\(\\)", features_labels[, 2])
X_data <- X_data[, mean_std_index]

# 3. Uses descriptive activity names to name the activities in the data set
Y_data[, 1] <- activity_labels[Y_data[, 1], 2]

# 4. Appropriately labels the data set with descriptive variable names.
names(X_data) <- features_labels[mean_std_index, 2]
names(Y_data) <- "Activity"
names(subject_data) <- "Subject"

## Merge all data 
HAR_DF <- cbind(X_data, Y_data, subject_data)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
out_tidydata <- HAR_DF %>% group_by(Activity, Subject) %>% summarise_all(mean)

## Write the tidy data out to a text file
write.table(out_tidydata, file = "Out_TidyData.txt", row.name=FALSE)
