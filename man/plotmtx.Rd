\name{plotmtx}
\alias{plotmtx}
\title{
Image manipulation
}
\description{
A function which rearranges image content for nice plotting.
}
\usage{
plotmtx(m)
}
\arguments{
  \item{m}{An image (matrix) for converting so that it can be plotted.}
}
\details{Due to the input and plotting output of the R base function \code{\link[graphics]{image}}, this function reorders the pixels within an image such that, when used, the \code{\link[graphics]{image}} function produces a plot of a image (matrix) "as is".}
\value{
 \item{m.out}{The manipulated image corresponding to the input image.} 
}
\author{
Matt Nunes
}

\seealso{
\code{\link[graphics]{image}}
}
\examples{

Im<-simTexture(n=256,type="NS4",K=1)[[1]]

image(plotmtx(Im))

}
\keyword{manip}
