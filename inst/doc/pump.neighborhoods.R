## ---- echo = FALSE, message = FALSE--------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = ">")
library(cholera)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodVoronoi())

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodVoronoi(-7))

## ------------------------------------------------------------------------
# print(neighborhoodVoronoi()) or
neighborhoodVoronoi()

## ------------------------------------------------------------------------
pearsonResiduals(neighborhoodVoronoi())

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking())

## ------------------------------------------------------------------------
# print(neighborhoodWalking()) or
neighborhoodWalking()

## ------------------------------------------------------------------------
pearsonResiduals(neighborhoodWalking())

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(case.set = "expected"))

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(case.set = "expected"), type = "area.points")

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(-6))

