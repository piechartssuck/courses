# Part I ----
library(tidyverse)
library(tidytext)
library(glue)

files <- 
  list.files("state-of-the-union-corpus-1989-2017")

files

files[1]

fileName <- 
  glue("state-of-the-union-corpus-1989-2017/", 
       files[1],
       sep = "") %>%
  trimws()

fileName

fileText <- 
  glue(read_file(fileName))

fileText <- 
  gsub("\\$", 
       "", 
       fileText)

fileText

tokens <- 
  data_frame(text = fileText) %>% 
  unnest_tokens(word, text)

tokens


data(stop_words)

tidy_tokens <- 
  tokens %>%
  anti_join(stop_words)

tidy_tokens

tidy_tokens %>%
  count(word, sort = TRUE) 

tidy_tokens %>%
  count(word, sort = TRUE) %>%
  filter(n > 5) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word, fill=n)) +
  geom_col() +
  theme_minimal() +
  labs(y = NULL)

# Get the sentiment from the first text
speech_bing_descriptives <- 
  tokens %>%
  inner_join(get_sentiments("bing")) %>% # pull out only sentiment words
  count(sentiment) %>% # count the # of positive & negative words
  spread(sentiment, n, fill = 0) %>% # made data wide rather than narrow
  mutate(sentiment = positive - negative) # of positive words - # of negative words

speech_bing_descriptives

# Part II ----
library(wordcloud)
library(devtools)
library(reshape2)
library(igraph)
library(ggraph)
library(tidygraph)
library(harrypotter)

# remove the # and run once!
# if (packageVersion("devtools") < 1.6) {
#  install.packages("devtools")
# }

# devtools::install_github("bradleyboehmke/harrypotter", force = TRUE)

# note the titles 
titles <- c("Philosopher\'s Stone", 
            "Chamber of Secrets", 
            "Prisoner of Azkaban",
            "Goblet of Fire", 
            "Order of the Phoenix", 
            "Half-Blood Prince",
            "Deathly Hallows")

# note the data frames 
books <- list(philosophers_stone, 
              chamber_of_secrets, 
              prisoner_of_azkaban,
              goblet_of_fire, 
              order_of_the_phoenix, 
              half_blood_prince,
              deathly_hallows)

# go through the texts and tokenize
series <- tibble()

for(i in seq_along(titles)) {
  
  clean <- 
    tibble(chapter = seq_along(books[[i]]),
           text = books[[i]]) %>%
    unnest_tokens(word, text) %>%
    mutate(book = titles[i]) %>%
    select(book, everything())
  
  series <- rbind(series, clean)
}

series 

# set factor to keep books in release order
reverse_series <- 
  series %>%
  mutate(book = factor(book, 
                       levels = rev(titles))) %>%
  arrange(book)

reverse_series

# count the words
reverse_series %>% 
  count(word, sort = TRUE)

# determine the top 50 terms (wordclouds are useless)
reverse_series %>% 
  anti_join(stop_words) %>%
  count(word,
        name = "frequency") %>%
  with(wordcloud(word, 
                 frequency, 
                 max.words = 50))

# run only once to get the afinnm bing, and nrc sentiment lexicons
get_sentiments("afinn")
get_sentiments("bing")
get_sentiments("nrc")

# determine the nrc sentiments
reverse_series %>%
  right_join(get_sentiments("nrc")) %>%
  filter(!is.na(sentiment)) %>%
  count(sentiment, 
        sort = TRUE)

# determine the negative or positive bing sentiments
reverse_series %>%
  right_join(get_sentiments("bing")) %>%
  filter(!is.na(sentiment)) %>%
  count(sentiment, 
        sort = TRUE)

# plot the negative and positive bing sentiments with all terms
reverse_series %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, 
        sort = TRUE) %>%
  acast(word ~ sentiment, 
        value.var = "n", 
        fill = 0) %>%
  comparison.cloud(colors = c("#d9534f", "#428bca"),
                   max.words = 50)

# plot the negative and positive bing sentiments without the stop words
reverse_series %>%
  anti_join(stop_words) %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, 
        sentiment, 
        sort = TRUE) %>%
  acast(word ~ sentiment, 
        value.var = "n", 
        fill = 0) %>%
  comparison.cloud(colors = c("#d9534f", "#428bca"),
                   max.words = 50)

# plot the series based on polarity
reverse_series %>%
  group_by(book) %>% 
  mutate(word_count = 1:n(),
         index = word_count %/% 500 + 1) %>% 
  inner_join(get_sentiments("bing")) %>%
  count(book, 
        index = index , 
        sentiment) %>%
  ungroup() %>%
  spread(sentiment, 
         n, 
         fill = 0) %>%
  mutate(sentiment = positive - negative,
         book = factor(book, 
                       levels = titles)) %>%
  ggplot(aes(index, 
             sentiment, 
             fill = book)) +
  geom_bar(alpha = 0.5, 
           stat = "identity", 
           show.legend = FALSE) +
  facet_wrap(. ~ book, 
             ncol = 2, 
             scales = "free_x") +
  theme_minimal() +
  scale_fill_viridis(discrete = "TRUE",
                     option = "C")

# determine bigrams
bigram_series <- tibble()

for(i in seq_along(titles)) {
  
  temp <- tibble(chapter = seq_along(books[[i]]),
                  text = books[[i]]) %>%
    unnest_tokens(bigram, text, token = "ngrams", n = 2) %>%
    ## Here we tokenize each chapter into bigrams
    mutate(book = titles[i]) %>%
    select(book, everything())
  
  bigram_series <- rbind(bigram_series, temp)
}

bigram_series

# set factor to keep books in release order
reverse_bigram_series <- 
  bigram_series %>%
  mutate(book = factor(book, 
                       levels = rev(unique(book)))) %>%
  arrange(book)

reverse_bigram_series

# count the words
reverse_bigram_series %>%
  count(bigram, 
        sort = TRUE)

# separate the terms to edit them out
bigrams_separated <- 
  reverse_bigram_series %>%
  separate(bigram, 
           c("word1", "word2"), 
           sep = " ")

bigrams_separated

# remove stop words from each
bigrams_filtered <- 
  bigrams_separated %>%
  filter(!word1 %in% stop_words$word) %>%
  filter(!word2 %in% stop_words$word); bigrams_filtered

# merge the word columns back together to form bigrams
bigrams_united <- 
  bigrams_filtered %>%
  unite(bigram, word1, word2, sep = " ")

bigrams_united 

# count the updated bigrams
bigram_counts <- 
  bigrams_united %>% 
    count(bigram, sort = TRUE)

bigram_counts

# measure tf-idf
bigram_tf_idf <- 
  bigrams_united %>%
  count(book, bigram) %>%
  bind_tf_idf(bigram, book, n) %>%
  arrange(desc(tf_idf))

bigram_tf_idf

# factor the bigrams and rearrange according tf-idf
plot_potter <- 
  bigram_tf_idf %>%
  arrange(desc(tf_idf)) %>%
  mutate(bigram = factor(bigram, 
                         levels = rev(unique(bigram))))

# plot the results 
plot_potter %>% 
  top_n(20) %>%
  ggplot(aes(bigram, 
             tf_idf, 
             fill = book)) +
  geom_col() +
  labs(x = NULL, 
       y = "tf-idf") +
  coord_flip() +
  theme_minimal() +
  scale_fill_viridis(discrete = "TRUE",
                     option = "C")

bigrams_separated %>%
  filter(word1 == "not") %>%
  count(word1, 
        word2, 
        sort = TRUE)

# use an anchor term (not) 
bigrams_separated <- 
  bigrams_separated %>%
  filter(word1 == "not") %>%
  filter(!word2 %in% stop_words$word)%>%
  count(word1, word2, sort = TRUE)

bigrams_separated

# filter the negation bigrams
not_words <- 
  bigrams_separated %>%
  filter(word1 == "not") %>%
  filter(!word2 %in% stop_words$word)%>%
  inner_join(get_sentiments("bing"), 
             by = c(word2 = "word")) %>%
  ungroup()

not_words

# convert to an igraph object
bigram_graph <- 
  bigram_counts %>%
  filter(n > 35) %>%
  as_tbl_graph()

bigram_graph

# plot with a seed
set.seed(2017)

ggraph(bigram_graph, 
       layout = "fr") +
  geom_edge_link(colour = "#bfbfbf") +
  geom_node_point(color = "#428bca", 
                  size = 5,
                  alpha = 0.3) +
  geom_node_text(aes(label = name), 
                 repel = TRUE,
                 check_overlap = FALSE) +
  theme_graph()

# Part III ----
library(widyr)

# use the goblet of fire text
gf_words <- 
    tibble(chapter = seq_along(goblet_of_fire),
           text = goblet_of_fire) %>%
    unnest_tokens(word, text) %>%
    filter(!word %in% stop_words$word)

gf_words

# count common word pairs
word_pairs <- 
  gf_words %>%
  pairwise_count(word, 
                 chapter, 
                 sort = TRUE)

word_pairs

# find counts between an anchor and words
word_pairs %>% 
  filter(item1 == "harry")

# find correlation between words
word_cor <- 
  gf_words %>%
  group_by(word) %>%
  filter(n() >= 20) %>%
  pairwise_cor(word, chapter) %>%
  drop_na(correlation)

word_cor

# highest correlated words that appears with “potter”
word_cor %>%
  filter(item1 == "potter") %>%
  arrange(desc(correlation))

# visualize the correlations within word clusters
set.seed(123)

gf_words %>%
  group_by(word) %>%
  filter(n() >= 20) %>%
  pairwise_cor(word, chapter) %>%
  filter(!is.na(correlation),
         correlation > .65) %>%
  graph_from_data_frame() %>%
  ggraph(layout = "fr") +
  geom_node_point(color = "#5cb85c", 
                  size = 5,
                  alpha = 0.3) +
  geom_edge_link(aes(edge_alpha = correlation), 
                 show.legend = FALSE) +
  geom_node_text(aes(label = name), 
                 repel = TRUE) +
  theme_graph()
  
