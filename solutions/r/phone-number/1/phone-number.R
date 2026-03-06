library(stringr)

parse_phone_number <- function(number_string) {
  phone_number_v <- number_string %>%
  str_extract_all("[1234567890]") %>%
  unlist()

  if (length(phone_number_v) == 11 && phone_number_v[1] == 1) {
    phone_number_v <- phone_number_v[2:11]
  }
  if (length(phone_number_v) < 10 || length(phone_number_v) > 10)
    return(NULL)

  if (phone_number_v[1] %in% c("0", "1") || phone_number_v[4] %in% c("0", "1")) {
    return(NULL)
  }

  return(str_c(phone_number_v, collapse = ""))

}


