#Run the script from the same directory as where the "UCI HAR Dataset" directory is located.

#Read the Features files
FeaturesTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
FeaturesTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

#Read the Activity files
ActivityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
ActivityTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

#Read the Subject files
SubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
SubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

#Merge Train & Test Data Sets

Features <- rbind(FeaturesTrain, FeaturesTest)
Activity <- rbind(ActivityTrain, ActivityTest)
Subject <- rbind(SubjectTrain, SubjectTest)

#Read Other Files
FeatureNames <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

#Add Column Names and Activity Description
names(Features) <- FeatureNames$V2
Activity[,2] <- ActivityLabels[Activity[,1], 2]
names(Activity) <-cbind("Activity.ID", "Activity")
names(Subject) <- c("Subject.ID")

#Extract only Mean and Standard Deviation measures into a subset
Subset <- grep("mean|std", names(Features))
FeaturesMeanSDsubset <- Features[,Subset]

#Descriptive VariableNames for the Data Set
names(FeaturesMeanSDsubset) <- sub("t","Time.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("f","Freq.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Body","Body.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Gravity","Gravity.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Acc","Acc.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Gyro","Gyro.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Jerk","Jerk.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("Mag","Mag.",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- sub("\\(\\)","",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- gsub("\\-",".",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- gsub("\\.\\.",".",names(FeaturesMeanSDsubset))
names(FeaturesMeanSDsubset) <- gsub("sTime\\.d","std",names(FeaturesMeanSDsubset))

#Bind Features, Activity and Subject Together
TidyData <- cbind(Subject, Activity, FeaturesMeanSDsubset)

#Average of each variable for each subject and each activity
library(reshape2)
TidyDataMelted <- melt(TidyData, id = c("Subject.ID", "Activity", "Activity.ID"))
SummaryData <- dcast(TidyDataMelted, Subject.ID + Activity ~ variable, fun.aggregate = mean, na.rm = TRUE)

#Write to a txt file
write.table(SummaryData, file = "Step5-TidyData.txt",row.name=FALSE)
