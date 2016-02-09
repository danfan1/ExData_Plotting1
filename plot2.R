source("load_data.R")
png(filename = "plot2.png", width = 480, height = 480)
plot(hpc$DateTime, hpc$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (killowatts)")
dev.off()