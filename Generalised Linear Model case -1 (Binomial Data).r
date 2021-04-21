Bird <- read.csv("Birdshatch.csv", header = T)
# print(Bird)
ft.bird <- glm(Birdhatch ~ Time*Temperature..Degree., family=binomial, data=Bird)
summary(ft.bird)

plot(ft.bird,which=1)

anova(ft.bird,test="Chisq")

summary(ft.bird)
