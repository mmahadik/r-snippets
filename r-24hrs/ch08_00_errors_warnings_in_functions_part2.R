# Handling errors and warnings in functions.

# Part 1 
cat("Demonstrating usage of error function to stop execution when something is not right:\n")

# Lets define a function that will halt the execution when the input arguments are wrong.
function_raising_error <- function(x, y) {
    if (length(x) < 10 | length(y) < 10)
        stop("Incorrect inputs.")
    x + y
}

# How to handle errors raised
result <- tryCatch({
        function_raising_error(1:5, 1:5)  # computation
    },
    warning=function(w) {
        cat("Handling warnings", "\n")
        print(w)
        return(0) # Result to return when computation gives warnings
    },
    error=function(e) {
        cat("Handling errors", "\n")
        print(e)
        return(NA)
    },
    finally={
    })

# Display results
cat("Result:", "\n")
print(result)

# Try again with correct arguments
result <- tryCatch({
        function_raising_error(1:15, 1:15)
    },
    warning=function(w) {
        cat("Handling warnings", "\n")
        print(w)
        return(0) 
    },
    error=function(e) {
        cat("Handling errors", "\n")
        print(e)
        return(NA)
    },
    finally={
    })

# Display results
cat("Result:", "\n")
print(result)


# Part 2
# Use warning function to raise warning
function_raising_warning <- function(x, y) {
    if (length(x) < 10 | length(y) < 10)
        warning("Shorter arguments.")
    x + y
}

# How warning handlesincorrect arguments
result <- tryCatch({
    function_raising_warning(1:5, 1:5)
    },
    warning=function(w) {
        cat("Handling warnings", "\n")
        print(w)
        return(0)
    },
    error=function(e) {
        cat("Handling errors", "\n")
        print(e)
        return(NA)
    },
    finally={
    }
)

# Display results
cat("Result:", "\n")
print(result)

