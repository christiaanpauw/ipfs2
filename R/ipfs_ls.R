
#' @title ipfs_ls
#' @export
#' @rdname ipfs
#' @example ipfs_ls(key = "QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG")

ipfs_ls <- function(key){
  ipfs_json("ls", arg = key)
}
