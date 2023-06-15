## code to prepare `farm_animals` dataset goes here

animal <- c("cow", "horse", "chicken")
sound <- c("moo", "neigh", "cluck")

farm_animals <- data.frame(animal, sound)

usethis::use_data(farm_animals, overwrite = TRUE)
