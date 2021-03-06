You can get full description of analized data at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is detailed description for script run_analysis.r:

1. It checks if data needed to perfom next steps exists in working directory. If there is no necessary data, script downloads and unpacks it.
2. Script reads UCI HAR Dataset/features.txt in order to assign column names for UCI HAR Dataset/test/X_test.txt, which it reads second.
3. Further script reads UCI HAR Dataset/test/subject_test.txt and UCI HAR Dataset/test/y_test.txt with names "subject" and "activity" respectively.
4. Then three data.frames are combined by columns.
5. Script repeats steps 2-4 for train data.
6. Script merges two tables for test and train cases created at steps 2-5 into one dataset and replaces numeric activity labels with descriptive ones from UCI HAR Dataset/activity_labels.txt.
7. Script groups dataset from previous step by subjects and activities and removes "()" and "-" symbols in the names.
8. Script forms new dataset with the average value of each variable for each activity and each subject. There are 30 unique subjects and 6 unique activities, which result in a 180 combinations. For each combination, the mean of each measurement with the corresponding combination is calculated. So the result is  180x68 table.
9. Script writes dataset from step 8 into output/tidyset.txt in working directory.
10. The last - script removes intermediate variables from R environment.

The list of variables in final tidy set (every variable is average value by activity and subject of values from full data set, which are descripted at README.txt and features_info.txt of original data):

"activity" 
"subject" 
"tBodyAccmeanX" 
"tBodyAccmeanY" 
"tBodyAccmeanZ" 
"tBodyAccstdX" 
"tBodyAccstdY" 
"tBodyAccstdZ" 
"tGravityAccmeanX" 
"tGravityAccmeanY" 
"tGravityAccmeanZ" 
"tGravityAccstdX" 
"tGravityAccstdY" 
"tGravityAccstdZ" 
"tBodyAccJerkmeanX" 
"tBodyAccJerkmeanY" 
"tBodyAccJerkmeanZ" 
"tBodyAccJerkstdX" 
"tBodyAccJerkstdY" 
"tBodyAccJerkstdZ" 
"tBodyGyromeanX" 
"tBodyGyromeanY" 
"tBodyGyromeanZ" 
"tBodyGyrostdX" 
"tBodyGyrostdY" 
"tBodyGyrostdZ" 
"tBodyGyroJerkmeanX" 
"tBodyGyroJerkmeanY" 
"tBodyGyroJerkmeanZ" 
"tBodyGyroJerkstdX" 
"tBodyGyroJerkstdY" 
"tBodyGyroJerkstdZ" 
"tBodyAccMagmean" 
"tBodyAccMagstd" 
"tGravityAccMagmean" 
"tGravityAccMagstd" 
"tBodyAccJerkMagmean" 
"tBodyAccJerkMagstd" 
"tBodyGyroMagmean" 
"tBodyGyroMagstd" 
"tBodyGyroJerkMagmean" 
"tBodyGyroJerkMagstd" 
"fBodyAccmeanX" 
"fBodyAccmeanY" 
"fBodyAccmeanZ" 
"fBodyAccstdX" 
"fBodyAccstdY" 
"fBodyAccstdZ" 
"fBodyAccJerkmeanX" 
"fBodyAccJerkmeanY" 
"fBodyAccJerkmeanZ" 
"fBodyAccJerkstdX" 
"fBodyAccJerkstdY" 
"fBodyAccJerkstdZ" 
"fBodyGyromeanX" 
"fBodyGyromeanY" 
"fBodyGyromeanZ" 
"fBodyGyrostdX" 
"fBodyGyrostdY" 
"fBodyGyrostdZ" 
"fBodyAccMagmean" 
"fBodyAccMagstd" 
"fBodyBodyAccJerkMagmean" 
"fBodyBodyAccJerkMagstd" 
"fBodyBodyGyroMagmean" 
"fBodyBodyGyroMagstd" 
"fBodyBodyGyroJerkMagmean" 
"fBodyBodyGyroJerkMagstd"
