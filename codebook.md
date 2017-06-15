Codebook
========================================================
#CookBook#
##This is taken from the README.txt file in the UCI HAR Dataset##

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19_48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3_axial linear acceleration and 3_axial angular velocity at a constant rate of 50Hz. The experiments have been video_recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre_processed by applying noise filters and then sampled in fixed_width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low_pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

_ Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
_ Triaxial Angular velocity from the gyroscope. 
_ A 561_feature vector with time and frequency domain variables. 
_ Its activity label. 
_ An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

_ 'README.txt'

_ 'features_info.txt': Shows information about the variables used on the feature vector.

_ 'features.txt': List of all features.

_ 'activity_labels.txt': Links the class labels with their activity name.

_ 'train/X_train.txt': Training set.

_ 'train/y_train.txt': Training labels.

_ 'test/X_test.txt': Test set.

_ 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

_ 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

_ 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

_ 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

_ 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
_ Features are normalized and bounded within [_1,1].
_ Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria_Gasteiz, Spain. Dec 2012

This dataset is distributed AS_IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes_Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


### Variable Descriptions


| Variable | Description
___________|_____________
| activities | The activity performed
| subject | Subject ID
| tbodyacc_mean_x | Mean time for acceleration of body for X direction
| tbodyacc_mean_y | Mean time for acceleration of body for Y direction
| tbodyacc_mean_z | Mean time for acceleration of body for Z direction
| tbodyacc_std_x | Standard deviation of time for acceleration of body for X direction
| tbodyacc_std_y | Standard deviation of time for acceleration of body for Y direction
| tbodyacc_std_z | Standard deviation of time for acceleration of body for Z direction
| tgravityacc_mean_x | Mean time of acceleration of gravity for X direction
| tgravityacc_mean_y | Mean time of acceleration of gravity for Y direction
| tgravityacc_mean_z | Mean time of acceleration of gravity for Z direction
| tgravityacc_std_x | Standard deviation of time of acceleration of gravity for X direction
| tgravityacc_std_y | Standard deviation of time of acceleration of gravity for Y direction
| tgravityacc_std_z | Standard deviation of time of acceleration of gravity for Z direction
| tbodyaccjerk_mean_x | Mean time of body acceleration jerk for X direction
| tbodyaccjerk_mean_y | Mean time of body acceleration jerk for Y direction
| tbodyaccjerk_mean_z | Mean time of body acceleration jerk for Z direction
| tbodyaccjerk_std_x | Standard deviation of time of body acceleration jerk for X direction
| tbodyaccjerk_std_y | Standard deviation of time of body acceleration jerk for Y direction
| tbodyaccjerk_std_z | Standard deviation of time of body acceleration jerk for Z direction
| tbodygyro_mean_x | Mean body gyroscope measurement for X direction
| tbodygyro_mean_y | Mean body gyroscope measurement for Y direction
| tbodygyro_mean_z | Mean body gyroscope measurement for Z direction
| tbodygyro_std_x | Standard deviation of body gyroscope measurement for X direction
| tbodygyro_std_y | Standard deviation of body gyroscope measurement for Y direction
| tbodygyro_std_z | Standard deviation of body gyroscope measurement for Z direction
| tbodygyrojerk_mean_x | Mean jerk signal of body for X direction
| tbodygyrojerk_mean_y | Mean jerk signal of body for Y direction
| tbodygyrojerk_mean_z | Mean jerk signal of body for Z direction
| tbodygyrojerk_std_x | Standard deviation of jerk signal of body for X direction
| tbodygyrojerk_std_y | Standard deviation of jerk signal of body for Y direction
| tbodygyrojerk_std_z | Standard deviation of jerk signal of body for Z direction
| tbodyaccmag_mean | Mean magnitude of body Acc
| tbodyaccmag_std | Standard deviation of magnitude of body Acc
| tgravityaccmag_mean | Mean gravity acceleration magnitude
| tgravityaccmag_std | Standard deviation of gravity acceleration magnitude
| tbodyaccjerkmag_mean | Mean magnitude of body acceleration jerk
| tbodyaccjerkmag_std | Standard deviation of magnitude of body acceleration jerk
| tbodygyromag_mean | Mean magnitude of body gyroscope measurement
| tbodygyromag_std | Standard deviation of magnitude of body gyroscope measurement
| tbodygyrojerkmag_mean | Mean magnitude of body body gyroscope jerk measurement
| tbodygyrojerkmag_std | Standard deviation of magnitude of body body gyroscope jerk measurement
| fbodyacc_mean_x | Mean frequency of body acceleration for X direction
| fbodyacc_mean_y | Mean frequency of body acceleration for Y direction
| fbodyacc_mean_z | Mean frequency of body acceleration for Z direction
| fbodyacc_std_x | Standard deviation of frequency of body acceleration for X direction
| fbodyacc_std_y | Standard deviation of frequency of body acceleration for Y direction
| fbodyacc_std_z | Standard deviation of frequency of body acceleration for Z direction
| fbodyaccjerk_mean_x | Mean frequency of body accerlation jerk for X direction
| fbodyaccjerk_mean_y | Mean frequency of body accerlation jerk for Y direction
| fbodyaccjerk_mean_z | Mean frequency of body accerlation jerk for Z direction
| fbodyaccjerk_std_x | Standard deviation frequency of body accerlation jerk for X direction
| fbodyaccjerk_std_y | Standard deviation frequency of body accerlation jerk for Y direction
| fbodyaccjerk_std_z | Standard deviation frequency of body accerlation jerk for Z direction
| fbodygyro_mean_x | Mean frequency of body gyroscope measurement for X direction
| fbodygyro_mean_y | Mean frequency of body gyroscope measurement for Y direction
| fbodygyro_mean_z | Mean frequency of body gyroscope measurement for Z direction
| fbodygyro_std_x | Standard deviation frequency of body gyroscope measurement for X direction
| fbodygyro_std_y | Standard deviation frequency of body gyroscope measurement for Y direction
| fbodygyro_std_z | Standard deviation frequency of body gyroscope measurement for Z direction
| fbodyaccmag_mean | Mean frequency of body acceleration magnitude
| fbodyaccmag_std | Standard deviation of frequency of body acceleration magnitude
| fbodybodyaccjerkmag_mean | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag_std | Standard deviation of frequency of body acceleration jerk magnitude
| fbodybodygyromag_mean | Mean frequency of magnitude of body gyroscope measurement
| fbodybodygyromag_std | Standard deviation of frequency of magnitude of body gyroscope measurement
| fbodybodygyrojerkmag_mean | Mean frequency of magnitude of body gyroscope jerk measurement
| fbodybodygyrojerkmag_std | Standard deviation frequency of magnitude of body gyroscope jerk measurement

