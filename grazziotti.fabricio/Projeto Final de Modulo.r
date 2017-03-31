set.seed(1)

data <- read.table("dados.txt", sep = ",", header = TRUE)  
data

data$valorNovo = round(runif(14,min = 45000,max = 90000),0)
data$valorAtual = round(runif(14,min = 2500,max = 65000),0)
data$depreciacao = round(runif(14,min = 9,max = 15),0)

data

lapply(data[,4:5], mean)
lapply(data[,4:5], sum)


plot(data$montadora, data$depreciacao)
plot(data$modelo, data$valorAtual)
hist(data$valorAtual)

write.table(data, file="dadosModificados.txt", sep=",")

