# test <- matrix(abs(rcauchy(10, 20)), ncol = 2)
# draw(fluct(test))
fluct <- function(data, offset = 0.05, max = NULL) {
  if (is.null(max)) max <- 1

  # data <- data / max
  sizes <- sqrt(prop(data)) * (1 - offset) / max
  
  xmin <- (col(data) - 1) / ncol(data)
  ymin <- (row(data) - 1) / nrow(data)
  xmax <- xmin + sizes / ncol(data)
  ymax <- ymin + sizes / nrow(data)

  data.frame(
    xmin = as.vector(xmin),
    ymin = as.vector(ymin),
    xmax = as.vector(xmax),
    ymax = as.vector(ymax)
  )
}
attr(fluct, "d") <- 2