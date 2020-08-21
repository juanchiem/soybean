library(repmis)
library(quantreg)
library(dplyr)
library(lubridate)
library(stringr)
library(ggplot2)
library(devtools)
library(splines)


# Source ggplot Theme see
# see https://gist.github.com/TonyLadson/cc60bbb3cbadf0e72619
devtools::source_gist('cc60bbb3cbadf0e72619')

# Load sample data
my.url <- 'https://dl.dropboxusercontent.com/u/10963448/QuantileEg.csv'
wq <- dplyr::tbl_df(repmis::source_data(my.url))


# parse and sort
wq <- wq %>%
  mutate(date.time = lubridate::parse_date_time(stringr::str_c(Date,Time), orders = 'dmy HM')) %>% # set up dates
  arrange(date.time) # sort by date


# Check for missing values
colSums(is.na(wq))

# Date Time Total.N date.time 
# 0 0 6 0 

# remove them
wq <- wq[complete.cases(wq), ]


# create 75th and 25th quantile models
fit.75 <- quantreg::rq(Total.N ~ splines::bs(date.time, df=15), tau=0.75, data=wq)
fit.50 <- quantreg::rq(Total.N ~ splines::bs(date.time, df=15), tau=0.50, data=wq)
fit.25 <- quantreg::rq(Total.N ~ splines::bs(date.time, df=15), tau=0.25, data=wq)

# Add quantiles to data frame

wq <- wq %>%
  mutate(pc.75 = predict(fit.75)) %>%
  mutate(pc.50 = predict(fit.50)) %>%
  mutate(pc.25 = predict(fit.25)) 

# plot
wq %>%
  ggplot(aes(x = date.time)) + 
  geom_point(aes(y = Total.N)) + 
  geom_line(aes(y = pc.75, colour = '75th percentile')) + 
  geom_line(aes(y = pc.50, colour = 'Median')) + 
  geom_line(aes(y = pc.25, colour = '25th percentile')) + 
  scale_color_manual('', values = c('75th percentile' = 'red', '25th percentile' = 'green', 'Median' = 'blue'), 
                     breaks = c('75th percentile', 'Median', '25th percentile')) +
  BwTheme +
  xlab('Date') +
  ylab('Total Nitrogen mg/L')
