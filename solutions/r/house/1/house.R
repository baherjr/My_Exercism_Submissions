library(stringr)

recite <- function(start_verse, end_verse) {
  subjects <- c(
    "the malt",
    "the rat",
    "the cat",
    "the dog",
    "the cow with the crumpled horn",
    "the maiden all forlorn",
    "the man all tattered and torn",
    "the priest all shaven and shorn",
    "the rooster that crowed in the morn",
    "the farmer sowing his corn",
    "the horse and the hound and the horn"
  )

  actions <- c(
    "lay in",
    "ate",
    "killed",
    "worried",
    "tossed",
    "milked",
    "kissed",
    "married",
    "woke",
    "kept",
    "belonged to"
  )

map_chr(start_verse:end_verse, function(verse) {
  if (verse == 1) return("This is the house that Jack built.")

chains <- map_chr(seq_len(verse - 2), function(i) {
  str_glue("that {actions[i + 1]} {subjects[i]}")
})

  parts <- c(
    str_glue("This is {subjects[verse - 1]}"),
    rev(chains),
    "that lay in the house that Jack built."
  )

  str_c(parts, collapse = " ")
})
}