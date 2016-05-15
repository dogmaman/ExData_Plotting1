DateTime <- strptime(paste(household_power_0201to0202$Date, household_power_0201to0202$Time), "%d/%m/%Y %H:%M")
globalActivePower <- as.numeric(household_power_0201to0202$Global_active_power)
subMetering_1 <- as.numeric(household_power_0201to0202$Sub_metering_1)
subMetering_2 <- as.numeric(household_power_0201to0202$Sub_metering_2)
subMetering_3 <- as.numeric(household_power_0201to0202$Sub_metering_3)

par(mfrow = c(2,2))

plot(DateTime,household_power_0201to0202$Global_active_power, ylab = "Global Active Power", type = "l")
plot(DateTime,household_power_0201to0202$Voltage, ylab = "Voltage", type = "l")
plot(DateTime,subMetering_1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, subMetering_2, type="l", col="red")
lines(DateTime, subMetering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(DateTime,household_power_0201to0202$Global_reactive_power, ylab = "Global_Reactive_Power", type = "l")
dev.copy(png,file = "Plot4.png")


