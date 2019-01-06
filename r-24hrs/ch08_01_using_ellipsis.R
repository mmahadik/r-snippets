# Using ellipsis for passing adhoc number of arguments to a function

# Code showing how to use ... and switch to create a dispatcher
f1 <- function(dist, n, ...) {
    switch(dist,
           "norm" = rnorm(n, ...),
           "pois" = rpois(n, ...),
           "unif" = runif(n, ...))
}

# Code showing how to use ... for enriching existing function by 
# adding a wrapper
# Pass any number of arguments into the wrapper function. It will
# pass them to the wrapped function.
hist2 <- function(x, addline=TRUE, ...) {
    hist(x, ...)
    if (addline) abline(v=median(x), lwd=2)
}

# Pass whaterver args you want using ...
hist2(rnorm(100, mean=20, sd=4), 
      col="plum", 
      xlab="X-axis Label", 
      ylab="Y-axis Label", 
      main="Using ... for wrapping!")


# Code showing how to use the get function
f2 <- function(n=100, dist=c("norm", "pois", "unif"), ...) {
    dist <- match.arg(dist)
    fname <- paste0("r", dist, sep="")
    switch(dist,
           get(fname)(n, ...))
}


