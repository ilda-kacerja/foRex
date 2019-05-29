#' Exchange rate for a certain amount in the latest day
#' @param usd the amount in dollars
#' @return number (the amount in EUR)
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info log_debug log_trace
#' @examples
#' convert_usd_eur(54)


convert_usd_to_eur <- function(usd){
  eurusd() * usd
}
