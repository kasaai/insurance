
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.org/kasaai/insurance.svg?branch=master)](https://travis-ci.org/kasaai/insurance)

# insurance

The goal of **insurance** is to provide a curated repository of tidy
datasets that can be used in insurance and actuarial science research.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kasaai/insurance")
```

## Example

``` r
library(insurance)
schedule_p
#> # A tibble: 77,900 x 16
#>    lob   group_code group_name accident_year development_year
#>    <chr> <chr>      <chr>              <int>            <int>
#>  1 priv… 43         IDS Prope…          1988             1988
#>  2 priv… 43         IDS Prope…          1989             1989
#>  3 priv… 43         IDS Prope…          1990             1990
#>  4 priv… 43         IDS Prope…          1991             1991
#>  5 priv… 43         IDS Prope…          1992             1992
#>  6 priv… 43         IDS Prope…          1993             1993
#>  7 priv… 43         IDS Prope…          1994             1994
#>  8 priv… 43         IDS Prope…          1995             1995
#>  9 priv… 43         IDS Prope…          1996             1996
#> 10 priv… 43         IDS Prope…          1997             1997
#> # ... with 77,890 more rows, and 11 more variables: development_lag <int>,
#> #   incurred_loss <dbl>, cumulative_paid_loss <dbl>, bulk_loss <dbl>,
#> #   earned_premium_direct <dbl>, earned_premium_ceded <dbl>,
#> #   earned_premium_net <dbl>, single <int>, posted_reserve_97 <dbl>,
#> #   calendar_year <dbl>, incremental_paid_loss <dbl>
```
