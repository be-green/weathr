#' Get weather api request
#' @importFrom jsonlite fromJSON
#' @param req_string string for request
get_request = function(req_string) {
  jsonlite::fromJSON(req_string)
}

#' get properties from weather json
#' @param weather_json json from get_request
properties = function(weather_json) {
  weather_json$properties
}

#' Get endpoints for forecasts given lat and lon
#' @param lat latitude of location
#' @param lon longitude of location
get_forecast_endpoints = function(lat, lon) {
  req_string = paste0("https://api.weather.gov/",
    "/points/", lat, ",", lon
  )
  get_request(req_string)
}

#' Get properties from list of all data
#' @param lat latitude
#' @param lon longitude
get_forecast_properties = function(lat, lon) {
  properties(
    get_forecast_endpoints(lat, lon)
  )
}

#' Get hourly forecast
#' @param lat latitude of location
#' @param lon longitude of location
get_hourly_forecast = function(lat, lon) {
  endpoints = get_forecast_properties(lat, lon)
  get_request(endpoints$forecastHourly)
}

#' Get hourly forecast
#' @param lat latitude of location
#' @param lon longitude of location
get_forecast = function(lat, lon) {
  endpoints = get_forecast_properties(lat, lon)
  get_request(endpoints$forecast)
}

#' Get hourly forecast
#' @param lat latitude of location
#' @param lon longitude of location
get_stations = function(lat, lon) {
  endpoints = get_forecast_properties(lat, lon)
  get_request(endpoints$observationStations)
}

#' Get hourly forecast
#' @param lat latitude of location
#' @param lon longitude of location
get_grid_data = function(lat, lon) {
  endpoints = get_forecast_properties(lat, lon)
  get_request(endpoints$forecastGridData)
}
