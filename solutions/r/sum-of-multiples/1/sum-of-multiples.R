sum_of_multiples <- function(factors, limit) {
  mult <- c()
  if (limit %in% c(0, 1)) return(0)

  for (f in factors) {
    if (f == 0) next
    if (f < limit) {
      for (j in 1:loop_limit(f, limit))
        mult <- c(mult, f * j)
    }
  }
  sum(unique(mult))
}

loop_limit <- function(factor, limit) {
  if (limit %% factor == 0) return((limit %/% factor) - 1)
  else return(limit %/% factor)
}