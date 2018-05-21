\name{countTextures}
\alias{countTextures}
\title{countTextures}
\description{
	Groups a list of (stationary) images into texture classes.
}
\usage{
	countTextures(Imgs, medpol = TRUE, ...)
}
\arguments{
  \item{Imgs}{A list of images to classify into textures.}
  \item{medpol}{A boolean value indicating whether to zero mean the images (with Tukey's median polish) prior to classification.}
  \item{\dots}{Any other optional arguments to the classification function \code{compareImages}.}
}
\details{The procedure recursively uses the function \code{compareImages} to decide whether two images are of the same texture or not.  More specifically, the first image is sequentially tested with all others in the list, assigning the images the label "1" if assessed as the same texture as the first image.  All other (unclassified) images are then similarly compared with candidates from different texture classes, until all images have been assigned a group label.  Testing recursively in this way, there are at most \code{choose(length(Imgs),2)} comparisons performed, but in reality the number could be a lot fewer.}
\value{
\item{Iclass}{A vector (of length \code{length(Imgs)}) of texture labels corresponding to each image in \code{Imgs}.}
}

\references{
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}

\author{
Sarah L. Taylor and Matt Nunes 
}

\seealso{
\code{\link{compareImages}}
}
\examples{

\dontrun{
 X1<-simTexture(128,K=1,imtype="S1")[[1]]
 X2<-simTexture(128,K=1,imtype="S1")[[1]]
 X3<-simTexture(128,K=1,imtype="S1",sd=1.6)[[1]]

 Xlist<-list(X1,X2,X3)

 Xlist.class<-countTextures(Xlist, bs=100)
}

}
\keyword{methods}
