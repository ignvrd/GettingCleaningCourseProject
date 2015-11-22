#1. Introduction
The script provided take an original dataset and reshape part of the data to build a tidy data set that includes only the mean and the standard deviation for each subject and each varible. Each observation is each of the subjects of the experiment and it's represented by a row, each variable included the means and the standard deviations as extracted from the original set, in addition of the subject and the activity with more readible names.

#2.1 Variables names

-subject: Variable with the name of the subject under study. It's a variable with may have values from SUBJECT1 to SUBJECT30, where the number shows the number of the volunteer in the study. It's a factor in the dataset. 

-activity: A factor that represents the activity carried  our by the subject, and whose measurement has been take. There are six possible activities under study. 

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

-mean.X.Acc.tBody: Mean of the measurement for each activity and each subject according to the data of the accelerometer provided by the  tBodyAcc-mean()-X variable of the original set. The units are standard 'g' for the acceleration.

-mean.Y.Acc.tBody: Mean of the measurement for each activity and each subject according to the data of the accelerometer provided by the  tBodyAcc-mean()-Y of the original dataset. The units are standard 'g' for the acceleration. 

-mean.Z.Acc.tBody: Mean of the measurement for each activity and each subject according to the accelerometer peovided in the tBodyAcc-mean()-Z variable of the original data set. The units are standard 'g'.  

-std.X.Acc.tBody: Mean of the standard deviation of the measurement for each activity and each subject based on the mesasure of the variable tBodyAcc-std()-X. The units are 'g'. 

-std.Y.Acc.tBody: Mean for each subject and each activity of the standard deviation as appears in the variable tBodyAcc-std()-Y of the original dataset. The units are 'g'. 

-std.Z.Acc.tBody: Mean for each sybjuect and each activity of the standard deviation as appears in the variable tBodyAcc-std()-Z of the original dataset. The units are 'g'. 

-mean.X.Acc.tGravity: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis as provided by the orginal variable tGravityAcc-mean()-X.The units are standard 'g'.

-mean.Y.Acc.tGravity: Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis as provided by the orginal variable tGravityAcc-mean()-Y.The units are starndard 'g'. 

-mean.Z.Acc.tGravity: Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis as provided by the orginal variable tGravityAcc-mean()-Z.The units are starndard 'g'.

-std.X.Acc.tGravity: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tGravityAcc-std()-X. The units are 'g'.

-std.Y.Acc.tGravity: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tBodyAcc-std()-Y. The units are 'g'.

-std.Z.Acc.tGravity: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tBodyAcc-std()-Z. The units are 'g'.

-mean.X.AccJerk.tBody: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable BodyAccJerk-mean()-X. The accelaration is measured in standard 'g' units.   

-mean.Y.AccJerk.tBody: Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable BodyAccJerk-mean()-Y. The accelaration is measured in standard 'g' units.  

-mean.Z.AccJerk.tBody: Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable BodyAccJerk-mean()-Z. The accelaration is measured in standard 'g' units.  

-std.X.AccJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-std.Y.AccJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-Y of the original dataset. The units are 'g'. 

-std.Z.AccJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-mean.X.Gyro.tBody:  Mean of the measurement for each activity and each subject according to the gyroscoque and the X-axis, as provided by the original variable tBodyGyro-mean()-X. The units are radians/second.  

-mean.Y.Gyro.tBody:  Mean of the measurement for each activity and each subject according to the gyroscope and the Y-axis, as provided by the original variable tBodyGyro-mean()-Y. The units are radians/second.  

-mean.Z.Gyro.tBody:  Mean of the measurement for each activity and each subject according to the gyroscope and the Z-axis, as provided by the original variable tBodyGyro-mean()-Z. The units are radians/seconds.  

-std.X.Gyro.tBody: Mean for each subject and each activity of the standard deviation as appears in the variable  tBodyGyro-std()-X. The units are radians/second. 

-std.Y.Gyro.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyro-std()-Y of the original dataset. The units are rdians/second. 

-std.Z.Gyro.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyro-std()-Z of the original dataset. The units are radians/second. 

-mean.X.GyroJerk.tBody: Mean of the measurement for each activity and each subject according to the gyroscope and the X-axis, as provided by the original variable tBodyGyroJerk-mean()-X. The units are radians/second units.

-mean.Y.GyroJerk.tBody: Mean of the measurement for each activity and each subject according to the gyroscope and the Y-axis, as provided by the original variable tBodyGyroJerk-mean()-Y. The units are radians/second.  

-mean.Z.GyroJerk.tBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable tBodyGyroJerk-mean()-Z. The units are radians/second.  

-std.X.GyroJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroerk-std()-X of the original dataset. The units are radians/second. 

-std.Y.GyroJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerk-std()-Y of the original dataset. The units are radians/second. 

-std.Z.GyroJerk.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerk-std()-Z of the original dataset. The units are radians/second. 

-mean.AccMag.tBody:  Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tBodyAccMag-mean(). The accelaration is measured in standard 'g' units.  

-std.AccMag.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccMag-std() of the original dataset. The units are 'g'. 

-mean.AccMag.tGravity: Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tGravityAccMag-mean(). The accelaration is measured in standard 'g' units.

-std.AccMag.tGravity: Mean for each subject and each activity of the standard deviation as appears in the varible tGravityAccMag-std() of the original dataset. The units are 'g'. 

-mean.AccJerkMag.tBody: Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tBodyAccJerkMag-mean(). The accelaration is measured in standard 'g' units.

-std.AccJerkMag.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerkMag-std() of the original dataset. The units are 'g'. 

-mean.GyroMag.tBody: Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable tBodyGyroMag-mean(). The units are radians/second.  

-std.GyroMag.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroMag-std() of the original dataset. The units are radians/second. 

-mean.GyroJerkMag.tBody: Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable tBodyGyroJerkMag-mean(). The units are radians/second.  

-std.GyroJerkMag.tBody: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerkMag-std() of the original dataset. The units are radians/second. 

-mean.X.Acc.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable fBodyAcc-mean()-X. The acceleration is measured in standard 'g' units.  

-mean.Y.Acc.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable fBodyAcc-mean()-Y. The acceleration is measured in standard 'g' units.  

-mean.Z.Acc.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable fBodyAcc-mean()-Z. The acceleration is measured in standard 'g' units.  

-std.X.Acc.fBody: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-X of the original dataset. The units are 'g'. 

-std.Y.Acc.fBody: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-Y of the original dataset. The units are 'g'. 

-std.Z.Acc.fBody: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-Z of the original dataset. The units are 'g'. 

-mean.X.AccJerk.fBody: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable fBodyAccJerk-mean()-X. The acceleration is measured in standard 'g' units.    

-mean.Y.AccJerk.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable fBodyAccJerk-mean()-Y. The acceleration is measured in standard 'g' units.   

-mean.Z.AccJerk.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable fBodyAccJerk-mean()-Z. The acceleration is measured in standard 'g' units.  

-std.X.AccJerk.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-std.Y.AccJerk.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-Y of the original dataset. The units are 'g'. 

-std.Z.AccJerk.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-Z of the original dataset. The units are 'g'. 

-mean.X.Gyro.fBody:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyro-mean()-X. The accelaration is measured in radians/second.  

-mean.Y.Gyro.fBody:  Mean of the measurement for each activity and each subject according to the gyroscope, as 
provided by the original variable fBodyGyro-mean()-Y. The units are radians/second.  

-mean.Z.Gyro.fBody:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyroJerk-mean()-Z. The accelaration is measured in standard 'g' units.  

-std.X.Gyro.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-X of the original dataset. The units are radians/second. 

-std.Y.Gyro.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-X of the original dataset. The units are radians/second. 

-std.Z.Gyro.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-Z of the original dataset. The units are radians/second. 

-mean.AccMag.fBody:  Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable fBodyAccMag-mean(). The accelaration is measured in standard 'g' units.  

-std.AccMag.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccMAg-std() of the original dataset. The units are 'g'. 

-mean.AccJerkMag.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyJerkMag-mean() of the original dataset. The units are 'g'.

-std.AccJerkMag.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerkMag-std() of the original dataset. The units are 'g'. 

-mean.GyroMag.fBody:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyroMag-mean(). The units are radians/second.  

-std.GyroMag.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fbodyGyroMag-std() of the original dataset. The units are radians/second. 

-mean.GyroJerkMag.fBody:  Mean of the measurement for each activity and each subject according to the gyroscope ,as provided by the original variable fBodyGyroJerkMag-mean()-Z. The accelaration is measured radians/second.   
-std.GyroJerkMag.fBody: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyroJerkMag-std() of the original dataset. The units are radians/second. 

#Transformations 

The script as a fist step merges the training and the test sets to create one single data set, based in the x_* files of the original dataset. After that we get the names of the diferent variables according to the features.txt in the data provided. We bind rows and columns together to get two columns that match with our previous dataset. The columns representing the mean and the standard deviation are extracted based on the names of the columns provided by the features.txt files. 

After that, we focus on the metadata joinig columns and rows to get a pair of columns that match the previous data set with the information of the x_* files. Based in the orignal names of the columns the script is able to transform the original names to others more readables which show if the variable name is a mean, or a standard deviation, if it belongs to an accelerometer or a gyroscope, and the way in which it was obtained. To get a close idea of the observations the names of the activities are given a more readable name which can be found in the variable names in the CodeBook file. 

The names of the new variable follow the pattern: 'operation\[coordinate\\]\\[equipment for the measurement\\]\\[type of measurement\\]', where operation is the mean or the standard deviation, the equipment may be accelerometer, gyroscope,...the coordinate: X,Y,Z if applies, and the type of measurement: tBody,...For instance: mean.X.Acc.tBody

Finally, a new dataframe with the summary of the means and standard deviation is created for each subject and task, which represents each of the observations. This dataframe is writing down to a file called output.txt in the working directory. 
