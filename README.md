
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DFOsalmonids

<!-- badges: start -->

[![R-CMD-check](https://github.com/poissonconsulting/DFOsalmonids/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/DFOsalmonids/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

DFOsalmonids is a data package containing salmon catch and release data
(“salmonids”) and example data for salmon counts by age class
(“scale_data”) provided by Fisheries and Oceans Canada (DFO).

## Installation

DFOsalmonids can be installed from GitHub using the remotes package:

``` r
remotes::install_github("poissonconsulting/DFOsalmonids")
```

or alternatively using the pak package:

``` r
pak::pak("poissonconsulting/DFOsalmonids")
```

## Example

Loading in data for use:

``` r
library(DFOsalmonids)
View(salmonids)
View(scale_data)
```

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/DFOsalmonids/issues).

[Pull requests](https://github.com/poissonconsulting/DFOsalmonids/pulls)
are always welcome.

## Code of Conduct

Please note that the DFOsalmonids project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
