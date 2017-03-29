setwd("~/Documents/Vinicius/BI/Globalsys/Documentos/ApoemaTraining/vinicius.mantegazine/")

set.seed(1)

tam=500

myData <- data.frame(
  id_viagem = c(1:tam),
  motorista = sample(x=c("João","Mateus","Bryan","Gustavo","Delermando","Vinicius","Carlos"),size = tam,replace=T),
  linha = sample(x=c("Vitoria x Salvador","Vitoria x Belo Horizonte","Vitoria x Rio de Janeiro","Vitoria x Sao Paulo","Vitoria x Aracruz","Vitoria x Sao Mateus","Vitoria x Macae"),size =tam,replace=T),
  turno = sample(x=c("Dia","Noite"),size =tam,replace=T),
  sentido = sample(x=c("Ida","Volta"),size =tam,replace=T),
  km_percorrido = runif(tam,min = 200,max = 700),
  consumo_km_litros = rnorm(tam,mean = 4,sd = 8),
  tempo_viagem_minutos = round(runif(tam,min = 100,max = 500),0),
  tempo_motor_ocioso = round(runif(tam,min = 50,max = 100),0),
  qtd_passageiros = round(runif(tam,min = 0,max = 54),0)
)

myData
write.table(myData, file="tabelaViagens.txt", sep=",")

sapply(split(myData$km_percorrido,myData$motorista),sum)
plot(myData$km_percorrido,myData$motorista)
barplot(sapply(split(myData$km_percorrido,myData$motorista),sum),col="lightblue")
hist(myData$km_percorrido)
myData