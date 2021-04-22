library("data.table")
setwd("~/Desktop/Coursera/specdata")
#Reads in data from downloaded file
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)
png("plot4.png", height = 480, width = 480)
#set 2 rows 2 columns with par
par(mfrow = c(2, 2)) 
# Create first plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
# Create second plot
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
# Create third plot
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
#lines
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
#legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
# Create fourth plot
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2)
dev.off()