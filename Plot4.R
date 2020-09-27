
## Plot 4

par(mfcol = c(2,2))
plot(datetime, globalActivePower, ylab = "Global Active Power (Kilowatts)", xlab = "", type = "l")
with(subsetdata, {
        plot(datetime, Sub_metering_1, type = "l", ylab =  "Energy sub metering (Kilowatts)", xlab = "")
        lines(datetime, Sub_metering_2, col ="red", type = "l")
        lines(datetime, Sub_metering_3, col = "blue", type = "l")
})
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5)
plot(datetime, Voltage, type = "l", ylab = "Voltage (Volt)", xlab = "")
plot(datetime, Global_reactive_power, type = "l", ylab = "Global Reactive Power (Kilowatts)", xlab = "")
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()