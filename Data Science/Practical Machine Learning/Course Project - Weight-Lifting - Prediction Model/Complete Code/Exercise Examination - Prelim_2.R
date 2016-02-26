# Weight Lifting Class Prediction Model
# Coursera - Practical Machine Learning
# Course Project - Preliminary Code for Building Models
# Mike Kuklinski


# import necessary packages
library(caret)
library(ggplot2)
library(randomForest)
library(gbm)


# Useful functions to save/load models

#   saveRDS(modelToSave, "mySavedModel001.rds")
#   myModelReloaded <- readRDS("mySavedModel001.rds")

##############################################################################
# Loading Data

# create folder to store and work with data
setwd('~/R Scripts/Coursera/Practical Machine Learning/Course Project')
if (!dir.exists('rawdata')){
    dir.create('rawdata')
    url <- 'https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv'
    download.file(url,destfile='./rawdata/TrainExer.csv')
    }

Tdata <- read.csv('./rawdata/TrainExer.csv')


##############################################################################
# Cleaning Data

# Check for non varying variables
zero_check <- nearZeroVar(Tdata, saveMetrics = TRUE)
head(subset(zero_check, nzv == T), 15)

# Identify columns containing summary statistics
kurt <- grep('^kurtosis',names(Tdata), value = F)
skew <- grep('^skewness',names(Tdata), value = F)
maxi <- grep('^max',names(Tdata), value = F)
mini <- grep('^min',names(Tdata), value = F)
amp <- grep('^amplitude',names(Tdata), value = F)
vari <- grep('^var',names(Tdata), value = F)
avg <- grep('^avg',names(Tdata), value = F)
std <- grep('^stddev',names(Tdata), value = F)
time <- c(1, 2, 3, 4, 5, 6, 7)
remove_index<-sort(c(time, kurt, skew, maxi, mini, amp, vari, avg, std))

# Remove columns from data and delete temp variables
subTdata <- Tdata[,-remove_index]
remove(time, kurt, skew, maxi, mini, amp, vari, avg, std)

# Check distribution between participants
g <- ggplot(data = subTdata, aes(x = user_name, y = total_accel_dumbbell, color = classe))
g <- g + geom_boxplot() + ggtitle('total_accel_dumbbell BoxPlot Reading for each participant and class ')
g


# Change all non-factor types to numeric
integers <- sapply(subTdata, is.integer)
tonum <- which(integers == T)

for(i in seq_along(tonum)){
    subTdata[,tonum[i]] <- as.numeric(subTdata[,tonum[i]])
}

##############################################################################
# PreProcessing

# Check correlation between variables
cor_subTdata <- abs(cor(subTdata[,-53]))
diag(cor_subTdata) <- 0
highcor <- which(cor_subTdata > .8, arr.ind = T)
num_high_cor <- nrow(highcor)

# Show plot example
g1 <- ggplot(data = subTdata, aes(x = magnet_arm_y, y = magnet_arm_z, col = classe))
g1 <- g1 + geom_point()
g1

# Preprocess variables
pp <- preProcess(subTdata[,-53], method = 'pca', thresh = 0.99)
pp_subTdata <- predict(pp, subTdata[,-53])
pp_subTdata <- cbind(pp_subTdata, classe = subTdata$classe)


#################################################################################
# Model Testing

# Subset Data for testing
set.seed(45)
subsub <- sample(1:nrow(pp_subTdata), 1000)
T1 <- pp_subTdata[subsub,]

# Preliminary Testing
Model_rpart <- train(classe ~ . , data = T1, method = 'rpart')
Model_rf <- train(classe ~ . , data = T1, method = 'rf')
Model_gbm <- train(classe ~ . , data = T1, method = 'gbm')

## Model Experimenting on Random Forest
set.seed(75)
Model_rf_cv <- train(classe ~ . , data = T1, method = 'rf', 
                     trControl = trainControl(method = 'cv'))

set.seed(75)
Model_rf_rcv <- train(classe ~ . , data = T1, method = 'rf', 
                      trControl = trainControl(method = 'repeatedcv', repeats = 3))

set.seed(75)
Model_rf_ntree1 <- train(classe ~ . , data = T1, method = 'rf', ntree = 1000)

set.seed(75)
Model_rf_ntree2 <- train(classe ~ . , data = T1, method = 'rf', ntree = 1500)

set.seed(75)
Model_rf_ntree3 <- train(classe ~ . , data = T1, method = 'rf', ntree = 3000)

set.seed(75)
Model_rf_cv_k1 <- train(classe ~ . , data = T1, method = 'rf', 
                       trControl = trainControl(method = 'cv', number = 15))

set.seed(75)
Model_rf_cv_k2 <- train(classe ~ . , data = T1, method = 'rf', 
                       trControl = trainControl(method = 'cv', number = 20))

# Save Models
saveRDS(Model_rpart, "./Models/Model_rpart.rds")
saveRDS(Model_rf, "./Models/Model_rf.rds")
saveRDS(Model_gbm, "./Models/Model_gbm.rds")

saveRDS(Model_rf_cv, "./Models/Model_rf_cv.rds")
saveRDS(Model_rf_rcv, "./Models/Model_rf_rcv.rds")
saveRDS(Model_rf_ntree1, "./Models/Model_rf_ntree1.rds")
saveRDS(Model_rf_ntree2, "./Models/Model_rf_ntree2.rds")
saveRDS(Model_rf_ntree3, "./Models/Model_rf_ntree3.rds")
saveRDS(Model_rf_cv_k1, "./Models/Model_rf_cv_k1.rds")
saveRDS(Model_rf_cv_k2, "./Models/Model_rf_cv_k2.rds")


# Final Model Build

modelTrain <- trainControl(method = 'cv', number = 4)
best_model <- train(classe ~ . , data = pp_subTdata, method = 'rf', ntree = 1000, trControl = modelTrain)


saveRDS(best_model, 'Models/bestmodel.rds')
best_model <- readRDS("./Models/bestmodel.rds")



##############################################################################
# Test Set Testing

# Download Test File
url <- 'https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv'
download.file(url,destfile='./rawdata/TestExer.csv')
Tstdata <- read.csv('./rawdata/TestExer.csv')

# Clean Test File
subTstdata <- Tstdata[,-remove_index]
integers <- sapply(subTstdata, is.integer)
tonum <- which(integers == T)

for(i in seq_along(tonum)){
    subTstdata[,tonum[i]] <- as.numeric(subTstdata[,tonum[i]])
}


# Preprocess Test File using PCA from Training Set
pp_subTstdata <- predict(pp, subTstdata[,-53])
pp_subTstdata <- cbind(pp_subTstdata, 
                       classe = subTstdata$problem_id)


# Run test file
test_pred <- predict(best_model, pp_subTstdata)


###############################################################################
# Submit predictions
dir.create('answers')

pml_write_files = function(x){
    n = length(x)
    for(i in 1:n){
        filename = paste0("./answers/problem_id_",i,".txt")
        write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
    }
}

pml_write_files(test_pred)
