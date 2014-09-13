###Prepare workspace: download and extract files, import packages

"""
if(!file.exists("UCI HAR Dataset")){
        if(!file.exists("uhd.zip")){
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","uhd.zip", method="curl")
        }
        unzip("uhd.zip")
}"""


library(dplyrm, tidyr)

###Form test table

features <-read.table("./UCI HAR Dataset/features.txt")
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(xtest) <- features[[2]]
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subjecttest)<-"subject"
activity<-read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(activity)<-"activity"
xtest<-cbind(subjecttest,activity,xtest)

###Form train table.

xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(xtrain) <- features[[2]]
subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subjecttrain)<-"subject"
activity<-read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(activity)<-"activity"
xtrain<-cbind(subjecttrain,activity,xtrain)

###Merge tables into dplyr table format
dataset <- tbl_df(rbind(xtest,xtrain))

###Extract only the measurements on the mean and standard deviation for each measurement. 

dataset <- dataset[,grepl("activity|subject|mean\\(|std\\(",names(dataset),ignore.case=TRUE)]

###Apply descriptive activity labels

activitylabels <-read.table("./UCI HAR Dataset/activity_labels.txt")
dataset$activity <- as.factor(dataset$activity)
levels(dataset$activity) <- as.character(activitylabels[[2]])

###Group dataset by activities and subject for further summarising

dataset<-dataset%>%group_by(activity,subject)

###Removing parenthesis and hyphens from variables names

names(dataset)<-gsub("\\(|\\)|\\-","",names(dataset))

###Form independent data set with the average of each variable
###for each activity and each subject.

tidyset<-summarise_each(dataset,funs(mean))

###Write tidy data set into file
if(!file.exists("./output")){dir.create("./output")}
write.table(tidyset,"output/tidyset.txt",row.names=FALSE)

###Cleanup: delete temporary variables, so only datasets remains in environment

remove(activity,features,subjecttest,subjecttrain,xtest,xtrain,activitylabels)