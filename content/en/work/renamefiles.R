setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

pagedown::chrome_print(here::here("content", "en", "vita", "index.Rmd"))

file.rename(from = list.files(path = here::here("content", "en", "vita"), 
                              pattern = "index.pdf"), 
            to = "Abhik Roy Vita.pdf")

file.rename(from = list.files(path = ".", 
                              pattern = "index.html"), 
            to = "Abhik Roy Vita.html")
