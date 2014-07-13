
## Reading data
struja <- read.table("household_power_consumption.txt", 
                     skip = 66637, nrow = 2880, sep = ";", 
                     col.names = colnames(read.table( "household_power_consumption.txt", 
                                                      nrow = 1, header = TRUE, sep=";")))
## Using png device
png(file = "plot1.png", bg = "transparent")

## Creating the histogram
hist(struja$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## Ckosing png device
dev.off()


