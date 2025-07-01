dat <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2018/2018-10-02/us_births_2000-2014.csv")

library(tidyverse)

dat <- US_birth.raw

dat <- dat %>% 
  mutate(
    day_of_week = factor(day_of_week, levels = c(1:7), 
                         labels = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"))
  )

p <- dat %>% 
  count(year, wt = births) %>% 
  ggplot(aes(year, n)) + 
  geom_line(
    linewidth = 0.8
  )+
  geom_point(color = "deepskyblue4") +
  scale_y_continuous(labels = scales::comma_format())+
  scale_x_continuous(breaks = seq(min(dat$year), max(dat$year), by = 2))+
  labs(
    x = "year",
    y = "Number of birth",
    title = "Number of live birth in USA from 2000 to 2014"
  )+
  theme_bw()

ggsave(
  "visualization.png",
   plot = p,
  width = 1200,
  height = 900,
  units = "px"
)

  
  

