#' Title
#'
#' A wrapper function that will create a learnr interactive document with the CSUCI theme.
#'
#' @param name A string value containing the name of the tutorial you want to create.
#'
#' @return Creates a learnr tutorial with important components to create CI learnr tutorial.
#' @export
#'
#'
ci_learnr <- function(name) {
  if (!dir.exists("inst/tutorials/")) {
    dir.create("inst/tutorials/")
  }
  file_name <- paste0("inst/tutorials/", name, ".Rmd")
  rmarkdown::draft(file_name,
                   template = "CI_learnr",
                   package = "inqstools",
                   edit = FALSE)
  new_file <- paste0("inst/tutorials/",
                     name,
                     "/", name,  ".Rmd")
  file.edit(new_file)
  print(paste0("New file created here: ", new_file))
}


