p <- ggplot(fifa_countries_audience, aes(x=fifa_countries_audience$tv_audience_share, 
                                    y=fifa_countries_audience$gdp_weighted_share, 
                                    color=fifa_countries_audience$confederation, 
                                    shape=fifa_countries_audience$confederation)) +
  geom_point() + 
  geom_smooth(method=lm, fullrange=TRUE, aes(fill=fifa_countries_audience$confederation))

p + labs(title="FIFA Viewership by Confederation (5% Confidence Interval)", x="TV Audience Share (Millions)", y="GDP Weighted Share (Billions)")
