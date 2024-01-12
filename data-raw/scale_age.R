scale_age <- readxl::read_xlsx(
  "~/Code/DFOsalmonids/data-raw/Scale Age Data Set - Copy.xlsx",
  range = "A2:E30"
) |>
  (function(x) {
    cbind(
      x[1],
      stack(
        x,
        select = 2:5
      )
    )
  })() |>
  setNames(c("brood_year", "captures", "age"))

usethis::use_data(scale_age, overwrite = TRUE)
