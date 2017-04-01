products <- c("Pneu", "Farol", "Para-choque", "Volante", "Retrovisor", "Buzina", "Bateria", "Extintor", "Para-brisa", "Acendedor", "Radio", "Calota")
conditions <- c("New", "Damaged", "Refurbished")
brands <- c("Bosh", "Ford", "Koyo", "PBR")

# Criar um dataset com pelo menos cinco colunas numéricas e três categóricas.
myData <- data.frame(id=1:12, product=products, condition=sample(conditions,12,replace=T), 
                     brand=sample(brands,12,replace=T), cost_price=0, 
                     unit_price=runif(12,1,100), quantity=sample(1:20,12,replace=T), 
                     total_sales = 0)


# aplicando a coluna calculando um preco de custo menor que o preco normal
myData$cost_price <- myData$unit_price * 0.8 

# aplicando a coluna total com unitario*quant
myData$total_sales <- myData$quantity * myData$unit_price # alterando o valor de total


# gravando dataset em disco
write.csv(myData, '/Users/jot/Cursos/CientistaDeDados/ApoemaTrainig/JotJunior/aula3.csv')

# aplicando a media das colunas de quantidade e total de vendas
sapply(myData[,5:8], mean )
sapply(myData[,5:8], sum )

# usando split para separar os produtos por marca
split(myData, myData$brand)

# plotando o grafico de vendas
plot(myData$total_sales, typ='h')

# plotando o histograma com as vendas
hist(myData$total_sales)

myData

