source("loadData.R")

png("plot2.png", width=400, height=400)

plot(wanted_data$Time, wanted_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()