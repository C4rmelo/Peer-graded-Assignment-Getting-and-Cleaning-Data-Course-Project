#####Peer-graded Assignment: Getting and Cleaning Data Course Project#####



##Uploading all the files in R (test):

subTest<- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
XTest <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
YTest <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
bodyAccTest.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
bodyAccTest.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
bodyAccTest.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
bodyGyroTest.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
bodyGyroTest.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
bodyGyroTest.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
totalAccTest.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
totalAccTest.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
totalAccTest.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

##Uploading all the files in R (train):

subTrain<- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
XTrain <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
YTrain<- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
bodyAccTrain.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
bodyAccTrain.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
bodyAccTrain.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
bodyGyroTrain.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
bodyGyroTrain.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
bodyGyroTrain.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
totalAccTrain.X <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
totalAccTrain.Y <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
totalAccTrain.Z <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

##Uploading features and acitivty labels:

activity_labels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")


##Modifying the variable "y_test.txt" and "y_train.txt" replacing the numbers(1-6) with the labels (6 units)
#that we can find in "activity_labels.txt":

library(dplyr)
library(plyr)
YTest.name<-data.frame(mapvalues(YTest[,1],c("1", "2", "3", "4", "5", "6"), c(activity_labels[,2]), warn_missing = TRUE))
YTrain.name <- data.frame(mapvalues(YTrain[,1],c("1", "2", "3", "4", "5", "6"), c(activity_labels[,2]), warn_missing = TRUE))
colnames(YTest.name)="Labels" 
colnames(YTrain.name)="Labels"



##Changing the name of each column of all the files that we can find in the two folder "Inertial Signals",
#so that there are no distinctions between the two sets, "Test" and "Train":

#TEST
prefix1 <- "bodyAcc.X"
prefix2 <- "bodyAcc.Y"
prefix3 <- "bodyAcc.Z"
prefix4 <- "bodyGyro.X"
prefix5 <- "bodyGyro.Y"
prefix6 <- "bodyGyro.Z"
prefix7 <- "totalAcc.X"
prefix8 <- "totalAcc.Y"
prefix9 <- "totalAcc.Z"
suffix <- seq(1:128) 
names1 <- paste(prefix1, suffix, sep="")
names2 <- paste(prefix2, suffix, sep="")
names3 <- paste(prefix3, suffix, sep="")
names4 <- paste(prefix4, suffix, sep="")
names5 <- paste(prefix5, suffix, sep="")
names6 <- paste(prefix6, suffix, sep="")
names7 <- paste(prefix7, suffix, sep="")
names8 <- paste(prefix8, suffix, sep="")
names9 <- paste(prefix9, suffix, sep="")
colnames(bodyAccTest.X)=names1 
colnames(bodyAccTest.Y)=names2
colnames(bodyAccTest.Z)=names3
colnames(bodyGyroTest.X)=names4
colnames(bodyGyroTest.Y)=names5
colnames(bodyGyroTest.Z)=names6
colnames(totalAccTest.X)=names7
colnames(totalAccTest.Y)=names8
colnames(totalAccTest.Z)=names9

#TRAIN (the same)
prefix11 <- "bodyAcc.X"
prefix12 <- "bodyAcc.Y"
prefix13 <- "bodyAcc.Z"
prefix14 <- "bodyGyro.X"
prefix15 <- "bodyGyro.Y"
prefix16 <- "bodyGyro.Z"
prefix17 <- "totalAcc.X"
prefix18 <- "totalAcc.Y"
prefix19 <- "totalAcc.Z"
names11 <- paste(prefix11, suffix, sep="") 
names12 <- paste(prefix12, suffix, sep="")
names13 <- paste(prefix13, suffix, sep="")
names14 <- paste(prefix14, suffix, sep="")
names15 <- paste(prefix15, suffix, sep="")
names16 <- paste(prefix16, suffix, sep="")
names17 <- paste(prefix17, suffix, sep="")
names18 <- paste(prefix18, suffix, sep="")
names19 <- paste(prefix19, suffix, sep="")
colnames(bodyAccTrain.X)=names11 
colnames(bodyAccTrain.Y)=names12
colnames(bodyAccTrain.Z)=names13
colnames(bodyGyroTrain.X)=names14
colnames(bodyGyroTrain.Y)=names15
colnames(bodyGyroTrain.Z)=names16
colnames(totalAccTrain.X)=names17
colnames(totalAccTrain.Y)=names18
colnames(totalAccTrain.Z)=names19

##Changing the name of the columns of the files "X_test.txt" and "Y_test.txt" 
#with the names that we can find in the file "features.txx" (that contains the list of all features):

features.names<-features[,2] 
colnames(XTest)=features.names 
colnames(XTrain)=features.names

colnames(subTest)="Subjects" 
colnames(subTrain)="Subjects"



##Created two datasets ("All.Test" and "All.Train"), one for the Test set and one for the Train set,
#joining the following variables: subTest, Ytest.name, Xtest and all the inertial signals.And the same for the Train files:

All.Test<-cbind(subTest,YTest.name,XTest,bodyAccTest.X,bodyAccTest.Y,bodyAccTest.Z, bodyGyroTest.X,bodyGyroTest.Y,bodyGyroTest.Z,totalAccTest.X,totalAccTest.Y,totalAccTest.Z)
All.Train<-cbind(subTrain,YTrain.name,XTrain,bodyAccTrain.X,bodyAccTrain.Y,bodyAccTrain.Z, bodyGyroTrain.X,bodyGyroTrain.Y,bodyGyroTrain.Z,totalAccTrain.X,totalAccTrain.Y,totalAccTrain.Z)


##Unifying "All.Test" and "All.Train" in one dataset sorting it by the variable "Subjects" and the variable "Labels":

Messy.All.Data<-rbind(All.Test,All.Train)
All.Data<-arrange(Messy.All.Data, Subjects,Labels) #FINAL DATASET

###Finish point 1-3-4###


### Point 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

columnSelected <-grep("mean|std", names(All.Data)) 
MeanStandarddeviation <-All.Data[,c(1,2,columnSelected)]


###: Point 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject:

##Computing the averege of each variable for each activity and each subject:

All.Data<-data.frame(All.Data)
NewData<-data.frame() 
for(i in All.Data$Subjects[!duplicated(All.Data[1])]){
  for(j in activity_labels[,2]){ 
    a<-filter(All.Data, Subjects==i, Labels == j)
    b<-sapply(a[,-(1:2)], mean) 
    b<-as.data.frame(t(b)) 
    NewData<-rbind(NewData, b)}} 

##Get the first two columns "Subjects" and "Labels" (of which obviously I have not calculated the average :)) :

TwoColumns <- data.frame()
for(i in All.Data$Subjects[!duplicated(All.Data[1])]){
  for(j in activity_labels[,2]){
    TwoColumns <- rbind(TwoColumns,cbind(i,j))}}
names(TwoColumns)[1] <- "Subjects" 
names(TwoColumns)[2] <- "Labels"

IndependentTidyData <-cbind(TwoColumns,NewData) #The final dataset required in the point 5.


write.table(IndependentTidyData,row.name=FALSE,file="Assignment Getting and Cleaning Data.txt")


###Finish, thank you!###