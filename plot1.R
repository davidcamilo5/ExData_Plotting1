dir()

d <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(d)
st <- d[d$Date %in% c("1/2/2007","2/2/2007"),]
#convertimos todos los caracteres a numericos
global <- as.numeric(st$Global_active_power)
globalR <- as.numeric(st$Global_reactive_power)
v <- as.numeric(st$Voltage)
#convertimos todos lo caracteres de metering tambien a numericos
SUBB <- as.numeric(st$Sub_metering_1) && as.numeric(st$Sub_metering_2) && as.numeric(st$Sub_metering_3)
#hallamos un histograma 
hist(global, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
