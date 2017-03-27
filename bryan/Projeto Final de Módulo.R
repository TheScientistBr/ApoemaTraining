#Projeto Final do módulo
set.seed(1234231)
t=1000 #Tamanho da base
data<-data.frame(
  Codigo=c(1:t),
  Civil = sample(x=c("Casado","Solteiro","Desquitado","Separado"),size =t,replace=T),
  Sexo = sample(c("M","F"),t,replace = TRUE),
  Altura = rnorm(t,mean=1.65,sd = 0.1),
  Salario = abs(rnorm(t,mean = 2000,sd = 600)),
  Idade = round(runif(t,min = 18,max = 70),0),
  Din_caixa = runif(t,min=0,max=981269),
  Agua_dia = abs(rnorm(t,mean=1.5,sd=0.2))
)
setwd("E:/GitHub/ApoemaTraining/bryan")
write.table(data,file = "data.txt",sep = ";",dec=",")

attach(data)
sapply(split(Salario,Sexo),mean)
boxplot(Agua_dia ~ Civil)
hist(Din_caixa)
