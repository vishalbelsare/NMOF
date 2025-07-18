\name{Ritter}
\alias{Ritter}
\title{
  Download Jay Ritter's IPO Data
}
\description{

  Download IPO data provided by Jay Ritter
  and transform them into a data frame.

}
\usage{
Ritter(dest.dir,
       url = "https://site.warrington.ufl.edu/ritter/files/IPO-age.xlsx",
       \dots)
}
\arguments{
  \item{dest.dir}{
    character: a path to a directory
}
  \item{url}{
    the data URL
  }
  \item{\dots}{
    named arguments to be passed to
    \code{\link{download.file}}
  }
}
\details{

  The function downloads \acronym{IPO} data provided by Jay
  R. Ritter \url{https://site.warrington.ufl.edu/ritter/}.
  Since the data are provided in Excel format, package
  \pkg{openxlsx} is required.

  The downloaded Excel gets a date prefix (today in
  format \code{YYYYMMDD}) and is stored in directory
  \code{dest.dir}. Before any download is attempted,
  the function checks whether a file with today's
  prefix exist in \code{dest.dir}; if yes, this file is
  used.

}
\value{
  a \code{\link{data.frame}}
}
\references{

  \url{https://site.warrington.ufl.edu/ritter/ipo-data/}

  Gilli, M., Maringer, D. and Schumann, E. (2019)
  \emph{Numerical Methods and Optimization in Finance}.
  2nd edition. Elsevier. \doi{10.1016/C2017-0-01621-X}

  Schumann, E. (2023) Financial Optimisation with R (\pkg{NMOF} Manual).
  \url{https://enricoschumann.net/NMOF.htm#NMOFmanual}

}
\author{
  Enrico Schumann
}
\seealso{
  \code{\link{French}}, \code{\link{Shiller}}
}
\examples{
\dontrun{
archive.dir <- "~/Downloads/Ritter"
if (!dir.exists(archive.dir))
    dir.create(archive.dir)
Ritter(archive.dir)
}
}
