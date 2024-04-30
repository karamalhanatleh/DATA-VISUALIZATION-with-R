#######################################
###   Box Plot
#######################################



  
# In descriptive statistics, a box plot or boxplot
# (also known as a box and whisker plot) is a type
# of chart often used in explanatory data analysis.
# Box plots visually show the distribution of numerical 
# data and skewness by displaying the data quartiles (or percentiles)
# and averages.
# 
# Box plots show the five-number summary of a set of data:
#   including the minimum score, first (lower) quartile,
# median, third (upper) quartile, and maximum score.
#   


# Minimum Score
# The lowest score, excluding outliers .
# 
# Lower Quartile
# Twenty-five percent of scores fall below the lower quartile value 
# 
# Median
# The median marks the mid-point of the data and is shown by the line that divides the box into two parts (sometimes known as the second quartile). Half the scores are greater than or equal to this value, and half are less.

# Upper Quartile
# Seventy-five percent of the scores fall below the upper quartile value (also known as the third quartile). Thus, 25% of data are above this value.
# 
# Maximum Score
# The highest score, excluding outliers (shown at the end of the right whisker).
# 
# Whiskers
# The upper and lower whiskers represent scores outside the middle 50% (i.e., the lower 25% of scores and the upper 25% of scores).
# 
# The Interquartile Range (or IQR)
# The box plot shows the middle 50% of scores (i.e., the range between the 25th and 75th percentile).
# 
# 




#ex simple
data <- c(23, 45, 56, 67, 78, 89, 90, 78, 65, 45, 34, 23)

boxplot(data)


# Create a box plot
boxplot(data, 
        main="Box Plot of Sample Data", 
        xlab="Data", 
        ylab="Values",
        border="black" )


###
#ex2 
data <- c(23, 45, 56, 67, 78, 150, 89, 90, 78, 65, 45, 34, 23, 200, 210)
boxplot(data, 
        main="Box Plot with Outliers", 
        xlab="Data", 
        ylab="Values")




###
#use data mtcars
# Create a box plot for the mpg variable
boxplot(mtcars$mpg, 
        main="Box Plot of MPG (Miles Per Gallon)", 
        ylab="MPG")

# Plot for MPG
boxplot(mtcars$mpg, 
        main="MPG (Miles Per Gallon)", 
        ylab="MPG",
        notch=TRUE)      # Show notches




# Plot for number of cylinders (cyl)
boxplot(mtcars$cyl,
        main="number of clyinders",
        ylab='Cylinders')
#

boxplot(mtcars$cyl, 
        main="Number of Cylinders", 
        ylab="Cylinders",
        col="lightgreen",  # Set color of the boxes
        border="black",    # Set color of the box borders
        notch=TRUE)       # Show notches





# Plot for horsepower (hp)
boxplot(mtcars$hp, 
        main="Horsepower", 
        ylab="Horsepower"
        )      


