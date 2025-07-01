library(tidyverse)

astley <- read_file("lyrics/astley.txt")

astley <- str_to_lower(astley)

  
astley <- str_split(astley, "\\s+")

astley <- astley[[1]]

astley <- str_replace_all(astley, "[^a-z']", "")

counts <- sapply(unique(astley), function(w) sum(astley == unique(w)))

Word_counter <- data.frame(
  row.names = NULL,
  word = unique(astley),
  count = sapply(unique(astley), function(w) sum(astley == unique(w)))
) 


p <-  Word_counter %>% 
  filter(word != "") %>% 
  mutate(word = fct_reorder(word, -count)) %>% 
ggplot(aes(word, count)) +
  geom_col(aes(fill = word), color = "black")+
  theme(legend.position = "none", axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

p
ggsave(
  "lyrics.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)

