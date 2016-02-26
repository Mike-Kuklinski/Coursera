# GetData_CourseProject
# Mike Kuklinski

# Preliminary steps taken to put rawdata zip file in working directory. Code not
# required to be run for assignment:
#   url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
#   download.file(url,destfile='rawdata.zip')
#   unzip('rawdata.zip')

# With working directory set to the folder with the unzipped data. The following
# code will get/clean the data and create the tidy data set, 'tidydata.txt' and 
# store it in the working directory. 

# Load necessary libraries
library(reshape2)

# Begin Reading Files within rawdata folder:

## Descriptions of the exercises being performed in each record
exercise_labels<-read.table('./UCI HAR Dataset/activity_labels.txt',col.names = c('Exercise ID','Exercise Performed'))

## Names of the variables within each dataset record
variable_names<-read.table('./UCI HAR Dataset/features.txt',stringsAsFactors = FALSE)

# In order to merge the 'test' and 'train' data sets, upload and clean each set
# seperately, then join together.

# 1.a - Test-Dataset Preparation:

## Upload test_set and assign variable names information from features.txt
test_set<-read.table('./UCI HAR Dataset/test/X_test.txt')
names(test_set)<-variable_names[,2]

## List of exercises associated with the data set
test_set_exercise_labels<-read.table('./UCI HAR Dataset/test/y_test.txt',col.names = "Activity")

## List of Subjects performing the exercises
test_set_subject<-read.table('./UCI HAR Dataset/test/subject_test.txt',col.names = "Subject")

## Compile Data set into one using cbind
compiled_test_set<-cbind(test_set_subject,test_set_exercise_labels,test_set)


# 1.b - Train-Dataset Preparation:

## Upload train_set and assign variable names 
train_set<-read.table('./UCI HAR Dataset/train/X_train.txt')
names(train_set)<-variable_names[,2]

## List of exercises associated with the data set
train_set_exercise_labels<-read.table('./UCI HAR Dataset/train/y_train.txt',col.names = "Activity")

## List of Subjects performing the exercises
train_set_subject<-read.table('./UCI HAR Dataset/train/subject_train.txt',col.names = "Subject")

## Compile Data set into one using cbind
compiled_train_set<-cbind(train_set_subject,train_set_exercise_labels,train_set)


# 1.c - Merge Test and Train Datasets

## Combine the compiled datasets for test and train into one data set
full_compile<-rbind(compiled_test_set,compiled_train_set)

## Using merge, substitute the exercise number designations with exercise labels
## PLEASE NOTE: This accomplishes part 3 of the assignment
full_compile_w_act<-merge(exercise_labels,full_compile,by.x='Exercise.ID',
                          by.y='Activity',all=TRUE)


# 2 - Extract Columns containing means and standard deviations. Only columns specifically
## indicating themselves as means (i.e. ending in -mean()) will be taken. Other columns
## which manipulate a mean value will be excluded.  

## Create the index identifying columns containing either mean or standard 
## deviations and extract the data accordingly
mean_index<-grep('-mean()',names(full_compile_w_act),fixed = TRUE)
std_index<-grep('-std()',names(full_compile_w_act),fixed = TRUE)
final_index<-sort(c(2:3,mean_index,std_index))
extracted_data<-full_compile_w_act[,final_index]

# 4 - Appropriately label dataset with descriptive variable names
## PLEASE NOTE: Part 3 was already done previously in part 1.

## Create name vector from extracted data set for manipulation
rename<-names(extracted_data)

## Parse through rename vector, making adjustments to variable names
for (i in seq_along(rename)){
        if (substring(rename[i],1,1)=='f'){
                rename[i]<-sub('f','freq',rename[i])
        }else if(substring(rename[i],1,1)=='t'){
                rename[i]<-sub('t','time',rename[i])
        }
}
        
rename<-gsub('[.]','',rename)
rename<-gsub('-','',rename)
rename<-gsub('[()]','',rename)
rename<-gsub('BodyBody','Body',rename)
rename<-gsub('Acc','Accelerometer',rename)
rename<-gsub('Gyro','Gyroscope',rename)
rename<-gsub('std','StdDev',rename)
rename<-gsub('mean','Mean',rename)
rename<-gsub('Mag','Magnitude',rename)

## Reinsert rename information as the extracted data names
names(extracted_data)<-rename


# 5 - Create independed tidy data set from the extracted data set taking the mean
## of each variable, grouped by subject, then by exercise.

tidy_melt<-melt(extracted_data,
                id=c('ExercisePerformed','Subject'),
                measure.vars = names(extracted_data[3:ncol(extracted_data)]))
tidy_data<-dcast(tidy_melt,Subject+ExercisePerformed~variable,mean)

## Once created, pull up data on screen and create a tidydata.txt file with the
## information.
View(tidy_data)
write.table(tidy_data,file = 'TidyData.txt',row.names = FALSE)








