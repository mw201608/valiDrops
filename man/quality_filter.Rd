% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quality_filter.R
\name{quality_filter}
\alias{quality_filter}
\title{quality_filter}
\usage{
quality_filter(
  metrics,
  mito = TRUE,
  distance = TRUE,
  coding = TRUE,
  contrast = FALSE,
  mito.nreps = 10,
  mito.max = 0.3,
  npsi = 3,
  dist.threshold = 5,
  coding.threshold = 3,
  contrast.threshold = 3,
  plot = TRUE,
  qcMitoPlot = NULL,
  qcUMIFeaturePlot = NULL,
  qcCodingFracPlot = NULL,
  qcContrastFracPlot = NULL
)
}
\arguments{
\item{metrics}{A data frame containing quality metrics. See \link{quality_metrics}}

\item{mito}{A boolean (TRUE or FALSE) indicating whether or not to filter using a threshold on the fraction of UMIs derived from mitochondrial genes [default = TRUE].}

\item{distance}{A boolean (TRUE or FALSE) indicating whether or not to filter using a threshold on the residuals from robust regression between number of features and number of UMIs [default = TRUE].}

\item{coding}{A boolean (TRUE or FALSE) indicating whether or not to filter using a threshold on the fraction of UMIs derived from protein-coding genes [default = TRUE].}

\item{contrast}{A boolean (TRUE or FALSE) indicating whether or not to filter using a threshold on the contrast fraction [default = FALSE]. See \link{quality_metrics}}

\item{mito.nreps}{A numeric indicating the number of times to repeat threshold identification for mitochondrial filtering [default = 10].}

\item{mito.max}{The maximum allowable mitochondrial threshold to detect before falling back to an alternative strategy [default = 0.3].}

\item{npsi}{An integer indicating the number of breakpoints for feature to UMI fitting [default = 3].}

\item{coding.threshold}{The maximum number of standard deviations around the mean that passes the QC [default = 5].}

\item{contrast.threshold}{The maximum number of standard deviations around the mean that passes the QC [default = 5].}

\item{plot}{A boolean (TRUE or FALSE) indicating whether or not to produce plots [default = TRUE].}

\item{qcMitoPlot}{A string specifying file name of a PNG output.}

\item{qcUMIFeaturePlot}{A string specifying file name of a PNG output.}

\item{qcCodingFracPlot}{A string specifying file name of a PNG output.}

\item{qcContrastFracPlot}{A string specifying file name of a PNG output.}

\item{dist.thres}{The maximum number of standard deviations below the mean that passes the QC [default = 5].}
}
\value{
A list of vectors containing the mitochondrial threshold, number of barcodes filtered at each step and the final barcodes that pass QC filtering.
}
\description{
Function to filter barcodes based on quality metrics
}
