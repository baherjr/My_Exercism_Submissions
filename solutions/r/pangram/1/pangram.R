is_pangram <- function(input) {
  input %>%
    str_to_lower() %>%
    str_extract_all("[a-z]") %>%
    unlist() %>%
    unique() %>%
    length() == 26
}