scale_age <- readxl::read_xlsx(
  "data-raw/Scale Age Data Set - Copy.xlsx",
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
  setNames(c("brood_year", "captures", "age")) %>%
  tibble::as_tibble()

usethis::use_data(scale_age, overwrite = TRUE)
