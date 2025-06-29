library(tidyverse)

air <- read.csv("air.csv")




air <- air %>% 
  select(c("State", "State.County", "POLLUTANT", "Emissions..Tons.", "SCC.LEVEL.1",
           "SCC.LEVEL.2","SCC.LEVEL.3",  "SCC.LEVEL.4" ))

colnames(air) <- str_to_lower(colnames(air))

air <- air %>% 
  rename_with(
    function(x) str_replace(x, regex("^scc\\.level\\.(\\d+)$", ignore_case = T),
                            "level_\\1")
  )  %>% 
  rename(
    emissions = emissions..tons. ,
    county = state.county
  )

air <- air %>% 
  mutate(
    emissions = str_remove_all(emissions, ",")
  ) %>% mutate(
    emissions = as.numeric(emissions)
  )

save(air, file = "air.RData")
