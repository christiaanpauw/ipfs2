
#' @title ipfs_swarm
#' @export
#' @rdname ipfs_swarm
#' @example ipfs_swarm()

ipfs_swarm <- function(){
  list(
    local = ipfs_json("swarm/addrs/local")$Strings,
    peers = ipfs_json("swarm/peers")$Strings
  )
}
