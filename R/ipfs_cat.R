
#' @title ipfs_cat
#' @param key character
#' @export
#' @rdname ipfs_cat
#' @example ipfs_cat("QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme")

ipfs_cat <- function(key){
  buf <- ipfs_data(key)
  cat(rawToChar(buf))
  invisible(buf)
}
