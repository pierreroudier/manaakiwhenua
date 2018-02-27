#' @title Manaaki Whenua corporate colours
#' @description A vector of the Manaaki Whenua corporate colours. The vector is named so to be able to refer to colours by name.
#' @author Pierre Roudier, from the "Manaaki Whenua colour theme" page of the brand toolkit.
#' @export
mw_colours <- c(
  `black` = "#282829",
  `grey` = "#85878a",
  `light grey` = "#d1d2d4",
  `blue` = "#009cbd",
  `light blue` = "#00c1d5",
  `green` = "#64a70b",
  `light green` = "#b7db57",
  `orange` = "#ffa400",
  `light orange` = "#ebb700"
)

#' @title Extract Manaaki Whenua colours as HEX
#' @description Function to extract the Manaaki Whenua colours as HEX codes
#' @param ... Either the character names of of the colours available in `mw_colors`, or integer(s) giving their position in `mw_colours`.
#' @author Pierre Roudier
#' @export
mw_cols <- function(...) {
  
  cols <- c(...)
  
  if (is.null(cols))
    return(mw_colours)
  
  mw_colours[cols]
}

