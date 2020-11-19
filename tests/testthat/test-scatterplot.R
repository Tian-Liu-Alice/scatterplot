test <- data.frame(
  x = c(2,4,5,8,10),
  y = c(1,2,3,5,5),
  z = c(1,2,5,7,9))
test_that("Dataset with no NA", {
  expect_equal(class(scatterplot(test, x, y))[2],  "ggplot")
  expect_error(scatterplot(test, x, y, 2), "I am sorry, argument \"colour\" should be the name of a colour, which is a character with quotes")
  expect_error(scatterplot(test, x, y, na.rm = 1), "I am sorry, argument \"na.rm\" should be \"TRUE\" or \"FALSE\"")
})
# The output should be a ggplot
# The argument “colour” should be a character object with quotes and argument “na.rm” should be a bool object. 
# If users input an object with wrong type, the error message will jump out and help them change their input to correct type.
