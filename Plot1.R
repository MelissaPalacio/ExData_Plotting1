
## Plot 1

hist(globalActivePower, col = "red",main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()