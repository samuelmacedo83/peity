#' Group texts and charts
#'
#' You can group text and charts in the same p html tag. It is useful when you
#' want write in rmarkdown or shiny.
#'
#' @param ... Text and charts separated by comma.
#'
#' @examples
#' peity_p(
#' "This is", bar(c(1,2,3)), "a inline", donut(c(1,2,3)), "chart!"
#' )
#'
#' @export
peity_p <- function(...){
  htmltools::tagList(
    htmltools::p(...)
  )
}
