load("~/Downloads/house_prices.rda")
library(lubridate)

house_prices%>%gather(key=measure, value=value, -c(house_price_index, date, state))->house_reshaped
scale_x_continuous(breaks = ymd(c("1980-01-01", "2000-01-01", "2020-01-01")), labels = c("80", "00", "20"))
