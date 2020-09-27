
## Plot 2

plot(datetime, globalActivePower, ylab = "Global Active Power (Kilowatts)", xlab = "", type = "l")
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()