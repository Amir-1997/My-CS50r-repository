H20 <- read.csv("2020.csv")
H21 <- read.csv("2021.csv") 
H22 <- read.csv("2022.csv")
H23 <- read.csv("2023.csv")
H24 <- read.csv("2024.csv")

Vals <- list(H20 = H20, H21 = H21, H22 = H22, H23 = H23, H24 = H24)
years <- 2020:2024

for(i in 1:length(Vals)){
  Vals[[i]]$year <- years[i]
}

Dat1 <- Vals[[1]]
i = 1

while(i <= 4){
Dat1 <- rbind(Dat1, Vals[[i+1]])
i <- i + 1
}



Country_name <- readline("Country: ")

if(Country_name %in% Dat1$country){

Output <- list()
i <- 1

while(i <= 5){
Output[i] <- round(sum(Dat1[Dat1$country == Country_name & Dat1$year == years[i], c(2:8)]), 2)
i <- i + 1
}

for (i in 1:5) {
 print(paste0(
  Country_name, " (", years[i], "): ", Output[[i]] 
))
}
} else {
  for(i in 1:5){
    print(paste0(
      Country_name, " (", years[i], "): ", "data unavailable" 
    ))
  }
}

