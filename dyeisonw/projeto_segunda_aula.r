# 3 COLUNAS CATEGORICAS
#   GENÊRO
#   RELIGIÃO
#   FORMAÇÃO
# 5 NUMERICAS
#   PESO
#   ALTURA
#   SALARIO
#   FILHOS
#   AUTOMOVEIS

set.seed(7)
#TAMANHO
size <- 800

#INDICES
indices <- 1:size

#CATEGORIAS
genero <- c("Masculino", 
            "Feminino")

formacao <- c("Médio", 
              "Superior incompleto", 
              "Superior completo",
              "Pós-graducação", 
              "Mestrado", 
              "Doutorado")

religiao <- c("Nd", 
              "Cristianismo", 
              "Budismo", 
              "Hinduísmo", 
              "Islamismo")



data <- data.frame(indice = indices,
                   genero = sample(genero, size, TRUE),
                   formacao = sample(formacao, size, TRUE),
                   religiao = sample(religiao, size, TRUE),
                   peso = round(rnorm(size, 80, 10), digits = 1),
                   altura = round(rnorm(size, 1.75, c(0.05)), digits = 2),
                   salario = round(rnorm(size, 2000, 500), digits = 2),
                   filho = floor(runif(size, 0, 5)),
                   automovel =  floor(runif(size, 0, 3)))


#Salvando dataframe
arquivo <- "r_file" # Define nome do arquivo
caminho <- paste(getwd(), arquivo, sep="/") # Define diretorio
write.table(data, file = caminho, sep = ";") # Salva dataframe


#GERANDO INFORMAÇÕES

#Histogramas
hist(data[,5], main = "Histograma de peso")
hist(data[,6], main = "Histograma de altura")


#Gráfico de peso x altura
plot(x = data[,5], y = data[,6])

#Gráfico de salário x filhos
plot(x = data[,7], y = data[,8])


# Split por categoria
data_genero <- split(data[,5:9], data$genero)
data_formacao <- split(data[,5:9], data$formacao)
data_religiao <- split(data[,5:9], data$religiao)


# Médias por genero
medias_por_genero <- data.frame( 
  media_geral = sapply(data[, 5:9], mean),
  media_feminino = sapply(data_genero$Feminino[,1:5], mean),
  media_masculino = sapply(data_genero$Masculino[,1:5], mean))

#Visualização
View(medias_por_genero)

#Soma por religião
filhos_e_automoveis_por_religiao <- data.frame(
    soma_total = sapply(data[,8:9], sum),
    soma_budismo = sapply(data_religiao$Budismo[,4:5], sum),
    soma_cristianismo = sapply(data_religiao$Cristianismo[,4:5], sum),
    soma_nd = sapply(data_religiao$Nd[,4:5], sum),
    soma_hinduismo = sapply(data_religiao$Hinduísmo[,4:5], sum),
    soma_islamismo = sapply(data_religiao$Islamismo[,4:5], sum))

View(filhos_e_automoveis_por_religiao)


# Quantidade por categoria
categorias <- apply(data[2:4], 2, table)
categorias$genero
categorias$religiao
categorias$formacao
