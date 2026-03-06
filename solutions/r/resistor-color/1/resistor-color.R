# TODO: define `colors` variable

colors <- c(
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white"
)

color_code <- function(color) {
  if (!is.character(color)) stop("Input should be a color")
  grep(color, colors) - 1
}