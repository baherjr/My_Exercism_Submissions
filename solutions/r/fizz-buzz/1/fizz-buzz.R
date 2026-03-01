fizz_buzz <- function(n) {
  result <- c()
  for (i in 1:n)
    if (i %% 3 == 0 && i %% 5 == 0){
      result <- c(result, "Fizz Buzz")
    } else if (i %% 3 == 0){
      result <- c(result, "Fizz")
    } else if (i %% 5 == 0){
      result <- c(result, "Buzz")
    } else{
      result <- c(result, as.character(i))
    }

  return(result)
}

fizz_buzz(5)