###########################
# #  Treemaps
##########################


# Load required libraries
library(treemapify)
library(ggplot2)

# Sample data
country <- c("USA", "China", "India", "Brazil", "Russia")
region <- c("North", "East", "South", "West", "Central")
population <- c(328, 1440, 1380, 213, 146)
df <- data.frame(country, region, population)

# Treemap with colors based on the categorical variable "country"
ggplot(df, aes(area = population, fill = country)) +
  geom_treemap()

# Treemap with colors based on the numeric variable "population"
ggplot(df, aes(area = population, fill = population)) +
  geom_treemap()

# Adding labels to the treemap
ggplot(df, aes(area = population, fill = country, label = population)) +
  geom_treemap() +
  geom_treemap_text()

# Customizing the text of the labels
ggplot(df, aes(area = population, fill = country, label = population)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", size = 15)

# Adding groups and values to the treemap boxes
ggplot(df, aes(area = population, fill = country, label = paste(country, population, sep = "\n"))) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", size = 15) +
  theme(legend.position = "none")

# Treemap colored with a continuous palette
ggplot(df, aes(area = population, fill = population, label = country)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", size = 15)

# Adjusting text within treemap sections
ggplot(df, aes(area = population, fill = population, label = country)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", size = 15, grow = TRUE)

# Treemap with subgroups
ggplot(df, aes(area = population, fill = population, label = country, subgroup = region)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 5) +
  geom_treemap_subgroup_text(place = "centre", grow = TRUE, alpha = 0.25, colour = "black", fontface = "italic") +
  geom_treemap_text(colour = "white", place = "centre", size = 15, grow = TRUE)
