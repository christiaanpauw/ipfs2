
#' @export
#' @rdname ipfs

ipfs_info <- function(){
  version <- ipfs_json("version")
  id <- ipfs_json("id")
  c(id, version)
}
