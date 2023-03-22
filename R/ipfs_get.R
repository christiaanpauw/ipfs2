#' @title ipfs_get
#' @export
#' @name ipfs
#' @rdname ipfs_get
#' @param key a multihash key
#' @references IPFS api: \url{https://ipfs.io/docs/api/}
#' Draft paper: \url{https://ipfs.io/ipfs/QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX/ipfs.draft3.pdf}
#' @examples # From 'getting started'
#' ipfs_daemon(TRUE)
#' ipfs_info()
#' ipfs_get('QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG')

ipfs_get <- function(key){
  ipfs_json(command = "object/get", arg = key)
}
