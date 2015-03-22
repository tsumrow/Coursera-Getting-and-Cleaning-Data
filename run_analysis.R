#    run_analysis.R
#
#    This script outputs a tidy data set in the working directory named 
#    tidy_data_set.txt
#
#    How to use this script
#    1. Download the raw data set as noted in the README.md file
#    2. Unzip the dataset and copy the directory`UCI HAR Dataset" to the
#       directory this script resides
#    3. Open R and set the working directory to the directory this script
#       resides
#    4. Run the run_analysis.R script
#    5. The output file tidy_data_set.txt will be placed in the working
#       directory

#-------------------------------------------------------------------------------
#    Load the plyr library
#-------------------------------------------------------------------------------
library(plyr)

#-------------------------------------------------------------------------------
#    Load the files from the UCI HAR Dataset directory
#-------------------------------------------------------------------------------

features <- read.table("UCI HAR Dataset/features.txt", sep = "", header=FALSE, 
            as.is=TRUE, colClasses = c("character"))

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", sep = "", 
                  header=FALSE, as.is=TRUE, col.names = c("ActivityID",
                  "ActivityName"))

trainingData <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "", 
                header=FALSE)

trainingLabels <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "", 
                  header=FALSE, col.names = c("ActivityID"))

trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", 
                    sep ="", header=FALSE, col.names = c("SubjectID"))

testData <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "", 
            header=FALSE)

testLabels <- read.table("UCI HAR Dataset/test/y_test.txt", sep = "", 
              header=FALSE, col.names = c("ActivityID"))

testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = "",
                header=FALSE, col.names = c("SubjectID"))


#-------------------------------------------------------------------------------
#    1. Merge the training and the test sets to create one data.table named 
#       dataMerged
#-------------------------------------------------------------------------------

#    Merge training and test data sets
trainingMerged <- cbind(trainingLabels,trainingSubjects,trainingData)
testMerged <- cbind(testLabels,testSubjects,testData)
dataMerged <- rbind(trainingMerged,testMerged)

#    Apply descriptive column names for extraction
featureNames <- c("ActivityID", "SubjectID", features[,2])
names(dataMerged) <- featureNames 


#-------------------------------------------------------------------------------
#    2. Extract only the measurements on the mean and standard deviation to
#       data.table named dataExtracted.
#-------------------------------------------------------------------------------

#    use grepl to extract the only the mean and standard deviation measurements
dataExtracted <- dataMerged[,grep("ActivityID|SubjectID|mean|std", 
                 names(dataMerged))]


#-------------------------------------------------------------------------------
#    3. Use descriptive activity names to name the activities in the data set.
#-------------------------------------------------------------------------------

#    Add the activity names and remove the ActivityID column
dataLabeled <- merge(activityLabels,dataExtracted,by="ActivityID")
dataLabeled$ActivityID <-NULL


#-------------------------------------------------------------------------------
#    4. Appropriately label the data set with descriptive variable names
#-------------------------------------------------------------------------------

#    Format the column names to make it easier to read
columnNames <- colnames(dataLabeled)
columnNames <- gsub("tBody","tBody.",columnNames, fixed=TRUE)
columnNames <- gsub("fBody","fBody.",columnNames, fixed=TRUE)
columnNames <- gsub("tGravity","tGravity.",columnNames, fixed=TRUE)
columnNames <- gsub("-mean()",".Mean",columnNames, fixed=TRUE)
columnNames <- gsub("-std()",".Standard.Deviation",columnNames, fixed=TRUE)
columnNames <- gsub("-meanFreq()",".MeanFrequency",columnNames, fixed=TRUE)
columnNames <- gsub("-X",".X",columnNames, fixed=TRUE)
columnNames <- gsub("-Y",".Y",columnNames, fixed=TRUE)
columnNames <- gsub("-Z",".Z",columnNames, fixed=TRUE)
names(dataLabeled) <- columnNames

#-------------------------------------------------------------------------------
#    5. Creates a second, independent tidy data set with the average of each 
#       variable for each activity and each subject
#-------------------------------------------------------------------------------

dataAveraged = ddply(dataLabeled, c("SubjectID","ActivityName"), 
               numcolwise(mean))

write.table(dataAveraged, file = "tidy_data_set.txt", row.names=FALSE)
