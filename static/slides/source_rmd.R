source_rmd <- function(file, local = FALSE, ...){
  options(knitr.duplicate.label = 'allow')
  tempR <- tempfile(tmpdir = ".", fileext = ".R")
  on.exit(unlink(tempR))
  knitr::purl(file, output=tempR, quiet = TRUE)
  envir <- globalenv()
  source(tempR, local = envir, ...)
}

source_rmd_chunks <- function(file, chunk_labels, skip_plots = TRUE, output_temp = FALSE){
  temp <- tempfile(fileext=".R")
  knitr::purl(file, output = temp)
  text <- readr::read_file(temp)
  text <- purrr::map(chunk_labels, ~stringr::str_extract(text, glue::glue("(## ----{var})(.|[:space:])*?(?=(## ----)|$)", var = .x))) %>% 
    stringr::str_c(collapse = "\n")
  readr::write_file(text, temp)
  if(skip_plots) {
    old_dev = getOption('device')
    options(device = function(...) {
      .Call("R_GD_nullDevice", PACKAGE = "grDevices")
    })
  }
  source(temp)
  if(skip_plots) {
    options(device = old_dev)
  }
  if(output_temp) temp
  }