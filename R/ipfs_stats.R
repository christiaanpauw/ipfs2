
#' @title ipfs_stats
#' @export
#' @rdname ipfs
#' @example ipfs_stats()

ipfs_stats <- function(){
  list(
    bitswap = ipfs_json("stats/bitswap"),
    repo = ipfs_json("stats/repo"),
    bw = ipfs_json("stats/bw")
  )
}
