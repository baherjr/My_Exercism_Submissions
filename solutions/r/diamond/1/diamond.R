library(stringr)

diamond <- function(letter) {
  n <- match(letter, LETTERS)
  width <- 2 * n - 1
  
  rows <- map_chr(1:n, function(i) {
    row <- rep(" ", width)
    left  <- n - i + 1
    right <- n + i - 1
    row[left] <- LETTERS[i]
    row[right] <- LETTERS[i]
    str_c(row, collapse = "")
  })
  
  str_c(c(rows, rev(rows[-n])), collapse = "\n")
}