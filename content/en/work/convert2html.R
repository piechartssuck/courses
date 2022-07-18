setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

rmarkdown::render("cv-html.Rmd", output_file = "cv.html")

