source("load_data.R")
png(filename = "plot1.png", width = 480, height = 480)
hist(hpc$Global_active_power,
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()