library(stringr)
roman <- function(arabic) {
  arabic_num <- c(1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1)
  roman_num  <- c("M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I")
  if (arabic < 0 || arabic > 3999) stop("Input should be between 1 and 3999")
  roman_ <- ""
  i <- 1
  while (arabic > 0) {
    count  <- arabic %/% arabic_num[i]
    roman_ <- str_c(roman_, strrep(roman_num[i], count))
    arabic <- arabic - (count * arabic_num[i])
    i      <- i + 1
  }
  roman_
}

