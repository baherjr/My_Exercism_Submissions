recite <- function(begin_idx, end_idx) {
  animals <- c("fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse")
  comments <- c(
    "",
    "It wriggled and jiggled and tickled inside her.",
    "How absurd to swallow a bird!",
    "Imagine that, to swallow a cat!",
    "What a hog, to swallow a dog!",
    "Just opened her throat and swallowed a goat!",
    "I don't know how she swallowed a cow!",
    "She's dead, of course!"
  )

  verse <- function(idx) {
    lines <- c(sprintf("I know an old lady who swallowed a %s.", animals[idx]))
    if (comments[idx] != "") {
      lines <- c(lines, comments[idx])
    }

    if (idx == 8) {
      return(lines)
    }

    if (idx >= 2) {
      for (i in seq(idx, 2)) {
        target <- animals[i - 1]
        if (target == "spider") {
          target <- "spider that wriggled and jiggled and tickled inside her"
        }
        lines <- c(
          lines,
          sprintf("She swallowed the %s to catch the %s.", animals[i], target)
        )
      }
    }

    c(lines, "I don't know why she swallowed the fly. Perhaps she'll die.")
  }

  song <- c()
  for (idx in seq(begin_idx, end_idx)) {
    if (length(song) > 0) {
      song <- c(song, "")
    }
    song <- c(song, verse(idx))
  }

  song
}
