#' @title Manaaki Whenua themes for `ggplot2`
#' @author Pierre Roudier
#' @export 
theme_mwlr_dark <- function(base_family = "Sans", base_size = 11, ticks = FALSE) {
  
  ret <- ggplot2::theme_minimal(base_family = base_family, base_size = base_size)
  
  # Add bg colour
  ret <- ret + theme(plot.background = element_rect(fill = "#282829", colour = NA))
  
  # Remove legend bg colour
  ret <- ret + theme(legend.background = element_blank())
  ret <- ret + theme(legend.key = element_blank())
  
  # Remove grid
  ret <- ret + theme(panel.grid = element_blank())
  
  # Add X and Y axis
  ret <- ret + theme(axis.line = element_line(colour = "#d1d2d4", size = 0.15))
  
  # Setup axis titles
  ret <- ret + theme(axis.title = element_text(colour = "#d1d2d4"))
  
  # Axis labels
  ret <- ret + theme(axis.text = element_text(colour = "#d1d2d4"))
  
  # Ticks
  if (!ticks) {
    ret <- ret + theme(axis.ticks = element_blank())
    ret <- ret + theme(axis.ticks.x = element_blank())
    ret <- ret + theme(axis.ticks.y = element_blank())
  } else {
    ret <- ret + theme(axis.ticks = element_line(colour = "#d1d2d4", size = 0.15))
    ret <- ret + theme(axis.ticks.x = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.y = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.length = grid::unit(5, "pt"))
  }
  
  # Legend text
  ret <- ret + theme(legend.text = element_text(colour = "#d1d2d4"))
  ret <- ret + theme(legend.title = element_text(colour = "#d1d2d4"))
  
  # Facet labels
  ret <- ret + theme(strip.text = element_text(colour = "#282829"))
  # Facet background
  ret <- ret + theme(strip.background = element_rect(fill = "#85878a"))
  
  # Title and subtitle colours
  ret <- ret + theme(
    plot.title = element_text(colour = "#d1d2d4"),
    plot.subtitle = element_text(colour = "#d1d2d4")
  )
  
  # Caption
  ret <- ret + theme(plot.caption = element_text(colour = "#d1d2d4"))
  
  ret
}
