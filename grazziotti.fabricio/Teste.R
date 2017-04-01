x <- 0:6
class(x)
as.numreic(x)
as.logical(x)
as.character(x)

x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)


m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
ma <- matrix(1:20, nrow = 5, ncol = 5)
ma

m <- 1:10
m
dim(m) <- c(2, 5)
m

x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)

x <- 1:3
y <- 10:12
cbind(y, x)
rbind(y, x)


x <- list(1, "a", TRUE, 1 + 4i)
x
list <- list(1, "a", c("1", TRUE), 1 + 4i, c(1:5))
list
list [1]
x <- factor(c("sim","sim","não","sim","não"), c(1:5))
x

d <- data.frame(foo = 1:4, bar = c(T,T,F,F))
d

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)


m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1990-02-04"))
x <- Sys.time()
x
p<-as.POSIXlt(x)
names(unclass(p))
p


unclass(x)
p<-as.POSIXlt(x)
p$sec

datestring <- c("January 10, 2012 10:40")
x <- strptime(datestring, "%b %d, %Y %H:%M")
x
class(x)


x<- as.Date("2012-01-01")
y<-strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x
y

x<-as.POSIXct(x)
x-y
