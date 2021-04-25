# Regression-Analysis-with-R
Regression Analysis with R
I fetched “weatherHistory.csv” from https://www.kaggle.com/budincsevity/szeged-weather
I fetched “bottle.csv” from https://www.kaggle.com/sohier/calcofi


Generalized Linear Model (Binomial):
Introduction: If we had surveyed a bird nursery and wanted to analyze how the presence of hatched egg varied with time and temperature of the day.
Research question: What is the effect of temperature on birds’ egg hatching process?
Dataset (Birdshatch.csv): 
	Unit of observation: Hatched egg on the bird nursery.
The number of explanatory and response variables: Here are two explanatory variables (time and temperature) and one response variable (Birdhatch). The response variable is discrete.
The rationale behind choosing the statistical model: The response variable is described as presence/absence (1/0). The variable is discrete and binomial.
Interpretation of the results along with plot (if any): The p-value for time is smaller than 0.05 (P<0.05: 0.01170 with the summary function and 0.0098 with Anova function), so the conclusion is there is
an effect of time on the presence of hatched egg, but no effect of temperature or interaction between time and temperature. Necessary plots are added to the corresponding R file.


Generalized Linear Model (Count):
Introduction:  If we had counts of different animal groups at the forest control sites and sites where tree plantation in the forest has been carried out (treatment), we may want to know if the tree activities have affected the count of tigers.

Research question: What is the effect of forest treatment on the counts of the tigers?
Dataset (forest.csv): 
Unit of observation: Count of tigers.
The number of explanatory and response variables: Here response variable is the count of animals and the explanatory variable is forest regeneration activities (treatment). 
The number of levels for each variable: The explanatory variable (forest treatment)  is categorical with two-level.

The rationale behind choosing the statistical model: The response variable is the count of the tigers and the explanatory variable is categorical.

Interpretation of the results along with plot (if any): The p-value for forest treatment is small (P<0.05: less than 2e-16), so the conclusion is there is an effect of forest regeneration activities (treatment) on tiger abundance.



Linear model:
Introduction:  If we had ocean data with different matrices such that depth, temperature, salinity, etc we might get an overview of the salinity of ocean water according to water temperature and ocean depth.
Research question: 1) Is there any relationship between water salinity and water temperature?
2) Is there any relationship between water salinity and ocean depth?
Dataset (bottle.csv): 
Unit of observation: Water salinity in ocean water.
The number of explanatory and response variables: Here response variable is the salinity in the ocean water and the explanatory variable is water temperature (in research question 1) and ocean depth (in research question 2).

The rationale behind choosing the statistical model: Both the explanatory and the response variables are continuous in both cases.
Interpretation of the results along with plot (if any): 
For research question no. 1, the value of the r- square is 0.74 indicates that the water temperature explains 74% of the observed variation in the water salinity of the ocean data. This also indicates with the increase of temperature, water salinity also increases.
For research question no. 2, the value of the r- square is 0.64 indicates that the ocean depth explains 64% of the observed variation in the water salinity of the ocean data. This also indicates with the increase of depth, water salinity also increases.

In addition to that, I also found that, for research question 1, the p-value is <0.05 (less than 2e-16) which indicates the relationship between these two variables is significant.
In addition to that, I also found that, for research question 2, the p-value is <0.05 (less than 2e-16) which indicates the relationship between these two variables is significant.
Necessary plots are added to the corresponding R file.


One way/ Single Factor ANOVA:
Introduction:  If we had time-series weather data with different matrices such that humidity, wind bearing, daily summary, etc we might get an overview of the wind speed according to the daily summary.
Research question: How is the wind speed (k.m/ h) according to the weather type?
Dataset (weatherHistory.csv): 
Unit of observation: Wind speed in km/ hr.
The number of explanatory and response variables: Here response variable is the wind speed in km/ hr and the explanatory variable is the weather summary. Here explanatory variable is categorical.
The number of levels for each variable: The explanatory variable (weather summary)  is categorical with five-level.

The rationale behind choosing the statistical model: As only one explanatory variable (x) is termed the factor or treatment, and the various categories within that treatment are termed the levels, I used one way ANOVA model. Also, the dependent variable is continuous here.
.
Interpretation of the results along with plot (if any): The p-value is <0.05 (6.85e-08) which indicates the relationship between the weather summary and the wind speed is significant. As I detect significant differences in the ANOVA, I am then interested in knowing
exactly which groups differ from one another, and which do not. To see a comparison between each mean and each other mean, I used Tukey’s posthoc test. Necessary plots are added into the corresponding R file.


Factorial ANOVA or Multiple Linear Regression:
Introduction:  If we had time-series weather data with different matrices such that humidity, wind bearing, daily summary, etc we might get an overview of the temperature according to the daily summary and the wind bearing (degrees).
Research question: How does the temperature change according to the weather type and the wind bearing?
Dataset (weatherHistory.csv): 
Unit of observation: Weather temperature (in degrees).
The number of explanatory and response variables: Here response variable is the temperature and the explanatory variable is the weather summary and the wind bearing. Here explanatory variables are categorical.
The number of levels for each variable: The explanatory variable the weather summary is categorical with five-level. The explanatory variable the wind bearing is categorical with seventy-four levels.

The rationale behind choosing the statistical model: As the explanatory variables (x) are termed the factor or treatment, and the various categories within that treatment are termed the levels, I used the multiple linear regression ANOVA model.
Interpretation of the results along with plot (if any): 
There is no significant effect of wind bearing on weather temperature (P >0.05: 0.238). 
There is a significant effect of weather summary on weather temperature (P < 0.05: 7.41e-08). 
The weather summary and the wind bearing combined has no significant effect on the weather temperature (P > 0.05: 0.588). 
To see a comparison between each mean and each other mean, I used Tukey’s posthoc test. 
Necessary plots are added into the corresponding R file.

		      

Another Example for One-way/ Single Factor ANOVA:
Introduction:  If we could set an experiment in which crop yields per unit area will be measured from 14 randomly selected fields on each of three soil types, we could get an overview of yielding results according to different soil types.
Research question: What is the relationship between the soil types and the crop yields per unit area?
Dataset (yields.csv): 
Unit of observation: Crops yield per unit area.
The number of explanatory and response variables: Here response variable is the yielding results (yield) and the explanatory variable is the soil types (soil). Here explanatory variable is categorical.
The number of levels for each variable: The explanatory variable (weather summary)  is categorical with three-level.

The rationale behind choosing the statistical model: As only one explanatory variable (x) is termed the factor or treatment, and the various categories within that treatment are termed the levels, I used one way ANOVA model. Also, the dependent variable is continuous here.
.
Interpretation of the results along with plot (if any): The p-value is <0.05 (0.0743) which indicates the relationship between the soil type and the yielding result is significant. As I detect significant differences in the ANOVA, I am then interested in knowing
exactly which groups differ from one another, and which do not. To see a comparison between each mean and each other mean, I used Tukey’s posthoc test. Necessary plots are added into the corresponding R file.


Another Example for Multiple Linear Regression:
Introduction:  If we could set an experiment in which crop yields per unit area will be measured from 14 randomly selected fields on each of three soil types and their presence of the mineral percentage, we could get an overview of yielding results according to different soil types.
Research question: How do crops yield per unit area change according to the soil type and the mineral percentage presence?
Dataset (yields.csv): 
Unit of observation: Crops yield per unit area.
The number of explanatory and response variables: Here response variable is the crop yield per unit area (yield) and the explanatory variables are the soil type (soil) and the percentage of minerals (mineral). Here explanatory variables are categorical.
The number of levels for each variable: The explanatory variable the soil type (soil) is categorical with three levels. The explanatory variable the percentage of minerals is categorical with seven levels.

The rationale behind choosing the statistical model: As the explanatory variables (x) are termed the factor or treatment, and the various categories within that treatment are termed the levels, I used the multiple linear regression ANOVA model.
Interpretation of the results along with plot (if any): 
There is no significant effect of soil type on crop yield (P > 0.05: 0.0740). 
There is no significant effect of the percentage of minerals on crop yield (P > 0.05: 0.0794). 
The soil type and the percentage of mineral combined have no significant effect on the crop yield (P > 0.05: 0.8020). 
To see a comparison between each mean and each other mean, I used Tukey’s posthoc test. 
Necessary plots are added into the corresponding R file.





