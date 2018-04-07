# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
v1 <- c(9,12,27,46)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
v2 <- c(17,9,33,18)


# Combine your two vectors into a dataframe called `games`
games <- data.frame(v1,v2)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$dif <- games$v1 - games$v2

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$dif > 0

# Create a vector of the opponent names corresponding to the games played
o <- c("a","b","c","d")

# Assign your dataframe rownames of their opponents
rowsnames(games) <- o


# View your data frame to see how it has changed!

