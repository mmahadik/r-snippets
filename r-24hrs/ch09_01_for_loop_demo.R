# Code for demonstrating usage of for loop.


demo_for_loop <- function() {
    fruits <- c("apple", "orange", "guava", "banana")
    for (fruit in fruits) {
        cat(fruit, ":", nchar(fruit), "\n")
    }
}
# demo_for_loop()

demo_iterating_over_df <- function() {
    for (rec in iris[1:5,]) {
        print(rec)
    }
}
# demo_iterating_over_df()


# demo of how to effect group by and compute using for loop
demo_avg_ozone_by_month <- function() {
    for (month in unique(airquality$Month)) {
       ozone <- airquality[airquality$Month == month, "Ozone"] 
       mean_ozone <- mean(ozone, na.rm=TRUE)
       mean_ozone <- round(mean_ozone, 2)
       cat("\nAverage ozone for month ", month, " is ", mean_ozone)
    }
}
# demo_avg_ozone_by_month()


# demo how to iterate over columns in a df
# after having split it (group by)
demo_avg_all_vars <- function() {
    for (month in unique(airquality$Month)) {
        cat("\n\nMonth: ", month)
        cat("\n", paste(rep("=", 80),sep="", collapse=""))
        for (attr_name in c("Ozone", "Solar.R", "Wind", "Temp")) {
            attr_values <- airquality[airquality$Month == month, attr_name]
            attr_mean <- mean(attr_values, na.rm=TRUE)
            attr_mean <- round(attr_mean, 2)
            # cat(sprintf("\n\t%-10s: %-6.2f", attr_name, attr_mean))
            cat(sprintf("\n\t%-20s: %6.2f", attr_name, attr_mean))
        }
    }
}
demo_avg_all_vars()


