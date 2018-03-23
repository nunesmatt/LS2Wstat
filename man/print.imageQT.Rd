\name{print.imageQT}
\alias{print.imageQT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Print out information about a imageQT object in readable form.}
\description{
This function prints out information about a imageQT object in a nice human-readable form.
}
\usage{
\method{print}{imageQT}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{An object of class 'imageQT' about which you wish to print information.}
 \item{...}{This argument actually does nothing in this function!}
}
%\details{
%See description.
%}

%\section{Side Effects}{Prints out information about ccdews objects in nice readable format.}

\author{Matt Nunes}
\seealso{ \code{\link{imageQT}} }

\examples{
\dontrun{
#
# Generate a imageQT object for a HaarMontage realisation 
#
X<-simTexture(n=256,K=1,imtype="S1")[[1]]

Xres <- imageQT(X)

print(Xres)
}
}
\keyword{print}
