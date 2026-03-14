sieve <- function(limit) {
  if (limit < 2) return(c())
  if (limit == 2) return(c(2))

  is_prime <- rep(TRUE, limit)
  is_prime[1] <- FALSE

  for (i in 2:floor(sqrt(limit))) {
    if (is_prime[i]) {
      multiples <- seq(i * i, limit, by = i)
      is_prime[multiples] <- FALSE
    }
  }

  which(is_prime)
}