\name{avespecvar}
\alias{avespecvar}

\title{
A test statistic for spatial stationarity.
}
\description{
Calculates a test statistic for a test of stationarity based on the local wavelet spectrum.
}
\usage{
avespecvar(spectrum)
}

\arguments{
  \item{spectrum}{
A local wavelet spectrum estimate, i.e. a \code{cddews} object.
}
}

\details{
The test statistic given by Taylor et al. (2014) for a test for stationarity is computed for use in the boostrap testing procedure (\code{\link{TOS2D}}). 
}
\value{
\item{statistic}{The value of the test statistic for the given spectrum.}
}
\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A test of stationarity for textured images. Technometrics (to appear).
}
\author{
Sarah L. Taylor                         
}

\seealso{
\code{\link{TOS2D}}
}
\examples{
#Generate a cddews object
#
X <- Haar2MA.diag(64)

testspec<-cddews(X,smooth=FALSE)

#Find the value of the test statistic
#
avespecvar(testspec)
#
}

\keyword{nonparametric}
