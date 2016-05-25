
household_power_0201to0202<-read.csv(file='household_power_consumption.txt' ,sep=';',header=TRUE, stringsAsFactors = FALSE, na.strings= "?", strip.white=TRUE)
#reduce data by date requirements
household_power_0201to0202$Date<-as.Date(household_power_0201to0202$Date, format="%d/%m/%Y")

household_power_0201to0202<-subset(household_power_0201to0202,subset = (household_power_0201to0202$Date =='2007-02-01' | household_power_0201to0202$Date =='2007-02-02'))
#plot to png device
png("plot1.png", width = 480, height = 480)
hist(household_power_0201to0202$Global_active_power ,col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()
