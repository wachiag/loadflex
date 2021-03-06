% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadModelInterface.R
\docType{data}
\name{loadModelInterface}
\alias{loadModelInterface}
\title{Functions implemented by any \code{loadflex}-compatible load model.}
\format{A collection of functions which any load model for use with
  \code{loadflex} should implement.}
\description{
Solute load models in the \code{loadflex} package, such as \code{loadModel},
\code{loadReg2}, and \code{loadComp}, all implement a common set of core
functions. These functions are conceptually packaged as the
\code{loadModelInterface} defined here.
}
\section{Functions in the interface}{
 \itemize{ \item
  \code{\link{getMetadata}(load.model) \{ return(metadata) \}} \item
  \code{\link{getFittingData}(load.model) \{ return(data.frame) \}} \item
  \code{\link{getFittingFunction}(load.model) \{ return(function) \}} \item
  \code{\link{predictSolute}(load.model, flux.or.conc, newdata, interval,
  level, se.fit, se.pred, attach.units, ...) \{ return(numeric vector or
  data.frame) \}} }
}

\section{Defining new load models}{
 Users may define additional custom load
  models for use with \code{loadflex} as long as those models, too, implement
  the loadModelInterface. One easy way to implement the interface is to write
  the new load model class so that it inherits from the
  \code{\link{loadModel}} class.

  If a new load model class is defined, the user may confirm that the new
  class implements the loadModelInterface by running
  \code{\link{validLoadModelInterface}}.
}

