# R if/else allows decision driven flow of execution.


# Syntax uses if (condition1) {} else {}
name <- "Milind"
if (name == "Milind") {
    cat("Hi Milind", "\n")
} else {
    cat("Hi stranger", "\n")
}


# One-liner syntax
if (name == "Milind")  cat("Hi Milind", "\n") else cat("Hi stranger", "\n")


# The if/else ladder
if (name == "Milind") {
    cat("Hi Milind", "\n")
} else if (name == "Veena") {
    cat("Hi Veena", "\n") 
} else {
    cat("Hi Stranger", "\n")
}


# The ifelse function
greeting <- ifelse(name == "Milind", "Hi Milind", "Hi Veena")
cat(greeting, "\n")


# Summarizing to single logical result
# The condition vector below has length more than 1
names <- c("Milind", "Veena", "Raj", "Nikhil", "Rahul")
if (names == "Milind") cat("Hi Milind", "\n")


# Using the any/all functions we can arrive at summarized
# logical value for the condition
summarized_cond <- all(names == "Milind")
cat(summarized_cond, "\n")
summarized_cond <- any(names == "Milind")
cat(summarized_cond, "\n")

if (any(names == "Milind")) {
    cat("Hi any Milind!", "\n")
}

names <- c("Milind", "Milind")
if (all(names == "Milind")) {
    cat("Hi all Milinds", "\n")
}
