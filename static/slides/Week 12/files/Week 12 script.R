# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)
library(tidytext)
library(tm)
library(textclean)
library(topicmodels)
library(ldatuning)
library(stopwords)
library(textstem)
library(broom)

# Load the PDF data
exwdogs <- 
  pdftools::pdf_text("exercising_with_dogs.pdf")
  
# Clean the data
exwdogs_cleaned <-
  exwdogs %>%
  read_lines() %>%
  as_tibble_col("text") %>%
  slice(24:n()) %>%
  mutate(text = textclean::replace_non_ascii(text)) %>%
  mutate(text = str_to_lower(text)) %>%
  mutate(text = str_remove_all(text, "[[:digit:]]")) %>%
  mutate(text = str_remove_all(text, "[[:punct:]]")) %>%
  mutate(text = str_remove_all(text, "stage")) %>%
  mutate(text = str_replace_all(text, "sri ranganatha temple", "temple")) %>%
  mutate(text = str_replace_all(text, "shakti", "dog")) %>%
  mutate(text = str_replace_all(text, "foxhounds", "dog")) %>%
  mutate(text = str_replace_all(text, "swami", "dog")) %>%
  mutate(text = str_replace_all(text, "max", "dog")) %>%
  mutate(text = lemmatize_strings(text)) %>%
  mutate(text = str_remove_all(text, c("dog"))) %>%
  mutate(text = str_remove_all(text, c("human"))) %>%
  mutate(text = str_squish(text)) %>%
  mutate(text = na_if(text, "")) %>%
  drop_na()

# Unnest tokens, get rid of stop words
exwdogs_tokens <- 
  exwdogs_cleaned %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE) %>%
  add_column(document = 1)

# Convert to a document-term matrix
exwdogs_dtm <- 
  exwdogs_tokens %>%
  cast_dtm(document, word, n)
  
# Estimate number of topics
exwdogs_topic_est <-
  FindTopicsNumber(
  exwdogs_dtm,
  topics = seq(from = 2, to = 15, by = 1),
  metrics = c("Griffiths2004", "CaoJuan2009", "Arun2010", "Deveaud2014"),
  method = "Gibbs",
  control = list(seed = 77),
  mc.cores = 2L,
  verbose = TRUE
  )

FindTopicsNumber_plot(exwdogs_topic_est)

# Find Topics
exwdogs_lda <- 
  LDA(exwdogs_dtm, 
      k = 11, 
      control = list(seed = 1234))

exwdogs_topics <- 
  tidy(exwdogs_lda, 
       matrix = "beta")

exwdogs_topics

# Plot Topics
exwdogs_top_terms <- 
  exwdogs_topics %>%
  group_by(topic) %>%
  slice_max(beta, n = 10) %>% 
  ungroup() %>%
  arrange(topic, -beta)

exwdogs_top_terms %>%
  mutate(term = reorder_within(term, beta, topic)) %>%
  ggplot(aes(beta, term, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  scale_fill_viridis_d() +
  facet_wrap(~ topic, scales = "free") +
  scale_y_reordered() +
  theme_minimal()
