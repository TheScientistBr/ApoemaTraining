# Usa <- para atribuição de valores
x <- 0:6

# Class para saber a classe de um ojbeto/variavel
class(x)


# As para coerção (conversão) de objetos
as.numeric(x)
as.double(x)
as.array(x)
as.character(x)


# c() - para criação de vetores de acordo com os argumentos passados
y <- c(1,34)


m <- 1:10

# dim retorna e atribui uma dimensao ao objeto
dim(m)
dim(m) <- c(2,5)



x <- 1:4
y <- 10:12

# Junção de vetores (colunas ou linhas)
z <- cbind(x,y)
rbind(x,y)


# List para criar listas que possuem objetos de qualquer classe
x1 <- list(1, "a", c("1", TRUE), 1 + 4i, c(1:5))


# is para verificar se um objeto é determinado tipo/classe
is.na(x)
is.nan(x)


# data.frame
x <- data.frame(foo=1:4, bar = c(T,T,F,F))


# Retorna ou atribui nome as colunas
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
names(x)




x <- list(a=10,b=25,c=39)
names(x)


dimnames(x)

m <- matrix(1:4, nrow=2, ncol=2, TRUE, dimnames = list(c("x", "y"), c("c","d")))
#dimnames(m) <- list(c("a", "b"), c("c","d"))
m




x <- Sys.time()

unclass(x)



x <- Sys.time()
p <- as.POSIXlt(x)
unclass(p)
names(unclass(p))



datestring <- c("Jan 10, 2012 10:40", "Dec 9, 2011 9:10")datestring
strptime(datestring[1], "%B %d, %Y %H:M")

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")

x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00")
y-x
