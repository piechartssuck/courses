library(tidyverse)
library(tidytext)
library(textclean)


setwd(dirname(rstudioapi::getActiveDocumentContext()$path))


rickmorty <- read_csv("RickAndMortyScripts.csv")


head(rickmorty)


glimpse(rickmorty)


rickmorty_selected <-
  rickmorty %>%
  select(index, line)

rickmorty_selected


data("stop_words")


tidy_script <-
  rickmorty_selected %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words)


tidy_script %>%
  count(word, sort = TRUE) 


tidy_script  %>%
  count(word, sort = TRUE) %>%
  filter(n > 2) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()

tidy_script  %>%
  count(word, sort = TRUE) %>%
  filter(n > 10) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


tidy_script  %>%
  count(word, sort = TRUE) %>%
  filter(n > 20) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


tidy_script_nonames <-
  rickmorty_selected %>%
  mutate(line = str_remove_all(line, "Rick")) %>%
  mutate(line = str_remove_all(line, "Morty")) %>%
  mutate(line = replace_contraction(line)) %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE) 

mean(tidy_script_nonames$n)

rickandmorty_filtered <- 
  rickmorty_selected %>%
  mutate(line = str_remove_all(line, "Rick")) %>%
  mutate(line = str_remove_all(line, "Morty")) %>%
  mutate(line = replace_contraction(line)) %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE)

rickandmorty_filtered
  
rickandmorty_filtered %>%
  filter(n > 20) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


# get_sentiments("bing")
# get_sentiments("afinn")
# get_sentiments("nrc")


# bing
rickandmorty_bing <- 
  rickandmorty_filtered %>%
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("bing")) %>%
  pivot_wider(names_from = sentiment, values_from = n, values_fill = 0) %>%
  mutate(sentiment = positive - negative)

rickandmorty_bing

ggplot(rickandmorty_bing, aes(index, sentiment)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  theme_minimal()

# afinn
rickandmorty_afinn <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn"))

rickandmorty_afinn

ggplot(rickandmorty_afinn, aes(index, value)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  theme_minimal()

rickandmorty_afinn_posneg <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn")) %>%
  mutate(sentiment = if_else(value > 0, "positive", "negative", "NA"))

ggplot(rickandmorty_afinn_posneg, aes(index, value, fill = sentiment)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  theme_minimal() 

ggplot(rickandmorty_afinn_posneg, aes(index, value, fill = sentiment)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  theme_minimal() +
  scale_fill_manual(values = c("tomato", "skyblue"))

# nrc

rickandmorty_nrc <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("nrc"))

rickandmorty_nrc 

ggplot(rickandmorty_nrc, 
       aes(index, sentiment, fill = sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal()


  
