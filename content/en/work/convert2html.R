setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

rmarkdown::render("cv-html.Rmd", output_file = "cv.html")
rmarkdown::render("resume-html.Rmd", output_file = "resume.html")

