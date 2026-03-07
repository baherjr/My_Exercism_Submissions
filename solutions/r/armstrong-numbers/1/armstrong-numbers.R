library(stringr)
is_armstrong_number <- function(n) {
  if (n == 0) return(TRUE)
  n_str <- as.character(n) %>%
    str_split("") %>%
    unlist() %>%
    sapply(as.numeric)
  len <- length(n_str)
  result <- sum(n_str ^ len)
  return(result == n)
}
