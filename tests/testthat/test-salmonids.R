test_that("salmonids", {
  expect_equal(nrow(salmonids), 18512)
  expect_equal(ncol(salmonids), 39)

  expect_true(chk::vld_s3_class(salmonids, "tbl"))

  expect_true(chk::vld_identical(
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
  ))

  expect_true(chk::vld_s3_class(salmonids$PROJ_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$SPECIES_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$SPECIES_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$RUN_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$RUN_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$BROOD_YEAR, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$STOCK_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$STOCK_TYPE_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$REARING_TYPE_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$FACILITY_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$RELEASE_SITE_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$PROD_AREA_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$STAGE_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$RELEASE_STAGE_NAME, "character"))
  expect_true(chk::vld_s3_class(salmonids$RELEASE_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$TAG_USE_INDEX, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$MRP_TAGCODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$RELEASE_YEAR, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$START_DATE, "character"))
  expect_true(chk::vld_s3_class(salmonids$END_DATE, "character"))
  expect_true(chk::vld_s3_class(salmonids$AVE_LENGTH, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$AVE_WEIGHT, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$MARK_TYPE_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$RPUR_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$SURVIVAL_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$EXPLOIT_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$MARINE_DIST_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$BIOSTND_CODE, "character"))
  expect_true(chk::vld_s3_class(salmonids$TAG_LOSS_RATE, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$Clip, "character"))
  expect_true(chk::vld_s3_class(salmonids$TotTagged, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$TotRelease, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$Age, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$RLDT_ID, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$RecovYear, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$CDNCatch, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$USCatch, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$TotCatch, "numeric"))
  expect_true(chk::vld_s3_class(salmonids$Escape, "numeric"))
})
