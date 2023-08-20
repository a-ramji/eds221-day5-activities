# Storm Runoff Function

#' Stormwater Runoff Volume Estimator
#'
#' @param impervious_frac The fraction of the watershed that is considered "impervious" (unitless)
#' @param area Watershed area (acres)
#'
#' @return expected volume (in cubic meters) of stormwater for a specified watershed
#' @export
#'
#' @examples The "simple method" used for estimating the volume of stormwater expected for a watershed.
predict_runoff <- function(impervious_frac, area) {

  runoff_coefficient <- (0.05 + (0.9 * impervious_frac))

  volume <- (3630 * runoff_coefficient * area)

  return(volume)


}
