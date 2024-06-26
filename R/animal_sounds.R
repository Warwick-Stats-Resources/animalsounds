#' Print What the Animal Says
#'
#' Prints what the animal says *(the sound it makes)* in the console, using
#' [paste0()].
#'
#' @param animal a single string
#' @param sound a single string
#'
#' @return Prints what the animals says
#' @export
#'
#' @examples
#' animals_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
