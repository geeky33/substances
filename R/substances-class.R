#' Class for Representing Chemical Substances
#'
#' The `"substances"` class is used to represent chemical substances with attributes such as name, molecular weight, unit, and optional metadata.
#'
#' @slot name Character. The name of the substance (e.g., `"water"` or `"glucose"`).
#' @slot molecular_weight Numeric. The molecular weight of the substance in grams per mole (g/mol).
#' @slot unit Character. The unit of measurement (default is `"g/mol"`).
#' @slot metadata List. Additional metadata about the substance (default is an empty list).
#'
#' @examples
#' water <- substance("water", 18.02)
#' print(water)
#'
#' @export
setClass(
  "substances",
  slots = list(
    name = "character",
    molecular_weight = "numeric",
    unit = "character",
    metadata = "list"
  )
)

#' Create a New Substance Object
#'
#' This function creates a new `"substances"` object, representing a chemical substance with its molecular weight and other attributes.
#'
#' @param name Character. The name of the substance (e.g., `"water"`).
#' @param molecular_weight Numeric. The molecular weight of the substance in grams per mole (g/mol).
#' @param unit Character. The unit of measurement (default is `"g/mol"`).
#' @param metadata List. Additional metadata about the substance (default is an empty list).
#'
#' @return An object of class `"substances"`, containing details about the specified chemical substance.
#' @examples
#' # Create a substance object for water
#' water <- substance("water", 18.02)
#' print(water)
#'
#' # Create a substance with metadata
#' ethanol <- substance("ethanol", 46.07, metadata = list(boiling_point = 78.37))
#' print(ethanol@metadata)
#'
#' @export
substance <- function(name, molecular_weight, unit = "g/mol", metadata = list()) {
  new("substances", name = name, molecular_weight = molecular_weight, unit = unit, metadata = metadata)
}
