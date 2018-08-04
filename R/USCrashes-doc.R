
#' US Automobile Crashes
#'
#' US Automobile Crashes from FARS
#' (<https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars>).
#'
#' @fromat Data on crashes with fatilities in the United States, including the following variables.
#' * `date` Date of crash.
#' * `wday` Day of week.
#' * `year` Year, extracted from date.
#' * `month` Month (numeric), extracted from date.
#' * `day` Day, extracted from date.
#' * `week` Week of year.
#' * `deaths` Number of deaths in crashes.
#'
#' @examples
#' library(ggformula)
#' gf_line(deaths ~ date, data = USCrashes, color = ~ dayofweek)
#' gf_violinh(dayofweek ~ deaths, data = USCrashes)

"USCrashes"
