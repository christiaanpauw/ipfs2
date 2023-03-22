
#' @title ipfs_data
#' @param key character with path
#' @export
#' @rdname ipfs
#' @example rawToChar(ipfs_data('QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme'))

ipfs_data <- function(key){
  buf <- ipfs_raw("object/data", arg = key)
  if(identical(buf, as.raw(c(0x08, 0x01))))
    stop("Not a data block")
  return(buf)
}
