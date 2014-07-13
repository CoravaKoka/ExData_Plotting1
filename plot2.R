
## Reading data
struja <- read.table("household_power_consumption.txt", 
                     skip = 66637, nrow = 2880, sep = ";", 
                     col.names = colnames(read.table( "household_power_consumption.txt", 
                                                      nrow = 1, header = TRUE, sep=";")))

## Converting date and time
struja$dateTime <- as.POSIXct(paste(struja$Date, struja$Time), format="%d/%m/%Y %H:%M:%S") 

## Using png device
png(file = "plot2.png", bg = "transparent")

## Creating a plot
plot(struja$dateTime, struja$Global_active_power, 
     type ="l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

## Closing png device
dev.off()

