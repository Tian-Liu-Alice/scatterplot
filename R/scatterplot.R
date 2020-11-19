scatterplot <- function (data, x, y, colour = "blue", na.rm = FALSE) {
  if (!is.character(colour)) {
    stop('I am sorry, argument "colour" should be the name of a colour, which is a character with quotes')}
  if (!is_bool(na.rm)) {
    stop('I am sorry, argument "na.rm" should be "TRUE" or "FALSE"')}
  ggplot2::ggplot(data = data,  aes(x = {{x}},  y = {{y}}))+
    geom_point(aes(x = {{x}}, y = {{y}}), colour = colour, na.rm = na.rm) +
    theme_light()}
