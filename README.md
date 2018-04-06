
<!-- README.md is generated from README.Rmd. Please edit that file -->
insurance
=========

The goal of **insurance** is to provide a curated repository of tidy datasets that can be used in insurance and actuarial science research.

Installation
------------

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kevinykuo/insurance")
```

Example
-------

Currently, the only available dataset is `schedule_p`:

``` r
library(insurance)
schedule_p
#> # A tibble: 77,900 x 16
#>    lob           group_code group_name      accident_year development_year
#>    <chr>         <chr>      <chr>                   <int>            <int>
#>  1 private_pass… 43         IDS Property C…          1988             1988
#>  2 private_pass… 43         IDS Property C…          1988             1989
#>  3 private_pass… 43         IDS Property C…          1988             1990
#>  4 private_pass… 43         IDS Property C…          1988             1991
#>  5 private_pass… 43         IDS Property C…          1988             1992
#>  6 private_pass… 43         IDS Property C…          1988             1993
#>  7 private_pass… 43         IDS Property C…          1988             1994
#>  8 private_pass… 43         IDS Property C…          1988             1995
#>  9 private_pass… 43         IDS Property C…          1988             1996
#> 10 private_pass… 43         IDS Property C…          1988             1997
#> # ... with 77,890 more rows, and 11 more variables: development_lag <int>,
#> #   incurred_loss <dbl>, cumulative_paid_loss <dbl>, bulk_loss <dbl>,
#> #   earned_premium_direct <dbl>, earned_premium_ceded <dbl>,
#> #   earned_premium_net <dbl>, single <int>, posted_reserve_97 <dbl>,
#> #   calendar_year <dbl>, incremental_paid_loss <dbl>
```
