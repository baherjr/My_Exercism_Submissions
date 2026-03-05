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

value <- function(resistor_colors) {
  indices <- c()
  for (color in resistor_colors[1:2]){
    indices <- c(indices, grep(color, colors) - 1 )
  }
  return(as.integer(paste(indices,collapse = "")))
}

