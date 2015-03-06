# Exploratory_Data_Project_1
#Plot 1
totData <- read.csv("~/Math 378/plotData/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

partData=totData[totData$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot1.png",width=480,height=480)
hist(as.numeric(partData$Global_active_power), ylim=c(0,1200),col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
