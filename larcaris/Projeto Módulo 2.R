
setwd("C:/Users/Larissa Arçari/Documents")

set.seed(1)
DSetProd <- data.frame(cnpj=runif(8,10,80),empresa=c("x","b","p","d","i","z","j","k"),
                       mes=c("Jan","Fev","Mar","Abr","Set","Out","Nov","Dez"),
                       setor=c("Industrial","Contabilidade","Tecnologia","Farmacêutico",
                               "Cosmético","Têxtil","Agricultura","Civil"),
                       qualidade=(1:4),indsatisf=(DSetProd$qualidade*0.7),
                       investimento=rnorm(8,2856,5), lucro=rnorm(8,8569,5),
                       receita=DSetProd$lucro-DSetProd$investimento
)
DSetProd


library(ggplot2)
ggplot(DSetProd, aes(x= investimento, y= lucro, colour=qualidade, size=cnpj )) + geom_point() 

ggplot(DSetProd, aes(x = as.factor(qualidade), y= lucro, colour = as.factor(qualidade)))+ geom_boxplot() +
  xlab("Qualidade") + ylab("Lucro")


with(DSetProd, plot(investimento, lucro, main = "Setor e Lucro", type = "n"))
with(subset(DSetProd, setor == "Tecnologia"), points(investimento, lucro, col = "blue", cex=2))
with(subset(DSetProd, setor != "Tecnologia"), points(investimento, lucro, col = "red", cex=2))
legend("right", pch=1, col = c("blue", "red"), legend = c("Setor Tecnologia", "Outros Setores"))


par(mfrow = c(1, 2))
with(DSetProd, {
  plot(investimento, lucro, main = "Lucro e investimento")
  plot(investimento, qualidade, main = "Lucro e qualidade")
})


f <- rep(0:1, each = 50)
f <- factor(f, labels = c("Investimento", "Lucro"))
xyplot(x ~ y | f, layout = c(2, 1))  ## Plot with 2 panels

xyplot(y ~ x | f, panel = function(x,y,...){
  panel.xyplot(x,y,...)
  panel.lmline(x,y,col=2)
} )


library(fields)
require(rdist)
dataFrame <- data.frame(x=DSetProd$investimento,y=DSetProd$lucro)

rdistxy <- rdist(dataFrame)

ind <- which(rdistxy == min(rdistxy), arr.ind=TRUE)
par(mfrow=c(1,2),mar=rep(0.2,4))
plot(x,y,col="blue",pch=19,cex=2)
text(x+0.05,y+0.05,labels = as.character(1:12))

points(x[ind[1,]],y[ind[1,]],col="orange",pch=18,cex=2)

distxy <- dist(dataFrame)
dataFrame
hCluster <- hclust(distxy)
plot(hCluster)
dendro <- as.dendrogram(hcluster)
cutDendro <- cut(dendro,h=(hcluster$height[1]))
plot(cutDendro$lower[[4]],yaxt = "n")


par(mar=rep(0.2,4))

plot(x,y,col=kmeansObj$ifault,pch=17,cex=2)

points(kmeansObj$centers,col=1:3,pch=3,cex=3,lwd=3)












