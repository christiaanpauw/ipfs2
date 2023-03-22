

#' @title ipfs_server
#' @export
#' @rdname ipfs
#' @param new_url set a different API server. Default is "http://127.0.0.1:5001"
#' @example ipfs_server()

ipfs_server <- local({
  provider_url <- "http://127.0.0.1:5001"
  function(new_url = NULL){
    if(length(new_url)){
      new_url <- sub("/$", "", new_url)
      req <- curl::curl_fetch_memory(paste0(new_url, "/api/v0/version"))
      if(req$status_code != 200)
        stop(sprintf("Failed to connect (HTTP %d)", req$status_code), call. = FALSE)
      provider_url <<- new_url
    }
    return(provider_url)
  }
})
