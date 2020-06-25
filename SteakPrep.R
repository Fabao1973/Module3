library(fivethirtyeight)
library(tidyverse)
library(plotly)

data("steak_survey", package="fivethirtyeight")

sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")

ggplotly(
  ggplot(sdat, 
         aes(x = steak_prep, fill = female)) + 
    geom_bar(position="dodge") +
    ggtitle(paste0("Steak Preparation Preference by Gender for ","Mountain"," Region"))+
    theme_dark() 
)
