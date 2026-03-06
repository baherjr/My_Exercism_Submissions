library(stringr)
word_count <- function(input) {
  words <- input %>%
  str_to_lower() %>%
  str_replace_all("[^a-z0-9' ]", " ") %>%
  str_split("[[:space:]]{1,}") %>%
  unlist() %>%
  str_remove_all("^'|'$") %>%
  .[. !=""]


  as.list(table(words))
}

word_count("car : carpet as java : javascript!!&@$%^&")

