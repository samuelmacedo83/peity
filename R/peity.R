#' <Add Title>
#'
#' <Add Description>
#'
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

#' @export
bar <- function(data,
                width = NULL, height = NULL,
                elementId = NULL,
                ...) {
  peity(data, type = "bar",width, height, elementId, ...)
}

#' @export
line <- function(data,
                 width = NULL, height = NULL,
                 elementId = NULL,
                 ...) {
  peity(data, type = "line",width, height, elementId, ...)
}

#' @export
pie <- function(data,
                width = NULL, height = NULL,
                elementId = NULL,
                ...) {
  peity(data, type = "pie", width, height, elementId, ...)
}

#' @export
donut <- function(data,
                  width = NULL, height = NULL,
                  elementId = NULL,
                  ...) {
  peity(data, type = "donut", width, height, elementId, ...)
}
