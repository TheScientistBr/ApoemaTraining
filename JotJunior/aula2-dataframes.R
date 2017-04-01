x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)


x <- list(a = 1, "com espaço" = 2, c = 3)
x$"com espaço"

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

x <- as.Date("1970-01-01")
unclass(x)
unclass(as.Date("2017-03-18"))
unclass(as.Date("1900-03-18"))

x <- Sys.time()
x

p <- as.POSIXlt(x)
p

names(unclass(p))
p$sec
p$hour
p$gmtoff

x < Sys.time()
unclass(x)
p <- as.POSIXlt(x)
p$sec

datestring <- c("9 Jan 2011 11:34:21", "9 Jan 2011 11:34:21")
d <- as.Date(datestring, "%d %b %Y %H:%M:%S")
d

x <- strptime(datestring, "%B %d, %Y %I:%M")
x


x <- as.Date("2012-01-01")
x
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
y


z <- as.Date("January, 10 2012 10:40:20", "%B, %d %Y %H:%M:%S")
z
