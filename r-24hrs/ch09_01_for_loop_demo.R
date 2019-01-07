# Code for demonstrating usage of for loop.


demo_for_loop <- function() {
        fruits <- c("apple", "orange", "guava", "banana")
    for (fruit in fruits) {
        cat(fruit, ":", nchar(fruit), "\n")
    }
}

demo_for_loop()

