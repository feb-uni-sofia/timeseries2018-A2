## Load the libraries
library(xts)

## Lubridate provides the as.yearqrt function
## to convert dates to quarter of the year
library(lubridate)

## The values of the series
values <- c(10, 15, 17, 12, 13, 17, 20, 15, 15, 20, 21)

## The values are observed for each quarter from 2018 Q1 to 2020 Q4
## seq.dates creates a sequence of dates starting from
## the 1st of January 2018
## The length.out argument instructs it to create a sequence with
## length equal to the number of elements in "values"

dates <- seq.Date(
  as.Date('2018-01-01'), 
  length.out = length(values),
  by = 'quarter'
)
## Print the dates object and look at its content

## Now we create the time index for the series.
timeIndex <- as.yearqtr(dates)

## This creates the xts object
series <- xts(values, order.by = timeIndex)

## Examine the plot of the data
plot(series)


