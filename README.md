---
title: "README"
author: "Michael Guy"
date: "October 13, 2014"
output: html_document
---
# Clean and Tidy Dataset
## Human Activity Recognition Using Smartphones

run_analysis.R uses the dataset from Human Activity Recognition Using Smartphones to create a new cleaner dataset of the training and test data. The raw dataset is in the folder "UCI HAR Dataset". It is licensed to Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

In order to provide a clean dataset the following steps have been performed on the raw data files:

Step 1   
        Load the library plyr which will be used at the end of the script to map the activity id to the activity
        label.   
Steps 2 and 3   
        Load the training and test data values from train/X_train.txt and test/X_test.txt   
Step 4   
        Create a new data frame loaded with the training data values and and the test 
        data values appended in sequential order.      
Step 5   
        Load features.txt - each row in features.txt corresponds to the column heading of the data values, ex 
        the value in row 24 of features.txt corresponds to the column name (heading) of row 24 in the data
        values dataframe.     
Step 6   
        Assign the column (features$V2) as the data values column headings (colnames)   
Step 7   
        Get a list of column indices with column names containing the words mean or std (ignoring the case)    
Step 8   
        Use the list obtained in step 7 to subset the data to columns that contain values for the mean or
        standard deviation.   
Steps 9 - 22   
        Get the column names and turn them into human readable forms and ensure errors are not generated when called by 
        certain functions. For instance replace abbreviated forms with the complete word, remove parentheses and hyphens
        from the name, and replace comma with underscore.   
Step 23   
        Apply the cleaned column names back to the data frame columns   
Steps 24 and 25   
        Load the training and text subject ids from train/subject_train.txt and test/subject_test.txt   
Step 26    
        Create a new data frame loaded with the training subject ids and the test 
        subject ids appended in sequential order.   
Steps 27 and 28   
        Load the activity ids from train/y_train.txt and test/y_test.txtstored inside the train folder.   
Step 29   
        Create a new data frame loaded with the training activity ids and the test 
        activity ids appended in sequential order.   
Step 30    
        Create a new data frame called WearableTechnologyData using the aggregate function to group the data by
        activity and subject id and then take the mean of each activity for each subject.   
Steps 31 and 32   
        Rename the columns inserted by the aggregate function to activity and subjectid.   
Step 32    
        Load the activity labels which contains a mapping of activity id to activity label   
Step 33   
        Use the mapValues function from the plyr library to map each activity id to it's corresponding
        human readable name.   
Step 34   
        Output the WearableTechnologyData dataframe as a text file in the working directory.   
Step 35   
        Print a statement that the script is complete.           

