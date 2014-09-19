CourseraGCD
===========

Course project for Coursera "Getting and cleaning data" class

Put the file run_analysis.R into your working directory. Then use source("run_analysis.R").

The script will make the following:

It merges the training and the test sets to create one data set from data collected from the accelerometers from the Samsung Galaxy S smartphone. 
You can read fuul description of the original data here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Script extracts only the measurements on the mean and standard deviation for each measurement into tbl_df variable named dataset.
Further script creates a second, independent tidy data set with the average of each variable for each activity and each subject under the name "tidyset".
Both dataset and tidyset remains in the R environment after script is finfshed, so you can use them further as you wish.
