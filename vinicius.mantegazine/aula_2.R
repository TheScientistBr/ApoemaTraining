x <- c(0,5,0,6)
x <- c(TRUE, FALSE)
x <- c(T, F)
x
x <- c("a","b","c")
x
x <- c(1 + 0i, 2 + 4i)
x <- vector("numeric", length = 10)
y <- c(1.7, "a")
y <- c(T, 2)

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

y <- "a"
as.numeric(y)

m <- matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)
m <- matrix(1:6, nrow=2, ncol=3)
m
m <- matrix(1:25, nrow=5, ncol=5)
m

m <- 1:10
m
dim(m) <- c(2,5)
m

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)
cbind(x,y,x)




x <- list(1, "a", c(1,TRUE), 1+4i, c(1:5))
x


x <- factor(c("sim", "sim", "sim", "sim", "não"))
x
y <- factor(c(1, 1, 2, 3, 2))
y
unclass(x)





x <- c(1,2,NA,10,3)
is.na (x)
is.nan(x)

x <- c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)




x <- data.frame(foo=1:4, bar = c(T,T,F,F))
x

x <- 1:3
names(x)
names(x) <- c("foo", "bar")
x
names(x)

x <- list(a=1,b=2,c=3)
x

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
m$a
m$b


x <- as.Date("1970-01-01")
x
str(x)
unclass(x)

ano <- unclass(as.Date("2017-03-18")) / 365
ano

x <- Sys.time()
x
p <- as.POSIXlt(x)
x
p
names(unclass(p))
p$year


x <- Sys.time()
unclass(x)

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%m %d, %Y %H:%M")
x
class(x)


x <- as.Date("2012-01-01")
y <- as.Date("2012-02-28")
x-y
y-x

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 02:00:00")
y-x