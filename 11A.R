#Create a sequence of numbers between -10 and 10 incrementing by 0.1
x <- seq(-10,10, by=.1)
#Choose the mean as 2.5 and standard deviation as 0.5
y <- dnorm(x, mean = 2.5, sd=0.5)
#Give the chart file a name
png(file ="dnorm1.png")
plot(x,y)
#Save the file
dev.off()

#Create a sequence of numbers between -10 and 10 incrementing by 0.2
x <- seq(-10,10, by=.2)
#Choose the mean as 2.5 and standard deviation as 0.5
y <- pnorm(x, mean = 2.5, sd=2)
#Give the chart file a name
png(file ="pnorm1.png")
plot(x,y)
#Save the file
dev.off()

#Create a sequence of numbers between -10 and 10 incrementing by 0.02
x <- seq(0,1, by=0.02)
#Choose the mean as 2 and standard deviation as 1
y <- qnorm(x, mean = 2, sd=1)
#Give the chart file a name
png(file ="qnorm1.png")
plot(x,y)
#Save the file
dev.off()

#Create a samplw of 50 numbers which are normally distributed
y <- rnorm(50)
#Give the chart file a name
png(file="rnorm1.png")
#Plot the histogram for this sample
hist(y, main="Normal Distribution")
#Save the file
dev.off()