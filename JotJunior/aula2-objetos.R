x <- 1          # atribuindo um inteiro
msg <- "hello"  # atribuindo uma string

x <- 1:10       # criação de vetor sequencial
x <- c(0,5,0,6) # criação de vetor definindo os valores
x <- c("a", "b", "c", "d")  # vetor com caracteres
x <- c(1 + 0i, 2 + 4i)  # vetor de numeros complexos
x <- vector("numeric", length = 10) # cria um vetor com tamanho pre-definido definindo o tipo
x <- c(1.7, "a") # misturando tipos
y <- c(TRUE, 2, FALSE) 

x <- 0:6
class(x)         # informa o tipo do objeto
as.numeric(x)    # converte os elementos para inteiro
as.logical(x)    # converte os elementos para booleano
as.character(x)  # converte os elementos para string

x <- c("a", "b", "c")
as.numeric(x)    # ao tentar converter, retorna um erro NA (Not Available)
as.logical(x)
as.complex(x)

m <- matrix(nrow = 2, ncol = 3)  # criacao de matriz
dim(m)  # dimensao da matriz
attributes(m)

m <- matrix(1:6, nrow = 2, ncol = 3) # montando a matriz a partir da sequencia

m <- matrix(1:30, nrow = 5, ncol = 5)
m

m <- 1:10
m
dim(m) <- c(2,5)  # converte a matriz linear em uma matriz bidimensional obedecendo as dimensoes informadas
m

x <- 1:3
y <- 10:12
cbind(x,y)  # combina dois vetores em colunas
rbind(x,y)  # combina dois vedores em linhas
# tanto rbind quanto cbind suporta um numero N de parametros

x <- list(1, "a", TRUE, c(FALSE, TRUE), 1 + 4i, 0.75, c(1,5))
x
x[3]


x <- factor(c("sim", "sim", "jamais" ,"não", "sim", "talvez", "não"))
x
unclass(x)


x <- c(1,2,NA,10,3)
x
is.na(x) # informa se ha itens Not Available
is.nan(x) # informa se ha itens Nao Numericos
