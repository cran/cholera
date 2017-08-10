## ---- echo = FALSE, message = FALSE--------------------------------------
library(cholera)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodVoronoi())

## ------------------------------------------------------------------------
summary(neighborhoodVoronoi())

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
walkingPath(150)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking())

## ------------------------------------------------------------------------
summary(neighborhoodWalking())

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(), observed = FALSE)

## ---- fig.width = 5, fig.height = 5, fig.align = "center", message = FALSE----
plot(neighborhoodWalking(), street = FALSE, observed = FALSE)

