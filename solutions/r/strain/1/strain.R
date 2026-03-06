keep <- function(input, fun) {
  mask <- sapply(input, fun)
  input[mask]
}

discard <- function(input, fun) {
  mask <- sapply(input, fun)
  input[!mask]
}
