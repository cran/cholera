% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/voronoi.R
\name{plot.voronoi}
\alias{plot.voronoi}
\title{Plot Voronoi neighborhoods.}
\usage{
\method{plot}{voronoi}(x, voronoi.cells = TRUE, delaunay.triangles = FALSE,
  euclidean.paths = FALSE, ...)
}
\arguments{
\item{x}{An object of class "voronoi" created by \code{neighborhoodVoronoi()}.}

\item{voronoi.cells}{Logical. Plot Voronoi tessellation cells.}

\item{delaunay.triangles}{Logical. Plot Delaunay triangles.}

\item{euclidean.paths}{Logical. Plot all Euclidean paths (star graph).}

\item{...}{Additional plotting parameters.}
}
\value{
A base R graph.
}
\description{
Plot Voronoi neighborhoods.
}
\examples{
plot(neighborhoodVoronoi())
}
\seealso{
\code{neighborhoodVoronoi()}

\code{addVoronoi()}
}
