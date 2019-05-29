#' strips numbers from its Euro currency
#' @param x number with euro sign
#' @return only number
#' @export
#' @importFrom scales dollar
#' @examples
#' uneur("€100,000")
#' uneur("€46,546.99")

uneur <- function(x) {
  x<- gsub('€', '', x)
  as.numeric(gsub(',', '', x))
}
