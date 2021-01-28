##Codebook for my work, explains all the variable (and more) that I have modified/created:

Dataset "IndependentTidyData" (1715 variables, 180 obs): data set with the average of each variable for each activity and each subject of the dataset "All.Data":

###IMPORTANT: I will not put the list of #1715 variables because they are too many(!!) and they are repetitive, so I summerize them in 4 groups easy to understand:###

- "Subjects": int, from 1 to 30, indicates the subject; from the original files "subject_train.txt" and "subject_test.txt";

- "Labels": chr, indicates the activity name, "Walking", "Laying", "Standing", and so on; from the original files "activity_labels.txt";

- "bodyAcc.X", "bodyAcc.Y", "bodyAcc.Z", "bodyGyro.X", "bodyGyro.Y", and so on; num, #1152 variables (columns) (128x9), from "Inertial Signals" files (both train and test): the MEAN of the acceleration signals (3 types, 128x3), the body acceleratios (3 types, 128x3), the angular velocity vectors (3 types, 128x3);

- "tBodyAcc.mean...X", "tBodyAcc.mean...Y", "tBodyAcc.mean...Z", "tBodyAcc.std...X", and so on: num,  #561 variables (columns), from "X_train.txt" and "X_test.txt" with labels from "features.txt"; the MEAN of the relative variables;

