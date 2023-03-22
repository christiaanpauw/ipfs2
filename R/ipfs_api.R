
#' @title ipfs_api
#' @param ...
#' @return
#' @export
#' @examples

ipfs_api <- function(...){
  paste(ipfs_server(), ..., sep = "/")
}
