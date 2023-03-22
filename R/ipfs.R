#' IPFS
#' Connect to the inter-planetary file system.

#' @export
#' @rdname ipfs
#' @example conf <- ipfs_config()
#' names(conf)
#' conf$Addresses

ipfs_config <- function(){
  ipfs_json("config/show")
}

#' @export
#' @rdname ipfs
#' @param gateway any IPFS gateway server
#' @example ipfs_browse("QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme")

ipfs_browse <- function(key, gateway = "https://ipfs.io/ipfs/"){
  url <- paste0(gateway, key)
  utils::browseURL(url)
  return(url)
}

#' @export
#' @rdname ipfs
ipfs_webui <- function(){
  ipfs_info() #check that demon is online
  utils::browseURL(ipfs_api("webui"))
}

#' @export
#' @rdname ipfs
ipfs_commands <- function(){
  print_tree <- function(x, indent){
    opts <- unlist(sapply(x$Options, function(y){y$Names[[1]]}))
    optstr <- ifelse(length(opts), paste("[", paste0("--", opts, collapse = ", "), "]"), " ")
    cat(sprintf("%s- %s %s\n", strrep(' ', indent), x$Name, optstr))
    lapply(x$Subcommands, print_tree, indent = indent + 2)
  }
  buf <- ipfs_raw("commands", enc = "json")
  data <- jsonlite::fromJSON(rawToChar(buf), simplifyVector = FALSE)
  invisible(lapply(data[[2]], print_tree, indent = 2))
}
