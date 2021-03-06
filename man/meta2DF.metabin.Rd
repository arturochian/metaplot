\name{meta2DF.metabin}
\alias{meta2DF.metabin}
\title{
Convert 'metabin' Objects into Data Frames
}
\description{
A function that turns objects of class \code{'metabin'} into a list of data
frames used for plotting.
}
\usage{
\method{meta2DF}{metabin}(meta, add = NULL, rowOrder = NULL, title = NULL,
                          subtitle = NULL, ...)
}

\arguments{
  \item{meta}{An object of class \code{'metabin'}.}
  \item{add}{List of vectors that can be added as columns to the data
    frame with corresponding values to each study row.}
  \item{rowOrder}{Name of the single column to order rows of studies
    by. }
  \item{title}{Title of the meta-analysis to be shown on top of the
    plot}
  \item{subtitle}{Subtitle of the meta-analysis to be shown under the
    title}
  \item{\dots}{Further arguments from \code{order}.}
}
\details{
In order to produce the plot, \code{\link{metaDF2Matrix.metabinDF}} must be
called after producing the \code{'metabinDF'} object from this function.
The data frame columns can be selected and ordered using
\code{\link{metaDF2Matrix.metabinDF}}.
}
\value{
An object of class \code{c('metabinDF','metaDF')} with following
list of components:
  \item{DF}{A data frame with studies as rows and study attributes as
    columns.}
  \item{summaryFixed}{A data frame with attributes of the fixed effects
    model. See \code{\link{forestDF}}.}
  \item{summaryRandom}{A data frame with attributes of the random
    effects model. See \code{\link{forestDF}}.}
  \item{hetero}{Statistical results from the input \code{'metabin'}
    object. See \code{\link[meta]{metabin}}.}
  \item{title}{Title of the meta-analysis.}
  \item{subtitle}{Subtitle of the meta-analysis.}
}
\seealso{
\code{\link{metaDF2Matrix.metabinDF}},
\code{\link{drawMeta.metabinM}}
}
\examples{
library(meta)
data(Olkin95)
meta1 <- metabin(event.e, n.e, event.c, n.c, data = Olkin95,
                 subset = c(41,47,51,59), sm = "RR", method = "I")
### testing 'add' argument
add <- list(test1 = c(1:4), test2 = c(5:8))
Data <- meta2DF(meta1, title = "Thrombolytic Therapy" ,
                rowOrder = "effect", decreasing = TRUE,
                add = add)
Data
}
