\name{lincurve}
\alias{lincurve}
\title{
A linear function between two constant values.
}
\description{
A function with which to generate nonstationary covariance structure.
}
\usage{
lincurve(x, start = 1, end = 2, a = 0.25)
}
\arguments{
  \item{x}{a sequence of x-values.}
  \item{start}{a starting value for the linear function.}
  \item{end}{an ending value for the linear function.}
  \item{a}{a proportion of the x-values for the linear part of the function.}
}
\value{
\item{y}{the y-values associated to the linear function.}
}
\author{
Matt Nunes
}

\seealso{
\code{\link{scurve}},
\code{\link{simTexture}}
}
\examples{

x<-seq(0,1,length=128)

y<-lincurve(x,start=1,end=2,a=.25)

plot(x,y,type="l")

}

\keyword{manip}
