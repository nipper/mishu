#' A Cat Function
#'
#' This function cleans column names
#' @param col The column name you're cleaning
#' @param lowercase Convert the column name to lower case. Default: True
#' @param uppercase_id Make any instance of "id" uppercase. Default: True
#' @param prefix Prepend the string in prefix. Defaults FALSE
#' @keywords column names cleaning
#' @export
#' @examples
#' clean_col_name()

clean_col_name <- function(col,lowercase = TRUE, uppercase_id = TRUE, prefix = FALSE) {
  new_col_name <-
    str_replace_all(col,"[[:punct:]]","") %>%
    str_replace_all(" ","_")

  if(lowercase) {
    new_col_name <-
      new_col_name %>%
      tolower()
  }

  if(uppercase_id) {
    new_col_name <-
      str_replace(new_col_name,
                  regex("id", ignore_case = TRUE),
                  "ID")
  }

  if(prefix != FALSE) {
    new_col_name <-
      paste0(prefix,new_col_name)
  }

  new_col_name
}
