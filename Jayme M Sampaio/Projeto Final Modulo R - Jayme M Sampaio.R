##############################################################################
# Introdução a Linguagem R
# 
# Projeto Final do módulo
#
# Jayme M. Sampaio  - 19/07/2017
##############################################################################
#
# 1. Criar um dataset com pelo menos cinco colunas numéricas e três categóricas.
# 2. Use as funções de criação de distribuição aleatória, use pelo menos duas
# 3. Grave seu dataset no disco
#
# Você deverá extrair do dataset:
#  
# 1. Somas e medias das colunas numéricas do dataset usando ??pply
# 2. Usar split
# 3. Mostra um gráfico
# 4. Histograma
#
#############################################################################
#
# Em 02/08/2017  - Tarefas do módulo "Exploração e análise de dados"
#  
#   Adicionar ao Dataset mais dois atributos (colunas) com dados dependentes
#  Depois de acrescentar esses atributos no seu dataset, deverá ser produzido
#  os seguintes artefatos usando ggplot2, base ou lattice:
#  
#  1. Gráficos exploratórios
#  2. Clusterização #2 - Hierárquico
#  3. Clusterização #3 - Kmeans
#
#############################################################################

# 3 fatores (categorias)
fac_escolaridade <- factor(c("Analfabeto","Primario","Medio","Superior","Pós Graduado"))
fac_sexo         <- factor(c("M","F"))
fac_uf           <- factor(c("ES","MG","SP","RJ","BA","MS","RS","PA","DF","SC"))


# montagem dos valores de salarios
x <- NULL
for (i in 1:100) {
  x[i]<- i*500 #determinado quais valores podem ser assumidos
}



# 5 Vetores numéricos
vet_id             <- 1:50
vet_idade          <- abs(round(rnorm(50,40,10)))
vet_qtd_filhos     <- abs(round(rnorm(50,3,3)))
vet_qtde_veiculos  <- abs(round(rnorm(50,2,1)))
vet_salario_mensal <- sample(x, 500,re=TRUE)

# criação de um data.frame
df_eleitores <- data.frame(id=vet_id, sexo=fac_sexo, escolaridade=fac_escolaridade, idade=vet_idade, qtd_filhos=vet_qtd_filhos, salario=vet_salario_mensal, veiculos=vet_qtde_veiculos, uf=fac_uf)

# consulta o data.frame
df_eleitores   # foi observado que os campos numericos, permaneceram numéricos

# adicionando 2 novas colunas dependentes
df_eleitores["salariobruto"] <- df_eleitores$salario * 1.5
df_eleitores["encargos"] <- df_eleitores$salariobruto - df_eleitores$salario


somas  <- apply(df_eleitores[,5:7],2,sum)
somas

medias <- apply(df_eleitores[,5:7],2,mean)
medias

# media salarial por idade
by(df_eleitores[,4], df_eleitores[,2], mean)

# media de veiculos por idade
by(df_eleitores[,5], df_eleitores[,2], mean)


# realiza o split do data.frame (sexo / uf / escolaridade)
df_eleitores_sexo <- split (df_eleitores,fac_sexo)	
df_eleitores_sexo

df_eleitores_uf <- split (df_eleitores,fac_uf)
df_eleitores_uf

df_eleitores_escolaridade <- split (df_eleitores,fac_escolaridade)	
df_eleitores_escolaridade



#carrega a biblioteca de graficos
library(ggplot2)


#grafico de ponto de salario X idade
qplot(x=idade, y=salario, data= df_eleitores, color=sexo, geom = 'point')

#grafico de linha de filhos X idade, por sexo
qplot(x=idade, y=qtd_filhos, data= df_eleitores, color= sexo, geom = 'line')


#grafico de ponto de filhos X Escolaridade, por UF
qplot(y=escolaridade, x=veiculos, data= df_eleitores, color=sexo, geom = 'point')



#histograma - número de filhos
hist(df_eleitores[,5], 
     main="Histograma de eleitores - Numero de filhos", 
     xlab = "Número de filhos",
     ylab = "Ocorrrencias",
     border="blue", 
     col="green")

#histograma - número de Carro
hist(df_eleitores[,7], 
     main="Histograma de eleitores - Numero de carros", 
     xlab = "Número de Carros",
     ylab = "Ocorrrencias",
     border="blue", 
     col="green")



#boxplot de Filhos por escolaridade
ggplot(data=df_eleitores, aes(x=escolaridade, y = qtd_filhos))+
  geom_boxplot(fill = "gold1", colour = "goldenrod2") +
  scale_y_continuous(name = "Filhos",
                     breaks = seq(0, 10, 1),
                     limits=c(0, 10)) +
  scale_x_discrete(name = "Escolaridade") +
  ggtitle("Boxplot de Filhos por escolaridade")


#  2. Clusterização #2 - Hierárquico
plot(x=df_eleitores$idade, y=df_eleitores$salario, color=df_eleitores$sexo)

#cria um dataframe para calcular as distancias
df_dist <- data.frame(x=df_eleitores$idade, y=df_eleitores$salario)
distancia <- dist(df_dist)
result_cluster <- hclust(distancia)
plot(result_cluster)

#  3. Clusterização #3 - Kmeans
obj_kmeans <- kmeans(df_dist, centers=12)

#consultando os nomes do objeto criado
names(obj_kmeans)

#consultando valores do objeto_kmeans
obj_kmeans$cluster
obj_kmeans$centers


#plotando os pontos Idade x salario
plot(x=df_eleitores$idade, y=df_eleitores$salario, color=df_eleitores$sexom, cex=2)
points(obj_kmeans$centers, col=1:5, pch=3, cex=2, lwd=3)




