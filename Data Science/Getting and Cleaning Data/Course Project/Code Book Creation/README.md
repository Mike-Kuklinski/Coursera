# Getting and Cleaning Data - CourseProject
README for: run_analysis.R  
Author: Mike Kuklinski  

##Purpose
The purpose of this assignment is to examine raw data information from the ["Human Activity Recognition Using Smartphones Dataset"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and create a tidy data set. This raw dataset contains the measurements from accelerometers and gyroscopes within smartphones being used by test subjects. The smartphones were used by 30 individuals(subjects) who performed 6 types of exercises. The idea behind the study was to see if the measurement readings from an individual's phone instruments (acceloremeter and gyroscope) could determine that individual's activity. My goal was to clean and manipulate this data and produce a Tidy Data set highlighting the average of the mean and standard deviation measurements taken by the smartphones. The data was to be grouped by the individuals as well as the exercises they were performing.

Below is the list of tasks the *run_analysis.R* file must achieve: 

 1. Merge the training and the test sets to create one data set.
 2. Extract only the measurements on the mean and standard deviation for each measurement. 
 3. Use descriptive activity names to name the activities in the data set
 4. Appropriately label the data set with descriptive variable names. 
 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

### File Source descriptions:

From the zip folder (UCI HAR Dataset) provided, below are the given descriptions for the files using within this code:

 * 'features_info.txt': Shows information about the variables used on the feature vector.
 * 'features.txt': List of all features.(i.e. measurement variable names from the phone instruments)
 * 'activity_labels.txt': Links the class labels(exercise designation number) with their activity name (exercise description).
 * 'train/X_train.txt': Training set.
 * 'train/y_train.txt': Training labels.(i.e. exercise designation number)
 * 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
 * 'test/X_test.txt': Test set.
 * 'test/y_test.txt': Test labels.(i.e. exercise designation number)
 * 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## Procedure

### Preliminary steps taken

Running the *run_analysis.R* file assumes the raw data has already been downloaded and unzipped into a folder within the working directory. Below is the code I used to perform this, however it's not to be re-used when running the program. I also uploaded the library package: "reshape2".

```
url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url,destfile='rawdata.zip')
unzip('rawdata.zip')
```
### 1 - Merge the train and the test sets to create one data set.

With the working directory set to the folder containing the unzipped data, the codes begins to read the files within the folders. Before getting to the "test" and "train" datasets, there were some common files which could be used for both, such as *activity_labels.txt* and *features.txt*. These files respectively contained the variable number designations and names for the exercises (i.e. 1-WALKING, 2-STANDING, etc.) and for the recorded measurement variables (i.e. tBodyAcc-mean()-Y, etc.). I stored each of these as objects which I then used in later steps.    

To make merging the 'test' and 'train' data sets easier, I decided to first work with each data set seperately, so that I could organized and label each data set individually prior to joining the two. Starting with the 'test' set files, below was the process:

 * I uploaded the *x_test.txt* as the data.frame object, **test_set**, which contained the unnamed recordings of all the measurements taken by the smartphone instruments. 

 * Since the *features.txt* object, (already stored) contained the list of names associated with each of these measurement variables, I used the `names()` function to assign the variable names to the **test_set** data.frame. 

 * Next I looked at the *y_test.txt* and *subject_test.txt* which contained the exercise and subject number designations (not the names) for each data row recorded. Using `cbind()`, I joined this information as columns onto the front of the **test_set** data.frame and called is **compiled_test_set**.  
 
Here is snippets of my code performing this work on the 'test' set data. 

```
exercise_labels<-read.table('./UCI HAR Dataset/activity_labels.txt',col.names = c('Exercise ID','Exercise Performed'))
variable_names<-read.table('./UCI HAR Dataset/features.txt',stringsAsFactors = FALSE)
test_set<-read.table('./UCI HAR Dataset/test/X_test.txt')
names(test_set)<-variable_names[,2]
test_set_exercise_labels<-read.table('./UCI HAR Dataset/test/y_test.txt',col.names = "Activity")
test_set_subject<-read.table('./UCI HAR Dataset/test/subject_test.txt',col.names = "Subject")

## Compile Data set into one using cbind
compiled_test_set<-cbind(test_set_subject,test_set_exercise_labels,test_set)
```
* Using the exact same procedure, I cleaned up the 'train' data set and created the data.frame **compiled_train_set**.

* Once each set had been organized and labeled, I joined the 'test' and 'train' sets together using `rbind()` and created data.frame **full_compile**.

* ***At this point I also decided to take care of part 3*** of the assignment by using the `merge()` function. This function assigned the exercise names (from *activity_labels.txt*) to the exercise number designations (from *y_test.txt*) and created data.frame **full_compile_w_act**. 

See code below:
```
## Combine the compiled datasets for test and train into one data set
full_compile<-rbind(compiled_test_set,compiled_train_set)

## Using merge, substitute the exercise number designations with exercise labels
## PLEASE NOTE: This accomplishes part 3 of the assignment
full_compile_w_act<-merge(exercise_labels,full_compile,by.x='Exercise.ID',
                          by.y='Activity',all=TRUE)
```
At this point, I had a single data.frame with all the measurements taken in 'test' and 'train'. Each measurement had a variable name assigned to it and each row had the name of the exercise being performed and the number of the subject performing that exercise.

### 2 - Extract the mean and standard deviation measurements.

To extract the mean and standard deviation measurement columns, I used the `grep()` function to identify and create an index list which located the variable names containing either "-mean()" or "-std()". 

*Please note: There were some additional variable names which included 'mean' in the title. However, these variables were either manipulating the mean of another variable, or were just a weighted average. Therefore, those variables were excluded from the search.* 

After having my index list, I created the data.frame **extracted_data** which subsetted the **full_compile_w_act** data.frame using the index I created. 

See code below
```
## Create the index identifying columns containing either mean or standard 
## deviations and extract the data accordingly
mean_index<-grep('-mean()',names(full_compile_w_act),fixed = TRUE)
std_index<-grep('-std()',names(full_compile_w_act),fixed = TRUE)
final_index<-sort(c(2:3,mean_index,std_index))
extracted_data<-full_compile_w_act[,final_index]
```

### 3 - Use descriptive activity names to name the activities in the data set

This was accomplished in part 1, see above.


### 4 - Appropriately label dataset with descriptive variable names

With my **extracted_data** containing all the information I needed, the next step was to examine and modify the variable names. To do this I obtained the list of names from **extracted_data** and saved them as a **rename** list.

Next I parsed through the **rename** list using a `for()` loop,`sub()`,and `gsub()` formulas. The parsing individually altered each name to be more understandable. The parsing deleted punctuation marks (e.g. ".","-","()") and elongated abbreviations. See code book for complete breakdown of manipulations.

Once the changes were made, I reassigned the **rename** list to **extracted_data** using `names()`.

See code below
```
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
```


### 5 - Create independent tidy data set from the extracted data set taking the mean
### of each variable, grouped by subject, then by exercise.

To accomplish this step, I decided to use the `melt()` command to create a tall and skinny table where the exercise and the subject were the two ID columns and all the variable names and measurements were the two measured variable columns. Then using `dcast()`, I grouped the table by IDs (1st by subject, 2nd by exercise) and applied the `mean` formula to the cumulation of all the individual variable values within each subgroup. I assigned the resulting data.frame to **tidy_data**.

```
tidy_melt<-melt(extracted_data,
                id=c('ExercisePerformed','Subject'),
                measure.vars = names(extracted_data[3:68]))
tidy_data<-dcast(tidy_melt,Subject+ExercisePerformed~variable,mean)
```

With **tidy_data** complete, I used `write.table()` to create the text file, *TidyData.txt* within the working directory

```
View(tidy_data)
write.table(tidy_data,file = 'TidyData.txt',row.names = FALSE)
```


