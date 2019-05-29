#' Formats numbers in Euros
#' @param x number
#' @return string
#' @export
#' @importFrom scales dollar
#' @examples
#' eur(100000)
#' eur(10.784765482734823)

eur <- function(x) {
  dollar(x, prefix = '€', suffix = '', big.mark = ",")
}
