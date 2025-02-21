#' Get Predefined Substances Database
#'
#' This function returns a list of predefined substances with their molecular weights.
#'
#' @return A named list of `"substances"` objects, where each key is the substance name.
#' @examples
#' db <- get_substances_db()
#' print(db$water)  # Returns the predefined substance "water"
#'
#' @export
get_substances_db <- function() {
  list(
    water = substance("water", 18.02),
    glucose = substance("glucose", 180.16),
    ethanol = substance("ethanol", 46.07)
  )
}

#' Retrieve a Substance from the Database
#'
#' This function retrieves a predefined substance object from the internal database.
#'
#' @param name Character. The name of the substance (e.g., `"water"` or `"glucose"`).
#'
#' @return An object of class `"substances"` representing the requested substance.
#' @examples
#' water <- get_substance("water")
#' print(water)
#'
#' @export
get_substance <- function(name) {
  substances_db <- get_substances_db()
  if (!name %in% names(substances_db)) stop("Substance not found")
  return(substances_db[[name]])
}
