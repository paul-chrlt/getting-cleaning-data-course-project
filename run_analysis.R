## variables
sourcedirlocation <- "./UCI HAR Dataset/"
testfiles <- c(
        "test/subject_test.txt",
        "test/X_test.txt",
        "test/y_test.txt"
)

trainfiles <- c(
        "train/subject_train.txt",
        "train/X_train.txt",
        "train/y_train.txt"
)
activitylabelsfile <- "activity_labels.txt"

featuresfile <- "features.txt"

## libraries
library(plyr)

## creating source files paths

filepathactivitylabels <- paste0(sourcedirlocation,activitylabelsfile)
filepathfeatureslabels <- paste0(sourcedirlocation,featuresfile)

filepathtest <- paste0(sourcedirlocation,testfiles)

filepathtrain <- paste0(sourcedirlocation, trainfiles)

## getting the sets

activitylabels <- read.table(filepathactivitylabels,sep=" ",header = FALSE,colClasses = c("integer","character"))
features <- read.table(filepathfeatureslabels,sep=" ",header=FALSE,colClasses = c("integer","character"))

subjecttest <- read.table(filepathtest[1])
subjecttrain <- read.table(filepathtrain[1])
xtest <- read.table(filepathtest[2])
xtrain <- read.table(filepathtrain[2])
ytest <- read.table(filepathtest[3])
ytrain <- read.table(filepathtrain[3])

testset <- cbind(subjecttest,xtest,ytest)
trainset <- cbind(subjecttrain,xtrain,ytrain)

## merging the sets

dataset <- rbind(testset,trainset)

## adding the names

names(dataset) <- c("subjectID",features[,2],"activity")

## activity should be a factor

for (x in activitylabels[,1]) {
        dataset$activity <- gsub(activitylabels[x,1],activitylabels[x,2],dataset$activity)
        
}
dataset$activity <- as.factor(dataset$activity)

## extraction of the mean and standard deviation for each measurement
meanstdindices <- grepl("mean|std",names(dataset))
meanstdindices[c(1,length(meanstdindices))] <- c(TRUE,TRUE)
dataset <- dataset[,meanstdindices]

## creation of an independant dataset

datasetaverage <- dataset

## average of each variable for each activity and each subject

datasetaverage<-ddply(datasetaverage,c("subjectID","activity"),colwise(mean))
names(datasetaverage)[3:length(datasetaverage[1,])] <- paste("mean of",names(datasetaverage)[3:length(datasetaverage[1,])])

write.table(datasetaverage,file="datasetaverage.txt",row.names = FALSE)
