# criando o dataset
myData <- data.frame(codigo=1:12, mes=month.name, unitario=runif(12), 
                     quant=rnorm(12,30,5), percentil = abs(rnorm(12))*100, total = 0)

# aplicando a coluna total com unitario*quant
myData$total <- myData$quant * myData$unitario # alterando o valor de total

# criando uma nova coluna total multiplicando unitario por quant (cria uma nova coluna)
myData <- cbind(myData, total = myData$quant * myData$unitario)

myData

