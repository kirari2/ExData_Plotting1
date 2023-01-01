# Plotting Assignment 1 for Exploratory Data Analysis

# 1. Download the data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "./data.zip", method = "curl")
unzip("./data.zip")
list.files()

# 2. Read the data
library(dplyr)
data <- read.table("./household_power_consumption.txt"
                   , sep = ";"
                   , header = TRUE)
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
data <- data %>% 
    filter(DateTime >= "2007-02-01 00:00:00",
           DateTime < "2007-02-03 00:00:00")

# 3. Make Plot 1
data$Global_active_power <- as.numeric(data$Global_active_power)
png("plot1.png"
    , width = 480
    , height = 480)
hist(data$Global_active_power
     , col = "red"
     , xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency"
     , main = "Global Active Power")
dev.off()
