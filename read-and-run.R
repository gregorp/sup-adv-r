# Test minimum requirements to build a package

# Before you run anything, make sure you have installed
# - Rtools if you're on windows (available on CRAN)
# - A LaTeX compiler with PDFLaTeX

# We'll rely heavily on the Roxygen2 and devtools packages.
# Please have them updated.


if (! require(devtools)) {
    install.packages("devtools")
    library(devtools)
}

if (! require(roxygen2)) {
    install.packages("roxygen2")
    library(roxygen2)
}

# Set your working directory to somewhere you don't mind writing some files.
# We'll clean it up at the end.

# Make sure you can run the following without errors.
# There will be lots of message output on the console, just
# make sure there are no errors.
setwd("C:/Copy")
create("testpkg")
roxygenize("testpkg")
load_all("testpkg")
build("testpkg")

# Clean up, delete the package:
unlink("testpkg", recursive = TRUE)


