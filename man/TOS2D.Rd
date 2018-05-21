\name{TOS2D}
\alias{TOS2D}

\title{
Perform bootstrap stationarity test for images.
}
\description{
For a given image this function performs bootstrapping to test the hypothesis that the image is stationary. 
}
\usage{
TOS2D(image, detrend = FALSE, nsamples = 100, theTS = avespecvar, verbose = TRUE,...)
}

\arguments{
\item{image}{
The image you want to analyse.
}
  \item{detrend}{
This specifies whether to use Tukey's median polish to remove the image trend.
}
  \item{nsamples}{
Number of bootstrap simulations to carry out.
}
\item{theTS}{
Specifies the particular test statistic to be used.  This function should measure the departure from constancy of the wavelet spectrum.
}
\item{verbose}{
If TRUE informative messages are printed.
}
\item{...}{Any other arguments supplied to the LS2W function \code{cddews}.}
}

\details{
This function first of all crops the image (if necessary) to have dyadic dimensions. The test statistic (\code{theTS}), which should be based upon the local wavelet spectrum, is calculated for this original image and the local wavelet spectrum under the null hypothesis is calculated, so as to be able to simulate realisations under the null hypothesis. \code{nsamples} images are simulated and test statistic is found for each. The function returns all the test statistic values which may be passed to \code{\link{getpval}} in order to find a p-value for the test. For full details on this testing procedure see Taylor et al. (2014).
}

\value{
A list with the following components:

\item{data.name}{The name of the image analysed.}
\item{samples}{A vector of length \code{nsamples+1}. The first entry is the value of the test statistic computed on the original image while the remaining entries are test statistic values for the simulated images.}
\item{statistic}{The name of the test statistic used.}
\item{p.value}{The bootstrap p-value for the test.}
}
\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}
\author{
Sarah L. Taylor
}

\seealso{
\code{\link{avespecvar}}, \code{\link{getpval}}
}
\examples{
# Generate a stationary image
# 
testimage <- matrix(rnorm(64*64), nrow=64, ncol=64)
#
#Run test of stationarity

\dontrun{TestofStat<-TOS2D(testimage)}

}
  
\keyword{statistic}
