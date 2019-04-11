
library(ggplot2)

p <- ggplot(fifa_countries_audience, aes(x=fifa_countries_audience$tv_audience_share, 
                                    y=fifa_countries_audience$gdp_weighted_share, group=fifa_countries_audience$confederation, color=fifa_countries_audience$confederation)) + geom_line()

p + labs(title="FIFA Viewership by Confederation (Multiple Regression)", x="TV Audience Share (Millions)", y="GDP Weighted Share (Billions)")
