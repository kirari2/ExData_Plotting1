# Make plot 4

data$Voltage <- as.numeric(data$Voltage)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)

png("plot4.png"
    , width = 480
    , height = 480)

par(mfrow = c(2, 2))
# Plot (top left)
plot(data$DateTime, data$Global_active_power
     , type = "l"
     , xlab = ""
     , ylab = "Global Active Power")

# Plot (top right)
plot(data$DateTime, data$Voltage
     , type = "l"
     , xlab = "datatime"
     , ylab = "Voltage")

# Plot (bottom left)
plot(data$DateTime, data$Sub_metering_1
     , xlab = ""
     , ylab = "Energy sub metering"
     , type = "l")
lines(data$DateTime, data$Sub_metering_2
      , xlab = ""
      , ylab = ""
      , type = "l"
      , col = "red")
lines(data$DateTime, data$Sub_metering_3
      , xlab = ""
      , ylab = ""
      , type = "l"
      , col = "blue")
legend("topright"
       , lty = c(1, 1, 1)
       , col = c("black", "red", "blue")
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       , bty = "n")

# Plot (bottom right)
plot(data$DateTime, data$Global_reactive_power
     , type = "l"
     , xlab = "datetime"
     , ylab = "Global_reactive_power")

dev.off()
