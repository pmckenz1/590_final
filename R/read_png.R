source("R/get_moves.R") #use get_moves(__gametext__)
source("R/white_move.R") #used within get_boards()
source("R/black_move.R") #used within get_boards()
source("R/get_boards.R")  #use get_boards(__moveslist__)


firstfile <- list.files("data/")[10]
test <- readLines(paste0("data/",firstfile))
mymoves <- get_moves(test)
35 %% 2
full_game <-get_boards(mymoves)
if (length(full_game) %% 2 == 1) { #number of board frames (including initial) is odd -- that is,equal number of black moves and white moves
  num.white.moves <- (length(full_game) - 1)/2
  num.black.moves <- (length(full_game) - 1)/2
}
if (length(full_game) %% 2 == 0) { #number of board frames (including initial) is even -- that is, game ends on a white move
  num.white.moves <- length(full_game)/2
  num.black.moves <- length(full_game)/2 - 1
}

whitemoves <- list()
for (i in 1:num.white.moves) {
pairwise <- list(full_game[[2*i-1]],full_game[[2*i]])
whitemoves[[i]] <- pairwise
}
blackmoves <- list()
for (i in 1:num.black.moves) {
  pairwise <- list(full_game[[2*i]],full_game[[2*i+1]])
  blackmoves[[i]] <- pairwise
}




pairwise <- list(full_game[[1]],fullgame[[2]])
pairwise <- list(pairwise[[1]],pairwise[[2]])

multiple <- list(pairwise,pairwise)
