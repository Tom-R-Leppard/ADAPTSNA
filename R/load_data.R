#' Load a CSV from the package's extdata folder
#'
#' @param filename A character string, the name of the CSV file to load.
#'
#' @return A data frame
#' @export
load_data <- function(filename) {
  path <- system.file("extdata", filename, package = "ADAPTSNA")
  if (path == "") stop("File not found in extdata: ", filename)
  read.csv(path, stringsAsFactors = FALSE)
}


#' List available CSV files in the package
#' @export
list_data_files <- function() {
  list.files(system.file("extdata", package = "ADAPTSNA"))
}
