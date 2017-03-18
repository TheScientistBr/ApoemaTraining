x <- 1
msg <- "hello"

x <- c(0,5, 0,6)
x <- c(TRUE, FALSE)

#Funcao c cria vetores.

x <- c (T,F)
x <- c ("a","b","c")
x <- 9:29
x <- vector("numeric", length = 10)

#Vetores no R começam em 1, nao em zero.

y <- c(1.7, "a") ##caractere
y <- c(TRUE, 2, FALSE) ##numerico - transforma o true em numero(1) e false em zero.

#exemplo de coersao
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#exemplo de coersao
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)

#criando matrizes
m <- matrix(nrow = 2, ncol=3)
m
#saber tamanho da matriz:
dim(m)
#saber atributos da matriz:
attributes(m)

#outra forma de criar matrizes
m <- matrix(1:30, nrow = 5, ncol = 5)
m
#1:3 define o vetor da matriz, quero de 1 ate n. Se colocar a mais, so vai ate o limite da matriz.


#transformando vetor em matriz
m <- 1:10
m
#dimensoes da matriz, 2 sao as linhas e 5 as colunas.
dim(m) <- c(2,5)
m

x <- 1:3 #cria as colunas
y <- 10:12 #cria as linhas
cbind(x,y)
rbind(x,y)

#criando listas
#c representa vetor
#transforma aspas em caracter
x <- list(1,"a", c("1",TRUE), 1 + 4i, c(1:5))
x

#Fatores - categorizam e separam as coisas
x <- factor(c("sim","sim", "não","sim","não"))
x
#retorna o levels - os fatores da expressao, que são sim e nao.
unclass(x) #atribui os fatores ao vetor
x
x <- factor(c("sim","sim", "não","sim","talvez","talvez","não"))
unclass(x)
#geralmente retorna os niveis em ordem alfabetica.

x <- c(1,2, NA, 10,3)
is.na (x) #diz se e nao disponível
is.nan(x)

x <- c(1,2, NAN, NA,4)
is.na (x) #diz se e nao disponível
is.nan(x) #Not a Number


#Data Frame - similar ao excel
#foo e bar sao variaveis recebendo seus conteudos
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x


x <- 1:3 #1 vetor de 3 colunas
names(x)
names(x) <- c("foo", "bar", "norf")  #atribui nome a cada um dos vetores(colunas).
x
names(x)


x <- list(a=1, b=2,c=3)
x
x$b #saber qual a posicao do b

#matriz
m <- matrix(1:4, nrow = 2,ncol = 2)
dimnames(m) <- list(c("a","b"), c("c","d"))
m

#data epoqui
x <- as.Date("1970-01-01")
x
#unclass conta os dias desde a data epoqui
unclass(x)
unclass(as.Date("2017-03-18"))

x <- Sys.time()
x
p <- as.POSIXlt(x)
p
names(unclass(p))

x <- Sys.time()
#mostra numero segundos a partir de 1970
unclass(x)
p <- as.POSIXlt(x)
p$sec
datestring <- c("January 10, 2012 10:40","December 9, 2011 9:10" )
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x)

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y #faz a diferenca de dias entre as datas

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
y-x #faz a diferenca de dias entre as datas











