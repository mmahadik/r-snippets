# Basics of functions in R

# Functions are proper R-objects.
# They get saved in the workspace and can be reused
# in subsequent sessions.

# A function being an R-object can be deleted
function_name <- function() { cat("Hi\n") }
rm(function_name)

# Functions can accept arguments.
# Arguments can have default values.
function_name <- function(msg="Hi") { cat(msg, '\n') }

# Usage of default arguments
function_name()

# Passing value
function_name(msg='Hello')

# Scoping rules
# R-objects created in the function body are 
# destroyed when the function returns
function_name <- function(msg="Hi") {
    r_obj1 <- 10
    cat(msg, r_obj1, '\n')
}
tryCatch(expr={
        cat(r_obj1)
    },
    warning=function(w) {
        cat("Handling Warning", "\n")
        print(w)
    },
    error=function(e) {
        cat("Handling Error", "\n")
        print(e)
    },
    finally={
        cat("Finally", "\n")
    }
)

# Error in cat(r_obj1) : object 'r_obj1' not found
# Execution halted

# The value of the last expression evaluated in the function 
# is returned.
add_number <- function(vec, num) { 
    offset <- 10
    vec + num + offset
}
returned_value <- add_number(1:4, 3)
print(returned_value)

# Using a list multiple values / R-objects
# may be returned. However it is efficient
# to use single mode structures if we need
# to return a set of single mode values
add_number <- function(vec, num) { 
    offset <- 10
    result <- vec + num + offset
    list(Result=result, 
         IntialValue=vec, 
         Addendum=num, 
         Offset=offset)
}
returned_value <- add_number(1:4, 3)
print(returned_value)






