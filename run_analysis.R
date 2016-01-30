## Jonathan Sinclair
## assumes you have data downloaded
## if not, please download

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("data.zip")) {download.file(url, destfile = "data.zip"); unzip("data.zip")}

##unzip("data.zip")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

y_test <- read.table("./UCI HAR Dataset/train/Y_train.txt")



x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")


subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


test_and_train <- rbind(x_test, x_train)

y_labels <- rbind(y_test, y_train)

subject_test_and_train <- rbind(subject_test, subject_train)


combined <- cbind(subject_test_and_train, y_labels, 
                  test_and_train)


features_text <- read.table("./UCI HAR Dataset/features.txt")


contains_mean_or_std <- grep(pattern = "mean()|std()", x = 
                               features_text$V2)


indicies <- contains_mean_or_std

rm("contains_mean_or_std")

### ^ VITAL STEP


plus2 <- indicies + 2


contains_mean_or_std <- combined[ ,plus2] 

contains_mean_or_std <- combined[ , c(1,2, plus2)]



activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


contains_mean_or_std[,2] <- activity_labels$V2



features_mean_and_std <- features_text[indicies]


labled_col_names <- contains_mean_or_std



features_text$V2 <- as.character(features_text$V2) 

features_text$V2 <- gsub("[[:punct:]]", "", features_text$V2)


features_mean_and_std <- features_text[indicies , ]


colnames(labled_col_names) <- c("personID", "activity", 
                                features_mean_and_std$V2)


grouped <- group_by(labled_col_names, personID, activity)


sub_data <- summarise_each(grouped, funs(mean))
View(sub_data)
write.table("tidy_data.txt", row.names = FALSE)




