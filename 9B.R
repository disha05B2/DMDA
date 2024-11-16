#Creating input data
input<-mtcars[,c("mpg","wt","disp","hp")]
#Creating the relationship model
Model<-lm(mpg~wt+disp+hp,data=input)
#Showing the model
print(Model)
