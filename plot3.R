library("data.table")
setwd("~/Desktop/Coursera/specdata")
#Reads in data from downloaded file
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)
png("plot3.png", height = 480, width = 480)
#Create plot3
plot(datetime, subMetering1, type="l", ylab="Energy sub metering", xlab="")
#lines 
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
#legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()