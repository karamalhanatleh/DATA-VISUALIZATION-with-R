#mosaic plots

#load library

library(ggplot2)
library(ggmosaic)
library(dplyr)

# A few modifications to data
flights <- fly %>%
  filter(!is.na(do_you_recline), !is.na(rude_to_recline))

  
# Create individual plots

# Create individual plots
bar_examp <- ggplot(data = flights) + 
  geom_mosaic(aes(x = product(do_you_recline), fill = do_you_recline), divider = "vbar") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(y = "Do you recline?", x = "", title = "Bar Chart")
bar_examp




#######################

# Create the data frame
data <- data.frame(
  age = c("18-25", "26-35", "36-45", "46-55", "56+"),
  gender = c("Male", "Female", "Male", "Female", "Male"),
  count = c(50, 150, 200, 250, 300)
)

ggplot(data=data)+
  geom_mosaic(aes(weight = count , x= product(age),fill=gender))



##############
data <- data.frame(
  Subject = c("Math", "Math", "Science", "Science", "History", "History"),
  Gender = c("Male", "Female", "Male", "Female", "Male", "Female"),
  Count = c(100, 120, 80, 90, 5, 10)
)

ggplot(data = data)+
  geom_mosaic(aes(weight =Count , x=product(Subject),fill=Gender ))


##############
data <- data.frame(
  Age_Group = c("18-25", "18-25", "26-35", "26-35"),
  Party_Affiliation = c("Democrat", "Republican", "Democrat", "Republican"),
  Count = c(120, 80, 150, 100)
)


ggplot(data = data)+
  geom_mosaic(aes(weight=Count , x=product(Age_Group) , fill=Party_Affiliation))



##################

data <- data.frame(
  Age_Group = rep(c("18-25", "26-35"), each = 4),
  Gender = rep(c("Male", "Female"), times = 4),
  Product_Category = rep(c("Electronics", "Fashion"), times = 4),
  Count = c(50, 30, 70, 40, 60, 40, 80, 50)
)

ggplot(data = data)+
  geom_mosaic(aes(weight=Count, x=product(Age_Group , Gender),fill=Product_Category ))






































