## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# Because my.vector contains characters and not numbers 
# so therefore it cannot be summed 

install.packages("stringr")
library(stringr)

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))
# Describe why this doesn't work: 
# The package was installed but was not loaded

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not a defined value and therefore it can not run


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my.vector <- c("hello", "there")
typeof(my.vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  length.diff <- length(a) - length(b)
  return(paste("The difference in lengths is", length.diff))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c("a", "b", "c"), c("d"))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec.one, vec.two) {
  difference <- length(vec.one)- length(vec.two)
  if (difference > 0) {
    return(paste("The first vector is longer by", difference, "elements"))
  } else {
    return(paste("The second vector is longer by", abs(difference), "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c("a", "b", "c"),c("d"))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vec.one, vec.two, vec.three) {
  return(c(vec.one, vec.two, vec.three))
}
# Send 3 vectors to your function to test it.
CombineVectors(c("a", "b", "c"), c("d"), c("e", "f", "g"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
# used regex here
CapsTime <- function(courses) {
  return(gsub("[A-Z]", "", courses))
}
