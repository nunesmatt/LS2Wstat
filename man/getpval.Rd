\name{getpval}
\alias{getpval}

\title{
Computes a p-value for the output of the test for stationarity.
}
\description{
Computes and returns a p-value from the output of the bootstrap test for stationarity. 
}
\usage{
getpval(statvec, verbose = TRUE)
}

\arguments{
  \item{statvec}{
A vector of test statistics, such as that given by \code{\link{TOS2D}}. The first value must be the value of the test statistic for the original image.
}
%  \item{alpha}{
%A size for the test.
%}
  \item{verbose}{
If TRUE then the p-value is printed and a sentance declaring "stationary" or "not stationary" is printed.
}
}

%\details{Based on \code{plotBS} from the package \code{costat}}

\value{
\item{p}{The p-value of the test.}
}

\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}

\author{
Sarah L. Taylor
}


\seealso{
\code{\link{TOS2D}}
}

\examples{
#Generate a stationary image

testimage <- matrix(rnorm(64*64), nrow=64, ncol=64)

# Run test of stationarity

\dontrun{TestofStat<-TOS2D(testimage)

# Obtain p-value

getpval(TestofStat$samples)
}

}

\keyword{statistic}

