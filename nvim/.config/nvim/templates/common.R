knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold"
)

options(
  digits = 3,
  str = strOptions(strict.width = "cut")
)

if (knitr::is_latex_output()) {
  knitr::opts_chunk$set(width = 69)
  options(width = 69)
  options(crayon.enabled = FALSE)
  options(cli.unicode = TRUE)
}
