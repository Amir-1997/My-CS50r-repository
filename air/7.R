library(tidyverse)

load("air.RData")


air <- air %>% 
  group_by(level_1, pollutant) %>% 
  summarise(
    emissions = sum(emissions)
  , .groups = "drop") %>% 
  arrange(level_1, pollutant) %>% 
  rename(source = level_1)

save(air, file = "7.RData")

