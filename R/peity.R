#'  Converts an element's content into a svg mini chart
#'
#' Easily converts an element's content into a svg mini pie, donut, line or bar chart.
#' Peity function is a wrapper around peity.js and it is compatible with any browser
#' that supports svg: Chrome, Firefox, IE9+, Opera, Safari. You can use `peity()` and specify
#' the chart or use the chart name function. Ex.: `peity(c(1, 2, 3), type = "bar")` is similar
#' to `bar(c(1, 2, 3))`.
#'
#' @param data A vector specifying the values to the chart.
#' @param type A string specifying the chart. The options are: "bar", "line", "pie" or "donut".
#' @param width The chart width. The package already adjusts the chart to the line. Use it
#' if you want a specific width.
#' @param height The chart height. The package already adjusts the chart to the line. Use it
#' if you want a specific height.
#' @param elementId A string with the elementId. The package already generates this and you don't
#' need to worry. Use this parameter if you need to pass a specific elementId.
#' @param ... A list of specific options to hte chart. See details in
#' <https://benpickles.github.io/peity/>.
#'
#' @examples
#' # generate an inline bar plot
#' bar1 <- peity(c(1, 2, 3), type = "bar")
#' bar2 <- bar(c(1, 2, 3))
#'
#' \dontrun{
#' # if you want to see the result in your browser
#' bar1
#' bar2
#' }
#'
#' @name peity
NULL

#' @rdname peity
#' @export
peity <- function(data,  type = "bar",
                  width = NULL, height = NULL, elementId = NULL,
                  ...) {
  x = list(
    data = data,
    type = type,
    options = NULL
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'peity',
    x,
    width = width,
    height = height,
    package = 'peity.js',
    sizingPolicy = htmlwidgets::sizingPolicy(
      viewer.fill = FALSE
    ),
    elementId = elementId
  )
}

peity_html <- function(id, style, class, ...){
  htmltools::tags$span(id = id, class = class)
}

#' @rdname peity
#' @export
bar <- function(data,
                width = NULL, height = NULL, elementId = NULL,
                ...) {
  peity(data, type = "bar",width, height, elementId, ...)
}

#' @rdname peity
#' @export
line <- function(data,
                 width = NULL, height = NULL, elementId = NULL,
                 ...) {
  peity(data, type = "line", width, height, elementId, ...)
}

#' @rdname peity
#' @export
pie <- function(data,
                width = NULL, height = NULL, elementId = NULL,
                ...) {
  peity(data, type = "pie", width, height, elementId, ...)
}

#' @rdname peity
#' @export
donut <- function(data,
                  width = NULL, height = NULL, elementId = NULL,
                  ...) {
  peity(data, type = "donut", width, height, elementId, ...)
}
