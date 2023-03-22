

#' @title ipfs_download
#' @export
#' @rdname ipfs_download
#' @param path filename to save download.
#' @examples ipfs_download('QmR7GSQM93Cx5eAg6a6yRzNde1FQv7uL6X1o4k7zrJa3LX/ipfs.draft3.pdf')
#' # utils::browseURL('ipfs.draft3.pdf')

ipfs_download <- function(key, path = NULL){
  if(!length(path))
    path <- basename(key)
  buf <- ipfs_data(key)
  writeBin(buf, path)
  return(path)
}
