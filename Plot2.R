library("data.table")
setwd("~/Desktop/Coursera/specdata")
#Reads in data from downloaded file
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

#subsetdata
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", height = 480, width = 480)
#Create plot2
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()