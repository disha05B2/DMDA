input <- mtcars[,c("am","mpg","hp")]
print(head(input))
#Create Regression Model
result <- aov(mpg~hp*am,data = input)
print(summary(result))
#Create the regression models
result <- aov(mpg~hp+am,data = input)
print(summary(result))
#Create the regression models
result1 <- aov(mpg~hp*am,data = input)
result2 <- aov(mpg~hp+am,data = input)
#Compare the two models
print(anova(result1,result2))
boxplot(anova(result1,result2))