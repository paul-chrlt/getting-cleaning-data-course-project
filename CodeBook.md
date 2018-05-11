# CodeBook

## Study Design

The original study consists of retrieving raw data from a smartphone during activities (like walking, standing, laying).
There are 2 samples : 1 for training, 1 for testing.  
Further information (and data source) can be found here : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Generated datasets

### dataset

This first is obtained by merging the training and testing datasets.  

Each observation is a row  

The only features in this dataset are those concerning the standard deviation or the mean.  

All the variables are in column and assigned a label :

* subjectID : integer with the ID of the subject  
* features : numeric variables between -1 and 1  
* activities : factor with 6 levels  

### datasetaverage

This dataset is obtained with a "split apply combine" strategy on the first dataset.  
It contains the average of each feature for each activity and each subject.  
This dataset is exported under "datasetaverage.txt"  

## Variables

### Training and testing datasets

**X** 561 variables, between -1 and 1, from the raw sensors  
**y** activities  
**features** names of the 561 variables in X  
**activities** names of the 6 activities referenced in **y**  

### Data source

**sourcedirlocation** location of the source directory containing the test and train folders  
**testfiles** location of the test files inside the source directory  
**trainfiles** location of the train files inside the source directory   
**activitylabelsfile** location of the activity labels file inside the source directory  
**featuresfile** location of the features file inside the source directory  

## Credit of the data source

Human Activity Recognition Using Smartphones Data Set  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws 