# ?tidyverse : Gives the description about the package tidyverse
install.packages("tidyverse")
library(tidyverse)

# '?mpg' Run this to see the description of the data and the meaning of abbreviations for the column headers 
mpg 

# Geoms : Use a geom function to represent data points, use the geom’s aesthetic properties to represent variables.Each function returns a layer

ggplot(data = mpg) + 
  geom_point(mapping = aes(x= displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x= displ, y = hwy, colour = class))

# Faceting 
# Facets divide a plot into subplots based on the values of one or more discrete variables

ggplot(data = mpg) + 
  geom_point(mapping = aes(x= displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)


  