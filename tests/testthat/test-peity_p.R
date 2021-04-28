test_that("peity_p works", {
  skip_on_cran()

  peity_p <- peity_p(
    "This is",
    peity::bar(c(1,2,3), elementId = "test1"),
    "a inline",
    peity::donut(c(1,2,3), elementId = "test2"), "chart!"
  )

  peity_p_string <- as.character(peity_p)

  # text
  expect_true(grepl("This is", peity_p_string))
  expect_true(grepl("a inline", peity_p_string))
  expect_true(grepl("chart!", peity_p_string))

  # tags
  expect_true(grepl("<p>", peity_p_string))
  expect_true(grepl("script", peity_p_string))

  # elements
  expect_true(grepl("peity html-widget", peity_p_string))
  expect_true(grepl("[1,2,3]", peity_p_string))
  expect_true(grepl("bar", peity_p_string))
  expect_true(grepl("donut", peity_p_string))
})
