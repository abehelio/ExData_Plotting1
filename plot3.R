source("loadData.R")

png("plot3.png", width=400, height=400)

plot(wanted_data$Time, wanted_data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(wanted_data$Time, wanted_data$Sub_metering_2, col="red")
lines(wanted_data$Time, wanted_data$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

dev.off()