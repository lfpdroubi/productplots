# test <- matrix(abs(rcauchy(10, 20)), ncol = 2)
# draw(fluct(test))
fluct <- function(data, offset = 0.05, max = NULL) {
  if (is.null(max)) max <- 1

  sizes <- sqrt(prop(data)) * (1 - offset) / sqrt(max)
  # browser()
  
  xmin <- (col(data) - 1) / ncol(data)
  ymin <- (row(data) - 1) / nrow(data)
  width <- sizes / ncol(data)
  height <- sizes / nrow(data)

  data.frame(
    xmin = as.vector(xmin),
    ymin = as.vector(ymin),
    xmax = as.vector(xmin + width),
    ymax = as.vector(ymin + height)
  )
}
attr(fluct, "d") <- 2