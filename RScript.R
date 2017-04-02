library(Amelia)
library(dplyr)

trainingData <- read.csv("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv")
testingData <- read.csv("https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv")

##Finds and Removes the variables with too many missing values (more than 50% missing values)
variablesToRemove <- sapply(trainingData, function(x)sum(is.na(x))>(length(x)*0.5))
trainingDataWithoutMissingValues <- trainingData[!variablesToRemove]

missmap(trainingDataWithoutMissingValues)
