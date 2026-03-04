scores_list <- function(scores) {
  return(scores)
}

latest <- function(scores) {
  tail(scores, 1)
}

personal_best <- function(scores) {
  max(scores)
}

personal_top_three <- function(scores) {
  if (length(scores) < 3) sort(scores,decreasing = TRUE)
  else sort(scores,decreasing = TRUE)[1:3]
}

