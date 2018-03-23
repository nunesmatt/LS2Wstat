\name{print.TOS2D}
\alias{print.TOS2D}
\alias{summary.TOS2D}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Print out information about a TOS2D object in readable form.}
\description{
This function prints out information about a TOS2D object in a nice human-readable form.
}
\usage{
\method{print}{TOS2D}(x, ...)
\method{summary}{TOS2D}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x, object}{An object of class 'TOS2D' about which you wish to print information.}
 \item{...}{This argument actually does nothing in this function!}
}
%\details{
%See description.
%}

%\section{Side Effects}{Prints out information about ccdews objects in nice readable format.}

\author{Matt Nunes}
\seealso{ \code{\link{TOS2D}} }

\examples{
\dontrun{
#
# Generate a TOS2D object for a HaarMontage realisation 
#
X<-simTexture(n=256,K=1,imtype="S1")[[1]]

Xres <- TOS2D(X)

summary(Xres)
}
}
\keyword{print}
