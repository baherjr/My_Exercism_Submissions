library(tidyverse)

to_rna <- function(dna) {
  if(str_detect(dna, "U")) stop("DNA doesnt have 'U'")
  if(str_detect(dna, "[^ACGT]")) stop("Input doesn't depict a DNA")
  map <- c("G" = "C", "C" = "G", "T" = "A", "A" = "U")
  dna %>%
    str_split("") %>%
    unlist() %>%
    map_chr(~ map[.x]) %>%
    str_c(collapse = "")
}
