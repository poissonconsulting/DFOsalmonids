test_that("scale_age column and row lengths unchanged", {
  expect_equal(nrow(scale_age), 112)
  expect_equal(ncol(scale_age), 3)
})

test_that("scale_age data is tibble/dataframe", {
  expect_s3_class(scale_age, "data.frame")
})

test_that("scale_age column names unchanged", {
  expect_identical(
    colnames(scale_age),
    c(
      "brood_year",
      "age",
      "captures"
    )
  )
})

test_that("scale_age columns have correct data types", {
  expect_type(scale_age$brood_year, "integer")
  expect_type(scale_age$captures, "integer")
  expect_type(scale_age$age, "integer")
})
