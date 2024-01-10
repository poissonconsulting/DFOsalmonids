# use expanded sheet since more data (TotCatch has 189 more non-NA data points)
salmonids <- readxl::read_xlsx(
  "~/Code/DFOsalmonids/data-raw/2021-04-28 Recoveries by Catch Region_Chinook_All years - Copy.xlsx",
  sheet = "Expanded"
) |>
  subset(
    select = c(
      PROJ_NAME,
      SPECIES_CODE,
      SPECIES_NAME,
      RUN_CODE,
      RUN_NAME,
      BROOD_YEAR,
      STOCK_NAME,
      STOCK_TYPE_CODE,
      REARING_TYPE_CODE,
      FACILITY_NAME,
      RELEASE_SITE_NAME,
      PROD_AREA_CODE,
      STAGE_CODE,
      RELEASE_STAGE_NAME,
      RELEASE_CODE,
      TAG_USE_INDEX,
      MRP_TAGCODE,
      RELEASE_YEAR,
      START_DATE,
      END_DATE,
      AVE_LENGTH,
      AVE_WEIGHT,
      MARK_TYPE_CODE,
      RPUR_CODE,
      SURVIVAL_CODE,
      EXPLOIT_CODE,
      MARINE_DIST_CODE,
      BIOSTND_CODE,
      TAG_LOSS_RATE,
      Clip,
      TotTagged,
      TotRelease,
      Age,
      RLDT_ID,
      RecovYear,
      CDNCatch,
      USCatch,
      TotCatch,
      Escape
    )
  )

usethis::use_data(salmonids, overwrite = TRUE)
