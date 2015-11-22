#1. Introduction
The script provided take an original dataset and reshape part of the data to build a tidy data set that includes only the mean and the standard deviation for each subject and each varible. Each observation is each of the subjects of the experiment and it's represented by a row, each variable included the means and the standard deviations as extracted from the original set, in addition of the subject and the activity with more readible names.

#2.1 Variables names

-_subject_: Variable with the name of the subject under study. It's a variable with may have values from SUBJECT1 to SUBJECT30, where the number shows the number of the volunteer in the study. It's a factor in the dataset. 

-_activity_: A factor that represents the activity carried  our by the subject, and whose measurement has been take. There are six possible activities under study. 

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

-_mean.X.Acc.tBody_: Mean of the measurement for each activity and each subject according to the data of the accelerometer provided by the  tBodyAcc-mean()-X variable of the original set. The units are standard 'g' for the acceleration.

-_mean.Y.Acc.tBody_: Mean of the measurement for each activity and each subject according to the data of the accelerometer provided by the  tBodyAcc-mean()-Y of the original dataset. The units are standard 'g' for the acceleration. 

-_mean.Z.Acc.tBody_: Mean of the measurement for each activity and each subject according to the accelerometer peovided in the tBodyAcc-mean()-Z variable of the original data set. The units are standard 'g'.  

-_std.X.Acc.tBody_: Mean of the standard deviation of the measurement for each activity and each subject based on the mesasure of the variable tBodyAcc-std()-X. The units are 'g'. 

-_std.Y.Acc.tBody_: Mean for each subject and each activity of the standard deviation as appears in the variable tBodyAcc-std()-Y of the original dataset. The units are 'g'. 

-_std.Z.Acc.tBody_: Mean for each sybjuect and each activity of the standard deviation as appears in the variable tBodyAcc-std()-Z of the original dataset. The units are 'g'. 

-_mean.X.Acc.tGravity_: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis as provided by the orginal variable tGravityAcc-mean()-X.The units are standard 'g'.

-_mean.Y.Acc.tGravity_: Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis as provided by the orginal variable tGravityAcc-mean()-Y.The units are starndard 'g'. 

-_mean.Z.Acc.tGravity_: Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis as provided by the orginal variable tGravityAcc-mean()-Z.The units are starndard 'g'.

-_std.X.Acc.tGravity_: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tGravityAcc-std()-X. The units are 'g'.

-_std.Y.Acc.tGravity_: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tBodyAcc-std()-Y. The units are 'g'.

-_std.Z.Acc.tGravity_: Mean of the standard deviation of the measurement for each activity and each subject based on the measure of the variable tBodyAcc-std()-Z. The units are 'g'.

-_mean.X.AccJerk.tBody_: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable BodyAccJerk-mean()-X. The accelaration is measured in standard 'g' units.   

-_mean.Y.AccJerk.tBody_: Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable BodyAccJerk-mean()-Y. The accelaration is measured in standard 'g' units.  

-_mean.Z.AccJerk.tBody_: Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable BodyAccJerk-mean()-Z. The accelaration is measured in standard 'g' units.  

-_std.X.AccJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-_std.Y.AccJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-Y of the original dataset. The units are 'g'. 

-_std.Z.AccJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-_mean.X.Gyro.tBody_:  Mean of the measurement for each activity and each subject according to the gyroscoque and the X-axis, as provided by the original variable tBodyGyro-mean()-X. The units are radians/second.  

-_mean.Y.Gyro.tBody_:  Mean of the measurement for each activity and each subject according to the gyroscope and the Y-axis, as provided by the original variable tBodyGyro-mean()-Y. The units are radians/second.  

-_mean.Z.Gyro.tBody_:  Mean of the measurement for each activity and each subject according to the gyroscope and the Z-axis, as provided by the original variable tBodyGyro-mean()-Z. The units are radians/seconds.  

-_std.X.Gyro.tBody_: Mean for each subject and each activity of the standard deviation as appears in the variable  tBodyGyro-std()-X. The units are radians/second. 

-_std.Y.Gyro.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyro-std()-Y of the original dataset. The units are rdians/second. 

-_std.Z.Gyro.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyro-std()-Z of the original dataset. The units are radians/second. 

-_mean.X.GyroJerk.tBody_: Mean of the measurement for each activity and each subject according to the gyroscope and the X-axis, as provided by the original variable tBodyGyroJerk-mean()-X. The units are radians/second units.

-_mean.Y.GyroJerk.tBody_: Mean of the measurement for each activity and each subject according to the gyroscope and the Y-axis, as provided by the original variable tBodyGyroJerk-mean()-Y. The units are radians/second.  

-_mean.Z.GyroJerk.tBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable tBodyGyroJerk-mean()-Z. The units are radians/second.  

-_std.X.GyroJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroerk-std()-X of the original dataset. The units are radians/second. 

-_std.Y.GyroJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerk-std()-Y of the original dataset. The units are radians/second. 

-_std.Z.GyroJerk.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerk-std()-Z of the original dataset. The units are radians/second. 

-_mean.AccMag.tBody_:  Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tBodyAccMag-mean(). The accelaration is measured in standard 'g' units.  

-_std.AccMag.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccMag-std() of the original dataset. The units are 'g'. 

-_mean.AccMag.tGravity_: Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tGravityAccMag-mean(). The accelaration is measured in standard 'g' units.

-_std.AccMag.tGravity_: Mean for each subject and each activity of the standard deviation as appears in the varible tGravityAccMag-std() of the original dataset. The units are 'g'. 

-_mean.AccJerkMag.tBody_: Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable tBodyAccJerkMag-mean(). The accelaration is measured in standard 'g' units.

-_std.AccJerkMag.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyAccJerkMag-std() of the original dataset. The units are 'g'. 

-_mean.GyroMag.tBody_: Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable tBodyGyroMag-mean(). The units are radians/second.  

-_std.GyroMag.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroMag-std() of the original dataset. The units are radians/second. 

-_mean.GyroJerkMag.tBody_: Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable tBodyGyroJerkMag-mean(). The units are radians/second.  

-_std.GyroJerkMag.tBody_: Mean for each subject and each activity of the standard deviation as appears in the varible tBodyGyroJerkMag-std() of the original dataset. The units are radians/second. 

-_mean.X.Acc.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable fBodyAcc-mean()-X. The acceleration is measured in standard 'g' units.  

-_mean.Y.Acc.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable fBodyAcc-mean()-Y. The acceleration is measured in standard 'g' units.  

-_mean.Z.Acc.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable fBodyAcc-mean()-Z. The acceleration is measured in standard 'g' units.  

-_std.X.Acc.fBody_: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-X of the original dataset. The units are 'g'. 

-_std.Y.Acc.fBody_: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-Y of the original dataset. The units are 'g'. 

-_std.Z.Acc.fBody_: Mean for each subject and each activity of the standard deviation as appears in the varible fBodyAcc-std()-Z of the original dataset. The units are 'g'. 

-_mean.X.AccJerk.fBody_: Mean of the measurement for each activity and each subject according to the accelerometer and the X-axis, as provided by the original variable fBodyAccJerk-mean()-X. The acceleration is measured in standard 'g' units.    

-_mean.Y.AccJerk.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the Y-axis, as provided by the original variable fBodyAccJerk-mean()-Y. The acceleration is measured in standard 'g' units.   

-_mean.Z.AccJerk.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer and the Z-axis, as provided by the original variable fBodyAccJerk-mean()-Z. The acceleration is measured in standard 'g' units.  

-_std.X.AccJerk.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-X of the original dataset. The units are 'g'. 

-_std.Y.AccJerk.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-Y of the original dataset. The units are 'g'. 

-_std.Z.AccJerk.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerk-std()-Z of the original dataset. The units are 'g'. 

-_mean.X.Gyro.fBody_:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyro-mean()-X. The accelaration is measured in radians/second.  

-_mean.Y.Gyro.fBody_:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyro-mean()-Y. The units are radians/second.  

-_mean.Z.Gyro.fBody_:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyroJerk-mean()-Z. The accelaration is measured in standard 'g' units.  

-_std.X.Gyro.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-X of the original dataset. The units are radians/second. 

-_std.Y.Gyro.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-X of the original dataset. The units are radians/second. 

-_std.Z.Gyro.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyro-std()-Z of the original dataset. The units are radians/second. 

-_mean.AccMag.fBody_:  Mean of the measurement for each activity and each subject according to the accelerometer, as provided by the original variable fBodyAccMag-mean(). The accelaration is measured in standard 'g' units.  

-_std.AccMag.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccMAg-std() of the original dataset. The units are 'g'. 

-_mean.AccJerkMag.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyJerkMag-mean() of the original dataset. The units are 'g'.

-_std.AccJerkMag.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyAccJerkMag-std() of the original dataset. The units are 'g'. 

-_mean.GyroMag.fBody_:  Mean of the measurement for each activity and each subject according to the gyroscope, as provided by the original variable fBodyGyroMag-mean(). The units are radians/second.  

-_std.GyroMag.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fbodyGyroMag-std() of the original dataset. The units are radians/second. 

-_mean.GyroJerkMag.fBody_:  Mean of the measurement for each activity and each subject according to the gyroscope ,as provided by the original variable fBodyGyroJerkMag-mean()-Z. The accelaration is measured radians/second.   
-_std.GyroJerkMag.fBody_: Mean for each subject and each activity of the standard deviation as appears in the variable fBodyGyroJerkMag-std() of the original dataset. The units are radians/second. 

#Transformations 

The script as a fist step merges the training and the test sets to create one single data set, based in the x_* files of the original dataset. After that we get the names of the diferent variables according to the features.txt in the data provided. We bind rows and columns together to get two columns that match with our previous dataset. The columns representing the mean and the standard deviation are extracted based on the names of the columns provided by the features.txt files. 

After that, we focus on the metadata joinig columns and rows to get a pair of columns that match the previous data set with the information of the x_* files. Based in the orignal names of the columns the script is able to transform the original names to others more readables which show if the variable name is a mean, or a standard deviation, if it belongs to an accelerometer or a gyroscope, and the way in which it was obtained. To get a close idea of the observations the names of the activities are given a more readable name which can be found in the variable names in the CodeBook file. 

The names of the new variable follow the pattern: 'operation\[coordinate\\]\\[equipment for the measurement\\]\\[type of measurement\\]', where operation is the mean or the standard deviation, the equipment may be accelerometer, gyroscope,...the coordinate: X,Y,Z if applies, and the type of measurement: tBody,...For instance: mean.X.Acc.tBody

Finally, a new dataframe with the summary of the means and standard deviation is created for each subject and task, which represents each of the observations. This dataframe is writing down to a file called output.txt in the working directory. 
