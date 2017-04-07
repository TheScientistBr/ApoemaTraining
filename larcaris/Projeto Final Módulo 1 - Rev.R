myDSet <- data.frame(cod=1:6, faturamento=rnorm(3,287), produção=runif(3,1,3), 
                     qualidade=1:3, codProd=2:4,
                     mes=c("Jan", "Fev", "Mar"), empresa=c("a", "b", "c"), 
                     setor=c("operacional", "contabilidade", "tecnologia") )
myDSet

apply(myDSet[2:5],1, mean)
apply(myDSet[2:5],2, sum)

split(myDSet, myDSet$setor)

plot(myDSet$faturamento)
hist(myDSet$faturamento)