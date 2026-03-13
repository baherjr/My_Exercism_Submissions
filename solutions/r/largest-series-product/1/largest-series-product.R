library(stringr)
largest_series_product <- function(digits, span){
  if (nchar(digits) < span) stop("span longer than input")
  if (str_detect(digits, "[aA-zZ]")) stop("invalid input")
  if (span <= 0) stop("invalid span")
  series <- c()
  products <- c()
  for(i in seq(0, nchar(digits) - span)){
    temp <- digits %>% str_sub(1 + i, span + i)
    series <- c(series, temp)
    temp_prod <- temp %>%
      str_split("") %>%
      unlist() %>%
      as.numeric() %>%
      prod()
    products <- c(products, temp_prod)
  }
  products %>% max()
}