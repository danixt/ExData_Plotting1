

data$Date2 <- as.Date( as.character(data$Date), "%d/%m/%Y")
data$Date3 <- as.Date( as.character(data$Date), "%a")

data_subset <- subset(data, (Date2 >= as.Date("2007-02-01") & Date2 < as.Date("2007-02-03")))

niveles <- levels(data_subset$Sub_metering_1)
niveles <- niveles[2:length(niveles)]
plot(as.numeric(niveles)[data_subset$Sub_metering_1], type = "l",ylab = "Global Active Power (kilowatts)")
points(data_subset$Sub_metering_3, type = "l", col = "blue")
niveles <- levels(data_subset$Sub_metering_2)
niveles <- niveles[2:length(niveles)]
points(as.numeric(niveles)[data_subset$Sub_metering_2]/10, type = "l", col = "red")
legend("topright", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
