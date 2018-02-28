context("themes")

test_that("themes are correct", {
  
  invisible(theme_mw_dark(ticks = TRUE))
  invisible(theme_mw_bw(ticks = TRUE))
  
})
