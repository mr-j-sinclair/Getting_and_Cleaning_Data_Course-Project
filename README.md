# Getting_and_Cleaning_Data_Course-Project
Course Project for "Getting and Cleaning Data" - Coursera

#### Jonathan Sinclair - submission

## How it all works

### Tested to run on WINDOWS

Please use the following steps to ensure that there are no problems

#### Assumptions

* ASSUMPTION #0 - you have the "dplyr" package installed - if not, please install this before you begin (and load the library)
* ASSUMPTION #1 - you are using the Windows operating system, therefore, if you need to download the file, "curl" is ommited from the download.file instruction
* ASSUMPTION #2 - you have, or will download the file to your working directory, called "data.zip"
    - If you are on a DIFFERENT O/S, you may need to add "method = curl" to the download.file() argument 
    
#### How to run

1. open R studio and set your working directory to a CLEAN folder (with no other files, folders, or variables in it)
2. open a new R script - but do not save it
3. go back to git hub, and open my "run_analysis.R" file in git hub 
4. click on the "RAW" tab, so that you can see the raw R code in your browser
5. do Ctrl + A - or the equivilant O/S command to Select ALL text (copying all my source code)
6. paste the source code into the new unsaved R script created in step 2
7. begin running the commands SLOWLY one by one, giving ample time to download / load all of the data sets


* The script will check if you have the file saved as "data.zip", if you do not, it will download and unzip the file (be patient while it does so)
* As the script finishes, it will output the data set to a file called "tidy_data.txt"
* ^ That is the outputted tidy data file
* It will also show the tidy data set using the "View()" command