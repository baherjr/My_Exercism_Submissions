
bob <- function(input) {
  input <- str_trim(input)
  is_question <- str_detect(input, "\\?$")
  is_yelling  <- str_detect(input, "[A-Z]") && !str_detect(input, "[a-z]")
  is_silence  <- !str_detect(input, "[[:graph:]]")
  
  if (is_silence)            return("Fine. Be that way!")
  if (is_yelling && is_question) return("Calm down, I know what I'm doing!")
  if (is_yelling)            return("Whoa, chill out!")
  if (is_question)           return("Sure.")
  return("Whatever.")
}