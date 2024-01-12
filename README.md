
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DFOsalmonids

<!-- badges: start -->

[![R-CMD-check](https://github.com/poissonconsulting/DFOsalmonids/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/DFOsalmonids/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/poissonconsulting/DFOsalmonids/branch/main/graph/badge.svg?token=dej0VsMNHf)](https://codecov.io/gh/poissonconsulting/DFOsalmonids)
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
```

Viewing column (variable) names:

``` r
colnames(salmonids)
#>  [1] "PROJ_NAME"          "SPECIES_CODE"       "SPECIES_NAME"      
#>  [4] "RUN_CODE"           "RUN_NAME"           "BROOD_YEAR"        
#>  [7] "STOCK_NAME"         "STOCK_TYPE_CODE"    "REARING_TYPE_CODE" 
#> [10] "FACILITY_NAME"      "RELEASE_SITE_NAME"  "PROD_AREA_CODE"    
#> [13] "STAGE_CODE"         "RELEASE_STAGE_NAME" "RELEASE_CODE"      
#> [16] "TAG_USE_INDEX"      "MRP_TAGCODE"        "RELEASE_YEAR"      
#> [19] "START_DATE"         "END_DATE"           "AVE_LENGTH"        
#> [22] "AVE_WEIGHT"         "MARK_TYPE_CODE"     "RPUR_CODE"         
#> [25] "SURVIVAL_CODE"      "EXPLOIT_CODE"       "MARINE_DIST_CODE"  
#> [28] "BIOSTND_CODE"       "TAG_LOSS_RATE"      "Clip"              
#> [31] "TotTagged"          "TotRelease"         "Age"               
#> [34] "RLDT_ID"            "RecovYear"          "CDNCatch"          
#> [37] "USCatch"            "TotCatch"           "Escape"
colnames(scale_age)
#> [1] "brood_year" "captures"   "age"
```

Viewing the first few rows of ‘scale_age’ data:

``` r
head(scale_age)
#>   brood_year captures age
#> 1       1992       NA   2
#> 2       1993       NA   2
#> 3       1996        9   2
#> 4       1997       NA   2
#> 5       1998       NA   2
#> 6       1999       NA   2
```

Viewing the first few rows of a subset from ‘salmonids’ data (only
viewing several of the many columns/variables):

``` r
salmonids[c("SPECIES_NAME",
            "BROOD_YEAR",
            "START_DATE",
            "END_DATE",
            "TotTagged",
            "TotRelease",
            "Age",
            "TotCatch"
          )] |>
  head()
#>   SPECIES_NAME BROOD_YEAR START_DATE END_DATE TotTagged TotRelease Age TotCatch
#> 1      Chinook       1989   19900521 19900521     24620      42400   2     6.85
#> 2      Chinook       1989   19900521 19900521     24620      42400   3    42.10
#> 3      Chinook       1989   19900521 19900521     24620      42400   4   181.66
#> 4      Chinook       1989   19900521 19900521     24620      42400   5    24.12
#> 5      Chinook       1989   19900521 19900521     25723      44300   2    14.21
#> 6      Chinook       1989   19900521 19900521     25723      44300   3    60.63
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
