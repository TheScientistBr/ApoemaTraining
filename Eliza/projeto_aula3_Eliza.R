n <- 200

set.seed(2)
sexo <- sample(c("M","F"),n, replace=TRUE)
m <- length(sexo[sexo=="M"])
f <- length(sexo[sexo=="F"])

set.seed(4)
escolaridade <- sample(c("Fundamental","Medio","Superior","Mestre","Doutor"),n,replace=TRUE)

altura <- rep(0,n)
altura[sexo=="M"] <- round(rnorm(m,1.8,0.1),2)
altura[sexo=="F"] <- round(rnorm(f,1.65,0.1),2)

num_pe <- rep(0,n)
num_pe[sexo=="M"] <- sample(37:45,m,replace=TRUE)
num_pe[sexo=="F"] <- sample(33:39,f,replace=TRUE)

renda <- rep(0,n)
renda[escolaridade=="Doutor"] <- round(rnorm(length(escolaridade[escolaridade=="Doutor"]),4700,1000),2)
renda[escolaridade=="Mestre"] <- round(rnorm(length(escolaridade[escolaridade=="Mestre"]),3400,800),2)
renda[escolaridade=="Superior"] <- round(rnorm(length(escolaridade[escolaridade=="Superior"]),2600,800),2)
renda[escolaridade=="Medio"] <- round(rnorm(length(escolaridade[escolaridade=="Medio"]),1500,800),2)
renda[escolaridade=="Fundamental"] <- round(rnorm(length(escolaridade[escolaridade=="Fundamental"]),900,200),2)

cor_olhos <- sample(c("Castanho","Azul","Verde"),n,prob=c(0.7,0.2,0.1),replace=TRUE)

estciv <- sample(c("Casado","Solteiro"),n,replace=TRUE)

peso <- 23*altura^2 + rnorm(n,0,9) 
  
idade <- sample(18:65,n,replace=TRUE)

imc <- peso/(altura^2)

set.seed(3)
divida <- -renda*0.7 + rnorm(n,0,100) 

summary(divida)

dados <- data.frame(sexo,estciv,escolaridade,cor_olhos,idade,altura,peso,imc,num_pe,renda,divida); tail(dados)
summary(dados$imc)

attach(dados)
 
boxplot(altura~sexo, col= c('pink','skyblue'), main='Boxplot Altura x Sexo')
boxplot(imc~sexo, col= c('pink','skyblue'), main='Boxplot IMC x Sexo')
boxplot(renda~escolaridade, col = "gray80",at=rank(tapply(renda,escolaridade, median)))

plot(altura,peso)

tapply(altura,sexo,mean,simplify=TRUE)
tapply(renda,sexo,sum,simplify=TRUE)



split(renda,escolaridade)

saldo <- apply(dados[,9:10],1,sum)
hist(saldo)

hist(altura,col="palegreen",main="Distribuição Altura")


