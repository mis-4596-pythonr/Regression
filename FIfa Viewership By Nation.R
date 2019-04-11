x <- fifa_countries_audience$tv_audience_share
y <- fifa_countries_audience$gdp_weighted_share

library(ggplot2)

p <- ggplot (fifa_countries_audience, aes(x = fifa_countries_audience$tv_audience_share, 
y = fifa_countries_audience$gdp_weighted_share)) + geom_point() +
  stat_smooth()

p + labs(title="FIFA Viewership by Nation", x="TV Audience Share (Millions)", y="GDP Weighted Share (Billions)")