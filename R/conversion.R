#' Convert Mass to Moles
#'
#' This function converts a given mass (in grams) to the number of moles of a substance.
#'
#' @param mass Numeric. The mass of the substance in grams.
#' @param substance An object of class `"substances"` representing the chemical substance.
#'
#' @return The number of moles (numeric).
#' @examples
#' water <- substance("water", 18.02)
#' mass_to_moles(36.04, water)  # Returns 2
#'
#' @export
mass_to_moles <- function(mass, substance) {
  if (!inherits(substance, "substances")) stop("substance must be of class 'substances'")
  return(mass / substance@molecular_weight)
}

#' Convert Moles to Mass
#'
#' This function converts a given number of moles to mass (grams).
#'
#' @param moles Numeric. The amount of substance in moles.
#' @param substance An object of class `"substances"` representing the chemical substance.
#'
#' @return The mass in grams (numeric).
#' @examples
#' glucose <- substance("glucose", 180.16)
#' moles_to_mass(1, glucose)  # Returns 180.16
#'
#' @export
moles_to_mass <- function(moles, substance) {
  if (!inherits(substance, "substances")) stop("substance must be of class 'substances'")
  return(moles * substance@molecular_weight)
}

#' Convert Medical Laboratory Units
#'
#' This function converts between nonstandard medical laboratory units, such as enzyme activity units.
#'
#' @param value Numeric. The measurement value to be converted.
#' @param from Character. The current unit (e.g., `"U/L"`).
#' @param to Character. The target unit (e.g., `"ukat/L"`).
#'
#' @return The converted value (numeric).
#' @examples
#' convert_medical_units(50, "U/L", "ukat/L")  # Returns 5e-5
#'
#' @export
convert_medical_units <- function(value, from, to) {
  conversion_factors <- list("U/L" = 1, "ukat/L" = 1e-6)
  if (!(from %in% names(conversion_factors) && to %in% names(conversion_factors))) {
    stop("Unsupported unit conversion")
  }
  return(value * (conversion_factors[[to]] / conversion_factors[[from]]))
}
