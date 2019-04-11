import pandas as pd
import numpy as np
import matplotlib.pyplot as plt   #Data visualisation libraries 
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
%matplotlib inline

FIFAData = pd.read_csv('C:/Users/matth/Documents/python/csv/fifa_countries_audience.csv')

correlation = FIFAData.corr()

heatmap1 = sns.heatmap(correlation)

X = FIFAData[['population_share','gdp_weighted_share']]
y = FIFAData[['tv_audience_share']]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=101)

lm = LinearRegression()
 
sns.lmplot(data=FIFAData, x='gdp_weighted_share', y='tv_audience_share', fit_reg=True)

sns.lmplot(data=FIFAData, x='population_share', y='tv_audience_share', fit_reg=True, col='confederation')

sns.lmplot(data=FIFAData, x='gdp_weighted_share', y='tv_audience_share', fit_reg=True, hue='confederation')