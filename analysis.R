library(tidyverse)
View(heart)

df <- heart

hist(df$age)
hist(df$chol)

boxplot(df$age, df$chol)

y <- df$chol
x <- df$age

plot(y ~ x, main = "Age vs Cholesterol Level", xlab = "Age", ylab = "Chol")

model <- lm(y ~ x, data = heart)
abline(model, col = "blue")

hg <- hist(y, 9, main = "Cholesterol Frequency", xlab = "Cholesterol", ylab = "Frequency", col = "azure")

cor(x ,y , method = "pearson")

cor.test(x,y,method = "pearson")
