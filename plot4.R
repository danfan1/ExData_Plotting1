source("load_data.R")
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(hpc$DateTime, hpc$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")
plot(hpc$DateTime, hpc$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")
plot(hpc$DateTime, hpc$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
points(hpc$DateTime, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$DateTime, hpc$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       col = c("black", "red", "blue"),
       lty = "solid",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(hpc$DateTime, hpc$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")
dev.off()