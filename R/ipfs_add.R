
#' @title ipfs_add
#' @export
#' @rdname ipfs_add
#' @param files path(s) of files to add

ipfs_add <- function(files){
  post <- lapply(files, function(x){
    curl::form_file(normalizePath(x, mustWork = TRUE))
  })
  names(post) <- basename(files)
  data <- ipfs_raw("add", post = post)
  con <- rawConnection(data)
  on.exit(close(con))
  df <- jsonlite::stream_in(con, verbose = FALSE)
  names(df) <- tolower(names(df))
  df
}
