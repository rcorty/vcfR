% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{masplit}
\alias{masplit}
\title{masplit}
\usage{
masplit(myMat, delim = ",", count = 0L, record = 1L, sort = 1L,
  decreasing = 1L)
}
\arguments{
\item{myMat}{a matrix of delimited strings (e.g., "7,2").}

\item{delim}{character that delimits values.}

\item{count}{return the count of delimited records.}

\item{record}{which (1-based) record to return.}

\item{sort}{should the records be sorted prior to selecting the element?}

\item{decreasing}{should the values be sorted decreasing (1) or increasing (0)?}
}
\value{
A numeric matrix of numerics
}
\description{
Split a matrix of delimited strings.
}
\details{
Split a matrix of delimited strings.
}
\examples{
set.seed(999)
x1 <- round(rnorm(n=9, mean=10, sd=2))
x2 <- round(rnorm(n=9, mean=20, sd=2))
ad <- matrix(paste(x1, x2, sep=","), nrow=3, ncol=3)
colnames(ad) <- paste('Sample', 1:3, sep="_")
rownames(ad) <- paste('Variant', 1:3, sep="_")
ad[1,1] <- "9,23,12"
is.na(ad[3,1]) <- TRUE

ad
masplit(ad, count = 1)
masplit(ad, sort = 0)
masplit(ad, sort = 0, record = 2)
masplit(ad, sort = 0, record = 3)
masplit(ad, sort = 1, decreasing = 0)


}
