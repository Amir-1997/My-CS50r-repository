visitors <- read.csv("visitors.csv")
 
first_year <- visitors[visitors$year == min(visitors$year), "visitors"]
last_year <- visitors[visitors$year == max(visitors$year), "visitors"]
rate <- (last_year - first_year)/ (max(visitors$year) - min(visitors$year))
  
year <- as.integer(readline("Year: "))
  
predict_visitors <- function(year) {
  
  Est <<- last_year + rate*(year - 2014)
  return(Est)
}

predict_visitors <- predict_visitors(year)

cat(paste0(predict_visitors, " million visitors\n"))
