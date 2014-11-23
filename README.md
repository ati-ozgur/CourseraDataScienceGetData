Coursera Data Science Track - Getting and Cleaning Data Course Project
==========================

This repository created for [Getting and Cleaning Data Project](https://class.coursera.org/getdata-009).
It downloads "UCI HAR Dataset" from internet and runs analysis wanted in the project.


The most important file is [run_analysis.R](run_analysis.R) file which contains all necessary code. 
Some of the code are extracted to other files for readibility purposes. 

- [downloadDataFile.R](downloadDataFile.R) 
- [CreateOneDataSetFromTrainAndTestSet.R](CreateOneDataSetFromTrainAndTestSet.R) 

These two R files are sourced in [run_analysis.R](run_analysis.R).

## downloadDataFile.R

[This code](downloadDataFile.R)  downloads dataset from internet and unzips it.

## CreateOneDataSetFromTrainAndTestSet.R

[This file](CreateOneDataSetFromTrainAndTestSet.R)  reads different train and test files and merged them to one data. 
Feature,Class and subject data files are read and combined to one dataset here.
Also features.txt file read and features names are cleaned and changed to descriptive names here.
After these, train and test dataset are merged to one dataset.
At last, temporary variables are cleaned.
