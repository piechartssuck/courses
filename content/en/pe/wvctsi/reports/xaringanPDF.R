# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

pagedown::chrome_print("y9q2-report-report.Rmd")
