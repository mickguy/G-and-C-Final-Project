# Final Project - WearableTechnologyData
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Requires plyr library to use the mapValues function to map the activity id to the activity label

library(plyr)

# xTrain and xTest contain the data values 
trainingValues <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE)
testValues <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE)

# Append the training and test data table values to each other
data <- rbind(trainingValues, testValues)

# Features contains the column headings in column V2
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
colnames(data) <- features$V2

# Return a list of column indices with names containing the words mean or std (ignoring the case) 
selectedColumns <- grep("mean|std", features$V2, ignore.case=TRUE)
# Use the returned list of indices to subset the data to only those columns
data <- subset(data, select = selectedColumns)

# Do a number of search and replaces to convert the column names to a human-readable form and also a
# functional form ie. hyphens in the name cause errors when selecting a column by name.

cleanColumnNames <- colnames(data)
cleanColumnNames <- gsub("acc", "accelerometer", cleanColumnNames, ignore.case=TRUE)
cleanColumnNames <- gsub("std", "standard", cleanColumnNames, ignore.case=TRUE)
cleanColumnNames <- gsub("Mag", "magnitude", cleanColumnNames)
cleanColumnNames <- gsub("Freq", "frequency", cleanColumnNames)
# Fix duplicate Body in column name
cleanColumnNames <- gsub("BodyBody", "body", cleanColumnNames)
cleanColumnNames <- gsub("^t", "time", cleanColumnNames)
cleanColumnNames <- gsub("\\(t", "(time", cleanColumnNames)
cleanColumnNames <- gsub("^f", "frequency", cleanColumnNames)
#remove the hyphen because it causes it errors when calling a column by name
cleanColumnNames <- gsub("-", "", cleanColumnNames)
# use the slashes to replace the meta-characters ( and )
cleanColumnNames <- gsub("\\(\\)", "", cleanColumnNames)
cleanColumnNames <- gsub("\\(", "", cleanColumnNames)
cleanColumnNames <- gsub("\\)", "", cleanColumnNames)
# replace commas with underscores
cleanColumnNames <- gsub(",", "_", cleanColumnNames)


#  Apply the cleaned column names
colnames(data) <- paste("average", tolower(cleanColumnNames), sep="")

# subject_train and subject_test contain the subject ids 

# load the training and test subject ids
trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt" , stringsAsFactors=FALSE)
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt" , stringsAsFactors=FALSE)

# Append training and test subject id data tables to each other
subjectID <- rbind(trainingSubjects, testSubjects)

# y_train and y_test contain the activity id for each row of the data values
# Append the data tables to each other
trainingActivities <- read.table("UCI HAR Dataset/train/y_train.txt")
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt")

activityData <- rbind(trainingActivities, testActivities)

# Final Output
# Get the mean for each activity for each subject
# ie. Each subject has 6 rows of means
wearableTechnologyData <- aggregate(x=data, by=list(activityData$V1,subjectID$V1), FUN='mean')

# The aggregate function inserts grouping columns into the start of the data frame naming them Group.1 etc.
# Rename those columns to human readable names
names(wearableTechnologyData)[1] <- "activity"
names(wearableTechnologyData)[2] <- "subjectid"

# Load the activity labels - contains a mapping of activity id to label
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)

# Map (convert) the activity id to a human readable label
wearableTechnologyData$activity <- mapvalues(wearableTechnologyData$activity, from=activityLabels$V1,to=activityLabels$V2 )

# wearableTechnologyData is clean and is ready for analysis
# Output the clean data frame to a text file

write.table(wearableTechnologyData, file="WearableTechnologyData.txt", row.names=FALSE)

print("Data Cleaning complete - See WearableTechnologyData.txt in working directory.")








