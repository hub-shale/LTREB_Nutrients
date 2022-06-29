rmarkdown::render(
  input = "./02_protocol/01_processing.Rmd",
  output_format = "html_document",
  output_file = "processing_notes.html",
  output_dir = "./03_incremental",
  knit_root_dir = getwd()
)
