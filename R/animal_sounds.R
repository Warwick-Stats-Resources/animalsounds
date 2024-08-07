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
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound = NULL) {

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }

  if (is.null(sound)){
    return(paste0("The ", animal, " makes no sound."))
  }

  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a {.cls character} vector of length 1!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead."),
      class = "error_not_single_string"
    )
  }

  paste0("The ", animal, " goes ", sound, "!")
}
