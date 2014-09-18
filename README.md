CourseraGCD
===========

Course project for Coursera "Getting and cleaning data" class

The script run_analysis.R makes the following:
It merges the training and the test sets to create one data set from data collected from the accelerometers from the Samsung Galaxy S smartphone. 
You can read fuul description of the original data here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
Then script extracts only the measurements on the mean and standard deviation for each measurement. 
Further script creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Here is more detailed description for script:

1. It checks if data needed to perfom next steps exists in working directory. If there is no necessary data, script downloads and unpacks it.
2. Script reads features.txt in order to assign column names for X_test.txt, which it reads second.
3. Further script reads subject_test.txt and y_test.txt with names "subject" and "activity" respectively.
4. Then three data.frames are combined by columns.
5. Script repeats steps 2-4 for train data.
6. Script merges two full tables for test and train cases into one dataset and replaces numeric activity labels with descriptive ones from activity_labels.txt.
7. Script groups dataset from previous step by subjects and activities.
8. Script forms new dataset with the average value of each variable for each activity and each subject.
9. Script writes dataset from step 8 into output/tidyset.txt in working directory.
10. The last - script removes intermediate variables from R environment.
