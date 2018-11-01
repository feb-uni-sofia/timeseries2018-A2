library(xts)
library(lubridate)
?lubridate

start(AirPassengers)
end(AirPassengers)

dates <- seq.Date(as.Date('1949-01-01'), as.Date('1960-12-01'), by = 'month')
timeIndex <- as.yearmon(dates)

AP <- xts(coredata(AirPassengers), order.by = timeIndex)

summary(AP)

plot(AP, ylab = 'Passengers (1000\'s)')

boxplot(coredata(AP) ~ cycle(AP))
trend <- decompose(as.ts(AP))$trend
trendXts <- xts(trend, order.by = index(AP))
trend
plot(AP, ylab = 'Passengers (1000\'s)')
lines(trendXts, lty = 2)
plot(trend, lty = 2)



series <- c(10, 15, 17, 12, 13, 17, 20, 15, 15, 20, 21, 17)
timeIndexSeries <- seq.Date(as.Date('2018-01-01'), length.out = length(series), by = 'quarter')
timeIndexSeries
as.yearqtr(timeIndexSeries)
s <- xts(series, order.by = as.yearqtr(timeIndexSeries))
str(s)




trend <- decompose(as.ts(s))$trend
frequency(s)

(0.5 * 15 + 17 + 12 + 13 + 17 * 0.5) / 4
?xts

12 - 13.875

plot(AP)
plot(trend, lty = 4)

