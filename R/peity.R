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




#' Shiny bindings for peity
#'
#' Output and render functions for using peity within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a peity
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name peity-shiny
#'
#' @export
peityOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'peity', width, height, package = 'peity.js')
}

#' @rdname peity-shiny
#' @export
renderPeity <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, peityOutput, env, quoted = TRUE)
}
