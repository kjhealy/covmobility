#' @title Country Names and ISO codes
#' @description Convenience table of country names and their abbreviated names
#' @format A data frame with `r fmt_nr(country_codes)` rows and `r fmt_nc(country_codes)` variables:
#' \describe{
#'   \item{\code{iso2}}{character ISO 2 designation}
#'   \item{\code{iso3}}{character ISO 3 designation}
#'   \item{\code{cname}}{character Country name}
#'   \item{\code{continent}}{Continent}
#'}
#' @details
#'
#' ```{r, results = "asis", echo = FALSE}
#' skimr::skim(dplyr::ungroup(country_codes))
#' ```
#'
#' Produced from the covdata package.
#' @author Kieran Healy
#' @references ISO 2: \url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2} ISO 3: \url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3}
"country_codes"

## Apple Mobility Data
#' @title Apple Mobility Data
#' @description Data from Apple Maps on relative changes in mobility in various cities and countries.
#' @format A data frame with `r fmt_nr(apple_mobility)` rows and `r fmt_nc(apple_mobility)` variables:
#' \describe{
#'   \item{\code{geo_type}}{character Type geographical unit. Values: city or country/region}
#'   \item{\code{region}}{character Name of geographical unit.}
#'   \item{\code{transportation_type}}{character Mode of transport. Values: Driving, Transit, or Walking}
#'   \item{\code{alternative_name}}{character Name of `region` in local language}
#'   \item{\code{sub_region}}{character Subregion}
#'   \item{\code{country}}{character Country name (not provided for all countries)}
#'   \item{\code{date}}{double Date in yyyy-mm-dddd format}
#'   \item{\code{score}}{double Activity score. Indexed to 100 on the first date of observation for a given mode of transport.}
#'}
#' @details
#' ```{r, results = "asis", echo = FALSE}
#' skimr::skim(apple_mobility)
#' ```
#'
#' Data made available by Apple, Inc. at \url{https://www.apple.com/covid19/mobility}, showing relative volume of directions requests per country/region or city compared to a baseline volume on January 13th, 2020. Apple defines the day as midnight-to-midnight, Pacific time. Cities represent usage in greater metropolitan areas and are stably defined during this period. In many countries/regions and cities, relative volume has increased since January 13th, consistent with normal, seasonal usage of Apple Maps. Day of week effects are important to normalize as you use this data. Data that is sent from users’ devices to the Apple Maps service is associated with random, rotating identifiers so Apple does not have a profile of individual movements and searches. Apple Maps has no demographic information about its users, and so cannot make any statements about the representativeness of its usage against the overall population.
#' @author Kieran Healy
#' @source https://www.apple.com/covid19/mobility
#' @references See https://www.apple.com/covid19/mobility for detailed terms of use.
"apple_mobility"


## Google Mobility Data
#' @title Google Mobility Data
#' @description Data from Google's Community Mobility Reports on relative changes in movement trends by location type.
#' @format A data frame with `r fmt_nr(google_mobility)` rows and `r fmt_nc(google_mobility)` variables:
#' \describe{
#'   \item{\code{country_region_code}}{character Country Code}
#'   \item{\code{country_region}}{character Country or Region name}
#'   \item{\code{sub_region_1}}{character Subregion (e.g. US state) name}
#'   \item{\code{sub_region_2}}{character Subregion (e.g. US county) name}
#'   \item{\code{metro_area}}{Metropolitan area name}
#'   \item{\code{iso3166_2}}{character ISO 3166-2 Country/Region code}
#'   \item{\code{census_fips_code}}{character US Census FIPS code}
#'   \item{\code{date}}{double Date in yyyy-mm-dd format}
#'   \item{\code{type}}{character Type of location. Values are retail, grocery (and pharmacy), parts, transit (hubs/stations), workplaces, and residential}
#'   \item{\code{pct_diff}}{integer Percent change from baseline activity}
#'}
#' @details
#' ```{r, results = "asis", echo = FALSE}
#' skimr::skim(google_mobility)
#' ```
#'
#' Location accuracy and the understanding of categorized places varies from region to region, so Google does not recommend using this data to compare changes between countries, or between regions with different characteristics (e.g. rural versus urban areas). Regions or categories are omitted if Google does not have have sufficient statistically significant levels of data for it. Changes for each day are compared to a baseline value for that day of the week. The baseline is the median value, for the corresponding day of the week, during the 5-week period Jan 3–Feb 6, 2020. What data is included in the calculation depends on user settings, connectivity, and whether it meets our privacy threshold. If the privacy threshold isn’t met (when somewhere isn’t busy enough to ensure anonymity) we don’t show a change for the day. As a result, you may encounter empty fields for certain places and dates. We calculate these insights based on data from users who have opted-in to Location History for their Google Account, so the data represents a sample of our users. As with all samples, this may or may not represent the exact behavior of a wider population.
#' @author Kieran Healy
#' @source Google LLC "Google COVID-19 Community Mobility Reports." https://www.google.com/covid19/mobility/ Accessed: `r Sys.Date()`
"google_mobility"

