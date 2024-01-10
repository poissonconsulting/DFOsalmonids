test_that("salmonids column and row lengths unchanged", {
  expect_equal(nrow(salmonids), 18512)
  expect_equal(ncol(salmonids), 39)
})

test_that("salmonids data is tibble/dataframe", {
  expect_s3_class(salmonids, "tbl")
})

test_that("salmonids column names unchanged", {
  expect_identical(
    colnames(salmonids),
    c(
      "PROJ_NAME",
      "SPECIES_CODE",
      "SPECIES_NAME",
      "RUN_CODE",
      "RUN_NAME",
      "BROOD_YEAR",
      "STOCK_NAME",
      "STOCK_TYPE_CODE",
      "REARING_TYPE_CODE",
      "FACILITY_NAME",
      "RELEASE_SITE_NAME",
      "PROD_AREA_CODE",
      "STAGE_CODE",
      "RELEASE_STAGE_NAME",
      "RELEASE_CODE",
      "TAG_USE_INDEX",
      "MRP_TAGCODE",
      "RELEASE_YEAR",
      "START_DATE",
      "END_DATE",
      "AVE_LENGTH",
      "AVE_WEIGHT",
      "MARK_TYPE_CODE",
      "RPUR_CODE",
      "SURVIVAL_CODE",
      "EXPLOIT_CODE",
      "MARINE_DIST_CODE",
      "BIOSTND_CODE",
      "TAG_LOSS_RATE",
      "Clip",
      "TotTagged",
      "TotRelease",
      "Age",
      "RLDT_ID",
      "RecovYear",
      "CDNCatch",
      "USCatch",
      "TotCatch",
      "Escape"
    )
  )
})

test_that("salmonids columns have correct data types", {
  expect_type(salmonids$PROJ_NAME, "character")
  expect_type(salmonids$PROJ_NAME, "character")
  expect_type(salmonids$SPECIES_CODE, "character")
  expect_type(salmonids$SPECIES_NAME, "character")
  expect_type(salmonids$RUN_CODE, "character")
  expect_type(salmonids$RUN_NAME, "character")
  expect_type(salmonids$BROOD_YEAR, "double")
  expect_type(salmonids$STOCK_NAME, "character")
  expect_type(salmonids$STOCK_TYPE_CODE, "character")
  expect_type(salmonids$REARING_TYPE_CODE, "character")
  expect_type(salmonids$FACILITY_NAME, "character")
  expect_type(salmonids$RELEASE_SITE_NAME, "character")
  expect_type(salmonids$PROD_AREA_CODE, "character")
  expect_type(salmonids$STAGE_CODE, "character")
  expect_type(salmonids$RELEASE_STAGE_NAME, "character")
  expect_type(salmonids$RELEASE_CODE, "character")
  expect_type(salmonids$TAG_USE_INDEX, "double")
  expect_type(salmonids$MRP_TAGCODE, "character")
  expect_type(salmonids$RELEASE_YEAR, "double")
  expect_type(salmonids$START_DATE, "character")
  expect_type(salmonids$END_DATE, "character")
  expect_type(salmonids$AVE_LENGTH, "double")
  expect_type(salmonids$AVE_WEIGHT, "double")
  expect_type(salmonids$MARK_TYPE_CODE, "character")
  expect_type(salmonids$RPUR_CODE, "character")
  expect_type(salmonids$SURVIVAL_CODE, "character")
  expect_type(salmonids$EXPLOIT_CODE, "character")
  expect_type(salmonids$MARINE_DIST_CODE, "character")
  expect_type(salmonids$BIOSTND_CODE, "character")
  expect_type(salmonids$TAG_LOSS_RATE, "double")
  expect_type(salmonids$Clip, "character")
  expect_type(salmonids$TotTagged, "double")
  expect_type(salmonids$TotRelease, "double")
  expect_type(salmonids$Age, "double")
  expect_type(salmonids$RLDT_ID, "double")
  expect_type(salmonids$RecovYear, "double")
  expect_type(salmonids$CDNCatch, "double")
  expect_type(salmonids$USCatch, "double")
  expect_type(salmonids$TotCatch, "double")
  expect_type(salmonids$Escape, "double")
})
