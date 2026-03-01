library(stringr)
reverse <- function(text) {
  text%>%
  str_split("") %>%
  unlist() %>%
  rev() %>%
  str_c(collapse = "")
}
