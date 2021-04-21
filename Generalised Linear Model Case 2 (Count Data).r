forest <- read.csv("forest.csv", header = T)
Replant<- glm(Tiger~ForestTreatment, family="poisson",data=forest)
summary(Replant)

hist(forest$Tiger)

plot(Tiger~ForestTreatment, data = forest, xlab = "Forest Revegenation", ylab =
"Tiger Count",pch=16)

plot(Replant,which=1)

anova(Replant,test="Chisq")
