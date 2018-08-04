library(dplyr)
USCrashes <-
  readr::read_csv("DEATHSBYDATE2.csv") %>%
  select(- `Crash Date`, - MonthDay) %>%
  rename(
    date = crashdate,
    deaths = TotalDeaths
    ) %>%
  mutate(
    date = lubridate::mdy(date),
    wday = lubridate::wday(date, label = TRUE)
    ) %>%
  arrange(date)

use_data(USCrashes, overwrite = TRUE)
