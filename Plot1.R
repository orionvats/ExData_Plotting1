> datafile <- "C:\\Users\\admin\\Documents\\household_power_consumption.txt"
> data <- read.table(datafile, header = TRUE,sep = ";")

#SubsetData and Plot 
> subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
> global_active_power <- as.numeric(subsetdata$Global_active_power)
> png("plot1.png", width = 480, height = 480)
> hist(global_active_power, col = "red", main = "Global Active Power", xlab= "Global Active Power (Kilowatts)")
> dev.off()
