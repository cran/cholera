## ---- echo = FALSE, message = FALSE--------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = ">")
library(cholera)

## ----fig.width = 5, fig.height = 5, fig.align = "center", echo = TRUE----
snowMap()
addKernelDensity()

## ----fig.width = 5, fig.height = 5, fig.align = "center", echo = TRUE----
snowMap()
addKernelDensity(pump.select = c(6, 8))

## ----fig.width = 5, fig.height = 5, fig.align = "center", echo = TRUE----
snowMap()
addKernelDensity(pump.subset = c(6, 8))

