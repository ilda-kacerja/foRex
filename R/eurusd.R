#' Exchange rate for the current day
#' @return number
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info log_debug log_trace
#' @examples
#' eurusd()


eurusd <- function(){
  response <- GET(  'https://api.exchangeratesapi.io/latest?base=USD')
  exchange_rates <- content(response)$rates
  log_trace('Found{length(exchangerates)} exchange rates for USD')
  usdeurs <- exchange_rates$EUR
  log_debug('1 USD currently costs {usdeurs} Euros')
  usdeurs
}
