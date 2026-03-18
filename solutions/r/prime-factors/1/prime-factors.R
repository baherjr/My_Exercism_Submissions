prime_factors <- function(number) {
  if (number == 1) return(c())

  factors <- c()
  divisor <- 2L

  while (number > 1) {
    while (number %% divisor == 0) {
      factors <- c(factors, divisor)
      number  <- number / divisor
    }
    divisor <- divisor + 1L
  }

  factors
}

prime_factors(8)
