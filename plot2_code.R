DateTime <- strptime(paste(household_power_0201to0202$Date, household_power_0201to0202$Time), "%d/%m/%Y %H:%M")
plot(DateTime,household_power_0201to0202$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l")
dev.copy(png, file = "Plot2.png")