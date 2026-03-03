dirs <- c("NORTH", "EAST", "SOUTH", "WEST")

new_robot <- function(coordinates, direction) {
  robot <- list(
    coordinates = coordinates,
    direction = direction
  )
  class(robot) <- "robot"
  return(robot)
}

turn <- function(dir, cmd) {
  i <- which(dirs == dir)
  if (cmd == "R") dirs[(i %% 4) + 1]
  else if (cmd == "L") dirs[((i - 2) %% 4) + 1]
}

advance <- function(coordinates, direction) {
  if (direction == "NORTH") {
    coordinates + c(0, 1)
  } else if (direction == "SOUTH") {
    coordinates + c(0, -1)
  } else if (direction == "EAST") {
    coordinates + c(1, 0)
  } else if (direction == "WEST") {
    coordinates + c(-1, 0)
  }
}

move <- function(a_robot, commands) {
  UseMethod("move")
}
# nolint start
move.robot <- function(a_robot, commands) {
  commands <- strsplit(commands, "")[[1]]

  for (command in commands) {
    if (command == "R" || command == "L") {
      a_robot$direction <- turn(a_robot$direction, command)
    } else if (command == "A") {
      a_robot$coordinates <- advance(a_robot$coordinates, a_robot$direction)
    }
  }
  return(a_robot)
}
# nolint end