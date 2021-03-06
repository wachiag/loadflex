% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadInterp.R
\name{summarizeModel.loadInterp}
\alias{summarizeModel.loadInterp}
\title{Extract model summary statistics from a loadInterp model}
\usage{
\method{summarizeModel}{loadInterp}(load.model,
  irregular.timesteps.ok = NA, ...)
}
\arguments{
\item{load.model}{A load model object, typically inheriting from loadModel
and always implementing the loadModelInterface.}

\item{irregular.timesteps.ok}{logical. If FALSE, this function requires that
the timesteps between observations are identical to one another, and a plot
is generated and an error is thrown if this requirement is not met. If
TRUE, the check is not performed. If NA (the default), the check is
performed but the function proceeds with a warning and no plot if the
timesteps are found to be irregular. Tests and estimates of autocorrelation
are weak to wrong when timesteps are irregular, but timesteps are often at
least a bit irregular in the real world.}

\item{...}{Other arguments passed to model-specific methods}
}
\value{
Returns a 1-row data frame with the following columns:
\itemize{
\item \code{site.id} - the unique identifier of the site, as in \code{\link[=metadata]{metadata()}}
\item \code{constituent} - the unique identifier of the constituent, as in
\code{\link[=metadata]{metadata()}}
\item \code{RMSE.lin}- the square root of the mean squared error
\item \code{durbin.watson} - the Durbin Watson test statistic as applied to the
observations used to fit the interpolation model
\item \code{rho}, \code{acf1}, \code{acf1demean}, \code{corlag} - measures of the autocorrelation
of the observations used to fit the model
}
}
\description{
Produce a 1-row data.frame of model metrics. The relevant metrics for
loadInterp models include RMSE, p-values, and others TBD.
}
\seealso{
Other summarizeModel: \code{\link{summarizeModel.loadComp}},
  \code{\link{summarizeModel.loadLm}},
  \code{\link{summarizeModel.loadModel}},
  \code{\link{summarizeModel.loadReg2}},
  \code{\link{summarizeModel}}
}
\concept{summarizeModel}
