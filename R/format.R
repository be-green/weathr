#' Make Nice Times for Printing from Hourly Info
#' @param datetimes
nice_times = function(datetimes) {
  gsub(x = strftime(datetimes, "%I:%M %p"),
       pattern = "^0",
       replacement = "")
}

ptol_sunset = function() {
  c(
    "#364B9A", "#4A7BB7", "#6EA6CD", "#98CAE1",
    "#C2E4EF", "#EAECCC", "#FEDA8B", "#FDB366",
    "#F67E4B", "#DD3D2D", "#A50026"
  )
}

ptol_nightfall = function() {
  c(
    "#125A56", "#00767B", "#238F9D", "#42A7C6",
    "#60BCE9", "#9DCCEF", "#C6DBED", "#DEE6E7",
    "#ECEADA", "#F0E6B2", "#F9D576", "#FFB954",
    "#FD9A44", "#F57634", "#E94C1F", "#D11807",
    "#A01813"
  )
}

#' @importFrom grDevices col2rgb
#' @importFrom grDevices gray
text_colors = function(hex_list) {
  rgb_vals = grDevices::col2rgb(hex_list)
  luminance = (c(0.299, 0.587, 0.114) %*% rgb_vals) / 255
  grDevices::gray(1 - luminance)
}

#' build styles
#' @importFrom cli combine_ansi_styles
#' @param palette function that returns a palette
build_styles = function(palette) {
  pal = palette()
  text = text_colors(pal)
  styles = sapply(pal, cli::make_ansi_style, bg = T)
  tstyles = sapply(text, cli::make_ansi_style, bg = F)
  for (i in 1:length(styles) ) {
    styles[[i]] = cli::combine_ansi_styles(styles[[i]], tstyles[[i]])
  }
  styles
}

#' Get color palette for temperature colors
#' @param temp temperature vector
#' @param palette function returning color palette
#' @importFrom cli make_ansi_style
temperature_colors = function(temps, styles) {
  num_breaks = length(styles)
  breakpoints = seq(-20, 120, by = 140 / num_breaks)
  interval = findInterval(temps, breakpoints, all.inside = T)
  styles[interval]
}

cli_temperature_forecast = function(times, temps) {
  print_times = paste0(nice_times(times), ": ", temps)
  styles = temperature_colors(temps, sunset_styles)
  for(i in 1:length(print_times)) {
    cat(styles[[i]](print_times[i]))
    cat(" ")
  }
}

hourly_temps = function(hourly_data, hours = 12) {
  data = get_hourly_table(hourly_data, hours)
  cli::cli_h1(paste0("\U1F321 Temperature over the next ", hours, " hours"))
  cli_temperature_forecast(data$startTime, data$temperature)
}
