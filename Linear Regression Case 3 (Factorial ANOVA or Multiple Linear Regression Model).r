weather = read.csv("weatherHistory.csv", header = TRUE)
weather = weather[0:121,]
# print(weather)
weather$Daily.Summary <- factor(weather$Daily.Summary)
weather$Wind.Bearing..degrees. <- factor(weather$Wind.Bearing..degrees.)
weather.aov <- aov(Temperature..C.~ Daily.Summary*Wind.Bearing..degrees., data = weather)
summary(weather.aov)

boxplot(Temperature..C.~ Daily.Summary*Wind.Bearing..degrees., data=weather, ylab = "Temperature (C)", xlab = "Weather Summary x Wind Bearing", cex.axis=0.75)

TukeyHSD(weather.aov)
