\name{interactions}
\alias{interactions}
\docType{data}
\title{
Interaction data generated by the analysis pipeline
}
\description{
This file contains the result of the analysis pipeline calling
 \code{getInteractions}.
}
\value{
\code{interactions} is a \code{list} containing the \code{list} \code{anno},
 \code{array} \code{D}, \code{array} \code{res}, \code{list} \code{effect} and
 \code{array} \code{pVal}.

The annotation \code{anno} is represented as a \code{list} containing a 
\code{data.frame} \code{drug} with the drug annotation, a \code{data.frame} 
\code{line} with the cell line annotation, a \code{vector} \code{repl} with the
information about the replicates and a \code{vector} \code{ftr} with the
feature names.

The four dimensional \code{array} \code{D} contains the glog transformed
feature data of the features selected for the final analysis. 
The dimensions represent:
  \enumerate{
    \item drug
    \item cell line
    \item replicate
    \item feature
  }
  
The four dimensional \code{array} \code{res} contains the interaction terms. It
has the same dimentions as \code{D}.
The dimensions represent:
  \enumerate{
    \item{drug}
    \item{cell line}
    \item{replicate}
    \item{feature}
  }

The \code{list} \code{effect} contains the drug and cell line effect as
three-dimensional \code{array}:  
\code{drug} and \code{line} have the following dimensions:
  \enumerate{
    \item{drug or cell line respectively}
    \item{replicate}
    \item{feature}
  }  

\code{pVal} is an \code{array} containing the p-values, adjusted p-values and
correlation between replicates of interactions. The dimensions represent:
  \enumerate{
    \item{drug}
    \item{cell line}
    \item{p-value, adjusted p-value, correlation}
    \item{feature}
  }

}
\usage{data(interactions)}
\format{
\preformatted{
List of 5
 $ anno  :List of 4
  ..$ drug:'data.frame':	1372 obs. of  15 variables
  ..$ line:'data.frame':	12 obs. of  4 variables
  ..$ repl: int [1:2]
  ..$ ftr : chr [1:20]
 $ D     : num [1:1372, 1:12, 1:2, 1:20]
 $ res   : num [1:1372, 1:12, 1:2, 1:20]
 $ effect:List of 2
  ..$ drug: num [1:1372, 1:2, 1:20]
  ..$ line: num [1:12, 1:2, 1:20]
 $ pVal  : num [1:1372, 1:12, 1:20, 1:3]
}
}
\examples{
data(interactions)
str(interactions)
}
\seealso{
  \code{\link{getInteractions}}
}
\keyword{datasets}
