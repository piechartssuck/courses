setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)
library(tidytext)
library(textclean)


rickmorty <- read_csv("RickAndMortyScripts.csv")


data("stop_words")


head(rickmorty)


glimpse(rickmorty)


rickmorty_selected <-
  rickmorty %>%
  select(index, line)

rickmorty_selected


tidy_script <-
  rickmorty_selected %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words)

tidy_script


tidy_script %>%
  count(word, sort = TRUE) 


tidy_script  %>%
  count(word, sort = TRUE) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


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


tidy_script %>%
  count(word, sort = TRUE) %>%
  filter(n > 20) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


rickmorty_selected %>%
  mutate(line = str_remove_all(line, "Rick")) %>%
  mutate(line = str_remove_all(line, "Morty")) %>%
  mutate(line = replace_contraction(line)) %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE) 


rickandmorty_filtered <- 
  rickmorty_selected %>%
  mutate(line = str_remove_all(line, "Rick")) %>%
  mutate(line = str_remove_all(line, "Morty")) %>%
  mutate(line = replace_contraction(line)) %>%
  unnest_tokens(word, line) %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE)

rickandmorty_filtered %>%
  filter(n > 20) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word)) +
  geom_col() +
  labs(y = NULL) +
  theme_minimal()


rickandmorty_filtered %>%
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("bing")) %>%
  pivot_wider(names_from = sentiment, 
              values_from = n, 
              values_fill = 0) %>%
  mutate(sentiment = positive - negative)


rickandmorty_bing <- 
  rickandmorty_filtered %>%
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("bing")) %>%
  pivot_wider(names_from = sentiment, 
              values_from = n, 
              values_fill = 0) %>%
  mutate(sentiment = positive - negative) 


ggplot(rickandmorty_bing, 
       aes(index, sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() +
  facet_wrap(~sentiment, scales = "free_y")


rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn"))


rickandmorty_afinn <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn"))


ggplot(rickandmorty_afinn, 
       aes(index, value)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() +
  facet_wrap(~value, scales = "free_y")


rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn")) %>%
  mutate(sentiment = if_else(value > 0, 
                             "positive", 
                             "negative", 
                             "NA"))


rickandmorty_afinn_posneg <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("afinn")) %>%
  mutate(sentiment = if_else(value > 0, 
                             "positive", 
                             "negative", 
                             "NA"))


ggplot(rickandmorty_afinn_posneg, 
       aes(index, value, fill = sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() 


ggplot(rickandmorty_afinn_posneg, 
       aes(index, value, fill = sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() +
  scale_fill_manual(values = c("lightsalmon", "khaki"))


ggplot(rickandmorty_afinn_posneg, 
       aes(index, value, fill = sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() +
  scale_fill_manual(values = c("#ffb3ba", "#bae1ff"))


rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("nrc"))


rickandmorty_nrc <- 
  rickandmorty_filtered %>% 
  rowid_to_column(var = "index") %>%
  inner_join(get_sentiments("nrc"))


ggplot(rickandmorty_nrc, 
       aes(index, sentiment, 
           fill = sentiment)) +
  geom_bar(stat = "identity", 
           show.legend = FALSE) +
  theme_minimal() +
  facet_wrap(~sentiment, scales = "free_y", 
             nrow = 5, ncol = 2) + 
  scale_fill_manual(values = c("#05A4C0", "#85CEDA", 
                               "#D2A7D8", "#A67BC5", 
                               "#BB1C8B", "#8D266E",
                               "#BE82AF", "#9D4387", 
                               "#DEC0D7", "#40BDC8", 
                               "#80D3DB", "#BFE9ED"))
  