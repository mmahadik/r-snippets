# Handling errors and warnings in functions.

# Stop function raises errors
function_raising_error <- function(x, y) {
    if (length(x) < 10 | length(y) < 10)
        stop("Incorrect inputs.")
    x + y
}

function_raising_error(1:5, 1:5)





