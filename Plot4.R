totData <- read.csv("~/Math 378/plotData/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

partData=totData[totData$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(partData$Date, partData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(date_time, as.numeric(partData$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.25)
plot(date_time, as.numeric(partData$Voltage), type="l", xlab="datetime", ylab="Voltage")
plot(date_time, as.numeric(partData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(date_time, as.numeric(partData$Sub_metering_2), type="l", col="red")
lines(date_time, as.numeric(partData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date_time, as.numeric(partData$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
