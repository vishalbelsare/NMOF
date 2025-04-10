\name{pm}
\alias{pm}
\title{
  Partial Moments
}
\description{
  Compute partial moments.
}
\usage{
  pm(x, xp = 2, threshold = 0, lower = TRUE,
     normalise = FALSE, na.rm = FALSE)
}
\arguments{
  \item{x}{
    a numeric vector or a matrix
  }
  \item{xp}{
    exponent
  }
  \item{threshold}{
    a numeric vector of length one
  }
  \item{lower}{
    logical
  }
  \item{normalise}{
    logical
  }
  \item{na.rm}{
    logical
  }
}
\details{

  For a vector \eqn{x}{x} of length \eqn{n}{n}, partial
  moments are computed as follows:

  \deqn{\mathrm{upper\ partial\ moment} = \frac{1}{n} \sum_{x >
      t}\left(x - t \right)^e}{%
    upper partial moment = sum_{x > t}(x - t)^e / n}

  \deqn{\mathrm{lower\ partial\ moment} = \frac{1}{n} \sum_{x <
      t}\left(t - x \right)^e}{%
    lower partial moment = sum_{x < t}(t - x)^e / n}

  The \code{threshold} is denoted \eqn{t}{t}, the exponent
  \code{xp} is labelled \eqn{e}{e}.

  If \code{normalise} is \code{TRUE}, the result is raised to
  \code{1/xp}.  If \code{x} is a matrix, the function will compute the
  partial moments column-wise.

  See Gilli, Maringer and Schumann (2019), chapter 14.
}
\value{
  numeric
}
\references{
  Gilli, M., Maringer, D. and Schumann, E. (2019)
  \emph{Numerical Methods and Optimization in Finance}.
  2nd edition. Elsevier. \doi{10.1016/C2017-0-01621-X}

  Schumann, E. (2023) Financial Optimisation with R (\pkg{NMOF} Manual).
  \url{https://enricoschumann.net/NMOF.htm#NMOFmanual}
}
\author{
  Enrico Schumann
}
\examples{
pm(x <- rnorm(100), 2)
var(x)/2

pm(x, 2, normalise = TRUE)
sqrt(var(x)/2)
}
