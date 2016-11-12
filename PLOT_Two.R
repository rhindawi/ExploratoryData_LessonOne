## Welcome -- Some of the header codes will be the same across the plots.
## I changed the name of the file cause it caused on an error on my mac. No idea why.

power <- read.csv("household_power_consumption_NEWNAME.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## The file is massive BTW, so I had to change a few things to get it to show.

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("PLOT_two.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
