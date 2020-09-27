## Reading data

data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
str(data)
names(data)

## Subsetting data

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Creating variables 

datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subsetdata$Global_active_power)
Global_reactive_power <- as.numeric(subsetdata$Global_reactive_power)
Voltage <- as.numeric(subsetdata$Voltage)








     