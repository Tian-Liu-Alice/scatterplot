#' Create a Scatterplot
#'
#' @param data Specify the dataset to use for plot. This argument should be a data.frame. If not already a data.frame, will be converted to one by fortify().
#' @param x Specify which column is used as x-axis. The values in this column will be used as the x-values of the points showed in the scatterplot. This argument should be a name of column, without quotes.
#' @param y Specify which column is used as y-axis. The values in this column will be used as the y-values of the points showed in the scatterplot. This argument should be a name of column, without quotes.
#' @param colour An optional argument, specifying what colour the points will be. This argument should be the name of a colour, with quotes. The default colour is blue.
#' @param na.rm An optional argument. If FALSE, the default, missing values are removed with a warning. If TRUE, missing values are silently removed.
#'
#' @return
#' A scatterplot which makes the relationship between two variables specified in the input of the function (x and y) visualized.
#' @export
#'
#' @examples
#' test <- data.frame(
#'    x = c(2,4,5,8,10),
#'    y = c(1,2,3,5,5),
#'    z = c(1,2,5,7,9))
#' scatterplot(test, x, y)
#' scatterplot(test, y, x, "red")
#'
scatterplot <- function (data, x, y, colour = "blue", na.rm = FALSE) {
  if (!is.character(colour)) {
    stop('I am sorry, argument "colour" should be the name of a colour, which is a character with quotes')}
  if (!rlang::is_bool(na.rm)) {
    stop('I am sorry, argument "na.rm" should be "TRUE" or "FALSE"')}
  ggplot2::ggplot(data = data,  ggplot2::aes(x = {{x}},  y = {{y}}))+
    ggplot2::geom_point(ggplot2::aes(x = {{x}}, y = {{y}}), colour = colour, na.rm = na.rm) +
    ggplot2::theme_light()}
