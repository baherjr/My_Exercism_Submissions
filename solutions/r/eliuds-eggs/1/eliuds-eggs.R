library(stringr)
egg_count <- function(display_value) {
  as.integer(intToBits(display_value)) %>%
  str_c(collapse = "") %>%
  str_count("1")
}

