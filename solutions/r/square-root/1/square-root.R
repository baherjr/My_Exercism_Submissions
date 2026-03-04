square_root <- function(number) {
  if(number < 0) stop("The input is a negative number")

  low <- 1L
  high <- as.integer(number)

  while (low <= high) {
    mid <- (low + high) %/% 2L

    if (mid * mid == number) {
      return(mid)
    } else if (mid * mid < number) {
      low <- mid + 1L
    } else {
      high <- mid - 1L
    }
  }
}
