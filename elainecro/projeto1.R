#Projeto Final do módulo
#1 - Criar um dataset com pelo menos cinco colunas numéricas e três categóricas. (1000 linhas)
#2 - Use as funções de criação de distribuição aleatória, use pelo menos duas

bancos = c("Itau", "Santander", "Bradesco", "Sofisa", "Citibank")

dataSet <- data.frame(ID = 1:1000, 
                      banco = as.character(rep(bancos, 200)), 
                      idade = as.integer(runif(1000,22,58)),
                      sexo = rep(c("Feminino","Masculino"), 500),
                      faixaatraso = as.integer(runif(1000,50,100)),
                      acionamentos = as.integer(runif(1000, 10, 67)),
                      pagamento = as.logical(c(TRUE, FALSE)))

#which  - ver se consigo aplicar para trocar nesse apply
dataSet$desconto <- lapply(dataSet$faixaatraso, function(val){
  if (val > 85){
    runif(1, 18.1, 19.5)
  } else {
    runif(1, 5.5, 9.7)
  }
})

dataSet$desconto <- as.numeric(dataSet$desconto)

#3 - Grave seu dataset no disco
write.csv(x = dataSet, file = "projeto1.csv")

#4 - Somas e medias das colunas numéricas do dataset usando ??pply
mediaatraso <- tapply(dataSet$faixaatraso, dataSet$sexo, mean)
totalacionamentos <- sum(dataSet$acionamentos)

#5 - Usar split
maior15 <- split(dataSet, dataSet$desconto > 16)
maior15 <- maior15[2]

#6 - Mostra um gráfico
plot(dataSet$faixaatraso, dataSet$desconto)


#7 - Histograma
hist(dataSet$idade, breaks = c(20,30,40,50,60))
hist(dataSet$acionamentos, breaks = c(10,20,30,40,50,60,70))

#8 - postar em seu fork do github em (Apoema Training)

