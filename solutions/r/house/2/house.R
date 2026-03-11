library(stringr)

recite <- function(start_verse, end_verse) {
  phrases <- c(
    "the house that Jack built.",
    "the malt that lay in",
    "the rat that ate",
    "the cat that killed",
    "the dog that worried",
    "the cow with the crumpled horn that tossed",
    "the maiden all forlorn that milked",
    "the man all tattered and torn that kissed",
    "the priest all shaven and shorn that married",
    "the rooster that crowed in the morn that woke",
    "the farmer sowing his corn that kept",
    "the horse and the hound and the horn that belonged to"
  )

  map_chr(start_verse:end_verse, function(verse) {
    parts <- map_chr(verse:1, ~ phrases[.x])
    str_c("This is", str_c(parts, collapse = " "), sep = " ")
  })
}