png("plot4.png", width=400, height=400)

par(mfrow=c(2,2))
# graphic 1
plot(wanted_data$Time, wanted_data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

# graphic 2
plot(wanted_data$Time, wanted_data$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

# graphic 3
plot(wanted_data$Time, wanted_data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(wanted_data$Time, wanted_data$Sub_metering_2, col="red")
lines(wanted_data$Time, wanted_data$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)

# graphic 4
plot(wanted_data$Time, wanted_data$Global_reactive_power, type="n",
     xlab="datetime", ylab="Global_reactive_power")
lines(wanted_data$Time, wanted_data$Global_reactive_power)

dev.off()
