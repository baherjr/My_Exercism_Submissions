collatz_step_counter <- function(num) {
  steps <- 0
  if (length(num) > 1) {
  return(sapply(num, collatz_step_counter))
  }
  if (num <= 0 || !is.numeric(num)) stop("ERROR")
  while(num != 1){
    if(num %% 2 == 0){
      num <- num / 2
    } else {
      num <- (num * 3) + 1
    }
    steps <- steps + 1
  }

  return(steps)
}

collatz_step_counter(
    c(1, 16, 12, 1000000)
  )