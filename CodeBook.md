This is a code book for the sets 'mergedset.txt' and 'averages.txt' described below.

First, we quote the original source:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

end of quote.

The 'mergedset.txt' is a set that proceeds from the following. 

Merged the training and the test sets to create one data set.
Extracted only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.


variables for the set 'mergedset.txt'
This set contains the mean and standard deviation for each measurment of the original signal variables.

subject: The number that identifies the volunteer subject that performed the experiment 
activity: One of the six activities performed WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
act_code: numerical codes for the six activities in the variable activity.
bod_acc_x_mean: The mean of the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis x.
bod_acc_x_sd:The standard deviation the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis x.
bod_acc_y_mean: The mean the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis y.
bod_acc_y_sd:The standard the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis y..
bod_acc_z_mean: The mean the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis z.
bod_acc_z_sd:The standard deviation the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis z.
bod_gyro_x_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_x_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_y_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_x_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_z_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_z_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
tot_acc_x_mean: The total sum of the variable bod_acc_x_mean.
tot_acc_x_sd: The total sum of the variable bod_acc_x_sd.
tot_acc_y_mean: The total sum of the variable bod_acc_y_mean.
tot_acc_y_sd: The total sum of the variable bod_acc_y_sd.
tot_acc_z_mean: The total sum of the variable bod_acc_z_mean.
tot_acc_z_sd: The total sum of the variable bod_acc_z_sd.
group: The group to which te subject belongs 'train' or 'test'.







The set 'averages.txt' is a second, independent tidy data set with the average of each variable for each activity and each subject from mergedset.txt.


variables for the set 'averages.txt'

This set contains the average of each variable for each activity and each subject.

group: The group to which te subject belongs 'train' or 'test'.
subject: The number that identifies the volunteer subject that performed the experiment 
activity: One of the six activities performed WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
bod_acc_x_mean: The mean of the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis x.
bod_acc_x_sd:The standard deviation the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis x.
bod_acc_y_mean: The mean the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis y.
bod_acc_y_sd:The standard the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis y..
bod_acc_z_mean: The mean the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis z.
bod_acc_z_sd:The standard deviation the body acceleration signal obtained by subtracting the gravity from the total acceleration at axis z.
bod_gyro_x_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_x_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_y_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_x_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_z_mean: The mean  of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
bod_gyro_z_sdn: The standard deviation of the   angular velocity vector measured by the gyroscope for each window sample. The units are  radians/second. 
tot_acc_x_mean: The total sum of the variable bod_acc_x_mean.
tot_acc_x_sd: The total sum of the variable bod_acc_x_sd.
tot_acc_y_mean: The total sum of the variable bod_acc_y_mean.
tot_acc_y_sd: The total sum of the variable bod_acc_y_sd.
tot_acc_z_mean: The total sum of the variable bod_acc_z_mean.
tot_acc_z_sd: The total sum of the variable bod_acc_z_sd.


original authors and publications for reference.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
