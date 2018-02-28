#' @title Colour scale constructor from the Manaaki Whenua colour palettes
#' @description Colour scale constructor for using Manaaki Whenua palettes in `ggplot2`
#' @param palette Character name of the palette (see `mw_palettes`)
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
#'
scale_colour_mw <- function(palette = "dark", discrete = TRUE, reverse = FALSE, ...) {
  pal <- mw_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", paste0("mw_", palette), palette = pal, ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
  }
}

#' @rdname scale_colour_mw
#' @export
scale_color_mw <- scale_colour_mw

#' @title Fill scale constructor from the Manaaki Whenua colour palettes
#' @description Fill scale constructor for using Manaaki Whenua palettes in `ggplot2`
#' @param palette Character name of the palette (see `mw_palettes`)
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
scale_fill_mw <- function(palette = "dark", discrete = TRUE, reverse = FALSE, ...) {
  pal <- mw_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("mw_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
