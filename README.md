
<!-- README.md is generated from README.Rmd. Please edit that file -->



# covmobility <img src="man/figures/hex-covmobility.png" align="right" width="240">

<!-- badges: start -->
[![R build status](https://github.com/kjhealy/covmobility/workflows/R-CMD-check/badge.svg)](https://github.com/kjhealy/covmobility/actions) 
<!-- badges: end -->

## About the package

`covmobility` is a data package for R that collects and bundles datasets related to [the COVID-19 pandemic](https://www.who.int/emergencies/diseases/novel-coronavirus-2019) released by Apple and Google. The data are current as of Monday, November  9, 2020. Minimal post-processing of the data has been done in comparison to the original sources, beyond conversion to [tibbles](https://tibble.tidyverse.org) and transformation into [narrow](https://en.wikipedia.org/wiki/Wide_and_narrow_data)- or [tidy](https://en.wikipedia.org/wiki/Tidy_data) form. 

`covmobility` provides the following: 

- Data from [Apple](http://apple.com/covid19) on relative trends in mobility in cities and countries since mid-January of 2020, based on usage of their Maps application.
- Data from [Google](https://www.google.com/covid19/mobility/data_documentation.html) on relative trends in mobility in regions and countries since mid-January of 2020, based on location and activity information.

## Caveat Emptor

**The data are provided as-is**. More information about collection methods, scope, limits, and possible sources of error in the data can be found in the documentation provided by their respective sources.

## Installation

There are two ways to install the `covmobility` package. 

### Install direct from GitHub

You can install covmobility from [GitHub](https://github.com/kjhealy/covmobility) with:

``` r
remotes::install_github("kjhealy/covmobility")
```

### Installation using `drat`

While using `install_github()` works just fine, it would be nicer to be able to just type `install.packages("covmobility")` or `update.packages("covmobility")` in the ordinary way. We can do this using Dirk Eddelbuettel's [drat](http://eddelbuettel.github.io/drat/DratForPackageUsers.html) package. Drat provides a convenient way to make R aware of package repositories other than CRAN.

First, install `drat`:


```r
if (!require("drat")) {
    install.packages("drat")
    library("drat")
}
```

Then use `drat` to tell R about the repository where `covmobility` is hosted:


```r
drat::addRepo("kjhealy")
```

You can now install `covmobility`:


```r
install.packages("covmobility")
```

To ensure that the `covmobility` repository is always available, you can add the following line to your `.Rprofile` or `.Rprofile.site` file:


```r
drat::addRepo("kjhealy")
```

With that in place you'll be able to do `install.packages("covmobility")` or `update.packages("covmobility")` and have everything work as you'd expect. 

Note that my drat repository only contains data packages that are not on CRAN, so you will never be in danger of grabbing the wrong version of any other package.

## Loading the Data


```r
library(tidyverse) # Optional but strongly recommended
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
#> ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
#> ✓ tibble  3.0.4     ✓ dplyr   1.0.2
#> ✓ tidyr   1.1.2     ✓ stringr 1.4.0
#> ✓ readr   1.3.1     ✓ forcats 0.5.0
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::filter()  masks stats::filter()
#> x purrr::is_null() masks testthat::is_null()
#> x dplyr::lag()     masks stats::lag()
#> x dplyr::matches() masks tidyr::matches(), testthat::matches()
library(covmobility)
#> 
#> Attaching package: 'covmobility'
#> The following object is masked from 'package:kjhutils':
#> 
#>     %nin%
```


```r
apple_mobility %>%
  filter(region == "New York City", transportation_type == "walking")
#> # A tibble: 263 x 8
#>    geo_type region transportation_… alternative_name sub_region country
#>    <chr>    <chr>  <chr>            <chr>            <chr>      <chr>  
#>  1 city     New Y… walking          NYC              New York   United…
#>  2 city     New Y… walking          NYC              New York   United…
#>  3 city     New Y… walking          NYC              New York   United…
#>  4 city     New Y… walking          NYC              New York   United…
#>  5 city     New Y… walking          NYC              New York   United…
#>  6 city     New Y… walking          NYC              New York   United…
#>  7 city     New Y… walking          NYC              New York   United…
#>  8 city     New Y… walking          NYC              New York   United…
#>  9 city     New Y… walking          NYC              New York   United…
#> 10 city     New Y… walking          NYC              New York   United…
#> # … with 253 more rows, and 2 more variables: date <date>, score <dbl>
```


## Documentation and Summary Codebook 

To learn more about the different datasets available, consult the documentation or, equivalently, [the package website](https://kjhealy.github.io/covmobility/articles/covmobility.html). For a codebook-like summary of the variables in each table, see the [Codebook vignette](https://kjhealy.github.io/covmobility/articles/codebook.html)

## Citing the `covmobility` package

To cite the package use the following:


```r
citation("covmobility")
#> 
#> To cite the package `covmobility` in publications use:
#> 
#>   Kieran Healy. 2020. covmobility: Mobility Data from Apple and Google.
#>   R package version 0.1.0, <http://kjhealy.github.io/covmobility>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {covmobility: Mobility Data from Apple and Google},
#>     author = {Kieran Healy},
#>     year = {2020},
#>     note = {R package version 0.1.0},
#>     url = {http://kjhealy.github.io/covmobility},
#>   }
```

Please be sure to also cite the specific data sources, as described in the documentation for each dataset. 

