#' Load a CSV from the package's extdata folder
#'
#' @param filename A character string, the name of the CSV file to load.
#'
#' @return A data frame
#' @export
load_data <- function(filename, ...) {
  filepath <- system.file("extdata", filename, package = "ADAPTSNA")
  if (filepath == "") stop("File not found: ", filename)
  read.csv(filepath, ...)
}


#' List available CSV files in the package
#' @export
list_data_files <- function() {
  list.files(system.file("extdata", package = "ADAPTSNA"))
}
