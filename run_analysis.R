#It's required this two packages for running the script, because it makes use of the str_replace function (in stringr), mapvalues from plyr
#and the summary,arrange,  and group_by functions (in dplry)
library(stringr)
library(plyr)
library(dplyr)

tidydataset <- function(path){ 

      filebasepath_ <- paste0(path,"/UCI HAR DataSet/")  
      #1.Merges the training and the test sets to create one data set. #Base path for reading the files
      #Defining a variables with the base path where our data is placed.
      
      #This is meta-information we will need in the future with the names  of the columns. This information is included
      #in the features.txt file. We subset the dataset to get the second column because we focus only on the names of the 
      #columns
      features_  <- read.table(file=paste0(filebasepath_ ,"features.txt"), head=FALSE )[,2]
      
      #reading and binding together the different columns in the training folder, taken advantage of the reading functions, 
      #we loaded the data and set the column names using the col.names parameter. For the x_train the column names will be the vector 
      #of features which has been previously loaded. 
      
      #binding the rows for the two datasets coming from the train and the test folders
      total_dataset <- rbind(read.table(file=paste0(filebasepath_,"test/x_test.txt"), head=FALSE,col.names=features_ ),
                             read.table(file=paste0(filebasepath_,"train/x_train.txt"), head=FALSE,col.names=features_ ))
      
      #2.Extracts only the measurements on the mean and standard deviation for each measurement. 
      # Select the column names which have mean() and std() in its names as part of the convention which the original dataset
      # uses to mark such values. We run an regular expresion over the column names stored in features to know the columns we have
      #select 
      total_selected_dataset <- select(total_dataset,grep("mean\\(\\)|std\\(\\)",features_))
      
      #Read and load the information regarding the subjects and the activities. We must read it in the same order that we use to read the x_* 
      #because we will join the resulting columns in the previous dataset coming from the x_* files (total_dataset). For doing that we read the
      #subject_* files and join together the rows. The same process is repeated for the y_^* with the information of the activities. Finally we join
      #in a new data set the two columns
      subject_activity <- cbind(rbind(read.table(file=paste0(filebasepath_,"test/subject_test.txt"), head=FALSE,col.names=c("subject")),
                                      read.table(file=paste0(filebasepath_,"train/subject_train.txt"), head=FALSE,col.names=c("subject"))),
                                rbind(read.table(file=paste0(filebasepath_,"test/y_test.txt"), head=FALSE,col.names=c("activity")),
                                      read.table(file=paste0(filebasepath_,"train/y_train.txt"), head=FALSE,col.names=c("activity"))))
      
      #3. Uses descriptive activity names to name the activities in the data set
      #We map the number to the names of the activities as provided in the file which describe the mapping between numbers and descriptions
      subject_activity$activity <- as.factor(plyr::mapvalues(subject_activity$activity, from=c("1","2","3","4","5","6"),to=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")))
      
      #4. Appropriately labels the data set with descriptive variable names. In order to do that we extract from the complete set of columns
      #the ones which belongs to the mean() and std(). Once extracted we transform the names using regular expressions to give them a more readable
      #format. This format is of the form: operation[coordinate][equipment for the measurement][type of measurement]: for instance: mean.X.Acc.tBody, in addition to the activity and subject
      #columns
      features_ <- features_[grep("mean\\(\\)|std\\(\\)",features_)]
      names(total_selected_dataset) <- str_replace(features_,"^(fBody|tBody|tGravity)(.*)-(mean|std)\\(\\)[-]?([X|Y|Z])?","\\3.\\4.\\2.\\1") %>% str_replace("^(mean|std)[.]+(Body)?([G|A].*)","\\1.\\3")
      
      #5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      #group and summarizing the data: We bind the columns with the activity and subjects with the dataset which contains all the data of the measurements
      #then we group the dataset using the group_by function using subject and activity columns, and then using the summarise_each we get the mean of all the 
      #columns in each group. After that we sort the dataset using the subject and activity columns 
      #get the means of each of the columns
      final_sum_out <- cbind(total_selected_dataset,subject_activity) %>% dplyr::group_by(subject,activity) %>% dplyr::summarise_each(funs(mean)) %>% arrange(subject,activity)
      
      #We provide a more descriptive names for the subjects
      final_sum_out$subject  <- as.factor(paste0("SUBJECT",final_sum_out$subject))
}
      
###function that writes down the output data set after the cleaning operation
writeoutput <- function(path,final_data_set){
      #Finally we write down the content of the dataset to disk
      write.table(final_data_set,paste0(path,"/output.txt"),row.name=FALSE)
}
############main function to call to clean the data set############
gettidydata <- function(){ writeoutput(getwd(),tidydataset(getwd())) }
