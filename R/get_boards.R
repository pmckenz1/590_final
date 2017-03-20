get_boards <- function(moves) {
  row8 <- c("R1_b","N1_b","B1_b","Q_b","K_b","B2_b","N2_b","R2_b")
  row7 <- c("p1_b","p2_b","p3_b","p4_b","p5_b","p6_b","p7_b","p8_b")
  row2 <- c("p1_w","p2_w","p3_w","p4_w","p5_w","p6_w","p7_w","p8_w")
  row1 <- c("R1_w","N1_w","B1_w","Q_w","K_w","B2_w","N2_w","R2_w")
  middle <- c(rep("none",8))
  board <- rbind(row1,row2,middle,middle,middle,middle,row7,row8)
  rownames(board) <- 1:8
  colnames(board) <- c("a","b","c","d","e","f","g","h")
  boardpositions <- list()
  boardpositions[[1]] <- board
  for (i in 1:max(c(length(moves[[1]]),length(moves[[2]])))) {
    boardpositions[[2*i]] <- white_move(moves[[1]][i],boardpositions[[2*i-1]])
    boardpositions[[2*i+1]] <- black_move(moves[[2]][i],boardpositions[[2*i]])
  }
  boardpositions
}