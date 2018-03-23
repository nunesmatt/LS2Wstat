\name{cropimage}
\alias{cropimage}

\title{
Crops a rectangular image to a specified (square) dimension 
}
\description{
If the input image is not of dimension \eqn{2^n \times 2^n}, for some \emph{n}, then the image is cropped to an optionally specified size.}
\usage{
cropimage(image, newsize = NULL, pos = "e")
}

\arguments{
  \item{image}{The image you wish to crop.}
  \item{newsize}{An optional dimension (smaller than the original image dimension), to which the image should be cropped.}
  \item{pos}{The position of the subimage to take when cropping an image. See the documentation for \code{\link{mix2images}} for more details.
}
}
\details{
As we often wish to work with images whose dimensions are some power of 2, this function will determine whether the image is of an appropriate size and if not it will crop the image so that it is. The optional \code{pos} argument specifies the position of the cropped subimage to be returned; for example \code{pos="e"} specifies the central region.  See \code{\link{mix2images}} for more details on the positioning argument.
}
\value{
\item{subim}{A square image with dimension \eqn{2^n \times 2^n}, where \code{n} is either \code{newsize} or the largest feasible dyadic power smaller than the original image dimensions.} 
}

\author{
Matt Nunes
}
\seealso{
\code{\link{mix2images}}
}

\examples{
#
#Create an image with dimensions not a power of two
#
testimage <- matrix(rnorm(300^2),nrow=300,ncol=300)
#
#Crop the image
#
Newimage <- cropimage(testimage)
#
# Check new dimension size.
#
dim(Newimage)
#        
}

\keyword{manip}

