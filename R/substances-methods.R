#' Addition Method for Substances
#'
#' This method allows the addition of two substances with the same name.
#'
#' @param e1 An object of class `"substances"`.
#' @param e2 An object of class `"substances"`.
#'
#' @return A new `"substances"` object with the combined molecular weight.
#' @examples
#' water1 <- substance("water", 18.02)
#' water2 <- substance("water", 18.02)
#' result <- water1 + water2  # Returns a new substance with molecular weight 36.04
#' print(result)
#'
#' @rdname substances-arithmetic
#' @export
setMethod("+", signature(e1 = "substances", e2 = "substances"),
          function(e1, e2) {
            if (e1@name != e2@name) stop("Cannot add different substances")
            return(new("substances", name = e1@name,
                       molecular_weight = e1@molecular_weight + e2@molecular_weight,
                       unit = e1@unit))
          })

#' Multiplication Method for Substances
#'
#' This method allows multiplying a substance's molecular weight by a numeric value.
#'
#' @param e1 An object of class `"substances"`.
#' @param e2 A numeric value.
#'
#' @return A new `"substances"` object with the molecular weight scaled by `e2`.
#' @examples
#' water <- substance("water", 18.02)
#' result <- water * 2  # Returns a new substance with molecular weight 36.04
#' print(result)
#'
#' @rdname substances-arithmetic
#' @export
setMethod("*", signature(e1 = "substances", e2 = "numeric"),
          function(e1, e2) {
            return(new("substances", name = e1@name,
                       molecular_weight = e1@molecular_weight * e2,
                       unit = e1@unit))
          })

#' Logarithm is Not Applicable to Substances
#'
#' This method prevents taking the logarithm of a substance object, as it is not a valid operation.
#'
#' @param x An object of class `"substances"`.
#'
#' @return Throws an error.
#' @examples
#' \dontrun{
#' log(substance("water", 18.02))  # This will raise an error
#' }
#'
#' @rdname substances-math
#' @export
setMethod("log", signature(x = "substances"),
          function(x) {
            stop("Logarithm not applicable to substances")
          })
