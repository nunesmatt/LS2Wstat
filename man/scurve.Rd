\name{scurve}
\alias{scurve}
\title{
An S curve function between two constant values.
}
\description{
A function with which to generate nonstationary covariance structure.
}
\usage{
scurve(x, a = 1, start = 1, end = 2)
}
\arguments{
  \item{x}{a sequence of x-values.}
  \item{a}{The coefficient of slope of the curve.}
  \item{start}{a starting value for the curve}
  \item{end}{an ending value for the curve}
}
\value{
\item{y}{the function values associated to \code{x} depicting an S-curve.}
}
\author{
Matt Nunes
}

\seealso{
\code{\link{lincurve}}, \code{\link{simTexture}}
}
\examples{

x<-seq(0,1,length=100)

y<-scurve(x,.4,1,2)

plot(x,y,type="l")

}
\keyword{manip}
