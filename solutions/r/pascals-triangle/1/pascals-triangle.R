library(stringr)

pascals_triangle <- function(n) {
  if (is.null(n) || n < 0) stop("ERROR")
  if (n == 0) return(list())

  rows <- list(1)

  if (n == 1) return(rows)

  for (i in 2:n) {
    prev <- rows[[i - 1]]
    rows[[i]] <- c(0, prev) + c(prev, 0)
  }
  
  rows
}