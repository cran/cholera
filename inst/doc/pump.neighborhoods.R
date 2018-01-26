## ---- echo = FALSE, message = FALSE--------------------------------------
library(cholera)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodVoronoi())

## ------------------------------------------------------------------------
# print(neighborhoodVoronoi()) or
neighborhoodVoronoi()

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(walkingDistance(150, unit = "meter"))

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking())

## ------------------------------------------------------------------------
# print(neighborhoodWalking()) or
neighborhoodWalking()

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(case.set = "expected"))

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(case.set = "expected"), area = TRUE)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(-6))

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(-7))

