#' @title Manaaki Whenua colour palettes
#' @description List of colours for the Manaaki Whenua palettes
#' @author Pierre Roudier
#' @export
mw_palettes <- list(
  `grey` = mw_cols("black", "grey", "light grey"),
  `dark` = mw_cols("black", "grey", "blue", "green", "orange"),
  `secondary` = mw_cols("blue", "green", "orange"),
  `light` = mw_cols("grey", "light blue", "light green", "light orange")
)

#' @title Return function to interpolate a Manaaki Whenua colour palette
#' @description Generates a colour palette function from one of the Manaaki Whenua suite of colours.
#' @param palette Character name of palette in mw_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @importFrom grDevices colorRampPalette
#' @export
mw_pal <- function(palette = "dark", reverse = FALSE, ...) {
  pal <- mw_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
}

