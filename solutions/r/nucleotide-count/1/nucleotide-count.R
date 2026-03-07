library(stringr)
nucleotide_count <- function(input) {
  if (str_detect(input, "[^ACGT]") && input != "") stop("ERROR")
  nuc <- input %>%
    str_to_upper() %>%
    str_split("") %>%
    unlist()

  counts <- list(A = 0, C = 0, G = 0, T = 0)
  tbl <- as.list(table(nuc))
  counts[names(tbl)] <- tbl
  counts
}