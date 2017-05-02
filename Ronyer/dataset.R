****myData <- data.frame(ID=1:12, mes=month.name,valor = rnorm(12,10,2.5),quant=rep(4,3),stringsAsFactor = FALSE)

***myData$total <- myData$valor * myData$quant
***myData
***mes <- c(ID=1:12,mes=month.name)
***tp_Atendimento <- sample(factor(c('u','i')),12,rep=T)
***medico <- sample(factor(c('Dr.João','Dr.Marcelo')),12,rep=T)



myData <- data.frame(ID=1:1008,mes=rep(1:12,84),ano=rep(2006:2017,84),idade=rep(0:71,each=14),medico=rep(1:8,126),tp_atendimento=sample(factor(c('u','i')),1008,rep=T),
tp_paciente=sample(factor(c('p','c')),1008,rep=T),tp_plano=sample(factor(c('amb','pri')),1008,rep=T))

