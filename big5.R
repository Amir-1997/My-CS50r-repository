library(tidyverse)

analysis <- read_tsv("tests.tsv") %>% 
  mutate(
    gender = factor(gender, levels = c(0,1,2,3), 
                    labels = c("Unanswered","Male", "Female", "Other")),
    extroversion = round(rowSums(across(starts_with("E")))/15, 2),
    neuroticism  = round(rowSums(across(starts_with("N")))/15, 2),
    agreeableness= round(rowSums(across(c(A1:A3)))/15, 2),
    conscientiousness = round(rowSums(across(c(C1, C2, C3)))/15,2),
    openness =  round(rowSums(across(starts_with("O")))/15, 2)                      
)

write.csv(analysis, file = "analysis.csv", row.names = F)


