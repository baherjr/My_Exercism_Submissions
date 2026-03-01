create <- function(row, col) {
  if (row < 0 || col < 0) stop("The input can't have a negative number")
  if (row > 7 || col > 7) stop("The input exceed the dims")
  return(list(row = row, col = col))
}

can_attack <- function(queen1, queen2) {
  if (queen1$row == queen2$row && queen1$col == queen2$col) stop("Queens cannot occupy the same square")
  return(
    queen1$row == queen2$row ||
    queen1$col == queen2$col ||
    abs(queen1$row - queen2$row) == abs(queen1$col - queen2$col)
  )
}