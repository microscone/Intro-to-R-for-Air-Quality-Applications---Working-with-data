library(tidyverse)
library(ggplot2)
library(lubridate)

Monitoring_data <- read_csv("Homework_Hourly Monitoring Data for R_Simplified - time integer.csv", na = c("NoData", "<Samp", "Down", "NA"))
Monitoring_Ozone <- Monitoring_data %>% 
  select(c(1:7, 11, 13)) 
Monitoring_Ozone$Date <- mdy(Monitoring_Ozone$Date)
Monitoring_Ozone <- Monitoring_Ozone %>% 
  mutate("Timestamp" = ymd_hms(paste(Date, Time), truncated = 3))

