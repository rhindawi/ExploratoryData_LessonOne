## Welcome -- Some of the header codes will be the same across the plots.
## I changed the name of the file cause it caused on an error on my mac. No idea why.

power <- read.csv("household_power_consumption_NEWNAME.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
dataFile <- "./data/household_power_consumption_NEWNAME.txt"

## The file is massive BTW, so I had to change a few things to get it to show.

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("PLOT_one.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

# DONE! :-)
