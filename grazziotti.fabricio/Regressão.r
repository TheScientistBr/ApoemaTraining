myData <- read.csv(file = "myDataSet.csv", header = TRUE, sep=",",
                     colClasses = c("character", "numeric", "numeric", "numeric", "numeric", "numeric"));


summary(myData[, 2:6])

boxplot(myData[, 2:6], col = "green")

hist(myData$c2, col = "green", breaks = 100)
hist(myData$c3, col = "green", breaks = 100)
hist(myData$c4, col = "green", breaks = 100)
hist(myData$c5, col = "green", breaks = 100)

rug(myData$c4)
rug(myData$c5)


myResumo1 <- lm(myData$c2 ~ myData$c3)
myResumo2 <- lm(myData$c3 ~ myData$c4)
myResumo3 <- lm(myData$c4 ~ myData$c5)

myResumo11 <- lm(myData$c5~ myData$c4+myData$c3)
summary(myResumo11)


summary(myResumo1)
summary(myResumo2)
summary(myResumo3)

shapiro.test(rstudent(myResumo1))
shapiro.test(rstudent(myResumo2))
shapiro.test(rstudent(myResumo3))

plot(rstudent(myResumo1) ~ fitted(myResumo1), pch = 19)
abline(h = 0, lty = 2)

plot(rstudent(myResumo2) ~ fitted(myResumo2), pch = 19)
abline(h = 0, lty = 2)

plot(rstudent(myResumo3) ~ fitted(myResumo3), pch = 19)
abline(h = 0, lty = 2)


myResumo11 <- lm(myData$c5 ~ myData$c4/myData$c3 )
summary(myResumo11)

myResumo11 <- lm(myData$c5 ~ (myData$c3/myData$c2)^myData$c1)
summary(myResumo11)
plot(rstudent(myResumo11) ~ fitted(myResumo11), pch = 19)
abline(h = 0, lty = 2)