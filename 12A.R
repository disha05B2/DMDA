#Loading the Mass Library
library("MASS")
print(head(Cars93))
print(str(Cars93))

#Creating a data frame from the main data set
car_data <- data.frame(Cars93$AirBags, Cars93$Type)
#Creating a table with the needef variables
car_data = table(Cars93$AirBags, Cars93$Type)
print(car_data)
#Performing the Chi_square test
print(chisq.test(car_data))