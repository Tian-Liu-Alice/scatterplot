
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Scatterplot

<!-- badges: start -->

<!-- badges: end -->

The goal of scatterplot is to create a scatterplot which makes the
relationship between two variables specified in the input of the
function (x and y) visualized.

## Installation

You can install the released version of scatterplot from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("Tian-Liu-Alice/scatterplot")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(scatterplot)
## basic example code
test <- data.frame(
    x = c(2,4,5,8,10),
    y = c(1,2,3,5,5),
    z = c(1,2,5,7,9))
scatterplot(test, x, y)
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
scatterplot(test, y, x, "red")
```

<img src="man/figures/README-example-2.png" width="100%" />

===

**Explain My Development**  

(1) Load the devtools package in the console.  

``` r
library(devtools)
```

(2) Run create_package() in the console to initialize a new package in a new directory called “scatterplot” on the computer, using the chosen path as input.  

``` r
create_package("D:\UBC\R_Package\scatterplot”)
```

After this, RStudio will also create a new project called “scatterplot” and open a new session located at the new directory we just made. We are going to work in this new session later.  

(3)	Use use_git() to initialize git repository on the computer.  
``` r
use_git()
# When it asks: Is it ok to commit them?
# Choose 2: I agree
# When it asks: A restart of RStudio is required to …?
# Choose 3: I agree
```

(4)	Make a new R script using use_r() for each function in the package and name the file after the function. The .R file will be in the R/ subdirectory.  

``` r
use_r("scatterplot")
```

(5)	Write function scatterplot() into R script.  

(6)	Use load_all() to load the package we have made to make it available for experimentation.  

``` r
load_all()
```

(7)	Now we can use function scatterplot() to draw scatterplots.  
(8)	Use check() to check if everything in the package is in full working order, make sure that the codes are correct and the files are available and in right order.  

``` r
check()
```

(9)	Edit the DESCRIPTION file, add some information about the functions and package.  

(10)	Use “mit” for the license, run use_mit_license("Your Name").  

``` r
use_mit_license("Tian Liu")
```

(11)	Open the newly created LICENSE file and confirm it has the current year and your name.  

(12)	Load the roxygen2 package in the console to make the documentation.  

``` r
library(roxygen2)
```

(13)	Document the function using “Code > Insert roxygen skeleton”.  

(14)	Describe what the function does, specify the input and the output, give out some examples to help others know how to use this function correctly.   

(15)	Run document() to render the documentation. It helps us to trigger the conversion of this new roxygen comment into a .Rd file in the man/ subdirectory.  

``` r
document()
```

(16)	Use “Install and Restart” button to restart the session and install the package. Now we can use the function scatterplot().  

(17)	Use use_testthat() for the package, and make an R script containing tests.  

``` r
use_testthat()
use_test("scatterplot")
```

(18)	Check all tests with test() or the “Check” button .  

``` r
test()
```

(19)	Indicate dependency in DESCRIPTION file using use_package(“package_name”).  

``` r
use_package("ggplot2")
use_package("rlang")
```

(20)	Add a package README with use_readme_rmd(), and render it every time with build_readme().  

``` r
use_readme_rmd()
build_readme()
```

(21)	Edit the “Installation” part in README.Rmd.  

``` r
devtools::install_github("Tian-Liu-Alice/scatterplot")
```

(22)	Make a vignette with use_vignette(). Build all vignettes with build_vignettes().  

``` r
use_vignette("scatterplot")
build_vignettes()
```

(23)	Browse vignette with browseVignettes().  

``` r
browseVignettes("scatterplot ") 
```

(24)	Install the package “scatterplot” from github to check if everything works well.  

``` r 
install_github("Tian-Liu-Alice/scatterplot")
```
