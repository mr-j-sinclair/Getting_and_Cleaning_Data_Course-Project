# Getting_and_Cleaning_Data_Course-Project
Course Project for "Getting and Cleaning Data" - Coursera

#### Jonathan Sinclair - submission

## How it all works

Please use the following steps to ensure that there are no problems

* ASSUMPTION #1 - you are using the Windows operating system, therefore, if you need to download the file, "curl" is ommited from the download.file instruction
* ASSUMPTION #2 - you have, or will download the file to your working directory, called "data.zip"
    - If you are on a DIFFERENT O/S, you may need to add "method = curl" to the download.file() argument 

* The script will check if you have the file saved as "data.zip", if you do not, it will download and unzip the file (be patient while it does so)
* As the script finishes, it will output the data set to a file called "tidy_data.txt"
* It will also show the tidy data set using the "View()" command