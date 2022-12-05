install.packages("tidyverse")
install.packages("dplyr")
install.packages("titanic")
library(tidyverse)
library(dplyr)
library(titanic)
head(titanic_train)
data("Titanic")
data("titanic_train")
# drop NA
titanic_train <- na.omit(titanic_train) 
nrow(titanic_train)
# transform Sex to binary factor
titanic_train$Sex <- factor(titanic_train$Sex, levels = c("male","female"), labels = c(0, 1))
table(titanic_train$Sex)
# transform dependent variable to factor
titanic_train$Survived <- factor(titanic_train$Survived)

glimpse(titanic_train)
table(titanic_train$Survived)

View(titanic_train)

# Split data
set.seed(136)
n <- nrow(titanic_train)
# train 70% test 30%
id <- sample(1:n, size = n*0.7)
train_data <- titanic_train[id,]
test_data <- titanic_train[-id,]

nrow(train_data)
nrow(test_data)
glimpse(train_data)
# train model
train_data$SibSp
model <- glm(Survived ~ Pclass + Sex + Age + SibSp, data = train_data, family = "binomial")
summary(model)
# PassengerId, Parch and Fare is not significant
P_train <- predict(model, type = "response")
plot(P_train)
train_data$pred <- if_else(P_train >= 0.5, 1, 0)
result_tr <- train_data$Survived == train_data$pred
round(mean(result_tr), 4)
# test model
P_test <- predict(model, newdata = test_data, type = "response")
test_data$pred <- if_else(P_test >= 0.5, 1, 0)
result_te <- test_data$Survived ==test_data$pred
round(mean(result_te), 4)
# acc
cat("Accuracy for Train_data",round(mean(result_tr), 4))
cat("Accuracy for Test_data",round(mean(result_te), 4))
conM_Tr <- table(train_data$pred, train_data$Survived, dnn = c("Prediction","Actual"))
conM_Te <- table(test_data$pred, test_data$Survived, dnn = c("Prediction","Actual"))

conM_Tr
conM_Te
# precision
Pre_tr <- conM_Tr[2,2]/(conM_Tr[2,2]+conM_Tr[2,1])
cat("PrecisionM_Tr", conM_Tr[2,2]/(conM_Tr[2,2]+conM_Tr[2,1]))
Pre_te <- conM_Te[2,2]/(conM_Te[2,2]+conM_Te[2,1])
cat("PrecisionM_Te", conM_Te[2,2]/(conM_Te[2,2]+conM_Te[2,1]))
# recall
Rec_tr <- conM_Tr[2,2]/(conM_Tr[2,2]+conM_Tr[1,2])
cat("RecallM_Tr", conM_Tr[2,2]/(conM_Tr[2,2]+conM_Tr[1,2]))
Rec_te <- conM_Te[2,2]/(conM_Te[2,2]+conM_Te[1,2])
cat("RecallM_Te", conM_Te[2,2]/(conM_Te[2,2]+conM_Te[1,2]))

# F-1
cat("F1_Tr", 2*Pre_tr*Rec_tr/(Pre_tr+Rec_tr))
cat("F1_Te", 2*Pre_te*Rec_te/(Pre_te+Rec_te))
