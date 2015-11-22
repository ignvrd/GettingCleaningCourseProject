#Requirements
It's required the packages plyr,dplyr and stringr are installed before executing the script >run_analysis.R<. The script is in charge of load the libraries, but the aforementioned packages should be installed before hand using the install.packages command. The script will load the libraries. The script assume that the dataset is in the working directory -The "UCI HAR DataSet" is in the root of the workspace. It's also assume that the dataset has been decompressed from the original zip file. The structure of this directories should be the same as the orginal decompressed dataset. 

#Usage
For the use of the code you have to load the source code using the source() command and make sure the files are placed in the root of the workspace (the "UCI HAR DataSet" directory just in that directory). The script will try to find the required files under getwd()/"UCI HAR DataSet"...

Once the script has been suource, the function gettidydata() calls the different steps to make the process. There are two functions:

- The fist one writeoutput(path,dataframe) write the result to the working directory with the name output.txt. It recives as input the path (getwd()) and the dataframe to write down. 

- tidydataset(path). It's a function that makes the bulk of the processing:
    - Merges the training and the test sets to create one data set.
    - Extracts only the measurements on the mean and standard deviation for each measurement. 
    - Uses descriptive activity names to name the activities in the data set
    - Appropriately labels the data set with descriptive variable names. 
    - Create a tidy data set with the average of each variable for each activity and each subject.
    
- gettidydata(). Function to call to get the data cleaned. 

#How it works 

The script as a fist step merges the training and the test sets to create one single data set, based in the x_* files of the orginal dataset. After that we get the names of the diferent variables according to the features.txt in the data provided. We bin rows and columns togeher to get two columns that match with our previous dataset. The columns representing the mean and the standard deviation are extracted based on the names of the columns provided by the features.txt files. 

After that, we focus on the metadata joinig columns and rows to get a pair of columns that match the previous data set with the information of the x_* files. Based in the orignal names of the columns the script is able to transform the original names to others more readables which show if the variable name is a mean, or a standard deviation, if it belongs to an accelerometer or a gyroscope, and the way in which it was obtained. To get a close idea of the observations the names of the activities are given a more readable name which can be found in the CodeBook file. 

The names of the new variable follow the pattern: 'operation\[coordinate\\]\\[equipment for the measurement\\]\\[type of measurement\\]', where operation is the mean or the standard deviation, the equipment may be accelerometer, gyroscope,...the coordinate: X,Y,Z if applies, and the type of measurement: tBody,...For instance: mean.X.Acc.tBody

Finally, a new dataframe with the summary of the means and standard deviation is created for each subject and task, which represents each of the observations. This dataframe is writing down to a file called output.txt in the working directory. 