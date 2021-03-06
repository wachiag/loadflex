% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarizeData.R
\name{summarizeTimeseries}
\alias{summarizeTimeseries}
\title{Get summary statistics for a single input data.frame}
\usage{
summarizeTimeseries(metadata, data)
}
\arguments{
\item{metadata}{object of class metadata, describing the site and data}

\item{data}{data.frame of input data, either for model fitting (concentration
and discharge) or prediction (discharge only)}
}
\value{
data frame of statistics about the input data
}
\description{
Get summary statistics for a single input data.frame
}
\keyword{internal}
