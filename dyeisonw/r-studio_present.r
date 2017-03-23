#Importa dados
source("http://www.openintro.org/stat/data/present.R")


##Exercicio 1

#anos incluídos
present$year

# dimensoes e nomes das dimensoes
dim(present)
names(present)


##Exercicio 2

#----

##Exercicio 3

present$boys > present$girls

p <- present$boys / (present$boys + present$girls)
p > 0.5


##Exercicio 4

plot(x = present$year, y = present$boys + present$girls, type = "l")


#Exercicio 5

present$year[which.max(present$boys+present$girls)]


