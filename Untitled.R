library(extraDistr)
library(tidyverse) 
library(RColorBrewer)
library(hrbrthemes)
library(iZID)
 
# Example beta negative binomial  ----
nonsense <- 
  extraDistr::rbnbinom(n = 1e5, size = 1000, alpha = 5, beta = 13) 

## Distribution plot ----
nonsense %>%
  as_tibble_col() %>%
  ggplot(aes(value)) +
  geom_histogram(bins = 500, 
                 fill = "#d896ff",
                 color = "#252a32",
                 alpha = 0.75) +
  theme_ft_rc()


## Maximum likelihood estimate ----
iZID::bnb.mle(nonsense, r = 3.3, alpha1 =  1, alpha2 = 1)
