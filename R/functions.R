#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

#' Convenience 'not-in' operator
#'
#' Complement of the built-in operator `%in%`. Returns the elements of `x` that are not in `y`.
#' @title `%nin%`
#' @param x vector of items
#' @param y vector of all values
#' @return logical vector of items in x not in y
#' @author Kieran Healy
#' @rdname nin
#' @examples
#' fruit <- c("apples", "oranges", "banana")
#' "apples" %nin% fruit
#' "pears" %nin% fruit
#' @export
"%nin%" <- function(x, y) {
  return( !(x %in% y) )
}


#' @title fmt_nc
#' @description Format fmt_nc in df
#' @param x df
#' @return formatted string
#' @details use in fn documentation
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname fmt_nc
#' @author Kieran Healy
fmt_nc <- function(x){
  prettyNum(ncol(x), big.mark=",", scientific=FALSE)
}


#' @title fmt_nr
#' @description Format fmt_nr in df
#' @param x df
#' @return formatted string
#' @details use in fn documentation
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @author Kieran Healy
fmt_nr <- function(x){
  prettyNum(nrow(x), big.mark=",", scientific=FALSE)
}

#' @title tabular
#' @description Make an Rd table from a data frame
#' @param df Data frame
#' @param ... Other args
#' @return Rd table
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @author Kieran Healy
#' @source http://
tabular <- function(df, ...) {
  stopifnot(is.data.frame(df))

  align <- function(x) if (is.numeric(x)) "r" else "l"
  col_align <- vapply(df, align, character(1))

  cols <- lapply(df, format, ...)
  contents <- do.call("paste",
                      c(cols, list(sep = " \\tab ", collapse = "\\cr\n#'   ")))

  paste("#' \\tabular{", paste(col_align, collapse = ""), "}{\n#'   ",
        paste0("\\strong{", names(df), "}", sep = "", collapse = " \\tab "), " \\cr\n#'   ",
        contents, "\n#' }\n", sep = "")
}

