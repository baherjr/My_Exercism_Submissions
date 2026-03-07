library(stringr)
is_isogram <- function(word) {
  strip <- word %>%
    str_to_lower() %>%
    str_remove_all("[[:punct:][:symbol:][:space:]]") %>%
    str_split("") %>%
    unlist()

  return(identical(strip, unique(strip)))
}

is_isogram("isograms")