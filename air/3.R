library(tidyverse)

load("air.RData")

# OR - Baker
air <- air %>% 
  filter(county == "OR - Baker")

save(air, file = "3.RData")  















