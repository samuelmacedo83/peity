check_peity_chart <- function(x, type) {
  expect_equal(length(x), 8)
  expect_equal(x$x$data, c(1, 2, 3))
  expect_equal(x$x$type, type)
}
