source("loadData.R")

png("plot1.png", width=400, height=400)

hist(wanted_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")

dev.off()