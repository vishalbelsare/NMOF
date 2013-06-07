\name{MA}
\alias{MA}
\title{
Simple Moving Average
}
\description{
The function computes a moving average of a vector.
}
\usage{
MA(y, order, pad = NULL)
}
\arguments{
  \item{y}{
a numeric vector
}
  \item{order}{
an integer. The order of the moving average. The function is defined such 
that order one returns \code{y} (see Examples). 
}
  \item{pad}{
defaults to \code{NULL}. If not \code{NULL}, all elements of the returned 
moving average with position smaller than \code{order} are 
replaced by the value of \code{pad}. Sensible values may be \code{NA} 
or 0.} 
} 
\value{Returns a vector of length \code{length(y)}.} 
\references{

  
Gilli, M., Maringer, D. and Schumann, E. (2011) \emph{Numerical Methods and Optimization in Finance}. Elsevier. 
\url{http://www.elsevierdirect.com/product.jsp?isbn=9780123756626}
} 
\author{ Enrico Schumann } 
\examples{
MA(1:10, 3)
MA(1:10, 3, pad = NA)

y <- seq(1, 4, by = 0.3)
z <- MA(y, 1)
all(y == z)      ### (typically) FALSE
all.equal(y, z)  ### should be TRUE
}