#' Sounds that animals make
#'
#' Uses [paste0()] to create a sentence stating the sound that the animal makes.
#'
#' @param animal A string, the name of an animal
#' @param sound A string, the sound the animal makes
#'
#' @return A string, conveying the sound the animal makes.
#' @export
#'
#' @examples animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {
  #stopifnot(is.character(animal) & length(animal) == 1)
  #stopifnot(is.character(sound) & length(sound) == 1)

  if (!rlang::is_character(animal, 1)) {
    cli::cli_abort(c("{.var animal} must be a single string!",
                     "i" = "It was {.type {animal}} of length {length(animal)} instead."
                     ),
                   class = "error_not_single_string")
  }

  if (!rlang::is_character(sound, 1)) {
    cli::cli_abort(c("{.var sound} must be a single string!",
                     "i" = "It was {.type {sound}} of length {length(sound)} instead."
    ),
    class = "error_not_single_string")
  }

  # if (!rlang::is_character(sound, 1)) {
  #   cli::cli_abort(c("{.var sound} must be a {.cls character} vector of length 1!",
  #                    "i" = "It was {.type {sound}} of length {length(sound)} instead."
  #   ),
  #   class = "error_not_single_string")
  # }

  paste0("The ", animal, " goes ", sound, "!")
}
