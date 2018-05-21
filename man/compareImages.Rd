\name{compareImages}
\alias{compareImages}
\title{Assesses whether two textured images are the same texture. }
\description{
The function combines two images together, and then tests the montage for stationarity.  }
\usage{
compareImages(Im1, Im2, testsize = min(nrow(Im1), nrow(Im2)), alpha=0.05,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Im1}{The first image to be compared.}
  \item{Im2}{The second image to be compared.}
  \item{testsize}{The size of the combined image montage to be tested for stationarity.}
  \item{alpha}{The significance of the stationarity test.}
  \item{\dots}{Any other optional arguments to \code{TOS2D}.}
}
\details{
An image \emph{montage} of two images is created, and the homogeneity measure \code{TOS2D} is used in combination with \code{getpval} to assess stationarity of the montage.  If the image is assessed as stationary, the two images are considered as the same texture. 
}
\value{
\item{montageres}{A boolean value indicating whether the montage of \code{Im1} and \code{Im2} is stationary.}
}
\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}
\author{
Sarah L. Taylor and Matt Nunes 
}

\seealso{
\code{\link{TOS2D}}, \code{\link{countTextures}}
}

\examples{

# create two images to be compared:
X1<-simTexture(32,K=1,imtype="S1")[[1]]
X2<-simTexture(32,K=1,imtype="S1", sd=1.6)[[1]]
                             
# use the test to compare them:

test<-compareImages(X1,X2,nsamples=100, smooth=FALSE)

}

\keyword{manip}
