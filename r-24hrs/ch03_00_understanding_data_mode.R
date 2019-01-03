# Mode of data in R
# Data type of values
# Numeric Values, Character Strings, Logical, Complex Numbers

# How to get mode of a value in variable
get_mode <- function(values) {
    for (value in values) {
        cat("Value: ", value, "\n")
        cat("Mode: ", mode(value), "\n")
        cat(rep("_", 10), "\n")
    }
}

values <- list("Hello World!", 3 == 4,
               10.1, 10, 3i + 5)
get_mode(values)

