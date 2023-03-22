
#' ipfs_json
#'
#' @param command
#' @param ...
#'
#' @return character from jsonlite::fromJSON
#' @export
#'
#' @examples  ipfs_json("object/get", arg = "QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG")

ipfs_json <- function(command, ...){
  data <- ipfs_raw(command, enc = "json", ...)
  jsonlite::fromJSON(rawToChar(data))
}
