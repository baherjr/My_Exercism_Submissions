library(stringr)
scrabble_score <- function(input){
  if (input == "") return(0)
  input <- input %>%
    str_to_lower() %>%
    str_split("") %>%
    unlist()
  score <- 0
  for(letter in input){
    if(str_detect(letter, "[aeioulnrst]")) score <- score + 1
    if(str_detect(letter, "[dg]")) score <- score + 2
    if(str_detect(letter, "[bcmp]")) score <- score + 3
    if(str_detect(letter, "[fhvwy]")) score <- score + 4
    if(str_detect(letter, "[k]")) score <- score + 5
    if(str_detect(letter, "[jx]")) score <- score + 8
    if(str_detect(letter, "[qz]")) score <- score + 10
  }
  return(score)
}
