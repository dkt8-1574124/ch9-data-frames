# Exercise 5: large data sets: Baby Name Popularity Over Time

# Read in the female baby names data file found in the `data` folder into a 
# variable called `names`. Remember to NOT treat the strings as factors!
my_data <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a data frame `names_2013` that contains only the rows for the year 2013
names_2013 <- my_data[my_data$year == 2013,]

# What was the most popular female name in 2013?
max_value <- max(my_data$prop)

my_data$name[my_data$prop == max_value]
# Write a function `most_popular_in_year` that takes in a year as a value and 
# returns the most popular name in that year
most_popular_in_year <- function(y){
  my_data2 <- my_data[my_data$year == y,]
  max_prop <- max(my_data2$prop)
  return(my_data2$name[my_data2$prop == max_prop])
}

# What was the most popular female name in 1994?
mpf <- most_popular_in_year(1994)
print(mpf)
# Write a function `number_in_million` that takes in a name and a year, and 
# returns statistically how many babies out of 1 million born that year have 
# that name. 
# Hint: get the popularity percentage, and take that percentage out of 1 million.
number_in_million <- function(n,y){
  
}

# How many babies out of 1 million had the name 'Laura' in 1995?


# How many babies out of 1 million had your name in the year you were born?


## Consider: what does this tell you about how easy it is to identify you with 
## just your name and birth year?
