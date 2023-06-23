#' Get geocoded lat/lon from the census
#' @param address address to get the lat and lon from
#' @importFrom jsonlite fromJSON
get_location = function(address) {

  root = "https://geocoding.geo.census.gov/"
  path = "geocoder/locations/onelineaddress"
  query = paste0("?address=", curl::curl_escape(address))

  match = jsonlite::fromJSON(
    paste0(root, path, query, "&benchmark=2020&format=json")
  )

  if(length(match$result$addressMatches) > 0) {
    message("Using matched address ",
            match$result$addressMatches$matchedAddress[1])

    list(
      lat = match$result$addressMatches$coordinates$y[1],
      lon = match$result$addressMatches$coordinates$x[1]
    )
  } else {
    stop("Address couldn't be matched.")
  }
}


