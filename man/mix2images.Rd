\name{mix2images}
\alias{mix2images}

\title{
Insert one image into another.
}
\description{
Image A is re-sized to a specified proportion of Image B, then inserted into Image B at a given position. 
}
\usage{
mix2images(imageA, imageB, prop = 0.25, pos = "e")
}

\arguments{
  \item{imageA}{
The first image which is resized and placed inside the second image.
}
  \item{imageB}{
The second image, into which the first is placed.
}
  \item{prop}{
The proportion of Image B to be taken up by Image A.
}
  \item{pos}{
The exact position of image A in image B. Possible options are "a", "b", "c", "d", "e" which corresponds to (a) top-right, (b) bottom-right, (c) top-left, (d) bottom-left and (e) centred. A more exact location may be specified by inputting \code{pos=c(x,y)}, which represents the position in pixels from the top-left of the image (i.e. \code{c(x,y)} puts Image A \code{x} pixels down and \code{y} pixels across from the top-left corner of Image B.) 
}
}

\details{
This function first of all crops Image A to be a given proportion of Image B and then inserts it into image B at the specified location. If image B is too small for the size of image A required then the whole of image A is placed in image B. Both must be dyadic in length and square images.
}
\value{
\item{ImageB}{A matrix with the specified values selected exchanged to those of Image A.} 
}
\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}
\author{
Sarah L. Taylor
}


\examples{

# Generate 2 images.
#
ImageA <- matrix(rnorm(256^2), nrow=256, ncol=256)
ImageB <- matrix(rnorm(256^2, sd=2.8), nrow=256, ncol=256)
#
# Insert Image A into Image B at a proportion of 0.25
#
MixImaImb <- mix2images(ImageA, ImageB, prop=0.25, pos="e")
#
}

\keyword{manip}






