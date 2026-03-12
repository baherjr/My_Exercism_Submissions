library(stringi)
library(stringr)
generate_key <- function () {
  set.seed(2134)
  rand_str <- stri_rand_strings(1, 100, "[a-z]")
  return(rand_str)
}

encode <- function(plaintext, key) {
  sep_txt <- plaintext %>% str_to_lower() %>% str_split("") %>% unlist()
  key_rep <- key %>% str_split("") %>% unlist()
  key_rep <- rep_len(key_rep, length(sep_txt))

  alpha <- letters

  code1 <- match(sep_txt, alpha)
  code2 <- match(key_rep, alpha)

  encoded <- ((code1 + code2 - 2) %% 26) + 1
  str_c(alpha[encoded], collapse = "")
}

decode <- function(ciphertext, key) {
  sep_txt <- ciphertext %>% str_to_lower() %>% str_split("") %>% unlist()
  key_rep <- key %>% str_split("") %>% unlist()
  key_rep <- rep_len(key_rep, length(sep_txt))

  alpha <- letters

  code1 <- match(sep_txt, alpha)
  code2 <- match(key_rep, alpha)

  decoded <- ((code1 - code2) %% 26) + 1
  str_c(alpha[decoded], collapse = "")

}