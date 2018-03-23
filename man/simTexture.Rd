\name{simTexture}
\alias{simTexture}
\title{
simTextureulation function for LS2W processes.
}
\description{This function will generate images of a specified type 
}
\usage{
simTexture(n = 256, sd = 1, K = 150, imtype = "S1", ...)
}
\arguments{
  \item{n}{
The dimension of the image to be generated.
}
  \item{sd}{
The standard deviation of the increments of the LS2W process to be generated.
}
  \item{K}{
The number of images to generate.
}
  \item{imtype}{
The type of image(s) to create.  Must be one of "S1","S2","S3","S4","S5", "NS1","NS2",
"NS3", "NS4","NS5","NS6", "NS7".  See details for descriptions of the processes.
}
  \item{\dots}{
Any other optional arguments needed for the image generation (see details).
}
}
\details{
Several different processes can be generated with the \code{simTexture} function.   The stationary processes are: a random normal process of specified standard deviation, \code{sd} (\code{S1}); a spatial moving average process with parameter \code{rho} (\code{S2}); an isotropic random field with a Matern covariance with shape parameter \code{nu} (\code{S3}); a Gaussian random field with exponential covariance, range parameter 2 (\code{S4}), and a \emph{diagonal Haar moving average} process of a specified order \code{order} and standard deviation \code{sd} (\code{S5}) (see the \code{\link[LS2W]{Haar2MA.diag}} function in the \code{LS2W} package for more details).\cr  
The nonstationary processes are: a random field with unit standard deviation on the first half-plane, concatenated with a random normal half-plane of standard deviation \code{sd} (\code{NS1}); a white noise half-plane concatenated with a Matern stationary process (\code{NS2}); a \emph{Haar Montage} of specified standard deviation \code{sd} (\code{NS3}) (see the \code{LS2W} \code{\link[LS2W]{HaarMontage}} function for more details);  a process with a slowly-varying covariance structure (\code{NS4}); a white noise process with a central subregion of random Normal deviates with non-unit standard deviation \code{sd} (\code{NS5}); a white noise process with a subregion of random Normal deviates with non-unit standard deviation in the middle section of the top left quadrant \code{sd} (\code{NS6}); the final process is similar to \code{NS5}, except that there is an additional texture in a subregion of the image.  In other words, the image is a montage of three two-dimensional Normal processes with differing standard deviations.  The base texture is again of unit variance, whereas the other two textures have standard deviations \code{sd} and 
\code{sd2} (\code{NS7}).

The other optional arguments for \code{simTexture} are as follows:\cr
\code{type} - the type of neighbourhood dependence for the random field, either \code{"queen"} or \code{"rook"} (see the \code{\link[spdep]{cell2nb}} function documentation in the \code{spdep} package for more details).\cr
\code{rho} - moving average parameter for the process \code{S2}.\cr
\code{nu} - shape parameter for the Matern covariance for process \code{S3}.\cr
\code{order} - Haar moving average order for \code{S5}.\cr
\code{fn}  - \code{scurve} or \code{lincurve} for \code{NS4}.\cr
\code{start} - start value for \code{NS4} (passed into \code{scurve} or \code{lincurve}).\cr
\code{end} - end value for \code{NS4} (passed into \code{scurve} or \code{lincurve}).\cr
\code{a} - "gradient" for \code{NS4} (passed into \code{scurve} or \code{lincurve}).\cr
\code{prop} - proportion of inserted subimage for \code{NS5}, \code{NS6} and the first subimage (\code{NS7}).\cr
\code{sd2} - standard deviation of second inserted subimage for \code{NS7}.\cr
\code{prop2} - proportion of second inserted subimage for \code{NS7}.\cr
\code{pos1} - position of first inserted subimage for \code{NS7}.\cr
\code{pos2} - position of second inserted subimage for \code{NS7}.
}
\value{  
\item{images}{A list of length \code{K}, with each list entry being an image of dimension \code{n x n} with the chosen spectral structure.}
}

\references{
Matern, B. (1960) Spatial variation. Stochastic models and their application to some problems in forest surveys and other sampling investigations \emph{Meddleanden fran statens Skogsforskningsinstitut} \bold{49} (5). \cr
Eckley, I.A., Nason, G.P., and Treloar, R.L. (2010) Locally stationary wavelet fields with application to the modelling and analysis of image texture \emph{Journal of the Royal Statistical Society Series C}, \bold{59}, 595-616.\cr
Taylor, S.L., Eckley, I.A., and Nunes, M.A. (2014) A test of stationarity for textured images. Technometrics (to appear).
}
\author{
Sarah L. Taylor and Matt Nunes
}

\section{Warning}{
Generating lots of images of high dimension may take a long time!
} 

\seealso{
\code{\link[LS2W]{HaarMontage}}
}
\examples{

X1 <- simTexture(128,K=1,imtype="S5",order=3)
X2 <- simTexture(128,K=1,imtype="NS4",fn=lincurve,a=.25,start=1,end=2)
X3 <- simTexture(128,K=1,imtype="NS5",sd=1.6,prop=.25)
X4 <- simTexture(128,K=1,imtype="NS6",sd=1.6,prop=.25)
X5 <- simTexture(128,K=1,imtype="NS7",sd=1.6,prop=.25,sd2=2.8, prop2=0.25, 
pos1=c(10,10),pos2="e")
        
# try plotting the images:

\dontrun{image(plotmtx(X1[[1]]))}

}
\keyword{datagen}
