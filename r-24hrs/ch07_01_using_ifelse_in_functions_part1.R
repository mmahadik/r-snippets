# R if/else allows decision driven flow of execution.

name <- "Milind"

# Syntax uses if (condition1) {} else {}
if (name == "Milind") {
    cat("Hi Milind", "\n")
} else {
    cat("Hi stranger", "\n")
}

# One-liner syntax
if (name == "Milind")  cat("Hi Milind", "\n") else cat("Hi stranger", "\n")

# if/else ladder
if (name == "Milind") {
    cat("Hi Milind", "\n")
} else if (name == "Veena") {
    cat("Hi Veena", "\n") 
} else {
    cat("Hi Stranger", "\n")
}

