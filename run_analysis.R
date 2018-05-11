## variables
trainingsetdirlocation <- "./UCI HAR Dataset/train/"
testsetdirlocation <- "./UCI HAR Dataset/test/"
testfileregexpattern <- "^[a-zA-Z]_test.txt"
trainfileregexpattern <- "^[a-zA-Z]_train.txt"

## getting the sets
testsetfiles <- paste0(testsetdirlocation,list.files(path=testsetdirlocation,pattern=testfileregexpattern))
trainingsetfiles <- paste0(trainingsetdirlocation,list.files(path=trainingsetdirlocation,pattern=trainfileregexpattern))

testset <- lapply(testsetfiles,read.csv)
trainset <- lapply(trainingsetfiles,read.csv)


## merging the sets


## extraction of the mean and standard deviation for each measurement

## activity names update

## variable names update

## tidy dataset

## average of each variable for each activity and each subject