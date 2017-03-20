get_moves <- function(text) {
gametext <- text[(which(text == "") + 1):length(text)]
moves <- unlist(strsplit(gametext," "))
result <- moves[length(moves)]
moves <- moves[-length(moves)]

moves[c(TRUE,FALSE)] <- unlist(strsplit(moves[c(TRUE,FALSE)],"[.]"))[c(FALSE,TRUE)] #This takes away move numbers
white.moves <- moves[c(TRUE,FALSE)]
black.moves <- moves[c(FALSE,TRUE)]
game <- list(white.moves = white.moves,black.moves = black.moves)
game
}