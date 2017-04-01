myData <- data.frame(Codigo = 1:25, mes = , unitario = runif(12), quant = rnorm(12, 30, 3))
myData
myData <- cbind(myData, total = myData$unitario * myData$quant)
myData

myData <- data.frame(Codigo = 1:12, mes = month.name, unitario = runif(12), quant = rnorm(12, 30, 3), total = 0)
myData
myData$total <- myData$unitario * myData$quant
myData

myData$Codigo
myData$mes
myData$unitario
myData$quant
