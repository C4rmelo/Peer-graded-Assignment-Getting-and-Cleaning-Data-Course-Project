# Peer-graded-Assignment-Getting-and-Cleaning-Data-Course-Project
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that from the data linked from the course website.
At first will be resumed the description of the original Data, then I will describe the changes made by myself.

Description of the original Data: 
"One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone."
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."
"For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment."

Now I describe the changes made by myself:
1) After uploading all the files in R, I have modified the variable "y_test.txt" and "y_train.txt" (that contained numbers from 1 to 6 that denoted the six labels that we can find in "activity_labels.txt") replacing the numbers with the labels that we can find in "activity_labels.txt". I have also changed the column names of the two variables.
2) Then I have changed the name of each column of all the files that we can find in the two folder "Inertial Signals", so that there are no distinctions between the two sets, "Test" and "Train" (in order to unify the two sets successively, without distinctions).
3) Then I have changed the name of the columns of the files "X_test.txt" and "Y_test.txt" with the names that we can find in the file "features.txx" (that contains the list of all features).
4) I have changed the name of the columns of the file "subject_train.txt" and "subject_test.txt" (in which each row identifies the subject who performed the activity for each window sample) in "Subjects" for  both the file (in order to unify the two sets successively, without distinctions).
5) Then I have created two datasets ("All.Test" and "All.Train"), one for the Test set and one for the Train set, joining the following variables: subTest, YTest.name, XTest, bodyAccTest.X, bodyAccTest.Y, bodyAccTest.Z, bodyGyroTest.X, bodyGyroTest.Y, bodyGyroTest.Z, totalAccTest.X, totalAccTest.Y, totalAccTest.Z for the Test group; and for the Train group, the same variables but related to the Train gruop (subTrain, YTrain.name, etc). You can see the codebook for more details.
6) Then I have unified "All.Test" and "All.Train" in one dataset sorting it by the variable "Subjects" and the variable "Labels". I have called the dataset, "All.Data".
- The work done so far responds to the following points:     
      1."Merges the training and the test sets to create one data set."
      3."Uses descriptive activity names to name the activities in the data set."
      4."Appropriately labels the data set with descriptive variable names."
      
7) Then I have responded to the point "2.Extracts only the measurements on the mean and standard deviation for each measurement.", and so I have extracted these measurements into a new dataset called "MeanStandarddeviation".
8) In the end I have responded to the point "5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject", starting from the dataset "All.Data", creating a dataset with the averege of each variable for each activity and each subject, and then joining to this dataset the two columns "Subjects" and "Labels" (of which obviously I have not calculated the average :) ).
