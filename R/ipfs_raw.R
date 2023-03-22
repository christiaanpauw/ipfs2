
#' ipfs_raw
#'
#' @param command
#' @param ...
#' @param post
#'
#' @return
#' @export
#'
#' @examples

ipfs_raw <- function(command, ..., post = NULL){
  params <- list(...)
  ipfs_fetch(command, params, post)
}
