library(dplyr)
library(tidyr)
library(readxl)

rm(list = ls())

scale_age <- read_xlsx(
  "data-raw/Scale Age Data Set - Copy.xlsx",
  range = "A2:E30"
) %>%
  pivot_longer(!`Brood Year`, names_to = "age", values_to = "captures") %>%
  rename(brood_year = `Brood Year`) %>%
  mutate(across(everything(), ~as.integer(.x))) %>%
  replace_na(list(age = 0L))

usethis::use_data(scale_age, overwrite = TRUE)
