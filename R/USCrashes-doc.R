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
#' if (require(ggformula)) {
#'   gf_smooth(deaths ~ date, data = USCrashes, color = ~ wday, size = 0.5) %>%
#'     gf_refine(scale_color_brewer(type = "seq")) %>%
#'     gf_theme(theme_bw())
#'   gf_violinh(wday ~ deaths, data = USCrashes)
#' }

"USCrashes"
