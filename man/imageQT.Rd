\name{imageQT}
\alias{imageQT}
\title{
Performs an image quadtree decomposition.
}
\description{
The quadtree decomposition is achieved by recursively splitting subimages into regions of stationarity.
}
\usage{
imageQT(image, test = TOS2D, minsize = 64,alpha=0.05, ...)
}
\arguments{
  \item{image}{An image to be decomposed.}
  \item{test}{A function for assessing regions of spatial homogeneity, for example \cr \code{TOS2D}.}
  \item{minsize}{The smallest region to test for homogeneity.}
  \item{alpha}{The significance level for the homogeneity test \code{test}.}
  \item{\dots}{Any other (optional) arguments to \code{TOS2D}.}
}
\details{
This function works by assessing an image for homogeneity.  If it is not homogeneous, the image is split into its four subquadrants.  Each of these is then tested for homogeneity.  The heterogeneous subimages are then again subdivided and tested again.  This procedure is repeated until either all subimages are deemed stationary or the minimum testing size \code{minsize} is reached.
}
\value{
An object of class \code{imageQT} with the following components:

\item{data.name}{The image analysed.}
\item{indl}{The index representation of the nonstationary images in the quadtree decomposition.}  
\item{resl}{The results of the stationarity testing (from \code{binfun}) during the quadtree decomposition. The results giving 0 match those contained in the \code{indl} component and the results giving 1 match those contained in the \code{indS} component.}
\item{imsize}{The original image dimension.}
\item{imS}{The stationary subimages in the quadtree decomposition.}
\item{indS}{The index representation of the stationary images in the quadtree decomposition.}
\item{minsize}{The minimum testing region used during the quadtree decomposition.}
}
\references{
Sonka, M., Boyle, R., and Hlavic, V. (1999) Image processing, analysis and machine vision. 2nd Edition, PWS Publishing.\cr
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A Test of Stationarity for Textured Images. \emph{Technometrics}, \bold{56} (3), 291-301.
}
\author{
Sarah L. Taylor and Matt Nunes
}

\seealso{
\code{\link{plot.imageQT}}, \code{\link{TOS2D}}
}
\examples{
# generate an image:
X<-simTexture(128,K=1,imtype="NS2")[[1]]

\dontrun{XQT<-imageQT(X,binfun=TOS2D.bin)}

}
\keyword{manip}
