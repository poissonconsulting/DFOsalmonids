test_that("scale_age", {
  expect_equal(nrow(scale_age), 112)
  expect_equal(ncol(scale_age), 3)
  
  expect_true(chk::vld_s3_class(scale_age, "data.frame"))
  
  expect_true(chk::vld_identical(
    colnames(scale_age),
    c(
      "brood_year",
      "captures",
      "age"
    )
  ))
  
  expect_true(chk::vld_s3_class(scale_age$brood_year, "numeric"))
  expect_true(chk::vld_s3_class(scale_age$captures, "numeric"))
  expect_true(chk::vld_s3_class(scale_age$age, "factor"))
}
)
