rm(list = ls());
# renderEnv = new.env();

rmarkdown::render(
   input = "./02_protocol/workflow.Rmd",
   output_format = "html_document",
   output_file = "processing_notes.html",
   output_dir = "./04_product",
   knit_root_dir = getwd()
 #  envir = renderEnv
)
