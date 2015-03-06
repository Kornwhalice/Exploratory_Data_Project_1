
totData <- read.csv("~/Math 378/plotData/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

partData=totData[totData$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(partData$Date, partData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png",width=480,height=480)
plot(datetime, partData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

