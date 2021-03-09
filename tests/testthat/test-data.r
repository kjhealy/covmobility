## Testing the datasets to see if they are as expected
context("Validating package data objects")
library(covmobility)


## apple_mobility
test_that("apple_mobility conforms to spec", {
  apple_mobility_colnames <- c("geo_type", "region", "transportation_type",
                               "alternative_name", "sub_region", "country", "date", "score")
  expect_equal(colnames(apple_mobility), apple_mobility_colnames)
})

## google_mobility
test_that("google_mobility conforms to spec", {
  google_mobility_colnames <- c("country_region_code", "country_region", "sub_region_1",
                                "sub_region_2", "metro_area", "iso3166_2", "census_fips_code", "place_id", "date", "type", "pct_diff")
  expect_equal(colnames(google_mobility), google_mobility_colnames)
})

