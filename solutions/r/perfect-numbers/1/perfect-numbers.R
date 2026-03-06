number_type <- function(n){
  factors <- c(1)
  if (n <= 0) stop("ERROR")
  if (n %in% c(1, 2)) return("deficient")
for (i in 2:(n - 1)){
  if (n %% i == 0) factors <- c(factors, i)
  }
  sum_ <- sum(factors)
  if (sum_ == n) return("perfect")
  else if (sum_ > n) return("abundant")
  else return("deficient")
}