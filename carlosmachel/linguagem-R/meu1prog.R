x <- 1
msg <- "Hello"

# criando vetor númerico

x <- 1:10

# método c - criando vetores.

x <- c(0,5,0,6)

x <- c(T, F)

x <- c('a', 'b', 'c')

x <- c(1, + 0i, 2 + 4i) #números complexos

y <- c(1.7, 'a') # converte em caracteres

y <- c(T, 2) # numeric

# método vector

x <- vector("numeric", length = 10)


x <- 0:6

class(x)

as.numeric(x)

as.logical(x)

as.character(x)

x <- c('a','b', 'c')

as.numeric(x) # Warning message: NAs introduced by coercion

as.logical(x) # NA NA NA

as.complex(x) 

# matrix - criando matriz

m <- matrix(nrow = 2, ncol = 3)

dim(m) # dimensão

attributes(m) # atributos da matriz

m <- matrix(1:6, nrow = 2, ncol= 3)

help(matrix)

m <- matrix(data=1:6, nrow = 2, ncol= 3, byrow = T)
m

m <- matrix(data=1:22, nrow = 5, ncol = 5) # quando adiciona menos que o sub-múltiplo ou múltiplo ele completa com o inicio até completar a matriz.

# Converter um vetor à matriz.

m <- 1:10

dim(m) <- c(2,5) # atribuição de forma.

m


x <- 1:3
y <- 10:12

cbind(x, y)
rbind(x, y)


x <- list(1, 'a', T, 1 + 4i, c(1:5)) 

x <- list(1, 'a', c(1,T), 1 + 4i, c(1:5))

x <- list(1, 'a', c("1",T), 1 + 4i, c(1:5))

x <- factor(c('sim', 'sim', 'não', 'sim', 'não'))

help(factor)

unclass(x)


x <- c(1, 2, NA, 10, 3)

is.na(x)

is.nan(x)


# dataframe

x <- data.frame(foo = 1:4, bar = c(T,T,F,F))

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

x <- list(a = 1, b = 2, c= 3)
x

m <- matrix(1:4, nrow = 2, ncol= 2)
dimnames(m) <- list(c('a', 'b'), c('c', 'd'))
m


x <- as.Date('1970-01-01')

str(x)

unclass(x)

unclass(as.Date("1970-01-02"))

unclass(as.Date("2017-03-18"))

x <- Sys.time()

p <- as.POSIXlt(x)

names(unclass(p))


x <- Sys.time()
unclass(x)

p <- as.POSIXlt(x)
p$sec


datestring <- c("Janeiro 10, 2012 10:40", "Dezembro 9, 2011 9:10")

x<- strptime(datestring, "%B %d, %Y %H:%M")

x

class(x)

x<- strptime(datestring, "%B %d, %Y %H:%M")


x <- as.POSIXlt(as.Date("2012-01-01"))
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")

x - y

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz="GMT")
y-x

