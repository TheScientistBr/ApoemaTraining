#Faturamento de uma por localização (Clientes Internos e Clientes Externos, Multinacionais)

#Criar um dataset com pelo menos cinco colunas numéricas e três categóricas.
#Use as funções de criação de distribuição aleatória, use pelo menos duas
#PaisCliente = sample(countryExData[ , 2], 1000, replace = TRUE)
require(rworldmap)

set.seed(0)
myData <- data.frame(ID = 1:1000, 
                     TipoCliente = rep(c("Clientes Internos", "Clientes Externos"), 500),
                     MesFaturamento = rep(c(month.name), length.out=1000, each=30),
                     PaisCliente = sample(countryExData[ , 2], 1000, replace = TRUE),
                     Commodity = sample(c("Iron Ore", "Coal", "Wood Product", "Grain"), 1000, replace = TRUE),
                     QtdCargaTransportada = runif(1000, 100000, 10000000),
                     QtdServicos = runif(1000, 1, 7),
                     ValorReais = runif(1000, 50, 5000),
                     TaxaUSD = runif(1000, 3, 4.1))
set.seed(0)
myData$ValorUSD <- myData$ValorReais * myData$TaxaUSD

#Grave seu dataset no disco
save(myData, file="myData.RData")


#Você deverá extrair do dataset:
  
#  Somas e medias das colunas numéricas do dataset usando ??pply
lapply(myData[6:10], sum) 
lapply(myData[6:10], mean) 


#Usar split
myData1 <- split(myData, myData$Commodity) 

#Mostra um gráfico
plot(myData$Commodity, myData$ValorUSD)

#Histograma
hist(myData$ValorUSD, 
     main = "Histograma de Total USD x Qtd serviços prestados",
     labels = FALSE)

