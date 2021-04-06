# Render word book
bookdown::render_book(
  input = "index.Rmd", 
  output_format = bookdown::word_document2(), 
  clean = TRUE,
  envir = parent.frame(), 
  clean_envir = !interactive(), 
  output_dir = "word-files",
  new_session = NA, 
  preview = FALSE, 
  config_file = "_bookdown.yml"
  )
