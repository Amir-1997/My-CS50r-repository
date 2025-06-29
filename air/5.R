library(tidyverse)

load("air.RData")

air <- air %>% 
  group_by(county) %>% 
  slice_max(emissions) %>% ungroup()


save(air, file = "5.RData")  



