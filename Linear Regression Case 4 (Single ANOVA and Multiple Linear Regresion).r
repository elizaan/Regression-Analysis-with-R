yields = read.csv("yields.csv", header = TRUE)
yields$soil <- factor(yields$soil)
yields.aov <- aov(yield ~ soil, data = yields)
summary(yields.aov)

boxplot(yield~soil, data=yields, ylab = "Yield", xlab = "Soil")

TukeyHSD(yields.aov)

yields$soil <- factor(yields$soil)
yields$mineral.percentage. <- factor(yields$mineral.percentage.)
yields.aov <- aov(yield ~ soil*mineral.percentage., data = yields)
summary(yields.aov)

boxplot(yield~mineral.percentage., data=yields, ylab = "Yield", xlab = "Mineral (%)")

boxplot(yield~ soil*mineral.percentage., data=yields, ylab = "Yield", xlab = "Soil x Mineral percentage")

TukeyHSD(yields.aov)
