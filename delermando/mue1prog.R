x <- 1
msg <- "hello"
x <- 1:10

x <- c(0,5, 0,6)
x <- c(TRUE, FALSE)
x <- c(T, F)
x <- c("a", "b", "c") 
x <- 9:29
x <- c(1 + 0i, 2 + 4i) ## complexo
x <- vector("numeric", length = 10)
y <- c(1.7, "a") ## caractere
y <- c(TRUE, 2, FALSE) ## numeric

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m<- matrix(1:30, nrow = 5, ncol = 5)

m <- 1:10
m
dim(m) <- c(2, 5)
m

x <- 1: 3
y <- 10:12
cbind(x, y)
rbind(x, y)

x <- list(1, "a", c("1",TRUE), 1 + 4i, c(1:5))

x <- factor(c("sim", "sim", "não", "sim", "não","talvez","talvez"))
unclass(x)


x <- c(1, 2, NA, 10, 3)
is.na (x)
is.nan (x)
x <-c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

x <- data.frame(foo = 1:4, bar = c(T, T, F, F))

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
x <- list(a = 1, b = 2, c = 3)
x

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

x <- as.Date("1970-01-01")
unclass(x)
unclass(as.Date("2017-03-18"))


x <- Sys.time()
p <- as.POSIXlt(x)
names(unclass(p))

x <- Sys.time()
unclass(x)
p <- as.POSIXlt(x)
p$sec
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S") 
x <- as.POSIXlt(x)

x <- as.Date("2012-03-01") 
y <- as.Date("2012-02-28") 
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT") 
y-x







