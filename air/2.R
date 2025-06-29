load("air.RData")

air <- air %>% 
  arrange(desc(emissions))

air <- as_tibble(air)

save(air, file = "2.RData")


