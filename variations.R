random_character <- function() {
  return(sample(letters, 1, replace = T))
}

print_sequence <- function(l) {
  for(i in 1:l){
    cat(random_character(), sep = "")
    Sys.sleep(0.25)
  }

}

print_sequence(20)


