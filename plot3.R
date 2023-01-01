# Make plot 3

data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

png("plot3.png"
    , width = 480
    , height = 480)
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
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()