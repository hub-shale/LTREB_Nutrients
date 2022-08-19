rmarkdown::render(
  input = "./02_protocol/10_metadata.Rmd",
  output_format = "html_document",
  output_file = "metadata_summary.html",
  output_dir = "./03_incremental",
  knit_root_dir = getwd()
);

#before running final .zip, close out all files and delete all hidden files.

incrementalPath <- "./03_incremental";
capture.output(
  system(
    command = paste(
      "zip",
      ifelse (file.exists("./04_product/03_incremental.zip"), "-ru", "-r"),
      "./04_product/03_incremental.zip",
      paste(
        sprintf(
          fmt = c(
            "%s/metadata_summary.html"
          ),
          incrementalPath
        ),
        collapse = " "
      )
    ),
    intern = TRUE
  ),
  type = "message"
)

# Rebuild the EML with proper checksums

makeEML();
EMLassemblyline::issues();
