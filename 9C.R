claimants<-read.csv("C:/Users/student/Downloads/claimants.csv")
#Finding null values
sum(is.na(claimants))
#Removing null values- na.omit(dataset)
claimants<-na.omit(claimants)
#Logistic Regression
#glm(y~x,family="bin...)
logit<-glm(ATTORNEY~factor(CLMSEX)+factor(CLMINSUR)+factor(SEATBELT)+CLMAGE+LOSS,family="binomial",data=claimants)
summary(logit)

#confusion Matrix Table
#predict(modelobject,testdataset)
prob=predict(logit,type=c("response"),claimants)
prob

#table(dataframe1,dataframe2)... to create 2x2 matrix
confusion<-table(prob>0.5,claimants$ATTORNEY)
confusion

#Model Accuracy
#adding diagonal elements in the confusion matrix
Accuracy<-sum(diag(confusion))/sum(confusion)
Accuracy

##ROC Curve
#Extract from the fitted model object the vector of fitted prob
install.packages("ROCR")
install.packages("pROC")
library(ROCR)
library(pROC)
#prdiction(probabilty values from model,y variable)
rocrpred<-prediction(prob,claimants$ATTORNEY)
rocrperf<-performance(rocrpred,'tpr','fpr')
plot(rocrperf,colorize=T,text.adj=c(-0.2,1.7))
#plot(rocrperf)
auc<-auc(claimants$ATTORNEY ~ prob)
auc
