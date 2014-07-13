
## Reading data
struja <- read.table("household_power_consumption.txt", 
                     skip = 66637, nrow = 2880, sep = ";", 
                     col.names = colnames(read.table( "household_power_consumption.txt", 
                                                      nrow = 1, header = TRUE, sep=";")))

## Converting date and time
struja$dateTime <- as.POSIXct(paste(struja$Date, struja$Time), format="%d/%m/%Y %H:%M:%S")

## Using png device
png(file = "plot3.png", bg = "transparent")

## Creating a plot
with(struja, plot(dateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(struja, lines(dateTime, Sub_metering_2, col = "red"))
with(struja, lines(dateTime, Sub_metering_3, col = "blue"))

legend("topright", lty = c(1, 1, 1), lwd=c(2.5,2.5, 2.5),col = c("black", "blue", "red"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Closing png device
dev.off()

