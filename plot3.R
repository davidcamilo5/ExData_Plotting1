d <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(d)
st <- d[d$Date %in% c("1/2/2007","2/2/2007"),]

global <- as.numeric(st$Global_active_power)
globalR <- as.numeric(st$Global_reactive_power)
v <- as.numeric(st$Voltage)

SUBB <- as.numeric(st$Sub_metering_1) && as.numeric(st$Sub_metering_2) && as.numeric(st$Sub_metering_3) 
dt <- strptime(paste(st$Date, st$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


plot(dt,as.numeric(st$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(dt, as.numeric(st$Sub_metering_2), type="l", col="red")
lines(dt, as.numeric(st$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
