setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

pagedown::chrome_print("index.Rmd")

file.rename(from = list.files(path = ".", 
                              pattern = "index.pdf"), 
            to = "Abhik Roy Vita.pdf")

file.rename(from = list.files(path = ".", 
                              pattern = "index.html"), 
            to = "Abhik Roy Vita.html")
