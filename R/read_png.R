source("R/get_moves.R") #use get_moves(__gametext__)
source("R/white_move.R") #used within get_boards()
source("R/black_move.R") #used within get_boards()
source("R/get_boards.R")  #use get_boards(__moveslist__)


firstfile <- list.files("data/")[10]
test <- readLines(paste0("data/",firstfile))
mymoves <- get_moves(test)
full_game <-get_boards(mymoves)
