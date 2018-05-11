# Analysis of "Human Activity Recognition Using Smartphones Data Set"

## What does this script do ?
This script takes the test and training datasets from UCI's human activity recognition as an input and creates a file containing a tidy dataset with the average variable for each activity and each subject, ready for analysis.  
More information about the script can be found in the CodeBook.md

## Requirements
**R** : tested with version 3.4.2 on a Linux environment  
**plyr library** : the script will load the library, but will not install it  
**Data Set** : the dataset needs to be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and put at the same root level as the script. If you prefer to move it elsewhere, please update the *sourcedirlocation* variable.

## Credits
The dataset used for this coursera project is from UCI : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones