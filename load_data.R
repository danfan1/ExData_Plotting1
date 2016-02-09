# Download data
if (!file.exists("data")) {
  dir.create("data")
}
dataFile <- "./data/household_power_consumption.txt"
if (!file.exists(dataFile)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  destFile <- "./data/household_power_consumption.zip"
  download.file(fileUrl, destfile = destFile, method = "curl")
  dateDownloaded <- date()
  unzip(destFile, exdir = "data")
}

# Read data
if (!exists("rawData")) {
  first5rows <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?", nrows = 5)
  classes <- sapply(first5rows, class)
  rawData <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?", colClasses = classes)
}

# Filter and parse date and time data
if (!exists("hpc")) {
  hpc <- subset(rawData, Date == "1/2/2007" | Date == "2/2/2007")
  hpc$DateTime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
  hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
  hpc$Time <- strptime(hpc$Time, "%H:%M:%S")
}
