bottle = read.csv("bottle.csv", header = TRUE)
model<-lm(Salnty~T_degC, data = bottle[0:90,])
summary(model)

plot(Salnty~T_degC, data = bottle[0:90,], xlab = "Temperature", ylab =
"Salinity",pch=16)
abline(model, col = "red")

# bottle$Depthm<-factor(bottle$Depthm)
# bottle$T_degC<-factor(bottle$T_degC)
# bottle.aov<-aov(Salnty~Depthm*T_degC, data = bottle[0:90,])
# summary(bottle.aov)

model2<-lm(Salnty~Depthm, data = bottle[0:90,])
summary(model2)

plot(Salnty~Depthm, data = bottle[0:90,], xlab = "Depth", ylab =
"Salinity",pch=16)
abline(model2, col = "red")


