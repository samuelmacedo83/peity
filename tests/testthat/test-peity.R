test_that("peity works", {
  skip_on_cran()

  data <- c(1, 2, 3)

  # teste peity()
  bar <- peity(data, "bar")
  line <- peity(data, "line")
  pie <- peity(data, "pie")
  donut <- peity(data, "donut")

  check_peity_chart(bar, "bar")
  check_peity_chart(line, "line")
  check_peity_chart(pie, "pie")
  check_peity_chart(donut, "donut")

  # bar(), line(), pie() and donut()
  bar <- peity::bar(data)
  line <- peity::line(data)
  pie <- peity::pie(data)
  donut <- peity::donut(data)

  check_peity_chart(bar, "bar")
  check_peity_chart(line, "line")
  check_peity_chart(pie, "pie")
  check_peity_chart(donut, "donut")
})
