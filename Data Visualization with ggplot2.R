##############################
### Data Visualization with ggplot2
##############################

# Load library
library(ggplot2)

# Load data
stops_county <- read.csv('data/MS_stops_by_county.csv')
head(stops_county)
str(stops_county)

# Scatter plot of percentage of black stopped vs. percentage of white stopped
ggplot(data = stops_county, aes(x = pct_black_stopped, y = pct_white_stopped)) +
  geom_point()

# Scatter plot with transparency
MS_plot <- ggplot(data = stops_county, aes(x = pct_black_stopped, y = pct_white_stopped))

MS_plot + 
  geom_point(alpha = 0.3)

# Scatter plot with transparency and blue color
MS_plot +  
  geom_point(alpha = 0.3, color = "blue")

# Scatter plot with transparency, blue color, and diagonal line
MS_plot + 
  geom_point(alpha = 0.3, color = "blue") +
  geom_abline(intercept = 0)

# Scatter plot with transparency, blue color, diagonal line, and limited axes
MS_plot + 
  geom_point(alpha = 0.3, color = "blue") +
  geom_abline(intercept = 0) + 
  scale_x_continuous(limits = c(0, 0.1)) +
  scale_y_continuous(limits = c(0, 0.1))

# Bar plot of wb_delta by county name
ggplot(stops_county, aes(x = county_name, y = wb_delta)) +
  geom_col()

# Horizontal bar plot of wb_delta by county name
ggplot(stops_county, aes(x = county_name, y = wb_delta)) +
  geom_col() + 
  coord_flip()

# Box plot of wb_delta by region
ggplot(stops_county, aes(x = region, y = wb_delta)) +
  geom_boxplot()

# Density plot of pct_black_stopped
ggplot(stops_county, aes(x = pct_black_stopped)) +
  geom_density()

