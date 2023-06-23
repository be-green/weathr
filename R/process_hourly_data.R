#' Parse the weather time period format that's ugly
#' @param weather_times start or end times for interval
#' as returned by the API
parse_time = function(weather_times) {
  as.POSIXct(weather_times, format = "%Y-%m-%dT%H:%M:%S")
}

#' Process the hourly table into a nicer format
#' @param hourly_data data returned by the hourly forecast API
get_hourly_table = function(hourly_data, hours = 12) {
  hourly_data = hourly_data$properties$periods
  hourly_data$startTime = parse_time(hourly_data$startTime)
  hourly_data$endTime = parse_time(hourly_data$endTime)
  hourly_data[hourly_data$number <= hours, ]
}

#' Plot hourly data in various ways in the console
#' @importFrom cli console_width
#' @importFrom txtplot txtplot
#' @importFrom cli cli_h1
plot_hourly_temperature = function(hourly_data, hours = 12) {
  plot_data = get_hourly_table(hourly_data, hours)
  cli::cli_h1(paste0("\U1F321 Temperature over the next ", hours, " hours"))
  txtplot::txtplot(plot_data$number,
         plot_data$temperature,
         ylab = "Temperature",
         xlab = "Time",
         width = cli::console_width())
}

#' Plot hourly data in various ways in the console
#' @importFrom cli console_width
#' @importFrom txtplot txtplot
#' @importFrom cli cli_h1
plot_rain_chance = function(hourly_data, hours = 12) {
  plot_data = get_hourly_table(hourly_data, hours)
  cli::cli_h1(paste0("\U2614 Probability of rain over the next ", hours, " hours"))
  txtplot::txtplot(plot_data$number,
                   plot_data$probabilityOfPrecipitation$value,
                   ylab = "Temperature",
                   xlab = "Time",
                   width = cli::console_width())
}
