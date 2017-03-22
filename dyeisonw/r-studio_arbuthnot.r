# Obtem o dataset arbuthnot
source("http://www.openintro.org/stat/data/arbuthnot.R")

# Imprime o dataset no console
arbuthnot

# Imprime as dimensões do dataset
dim(arbuthnot)

# Imprime os nomes das colunas
names(arbuthnot)

# Imprime os dados apenas da coluna boys
arbuthnot$boys

# Plotando um grafico de meninas por ano (tipo dispersão por default)
plot(x = arbuthnot$year, y = arbuthnot$girls)

# Plotando o mesmo gráfico por linha
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "l")

# Doc sobre a função plot
?plot

# Somando todos os batismos por ano
arbuthnot$boys + arbuthnot$girls


# Plotando o numero total de batismos por ano
plot(arbuthnot$year, arbuthnot$girls + arbuthnot$boys, type = "l")


# Razao do numero de meninos por meninas
arbuthnot$boys / arbuthnot$girls

# Proporção do meninos
arbuthnot$boys / (arbuthnot$boys + arbuthnot$girls)


# Plot de proporção dos meninos por ano
plot(arbuthnot$year, arbuthnot$boys / (arbuthnot$boys + arbuthnot$girls), type = "l")


arbuthnot$boys > arbuthnot$girls
