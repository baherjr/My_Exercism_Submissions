library(stringr)
matrix_row <- function(input, row_idx) {
  row_count <- input %>%
    str_count("\\n") + 1
  matrix <- input %>%
    str_split("\\n") %>%
    unlist()
  if (row_idx <= row_count) {
    return(
      matrix %>%
        .[row_idx] %>%
        str_split("\\s+") %>%
        unlist() %>%
        .[. != ""] %>%
        as.numeric()
    )
  }
}

matrix_col <- function(input, col_idx) {
  matrix_col <- c()
  row_count <- input %>%
  str_count("\\n") + 1
  for (i in 1:row_count)
    matrix_col <- c(matrix_col, matrix_row(input, i)[col_idx])
  return(matrix_col)
}