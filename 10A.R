#Getting the data points in form of a R Vector
snowfall <- c(790,1170.8,860.1,1330.6,630.4,911.5,
              683.5,996.6,783.2,982,881.8,1021)
#Converting it into a time series object
snowfall_timeseries <- ts(snowfall,start=c(2013,1),frequency = 12)
#Printing the timeseries data
print(snowfall_timeseries)
#Giving a name to the chart file
png(file = "snowfall.png")
#Plotting a graph of the time series
plot(snowfall_timeseries)
#Saving a file
dev.off()
model <- lm(snowfall_timeseries ~ time(snowfall_timeseries))
png(file = "snowfall_with_trend1.png")
#Plotting a graph of the time series
plot(snowfall_timeseries,main="Snowfall Over Time with Trend Line:",
     xlab="Time",ylab="Snowfall",col="blue")
#adding regression
abline(model,col="red")
#Saving the file
dev.off()