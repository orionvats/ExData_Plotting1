# Set a separate directory 
> setwd("C:\\Users\\Hans Vats\\Desktop\\R Course")

# load data into that directory and subset the data for potting 
> datafile <- "household_power_consumption.txt"
> data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
> subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Change the format of data and time 
> datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep= " "), "%d/%m/%Y %H:%M:%S")

# Change the format to numeric of Global Active Power
> globalActivePower <- as.numeric(subsetdata$Global_active_power)

# Plot the graph in png format and close it 
> png("Plot2.png", width = 480, height = 480)
> plot(datetime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
> dev.off()
