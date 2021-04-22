## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = ">")
library(cholera)

## ----voronoiPolygons, eval = FALSE--------------------------------------------
#  voronoiPolygons(sites, rw.data = NULL, rw = NULL, type = "tiles")

## ----counting_tiles, echo = TRUE, eval = TRUE---------------------------------
# compute vertices of Voronoi tiles
vertices <- voronoiPolygons(sites = cholera::pumps, rw.data = cholera::roads)

# locations of the 578 fatalities in Soho
cases <- cholera::fatalities.unstacked

# count fatalities within each tile
census <- lapply(vertices, function(tile) {
  sp::point.in.polygon(cases$x, cases$y, tile$x, tile$y)
})

# ID the 13 water pumps
names(census) <- paste0("p", cholera::pumps$id)

# count of fatalities by neighborhood
vapply(census, sum, integer(1L))

## ----counting_triangles, echo = TRUE, eval = TRUE-----------------------------
# compute vertices of Delauny triangles
vertices <- voronoiPolygons(sites = cholera::pumps,
  rw.data = cholera::roads, type = "triangles")

# locations of the 578 fatalities in Soho
cases <- cholera::fatalities.unstacked

# count fatalities within each triangle
census <- lapply(vertices, function(tile) {
  sp::point.in.polygon(cases$x, cases$y, tile$x, tile$y)
})

# ID triangles
names(census) <- paste0("t", seq_along(vertices))

# count of fatalities by triangle
vapply(census, sum, integer(1L))

## ----coloring_tiles, fig.align = "left", fig.width = 5, fig.height = 5, echo = TRUE, eval = TRUE----
# compute vertices of Voronoi tiles
vertices <- voronoiPolygons(sites = cholera::pumps, rw.data = cholera::roads)

# define colors
snow.colors <- grDevices::adjustcolor(snowColors(), alpha.f = 1/3)

# plot map and color coded tiles
snowMap(add.cases = FALSE)
invisible(lapply(seq_along(vertices), function(i) {
  polygon(vertices[[i]], col = snow.colors[[i]])
}))

## ----coloring_triangles, fig.align = "left", fig.width = 5, fig.height = 5, echo = TRUE, eval = TRUE----
# compute vertices of Delauny triangles
vertices <- voronoiPolygons(sites = cholera::pumps,
  rw.data = cholera::roads, type = "triangles")

# define colors
colors.pair <- RColorBrewer::brewer.pal(10, "Paired")
colors.dark <- RColorBrewer::brewer.pal(8, "Dark2")
brewer.colors <- sample(c(colors.pair, colors.dark))
colors <- grDevices::adjustcolor(brewer.colors, alpha.f = 1/3)

# plot map and color coded triangles
snowMap(add.cases = FALSE)
invisible(lapply(seq_along(vertices), function(i) {
  polygon(vertices[[i]], col = colors[[i]])
}))

