library(tidyverse)

load("air.RData")

air <- air %>% 
  group_by(pollutant) %>% 
  summarise(
    emissions = sum(emissions)
  ) %>% arrange(desc(emissions))

save(air, file = "6.RData")