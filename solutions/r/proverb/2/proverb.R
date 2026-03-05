recite <- function(wanted) {
  if (length(wanted) == 0) return(c())
  lines <- c()
  num_lines <- length(wanted) - 1
  if (num_lines > 1)
{for (i in 1:num_lines) {
  lines <- c(lines, paste("For want of a", wanted[i], "the", wanted[i + 1], "was lost."))
} }
  lines <- c(lines, paste0("And all for the want of a ", wanted[1],"."))
  return(lines)
}

