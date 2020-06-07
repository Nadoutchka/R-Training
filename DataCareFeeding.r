library(tidyverse)
library(gapminder)
my_gap <- gapminder
my_gap
my_gap %>% filter(country == "Canada")
my_precious <- my_gap %>% filter(country == "Canada")
my_gap %>% mutate(gdp = pop * gdpPercap)
ctib <- my_gap %>% filter(country == "Canada")
my_gap <- my_gap %>%
    mutate(tmp = rep(ctib$gdpPercap, nlevels(country)),
           gdpPercapRel = gdpPercap / tmp,
           tmp = NULL)
my_gap
my_gap %>% filter(country == "Canada")