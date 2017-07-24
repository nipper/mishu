#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param col The column name you're cleaning
#' @keywords cats
#' @export
#' @examples
#' clean_col_name()

clean_col_name <- function(col) {
  str_replace_all(col,"[[:punct:]]","") %>%
    str_replace_all(" ","_")
}
