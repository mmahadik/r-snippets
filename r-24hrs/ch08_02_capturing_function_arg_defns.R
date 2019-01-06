# How to capture the definitions of arguments in a function call

f1 <- function(arg1, arg2) {
    print(nchar(deparse(substitute(arg1))))
    print(deparse(substitute(arg1)))
    print(nchar(deparse(substitute(arg2))))
    print(deparse(substitute(arg2)))
}
