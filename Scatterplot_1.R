##########################
#         Scatterplot 
#########################

#A scatterplot displays the values of two variables along two axes. It shows the relationship between them, eventually revealing a correlation.



### Basic scatterplot with R and ggplot2
#librarry

library(ggplot2)

ggplot(iris , aes(x=Sepal.Length , y=Sepal.Width))+
  geom_point()





### Custom ggplot2 scatterplot
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
  geom_point(
    color="red",    # Color of the points
    fill='black' ,   # Fill color inside the points
    shape=21,          # Shape of the points (a circle with a border)
    alpha=0.9,         # Transparency of the points
    size=6,            # Size of the points
    stroke=2           # Width of the border around the points
  )


## Using theme_ipsum
#applying the theme_ipsum of the hrbrthemes package is always a good option.
library(ggplot2)
library(hrbrthemes)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
  geom_point(
    color="red",    # Color of the points
    fill='black' ,   # Fill color inside the points
    shape=21,          # Shape of the points (a circle with a border)
    alpha=0.9,         # Transparency of the points
    size=6,            # Size of the points
    stroke=2           # Width of the border around the points
  )+
  theme_ipsum()





### Map a variable to marker featu

##Works with any aesthetics

# Transparency
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, alpha=Species)) + 
   geom_point(size=2 , color='red')+
  ggtitle("Transparency")+
  theme_ipsum()

# data <- data.frame(
#   X = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
#   Y = c(2, 4, 5, 3, 6, 4, 5, 3, 2),
#   Group = c( "A","A","A","B","B","B","C",'C',"C")
# )
# ggplot(data, aes(x = X, y = Y, alpha = Group)) +
#   geom_point(size = 6, color = "red") +
#   ggtitle("Transparency") +
#   theme_ipsum()



# Shape
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, shape=Species)) + 
  geom_point(size=6, color="lightblue") +
  ggtitle("Shape") +
  theme_ipsum()


# data <- data.frame(
#   X = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
#   Y = c(2, 4, 5, 3, 6, 4, 5, 3, 2),
#   Group = c( "A","A","A","B","B","B","C",'C',"C")
# )
# ggplot(data, aes(x = X, y = Y, shape=Group)) +
#   geom_point(size = 6, color = "red") +
#   ggtitle("Transparency") +
#   theme_ipsum()



# Size
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, size=Petal.Width)) + 
  geom_point(color="darkred") +
  ggtitle("Size") +
  theme_ipsum()
# 
# data <- data.frame(
#   X = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
#   Y = c(2, 4, 5, 3, 10, 4, 5, 3, 2),
#   Group = c( "A","A","A","B","B","B","C",'C',"C")
# )
# ggplot(data, aes(x = X, y = Y, size=Y)) +
#   geom_point(size = 6, color = "red") +
#   ggtitle("Transparency") +
#   theme_ipsum()