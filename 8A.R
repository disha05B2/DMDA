#Create Vector
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
#Find Mean
result.mean<-mean(x)
print(result.mean)

#Create Vector
x<-c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
#Find Mean
result.mean<-mean(x)
print(result.mean)
#Find mean dropping NA values
result.mean<-mean(x,na.rm = TRUE)
print(result.mean)

#Applying Trim 
#Create Vector
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
#Find Mean
result.mean<-mean(x,trim=0.3)
print(result.mean)

#Median
x<-c(12,7,3,4.2,18,2,54,-21,8,-5)
result.median <- median(x)
print(result.median)

#Mode
#Create the function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
#Create the vector with numbers
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
#Calculate the mode using the user function
result<- getmode(v)
print(result)
#Create the vector with characters
charv <-c("o","it","the","it","it")
result <- getmode(charv)
print(result)
