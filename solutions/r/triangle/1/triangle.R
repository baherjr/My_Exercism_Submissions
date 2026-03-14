triangle <- function(x, y, z) {
  tri <- list(sides = c(x, y, z))
  if (x == 0 || y == 0 || z == 0) stop("ERROR")
  if (x == y && y == z){
    class(tri) <- "equilateral"
  } else if (x == y || y == z || x == z){
    class(tri) <- "isosceles"
  } else {
    class(tri) <- "scalene"
  }
  tri
}