#Colunas numericas#
##idade/altura/peso/salario/filhos##

#Colunas categoricas#
##sexo/profissao/fumante##

#simulacao de 100 observacoes#
n <- 100

#populacao de 1000 individuos#
p <- 1000

##### ~~~ Idade ~~~ #####
set.seed(1234) #estabelece uma semente aleatorio#
idade <- abs(round(rnorm(n, 22, 7),0))

##### ~~~ Altura ~~~ #####
set.seed(1234)
altura <- abs(round(rnorm(n, 1.65, 0.1), 2))

##### ~~~ Peso ~~~ #####
set.seed(1234)
peso <- abs(round(rnorm(n, 60, 4), 2))

##### ~~~ Salario ~~~ #####
set.seed(1234)
salario <- abs(round(rnorm(n, 4000, 300), 2))

##### ~~~ Filhos ~~~ #####
#REP repete os valores 0,1,2 P vezes#
filhos.aux <- rep(c(0, 1, 2), p)
set.seed(1234)
#Funcao "Sample de toda populacao P me dê alearoriamente N simulacoes#
filhos <- sample(filhos.aux, n)
#Remove/Desaloca a variavel filhos.aux#
rm(filhos.aux)

##### ~~~ Sexo ~~~ #####
sexo.aux <- rep(c(1, 2), p)
set.seed(1234)
sexo.temp <- sample(sexo.aux, n)
#FACTOR --> Alterar o valores 1,2 para M e F nao ordenado#
sexo <- factor(sexo.temp,
               levels = c(1, 2),
               labels = c("M", "F"),
               ordered = FALSE)
rm(sexo.aux, sexo.temp)

##### ~~~ Profissao ~~~ #####
profissao.aux <- rep(0:2, p) #rep(0:2, p): repete 0 a 2 P vezes#
set.seed(1234)
profissao.temp <- sample(profissao.aux, n)
profissao <- factor(profissao.temp,
                    levels = c(0, 1, 2),
                    labels = c("Humanas", "Exatas", "Biológicas"),
                    ordered = FALSE
)
rm(profissao.aux, profissao.temp)

##### ~~~ Profissao ~~~ #####
set.seed(1234)
fumante.n <- rbinom(n, 1, .34)
fumante   <- factor(fumante.n,
                    levels = c(0, 1),
                    labels = c("NÃO", "SIM"),
                    ordered = TRUE)

##### ~~~ GERAR O DATA FRAME ~~~ #####
#O Tamanho do df vai de 1 a N que é a quantidade de simulações#
df <- data.frame(id = 1:n,
                 idade,
                 altura,
                 peso,
                 sexo,
                 profissao,
                 fumante,
                 salario,
                 filhos
)
#Visualizar a estrutura do DF#
str(df)

##### ~~~ GRAVANDO DATASET NO DISCO ~~~ #####
resultado <- write.table(df, file = "D:\\avaliacao.csv", sep = ",", col.names = TRUE, fileEncoding = "UTF-8")

##### ~~~ Somando as variaveis numericas | function (X, MARGIN, FUN, ...) ~~~ #####
apply(df[,c("idade", "altura", "peso","salario", "filhos")],
      1,
      sum)

##### ~~~ Média das variaveis numericas | function (X, MARGIN, FUN, ...) ~~~ #####
apply(df[,c("idade", "altura", "peso","salario", "filhos")],
      1,
      mean)

##### ~~~ GERANDO UM GRAFICO ~~~ #####
boxplot(df$altura ~ df$sexo,
        main = "Diferença de Altura Homem X Mulher",
        ylab = "altura",
        xlab = "Sexo")

boxplot(df$idade ~ df$fumante,
        main = "Idade x Fumante",
        ylab = "Idade",
        xlab = "Fumante")

plot(df$salario ~ df$profissao,
     main = "Salário x Profissão",
     ylab = "Salário",
     xlab = "Profissão")

plot(df$filhos ~ df$sexo,
     main = "Filhos x Sexo",
     ylab = "Filhos",
     xlab = "Sexo")

##### ~~~ GERANDO HISTOGRAMA ~~~ #####
hist(df$peso,
     main = "Histograma do peso",
     xlab = "Peso(Kg)",
     ylab = "Freqüência")
