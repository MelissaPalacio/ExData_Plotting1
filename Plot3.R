
## Plot 3

with(subsetdata, {
        plot(datetime, Sub_metering_1, type = "l", ylab =  "Energy sub metering (Kilowatts)", xlab = "")
        lines(datetime, Sub_metering_2, col ="red", type = "l")
        lines(datetime, Sub_metering_3, col = "blue", type = "l")
})
legend("topright", col = c("black", "red", "blue"), lwd=c(1,1,1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()