handshake <- function(n) {
  handshake <- as.integer(rev(intToBits(n)[1:5]))
  handshake_str <- c()
  if(handshake[5] == 1){
    handshake_str <- c(handshake_str, "wink")
  }
  if(handshake[4] == 1){
    handshake_str <- c(handshake_str, "double blink")
  }
  if(handshake[3] == 1){
    handshake_str <- c(handshake_str, "close your eyes")
  }
  if(handshake[2] == 1){
    handshake_str <- c(handshake_str, "jump")
  }
  if(handshake[1] == 1){
    handshake_str <- rev(handshake_str)
  }
  return(handshake_str)
}

handshake(1)[1]