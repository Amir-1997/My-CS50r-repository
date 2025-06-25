#Import the datasets
#Get the input dataframe
dat_spec <- readline("Enter your csv file (filename.csv) : ")

dat <- read.csv(dat_spec)

#The total number of pitstops

print(paste0(
  "The total number of pitstops is ",nrow(dat)
))

# The duration of the shortest pit stop

print(paste0(
  "The duration of the shortest pit stop is ", min(dat$time), " seconds"
))

#The duration of the longest pit stop

print(paste0(
  "The duration of the longest pit stop is ", max(dat$time), " seconds"
))

#The total time spent on pit stops during the race, across all racers

print(paste0(
  "The total time spent on pit stops during the race, across all racers is ", sum(dat$time), " seconds"
))




