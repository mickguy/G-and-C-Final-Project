---
title: "CodeBook"
author: "Michael Guy"
date: "October 13, 2014"
output: html_document
---

Codebook

Data Description and Purpose
This data uses the dataset from Human Activity Recognition Using Smartphones. The purpose is to create a clean
and tidy dataset that takes the average of columns that contain data values for the mean and standard deviation by activity and subject id. 

The raw dataset is licensed to Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

More information and the dataset download can be found here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Raw Data
---------------------------------------------------

Only columns that contained mean or std as part of the variable name were processed.

---------------------------------------------------

The following describes the variables in the clean and tidy dataset, wearableTechnologyData. 
Two variables, activity and subjectid have been inserted into the data set are laid out in the format as such;

Name is the column variable name.
Variable is a brief description of the measurement ie. the variable being measured.
Values contains the range of possible variable values of which only one can be assigned as a valid measurement. 
Column is the column number.

Processed Data
---------------------------------------------------
Name:     activity 
Variable: The type of activity measured 
Values:   LAYING, SITTING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS
Column:   1

Name:     subjectid
Variable: Id associated with human participant
Values:   Integer range from 1 to 30
Column:   2

The other 86 columns are an average of each variable by activity and subject id. Each subject (partcipant in the study) has an average value for each activity.

The variable names are listed alongside their corresponding column number. The technical details of their meaning are
in the README.txt and features_info.txt packaged with the raw data set. 

 [3] "averagetimebodyaccelerometermeanx"                          
 [4] "averagetimebodyaccelerometermeany"                          
 [5] "averagetimebodyaccelerometermeanz"                          
 [6] "averagetimebodyaccelerometerstandardx"                      
 [7] "averagetimebodyaccelerometerstandardy"                      
 [8] "averagetimebodyaccelerometerstandardz"                      
 [9] "averagetimegravityaccelerometermeanx"                       
[10] "averagetimegravityaccelerometermeany"                       
[11] "averagetimegravityaccelerometermeanz"                       
[12] "averagetimegravityaccelerometerstandardx"                   
[13] "averagetimegravityaccelerometerstandardy"                   
[14] "averagetimegravityaccelerometerstandardz"                   
[15] "averagetimebodyaccelerometerjerkmeanx"                      
[16] "averagetimebodyaccelerometerjerkmeany"                      
[17] "averagetimebodyaccelerometerjerkmeanz"                      
[18] "averagetimebodyaccelerometerjerkstandardx"                  
[19] "averagetimebodyaccelerometerjerkstandardy"                  
[20] "averagetimebodyaccelerometerjerkstandardz"                  
[21] "averagetimebodygyromeanx"                                   
[22] "averagetimebodygyromeany"                                   
[23] "averagetimebodygyromeanz"                                   
[24] "averagetimebodygyrostandardx"                               
[25] "averagetimebodygyrostandardy"                               
[26] "averagetimebodygyrostandardz"                               
[27] "averagetimebodygyrojerkmeanx"                               
[28] "averagetimebodygyrojerkmeany"                               
[29] "averagetimebodygyrojerkmeanz"                               
[30] "averagetimebodygyrojerkstandardx"                           
[31] "averagetimebodygyrojerkstandardy"                           
[32] "averagetimebodygyrojerkstandardz"                           
[33] "averagetimebodyaccelerometermagnitudemean"                  
[34] "averagetimebodyaccelerometermagnitudestandard"              
[35] "averagetimegravityaccelerometermagnitudemean"               
[36] "averagetimegravityaccelerometermagnitudestandard"           
[37] "averagetimebodyaccelerometerjerkmagnitudemean"              
[38] "averagetimebodyaccelerometerjerkmagnitudestandard"          
[39] "averagetimebodygyromagnitudemean"                           
[40] "averagetimebodygyromagnitudestandard"                       
[41] "averagetimebodygyrojerkmagnitudemean"                       
[42] "averagetimebodygyrojerkmagnitudestandard"                   
[43] "averagefrequencybodyaccelerometermeanx"                     
[44] "averagefrequencybodyaccelerometermeany"                     
[45] "averagefrequencybodyaccelerometermeanz"                     
[46] "averagefrequencybodyaccelerometerstandardx"                 
[47] "averagefrequencybodyaccelerometerstandardy"                 
[48] "averagefrequencybodyaccelerometerstandardz"                 
[49] "averagefrequencybodyaccelerometermeanfrequencyx"            
[50] "averagefrequencybodyaccelerometermeanfrequencyy"            
[51] "averagefrequencybodyaccelerometermeanfrequencyz"            
[52] "averagefrequencybodyaccelerometerjerkmeanx"                 
[53] "averagefrequencybodyaccelerometerjerkmeany"                 
[54] "averagefrequencybodyaccelerometerjerkmeanz"                 
[55] "averagefrequencybodyaccelerometerjerkstandardx"             
[56] "averagefrequencybodyaccelerometerjerkstandardy"             
[57] "averagefrequencybodyaccelerometerjerkstandardz"             
[58] "averagefrequencybodyaccelerometerjerkmeanfrequencyx"        
[59] "averagefrequencybodyaccelerometerjerkmeanfrequencyy"        
[60] "averagefrequencybodyaccelerometerjerkmeanfrequencyz"        
[61] "averagefrequencybodygyromeanx"                              
[62] "averagefrequencybodygyromeany"                              
[63] "averagefrequencybodygyromeanz"                              
[64] "averagefrequencybodygyrostandardx"                          
[65] "averagefrequencybodygyrostandardy"                          
[66] "averagefrequencybodygyrostandardz"                          
[67] "averagefrequencybodygyromeanfrequencyx"                     
[68] "averagefrequencybodygyromeanfrequencyy"                     
[69] "averagefrequencybodygyromeanfrequencyz"                     
[70] "averagefrequencybodyaccelerometermagnitudemean"             
[71] "averagefrequencybodyaccelerometermagnitudestandard"         
[72] "averagefrequencybodyaccelerometermagnitudemeanfrequency"    
[73] "averagefrequencybodyaccelerometerjerkmagnitudemean"         
[74] "averagefrequencybodyaccelerometerjerkmagnitudestandard"     
[75] "averagefrequencybodyaccelerometerjerkmagnitudemeanfrequency"
[76] "averagefrequencybodygyromagnitudemean"                      
[77] "averagefrequencybodygyromagnitudestandard"                  
[78] "averagefrequencybodygyromagnitudemeanfrequency"             
[79] "averagefrequencybodygyrojerkmagnitudemean"                  
[80] "averagefrequencybodygyrojerkmagnitudestandard"              
[81] "averagefrequencybodygyrojerkmagnitudemeanfrequency"         
[82] "averageangletimebodyaccelerometermean_gravity"              
[83] "averageangletimebodyaccelerometerjerkmean_gravitymean"      
[84] "averageangletimebodygyromean_gravitymean"                   
[85] "averageangletimebodygyrojerkmean_gravitymean"               
[86] "averageanglex_gravitymean"                                  
[87] "averageangley_gravitymean"                                  
[88] "averageanglez_gravitymean"             



