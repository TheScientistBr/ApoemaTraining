set.seed(45)
#TAMANHO
size <- 800

#INDICES
indices <- 1:size

#CATEGORIAS
genero <- c("Masculino", "Feminino")

formacao <- c("Médio", 
              "Superior incompleto", 
              "Superior completo",
              "Pós-graduação", 
              "Mestrado", 
              "Doutorado")

religiao <- c("Nd", 
              "Cristianismo", 
              "Budismo", 
              "Hinduísmo", 
              "Islamismo")


mdt <- data.frame(indice = indices,
                  genero = sample(genero, size, TRUE),
                  formacao = sample(formacao, size, TRUE, prob = c(0.2,0.3,0.3,0.1,0.05,0.05)),
                  religiao = sample(religiao, size, TRUE),
                  peso = sample(seq(from = 55, to = 100, by = 0.1), size, TRUE),
                  altura = sample(seq(from = 1.55, to = 1.90, by = 0.01), size, TRUE),
                  salario = sample(seq(from = 800, to = 6000, by = 10), size, TRUE),
                  gastos = sample(seq(from = 300, to = 3000, by = 10), size, TRUE),
                  automovel =  floor(runif(size, 0, 3)))

#CRIANDO ATRIBUTOS DEPENDENTES
mdt$imc <- round(mdt$peso / mdt$altura^2, digits = 1)
mdt$dinheiro <- round(mdt$salario - mdt$gastos, digits = 1)

#IMPORTANDO BIBLIOTECAS QUE SERÃO UTILIZADAS
library(ggplot2)
library(lattice)


#GRÁFICO BOXPLOT DO SALÁRIO AGRUPADO POR FORMACAO E APRESENTANDO ABLINE DA MÉDIA GERAL
ggplot(mdt, aes(x = formacao, y = salario, fill = as.factor(formacao))) + geom_boxplot() + geom_hline(yintercept = mean(mdt$salario), colour="red")


#GRÁFICO DISPERSÃO DE SALARIO POR GASTOS AGRUPADO POR RELIGIÃO 
xyplot(mdt$salario ~ mdt$gastos | mdt$religiao)

#GRÁFICO DE BARRAS APRESENTANDO A QUANTIDADE DE HOMENS E MULHERES COM IMC ACIMA DO LIMITE
ggplot(data = subset(mdt, imc > 30), aes(x=genero, fill = as.factor(genero))) + geom_bar()


#CLUSTERIZAÇÃO HIERARQUICA BASEADA NO PESO, ALTURA, E IMC, COM PLOTAGEM DE DENDROGRAMA.
dist_mdt <- dist(mdt[,c(5,6,10)])
clust_mdt <- hclust(dist_mdt)
par(mar=c(0, 4, 4, 2))
plot(clust_mdt, xlab="", sub="")


#CLUSTERIZAÇÃO K-MEANS COM 5 CENTRÓIDES BASEADA NO SALÁRIO E GASTOS. APONTANDO CENTRÓIDES
k_mdt <- kmeans(mdt[,c(7,8)], centers = 5)
plot(mdt$salario, mdt$gastos, col = unique(k_mdt$cluster))
points(k_mdt$centers[,'salario'], k_mdt$centers[,'gastos'], pch=4, cex=2, lwd=3, col=unique(k_mdt$cluster))


#CLUSTERIZAÇÃO K-MEANS COM 5 CENTRÓIDES BASEADA EM TODOS ATRIBUTOS E IDENTIFICANDO A QUANTIDADE DE CLUSTERS POR CATEGORIA
k_mdt <- kmeans(mdt[,c(5:11)], centers = 5)
mdt$cluster <- k_mdt$cluster
qplot(cluster,data = mdt, facets = . ~ formacao, fill = formacao, bins = 10)
qplot(cluster,data = mdt, facets = . ~ genero, fill = formacao, bins = 10)
