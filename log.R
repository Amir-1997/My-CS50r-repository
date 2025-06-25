books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

#1 Mia Morgan's Book:
books[books$author == "Mia Morgan", ]

#2
books[books$year == 1613 & books$topic == "Music", 1]

#3
books[books$author %in% c("Lysandra Silverleaf", "Elena Petrova") & books$year == 1775, 1]

#4
books[books$topic == "Art" & books$year %in% c(1990, 1992), 1]

#5
library(tidyverse)

books[str_detect(books$title, "Quantum Mechanics"), 1]

#6
author_opt <- authors[authors$hometown == "Zenthia", 1]

books[books$topic == "Education" & (books$year %in% c(1700:1800)) 
      & books$author %in% author_opt, 1]


