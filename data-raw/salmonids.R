library(dplyr)
library(tidyr)
library(stringr)
library(readxl)
library(lubridate)
library(dttr2)

rm(list = ls())

# use expanded sheet since more data (TotCatch has 189 more non-NA data points)
salmonids <- read_xlsx(
  "data-raw/2021-04-28 Recoveries by Catch Region_Chinook_All years - Copy.xlsx",
  sheet = "Expanded"
) %>%
  dplyr::select(
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
  ) %>%
  mutate(across(c(SPECIES_CODE, RUN_CODE, BROOD_YEAR, TAG_USE_INDEX, RELEASE_YEAR, TotTagged, TotRelease, Age, RecovYear), ~as.integer(.x)),
         across(c(START_DATE, END_DATE), ~str_replace(.x, "^(\\d{6,6})$", "\\101")),
         across(c(START_DATE, END_DATE), ~ymd(.x)),
         across(c(START_DATE, END_DATE), ~dtt_date(.x))) 

usethis::use_data(salmonids, overwrite = TRUE)
