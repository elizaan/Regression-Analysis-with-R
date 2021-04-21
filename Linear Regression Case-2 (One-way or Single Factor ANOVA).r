weather = read.csv("weatherHistory.csv", header = TRUE)
weather = weather[0:121,]
#print(weather)
# names(weather)[names(weather) == "Daily Summary"] <- "Summary"
#names(weather)[names(weather) == "Wind Speed (km/h)"] <- "wind_speed"
weather$Daily.Summary <- factor(weather$Daily.Summary)
weather.aov <- aov(Wind.Speed..km.h.~ Daily.Summary, data = weather)
summary(weather.aov)

boxplot(Wind.Speed..km.h.~ Daily.Summary, data=weather, ylab = "Wind Speed (km/h)", xlab = "Weather Summary", cex.axis=0.75)

TukeyHSD(weather.aov)
