setwd("C:/Users/analistamv3/Documents/GitHub/ApoemaTraining/gustavomantegazine")

set.seed(1)
myData <- data.frame(codigo = 1:5, Produto = c("DIPIRONA","PAPEL","MESA","MANITOL","PLAVIX"),
                     tipo = c("MED","MAT","MAT","MED","MED"), SN_ATIVO = c("S","N","S","S","N"),
                     valor_Uni = runif(5, min=1, max=5), quantidade = rnorm(5,12,5),
                     valor_Total = 0, qt_Vend_Ult_Mes = rnorm(5,20,8),
                     lucro_Ult_Mes = 0
)
myData
myData$valor_Total = myData$quantidade * myData$valor_Uni
myData$lucro_Ult_Mes = myData$qt_Vend_Ult_Mes * myData$valor_Uni
myData

write.table(myData, file="minhaTabela.txt", sep=",")

apply(myData[,5:6],1,mean)
sapply(myData[,5:6],sum)


split(myData$Produto, myData$tipo)

plot(myData$Produto, myData$lucro_Ult_Mes)
hist(myData$quantidade)
myData
