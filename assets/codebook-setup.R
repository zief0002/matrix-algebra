## Load libraries
library(knitr)
library(rmdformats)
#library(fontawesome)

## Global options
options(
  htmltools.dir.version = FALSE,
  tibble.pillar.subtle = FALSE, 
  tibble.pillar.sigfig = 7, 
  tibble.pillar.min_title_chars = 10,
  scipen = 5
)

## knitr options
opts_knit$set(
  width = 85, 
  tibble.print_max = Inf
  )

## knitr chunk options
opts_chunk$set(
  prompt = FALSE,
  tidy = TRUE,
  cache = FALSE,
  comment = NA,
  message = FALSE,
  warning = FALSE
  )


