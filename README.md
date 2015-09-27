# README File

This Readme file describes how the R-script run_analysis.R works.

**Note**: The script should be run from the same directory as where the "UCI HAR Dataset" directory is located.

1. **Obtain Data**: The script first obtains data from all the three files for Features, Activity and Subject from both the Train and Test Folders.
2. **Combine Train & Test**: The script then combines the Train data set and the Test data set into one data set each for Features, Activity and Subject.
3. **Add the Column names**: The files that contain the variable names and the activity labels are loaded. The Activity Data Set is modified to include the data label corresponding to that activity. Variables in all the three data sets are now given variable names. For the Features dataset, the variable names from the downloaded file is used.
4. **Extract Mean and SD variables**: Using grep command, only those variable names that have either "mean" or "std" in them are identified and copied into a subset.
5. **Descriptive variable names**: For the variables in the Features subset dataset, using string manipulations, meaningful variable names are given. For the other two data sets, meaningful variable names are directly given.
6. **Tidy Data Set**: Now, all the three tidy datasets for Subject, Activity and Features are combined through cbind (in that order) to have one final tidy dataset
7. **Average by Subject and Activity**: Using reshape2 package, the tidy dataset in step 6 is melted and casted to get the average for each variable by Subject and Activity.
8. **Write to a file**: The summary data is then written into a text file.
