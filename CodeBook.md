This file describes details about:
- Information about the experimental study design that was used
- Information about the summary choices I have made
- Variables in the data set

##Study Design

The data was collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The source data set was obtained from here
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 


##Code book 

The following steps were used to process the source data into the tidy data set
1.   The file getdata-projectfiles-UCI HAR Dataset.zip was extracted to the UCI HAR Dataset folder

2.   The following training files were merged by column
     - X_train.txt
     - y_train.txt
     - subject_train.txt
3. The following test files were merged by column
     - X_test.txt
     - y_test.txt
     - subject_test.txt
4. The results of 2 and 3 were merged together by column
5. The values in features.txt were applied as column names
6. The result was filtered to include only measurements on the mean and standard deviation
7. The result was merged with the file activity_labels.txt to include human readable activity values
8. Column headers were updated to improve human readability
9. A average of each variabel for each activity and each subject was generated
10. The resulting dataset was written to the file `tidy_data_set.txt`


##Variables
|     Field Label	|	Variable Type	|	Variable	|
|	---------------------------------------------------------	|	----	|	---------------------------------------------------------	|
|	SubjectID	|	Integer	|	ID represented the subject studied	|
|	ActivityName	|	Character	|	Name of the activity performed	|
|	ActivityID	|	Numeric	|	ID representing the activity performed	|
|	tBody.Acc.Mean.X	|	Numeric	|	tBody Acceleration Mean X Axis	|
|	tBody.Acc.Mean.Y	|	Numeric	|	tBody Acceleration Mean Y Axis	|
|	tBody.Acc.Mean.Z	|	Numeric	|	tBody Acceleration Mean Z Axis	|
|	tBody.Acc.Standard.Deviation.X	|	Numeric	|	tBody Acceleration Standard Deviation X Axis	|
|	tBody.Acc.Standard.Deviation.Y	|	Numeric	|	tBody Acceleration Standard Deviation Y Axis	|
|	tBody.Acc.Standard.Deviation.Z	|	Numeric	|	tBody Acceleration Standard Deviation Z Axis	|
|	tGravity.Acc.Mean.X	|	Numeric	|	tGravity Acceleration Mean X Axis	|
|	tGravity.Acc.Mean.Y	|	Numeric	|	tGravity Acceleration Mean Y Axis	|
|	tGravity.Acc.Mean.Z	|	Numeric	|	tGravity Acceleration Mean Z Axis	|
|	tGravity.Acc.Standard.Deviation.X	|	Numeric	|	tGravity Acceleration Standard Deviation X Axis	|
|	tGravity.Acc.Standard.Deviation.Y	|	Numeric	|	tGravity Acceleration Standard Deviation Y Axis	|
|	tGravity.Acc.Standard.Deviation.Z	|	Numeric	|	tGravity Acceleration Standard Deviation Z Axis	|
|	tBody.AccJerk.Mean.X	|	Numeric	|	tBody Acceleration Jerk Mean X Axis	|
|	tBody.AccJerk.Mean.Y	|	Numeric	|	tBody Acceleration Jerk Mean Y Axis	|
|	tBody.AccJerk.Mean.Z	|	Numeric	|	tBody Acceleration Jerk Mean Z Axis	|
|	tBody.AccJerk.Standard.Deviation.X	|	Numeric	|	tBody Acceleration Jerk Standard Deviation X Axis	|
|	tBody.AccJerk.Standard.Deviation.Y	|	Numeric	|	tBody Acceleration Jerk Standard Deviation Y Axis	|
|	tBody.AccJerk.Standard.Deviation.Z	|	Numeric	|	tBody Acceleration Jerk Standard Deviation Z Axis	|
|	tBody.Gyro.Mean.X	|	Numeric	|	tBody Gyroscopic Mean X Axis	|
|	tBody.Gyro.Mean.Y	|	Numeric	|	tBody Gyroscopic Mean Y Axis	|
|	tBody.Gyro.Mean.Z	|	Numeric	|	tBody Gyroscopic Mean Z Axis	|
|	tBody.Gyro.Standard.Deviation.X	|	Numeric	|	tBody Gyroscopic Standard Deviation X Axis	|
|	tBody.Gyro.Standard.Deviation.Y	|	Numeric	|	tBody Gyroscopic Standard Deviation Y Axis	|
|	tBody.Gyro.Standard.Deviation.Z	|	Numeric	|	tBody Gyroscopic Standard Deviation Z Axis	|
|	tBody.GyroJerk.Mean.X	|	Numeric	|	tBody Gyroscopic Jerk Mean X Axis	|
|	tBody.GyroJerk.Mean.Y	|	Numeric	|	tBody Gyroscopic Jerk Mean Y Axis	|
|	tBody.GyroJerk.Mean.Z	|	Numeric	|	tBody Gyroscopic Jerk Mean Z Axis	|
|	tBody.GyroJerk.Standard.Deviation.X	|	Numeric	|	tBody Gyroscopic Jerk Standard Deviation X Axis	|
|	tBody.GyroJerk.Standard.Deviation.Y	|	Numeric	|	tBody Gyroscopic Jerk Standard Deviation Y Axis	|
|	tBody.GyroJerk.Standard.Deviation.Z	|	Numeric	|	tBody Gyroscopic Jerk Standard Deviation Z Axis	|
|	tBody.AccMag.Mean	|	Numeric	|	tBody Acceleration Magnitude Mean	|
|	tBody.AccMag.Standard.Deviation	|	Numeric	|	tBody Acceleration Magnitude Standard Deviation	|
|	tGravity.AccMag.Mean	|	Numeric	|	tGravity Acceleration Magnitude Mean	|
|	tGravity.AccMag.Standard.Deviation	|	Numeric	|	tGravity Acceleration Magnitude Standard Deviation	|
|	tBody.AccJerkMag.Mean	|	Numeric	|	tBody Acceleration Magnitude Jerk Mean	|
|	tBody.AccJerkMag.Standard.Deviation	|	Numeric	|	tBody Acceleration Magnitude Jerk Standard Deviation	|
|	tBody.GyroMag.Mean	|	Numeric	|	tBody Gyroscopic Magnitude Mean	|
|	tBody.GyroMag.Standard.Deviation	|	Numeric	|	tBody Gyroscopic Magnitude Standard Deviation	|
|	tBody.GyroJerkMag.Mean	|	Numeric	|	tBody Gyroscopic Jerk Magnitude Mean	|
|	tBody.GyroJerkMag.Standard.Deviation	|	Numeric	|	tBody Gyroscopic Jerk Magnitude Standard Deviation	|
|	fBody.Acc.Mean.X	|	Numeric	|	fBody Acceleration Mean X Axis	|
|	fBody.Acc.Mean.Y	|	Numeric	|	fBody Acceleration Mean Y Axis	|
|	fBody.Acc.Mean.Z	|	Numeric	|	fBody Acceleration Mean Z Axis	|
|	fBody.Acc.Standard.Deviation.X	|	Numeric	|	fBody Acceleration Standard Deviation X Axis	|
|	fBody.Acc.Standard.Deviation.Y	|	Numeric	|	fBody Acceleration Standard Deviation Y Axis	|
|	fBody.Acc.Standard.Deviation.Z	|	Numeric	|	fBody Acceleration Standard Deviation Z Axis	|
|	fBody.Acc.MeanFrequency.X	|	Numeric	|	fBody Acceleration MeanFrequency X Axis	|
|	fBody.Acc.MeanFrequency.Y	|	Numeric	|	fBody Acceleration MeanFrequency Y Axis	|
|	fBody.Acc.MeanFrequency.Z	|	Numeric	|	fBody Acceleration MeanFrequency Z Axis	|
|	fBody.AccJerk.Mean.X	|	Numeric	|	fBody Acceleration Jerk Mean X Axis	|
|	fBody.AccJerk.Mean.Y	|	Numeric	|	fBody Acceleration Jerk Mean Y Axis	|
|	fBody.AccJerk.Mean.Z	|	Numeric	|	fBody Acceleration Jerk Mean Z Axis	|
|	fBody.AccJerk.Standard.Deviation.X	|	Numeric	|	fBody Acceleration Jerk Standard Deviation X Axis	|
|	fBody.AccJerk.Standard.Deviation.Y	|	Numeric	|	fBody Acceleration Jerk Standard Deviation Y Axis	|
|	fBody.AccJerk.Standard.Deviation.Z	|	Numeric	|	fBody Acceleration Jerk Standard Deviation Z Axis	|
|	fBody.AccJerk.MeanFrequency.X	|	Numeric	|	fBody Acceleration Jerk MeanFrequency X Axis	|
|	fBody.AccJerk.MeanFrequency.Y	|	Numeric	|	fBody Acceleration Jerk MeanFrequency Y Axis	|
|	fBody.AccJerk.MeanFrequency.Z	|	Numeric	|	fBody Acceleration Jerk MeanFrequency Z Axis	|
|	fBody.Gyro.Mean.X	|	Numeric	|	fBody Gyroscopic Mean X Axis	|
|	fBody.Gyro.Mean.Y	|	Numeric	|	fBody Gyroscopic Mean Y Axis	|
|	fBody.Gyro.Mean.Z	|	Numeric	|	fBody Gyroscopic Mean Z Axis	|
|	fBody.Gyro.Standard.Deviation.X	|	Numeric	|	fBody Gyroscopic Standard Deviation X Axis	|
|	fBody.Gyro.Standard.Deviation.Y	|	Numeric	|	fBody Gyroscopic Standard Deviation Y Axis	|
|	fBody.Gyro.Standard.Deviation.Z	|	Numeric	|	fBody Gyroscopic Standard Deviation Z Axis	|
|	fBody.Gyro.MeanFrequency.X	|	Numeric	|	fBody Gyroscopic MeanFrequency X Axis	|
|	fBody.Gyro.MeanFrequency.Y	|	Numeric	|	fBody Gyroscopic MeanFrequency Y Axis	|
|	fBody.Gyro.MeanFrequency.Z	|	Numeric	|	fBody Gyroscopic MeanFrequency Z Axis	|
|	fBody.AccMag.Mean	|	Numeric	|	fBody Acceleration Magnitude Mean	|
|	fBody.AccMag.Standard.Deviation	|	Numeric	|	fBody Acceleration Magnitude Standard Deviation	|
|	fBody.AccMag.MeanFrequency	|	Numeric	|	fBody Acceleration Magnitude MeanFrequency	|
|	fBody.BodyAccJerkMag.Mean	|	Numeric	|	fBody Body Acceleration Jerk Magnitude Mean	|
|	fBody.BodyAccJerkMag.Standard.Deviation	|	Numeric	|	fBody Body Acceleration Jerk Magnitude Standard Deviation	|
|	fBody.BodyAccJerkMag.MeanFrequency	|	Numeric	|	fBody Body Acceleration Jerk Magnitude MeanFrequency	|
|	fBody.BodyGyroMag.Mean	|	Numeric	|	fBody Body Gyroscopic Magnitude Mean	|
|	fBody.BodyGyroMag.Standard.Deviation	|	Numeric	|	fBody Body Gyroscopic Magnitude Standard Deviation	|
|	fBody.BodyGyroMag.MeanFrequency	|	Numeric	|	fBody Body Gyroscopic Magnitude MeanFrequency	|
|	fBody.BodyGyroJerkMag.Mean	|	Numeric	|	fBody Body Gyroscopic Jerk Magnitude Mean	|
|	fBody.BodyGyroJerkMag.Standard.Deviation	|	Numeric	|	fBody Body Gyroscopic Jerk Magnitude Standard Deviation	|
|	fBody.BodyGyroJerkMag.MeanFrequency	|	Numeric	|	fBody Body Gyroscopic Jerk Magnitude MeanFrequency	|


