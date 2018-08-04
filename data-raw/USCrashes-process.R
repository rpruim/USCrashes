library(dplyr)
USCrashes <-
  readr::read_csv("DEATHSBYDATE2.csv") %>%
  slice(-1) %>%
  select(- `Crash Date`, - MonthDay, -dayofweek) %>%
  rename(
    date = crashdate,
    deaths = TotalDeaths
    ) %>%
  mutate(
    date = lubridate::mdy(date),
    wday = lubridate::wday(date, label = TRUE, week_start = 1)
    ) %>%
  arrange(date)

use_data(USCrashes, overwrite = TRUE)
