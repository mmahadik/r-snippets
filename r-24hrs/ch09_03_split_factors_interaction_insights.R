# Following code will help you understand the interplay
# between split, factor and interaction functions.


# Consider two variables batch and year
# There are 10 cases 
# The batch_domain and year_domain define the domain
# of values that can occur in batch and year

# allowed values
batch_domain <- factor(c("A", "B", "C", "D"))
year_domain <- factor(c(2010, 2011, 2013, 2014))

# actual values
batch <- c("A", "B", "C", "A", "B", "D", "C", "A", "C", "B")
year <- c(2010, 2010, 2010, 2011, 2011, 2011, 2013, 2013, 2014, 2011)

# batch_year_domain indicates the domain of values
# interaction between batch and year
batch_year_interaction <- interaction(batch, year)
batch_year_domain <- levels(batch_year_interaction)

# use batch_year_domain in split
df <- data.frame(batch=batch, year=year, size=rpois(n=10, lambda=20))
split(df, batch_year_interaction)
