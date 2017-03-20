#To be copied and pasted into terminal
#Comment out lines as we go
#the game ids go up to at least ~1600000

source("R/download_games.R")
library(pbapply)
library("pbmcapply") #multiple cores
library(parallel)


#failed_connection <- unlist(pblapply(1000000:1010000,get_chess_games,"data/"))
#failed_connection <- unlist(pblapply(1010001:1020000,get_chess_games,"data/"))
#failed_connection <- unlist(pblapply(1000000:1100000,get_chess_games,"data/"))
failed_connection <- unlist(pblapply(1030001:1040000,get_chess_games,"data/"))
failed_connection <- unlist(pblapply(1040001:1050000,get_chess_games,"data/"))
