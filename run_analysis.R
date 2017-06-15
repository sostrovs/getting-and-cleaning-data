library(data.table)
library(reshape2)
library(dplyr)

## Read file and convert DataFrame into DataTable
fileToDataTable <- function(f) {
    df <- read.table(f)
    dt <- data.table(df)
}
## Download and extact data from given dataset
wd <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
if (!file.exists(f)) {
    download.file(url, file.path(wd, f), method = "curl")
    unzip(f)
}
data_path <- file.path(wd, "UCI HAR Dataset")

## Read Files
X_train <- fileToDataTable(file.path(data_path, "train", "X_train.txt"))
X_test <- fileToDataTable(file.path(data_path, "test", "X_test.txt"))
y_train <- fileToDataTable(file.path(data_path, "train", "y_train.txt"))
y_test <- fileToDataTable(file.path(data_path, "test", "y_test.txt"))
subject_train <- fileToDataTable(file.path(data_path, "train", "subject_train.txt"))
subject_test <- fileToDataTable(file.path(data_path, "test", "subject_test.txt"))
features <- fileToDataTable(file.path(data_path, "features.txt"))
activity_labels <- fileToDataTable(file.path(data_path, "activity_labels.txt"))


## Use descriptive activity names to name the activities in the data set
setnames(subject_train, "V1", "Subject")
setnames(subject_test, "V1", "Subject")
setnames(y_train, "V1", "Activity")
y_train$Activity <- factor(y_train$Activity, 
                           levels = activity_labels$V1,
                           labels = activity_labels$V2)
setnames(y_test, "V1", "Activity")
y_test$Activity <- factor(y_test$Activity, 
                          levels = activity_labels$V1,
                          labels = activity_labels$V2)

col_names <- gsub("-", "_", features$V2)
col_names <- gsub("[^a-zA-Z\\d_]", "", col_names)
setnames(X_train, make.unique(col_names))
setnames(X_test, make.unique(col_names))

## Merges the training and the test sets to create one data set.
merge_data <- rbind(
    cbind(X_train, y_train, subject_train),
    cbind(X_test, y_test, subject_test)
) %>%
    select(
        matches("mean|std"), 
        one_of("Subject", "Activity")
    )

## Creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.
tidy_data <- melt(
    merge_data, 
    id = c("Subject", "Activity"), 
    measure.vars = setdiff(colnames(merge_data), c("Subject", "Activity"))
) %>%
    dcast(Subject + Activity ~ variable, mean)

## Create tidy_data.txt file
write.table(tidy_data, file = "tidy_data.txt", sep = ",", row.names = FALSE)



