\name{NS}
\alias{NS}
\alias{NSS}
\title{
  Zero Rates for Nelson--Siegel--Svensson Model
}
\description{
  Compute zero yields for Nelson--Siegel (\acronym{NS})/Nelson--Siegel--Svensson (\acronym{NSS}) model.
}
\usage{
NS(param, tm)
NSS(param, tm)
}
\arguments{
  \item{param}{
    a vector. For \acronym{NS}: \eqn{\beta_1}{beta1}, \eqn{\beta_2}{beta2}, \eqn{\beta_3}{beta3}, \eqn{\lambda}{lambda}.
    For \acronym{NSS}: a vector: \eqn{\beta_1}{beta1}, \eqn{\beta_2}{beta2}, \eqn{\beta_3}{beta3},
    \eqn{\beta_4}{beta4}, \eqn{\lambda_1}{lambda1}, \eqn{\lambda_2}{lambda2}.
  }
  \item{tm}{
    a vector of maturities
  }
}
\details{
  See Chapter 14 in Gilli/Maringer/Schumann (2011).

  Maturities (\code{tm}) need to be given in time (not dates).
}
\value{
  The function returns a vector of length \code{length(tm)}.
}
\references{

  Gilli, M. and Grosse, S. and Schumann, E. (2010)
  Calibrating the Nelson-Siegel-Svensson model,
  \acronym{COMISEF} Working Paper Series No. 031.
  \url{https://enricoschumann.net/COMISEF/wps031.pdf}

  Gilli, M., Maringer, D. and Schumann, E. (2019)
  \emph{Numerical Methods and Optimization in Finance}.
  2nd edition. Elsevier. \doi{10.1016/C2017-0-01621-X}

  Gilli, M. and Schumann, E. (2010) A Note on
  \sQuote{Good} Starting Values in Numerical Optimisation,
  \acronym{COMISEF} Working Paper Series No. 044.
  \url{https://enricoschumann.net/COMISEF/wps044.pdf}

  Nelson, C.R. and Siegel, A.F. (1987) Parsimonious
  Modeling of Yield Curves. \emph{Journal of Business},
  \strong{60}(4), pp. 473--489.

  Schumann, E. (2023) Financial Optimisation with R (\pkg{NMOF} Manual).
  \url{https://enricoschumann.net/NMOF.htm#NMOFmanual}

  Svensson, L.E. (1994) Estimating and Interpreting
  Forward Interest Rates: Sweden 1992--1994.
  \acronym{IMF} Working Paper 94/114.
}
\author{
  Enrico Schumann
}
\seealso{
  \code{\link{NSf}}, \code{\link{NSSf}}
}
\examples{
tm <- c(c(1, 3, 6, 9) / 12, 1:10)  ## in years
param <- c(6, 3, 8, 1)
yM <- NS(param, tm)
plot(tm, yM, xlab = "maturity in years",
             ylab = "yield in percent")

param <- c(6, 3, 5, -5, 1, 3)
yM <- NSS(param, tm)
plot(tm, yM, xlab = "maturity in years",
             ylab = "yield in percent")
}
