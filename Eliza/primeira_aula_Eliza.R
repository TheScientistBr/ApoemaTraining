xas.numeric()
as.character()
as.logical()


factor(c(rep(c("s","n"),3),"talvez"))

x <-data.frame(foo=1:4,bar=c(T,T,F,F))
x
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
data.frame(x)
names(x)

x <- list(a=1,b=2,c=3)
x$a

m <-matrix(1:4,nrow=2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m

x <- as.Date("1970-01-01")

str(x)

unclass(as.Date(x))
unclass(as.Date("2017-03-18"))

x <-Sys.time()
p <- as.POSIXlt(x)

names(unclass(p))

p$secr

datestring<-c("January 10,2012 10:40","December 9, 2011 09:10")
x <- strptime(datestring,"%B %d, %Y %H:%M")
x
x<-as.POSIXlt(x)

x <- as.Date("2012-01-01")
y<- strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")

