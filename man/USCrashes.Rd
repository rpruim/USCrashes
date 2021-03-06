% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/USCrashes-doc.R, R/USCrashes-package.r
\docType{data}
\name{USCrashes}
\alias{USCrashes}
\alias{USCrashes-package}
\title{US Automobile Crashes}
\format{An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) with 4018 rows and 7 columns.}
\usage{
USCrashes
}
\description{
US Automobile Crashes from FARS
(\url{https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars}).
}
\examples{
if (require(ggformula)) {
  gf_smooth(deaths ~ date, data = USCrashes, color = ~ wday, size = 0.5) \%>\%
    gf_refine(scale_color_brewer(type = "qual")) \%>\%
    gf_theme(theme_bw())
  gf_violinh(dayofweek ~ deaths, data = USCrashes)
}
}
\keyword{datasets}
