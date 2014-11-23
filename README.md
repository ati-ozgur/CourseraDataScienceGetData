CourseraDataScienceGetData
==========================



"run_analysis.R" file contains all necessary code. Some of the parts are extracted to other files which are sourced in "run_analysis.R"

- downloadDataFile.R -> simple download dataset and unzip it.
- CreateOneDataSetFromTrainAndTestSet.R -> this file reads different train and test files and merged them to one data. 
Feature,Class and subject data files are read and combined to one dataset here.
Also features.txt file read and features names are cleaned and changed to descriptive names here.

