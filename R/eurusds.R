#' Exchange rate for a certain day
#' @param date_from first date we are interested on year-month-date format
#' @param date_to last date we are interested on year-month-date format
#' @return data.table object
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info log_debug log_trace
#' @importFrom data.table data.table

eurusds <- function(date_from, date_to){
  response<- GET(
    'https://api.exchangeratesapi.io/history',
    query = list(
      start_at = date_from,
      end_at   = date_to,
      base     = 'USD',
      symbols  = 'EUR'
    ))
  exchange_rates <- content(response)
  exchange_rates <- exchange_rates$rates
  usdeurs <- data.table(
    date = as.Date(names(exchange_rates)),
    usdeur = as.numeric(unlist(exchange_rates)))
}
