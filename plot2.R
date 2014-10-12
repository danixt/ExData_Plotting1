data <- read.csv("household_power_consumption.txt", sep = ";")

data$Date2 <- as.Date( as.character(data$Date), "%d/%m/%Y")
data$Date3 <- as.Date( as.character(data$Date), "%a")

data_subset <- subset(data, (Date2 >= as.Date("2007-02-01") & Date2 < as.Date("2007-02-03")))

niveles <- levels(data_subset$Global_active_power)
niveles <- niveles[2:length(niveles)]
plot(as.numeric(niveles)[data_subset$Global_active_power], type = "l",ylab = "Global Active Power (kilowatts)")
