x <- 1
msg <- "hello"
x <- 1:10

## funcao C() é uma forma simples de criar um vetor
x <- c(0,5,0,6)
x <- c(TRUE,FALSE)
x <- c(T,F)
x <- c("a","b","c")
x <- 9:29
x <- c(1 + 0i, 2+4i) ##complexo
x <- vector("numeric", length = 10)
y <- c(1.7 , "a") ##caractere
y <- c(TRUE,2) ##numeric
y <- c(TRUE, 2, FALSE)

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)


m<- matrix(nrow = 2, ncol = 3)

dim(m)

##ctrl+L limpar console

attributes(m)

m <- matrix(1:6, nrow = 2, ncol = 3)
m

m<- matrix(1:25, nrow = 5, ncol = 5)
m<- matrix(1:22, nrow = 5, ncol = 5)

m <- 1:10
m
dim(m) <- c(2,5)
m


x <- 1:3
y <- 10:12

#cbind() combina colunas e rbind() combina rows-linhas
cbind(x,y)
rbind(x,y)


x <- list(1, "a", c("1",TRUE), 1+4i, c(1:5))
unclass(x)

x <- factor(c("sim","talvez","nao",5))


x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)

x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

##data.frame é tipo um excel, tabela de banco...
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)


x<- list(a=1, b=5, c=3)
x

##a ordem é sempre linha e coluna
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b") , c("c", "d"))
m


x <- as.Date("1970-01-01") ##data epoch
str(x)
unclass(x)

unclass(as.Date("1970-02-03")) #quanto tempo depois da data epoch(1970-01-01)

unclass(as.Date("2017-03-18"))

x <- Sys.time()

p <- as.POSIXlt(x)
names(unclass(p))
unclass(p)


x <- Sys.time()
unclass(x)

p <- as.POSIXlt(x)


datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10") 
x <- strptime(datestring, "%B %d, %Y %H:%M")

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:32:21", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x)
x-y


x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
x-y
