\name{plot.imageQT}
\alias{plot.imageQT}
\title{
A plot function for quadtree decompositions.
}
\description{
A plot function for quadtree decompositions.
}
\usage{
\method{plot}{imageQT}(x, cires, unclassval = 0, class = FALSE, QT = TRUE, 
		return = FALSE, qtl = 1, ...)
}
\arguments{
  \item{x}{A quadtree decomposition object, such as output from \code{imageQT}.}
  \item{cires}{Results of \code{countTextures} for the classification of subimages produced by the quadtree decomposition.}
  \item{unclassval}{A value for unclassified values in a quadtree decomposition.}
  \item{class}{A boolean value indicating whether to plot the results from \code{countTextures}.}
  \item{QT}{A boolean value indicating whether to plot the quadtree decomposition.}
  \item{return}{A boolean value indicating whether to return the matrix associated to the plotted image.}
  \item{qtl}{Colour specification for the lines drawn in the image segmentation (for \code{QT=TRUE}).}
  \item{\dots}{Any other optional arguments to \code{\link[graphics]{image}}.}
}
\details{The function plots the chosen quadtree decomposition, and optionally the textured region classification output from \code{countTextures}.  If the classification output is plotted (\code{class=TRUE}), each textured region is uniquely coloured according to its texture group.}
\value{
\item{immat}{the matrix associated to the plotted image.}
}

\author{
Sarah L. Taylor and Matt Nunes
}

\seealso{
\code{\link{imageQT}}, \code{\link{countTextures}}
}
\examples{

\dontrun{

X<-simTexture(256,K=1,imtype="NS2")[[1]]

XQT<-imageQT(X, bs=100, smooth=FALSE)

XCI <- Tex(XQT$imS, bs=100, smooth=FALSE)

plot(XQT, XCI, QT=T, class=T)
}

}

\keyword{plot}
