library(ggplot2)
p <- ggplot(fifa_countries_audience, aes(x = fifa_countries_audience$gdp_weighted_share, 
                                    y = fifa_countries_audience$tv_audience_share, colour
                                    = fifa_countries_audience$confederation, 
                                    shape = fifa_countries_audience$confederation)) +
                                    geom_point() + geom_smooth()
lm(formula = y ~ x)
relation <- lm(y~x)
print(summary(relation))

p + labs(title="Viewership by Confederation", x="GDP Weighted Share (Billions)", 
         y="TV Audience Share (Millions)")
