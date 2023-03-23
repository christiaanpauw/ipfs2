

#' ipfs_fetch
#'
#' @param command character
#' @param params
#' @param post
#'
#' @return
#' @export
#'
#' @examples jsonlite::fromJSON(rawToChar(ipfs::ipfs_fetch("version", params = list())))

ipfs_fetch <- function(command, params, post = NULL){
  url <- ipfs_api("api/v0", command)
  h <- curl::new_handle()
  if(length(params)){
    str <- paste(names(params), as.character(params), collapse = "&", sep = "=")
    url <- paste(url, str, sep = "?")
  }
  if(length(post)){
    curl::handle_setform(h, .list = as.list(post))
  } else {
    curl::handle_setform(h, .list = as.list(NULL))
  }
  req <- curl::curl_fetch_memory(url, handle = h)
  if(req$status_code >= 400)
    stop(sprintf("HTTP %s", rawToChar(req$content)), call. = FALSE)
  req$content
}
