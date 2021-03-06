download_games_id <- function(idvector,destination) {
  readUrl <- function(url) {
    out <- tryCatch(
      {
        suppressWarnings(readLines(con=url, warn=FALSE))
      },
      error=function(cond) {
        # Choose a return value in case of error
        if (as.character(cond) == "Error in file(con, \"r\"): cannot open the connection\n") {
          return(0)
        }
        else {
          return(1)
        }
      }
    )    
    return(out)
  }
  if (substr(destination,nchar(destination),nchar(destination)) != "/") {
    stop("Make sure your destination folder name ends with a forward slash (/) !!!")
  }
  urls <- unlist(lapply("http://www.chessgames.com/perl/nph-chesspgn?text=1&gid=",paste0,idvector))
  connectionfailures <- character(0)
  for (i in 1:length(urls)) {
    urltext <- readUrl(urls[i])
    if (urltext != 0 && urltext != 1) {
      write(urltext,file=paste0(destination,idvector[i],".txt"))
  }
    else if (urltext == 1) {
      connectionfailures <- c(connectionfailures,idvector[i])
    }
    print(paste0("Done with ID: ",idvector[i]))
  }
  return(paste0("Finished downloading chess games from ",length(idvector), " game ids."))
}