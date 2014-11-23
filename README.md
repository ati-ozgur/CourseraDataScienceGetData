Coursera Data Science Track - Getting and Cleaning Data Course Project
==========================

This repository created for [Getting and Cleaning Data Project](https://class.coursera.org/getdata-009).
It downloads "UCI HAR Dataset" from internet and runs analysis wanted in the project.


The most important file is [run_analysis.R](run_analysis.R) file which contains all necessary code. 
Some of the code are extracted to other files for readibility purposes. 
Other r files are sourced in "run_analysis.R"

- downloadDataFile.R -> simple download dataset and unzip it.
- CreateOneDataSetFromTrainAndTestSet.R -> this file reads different train and test files and merged them to one data. 
Feature,Class and subject data files are read and combined to one dataset here.
Also features.txt file read and features names are cleaned and changed to descriptive names here.

