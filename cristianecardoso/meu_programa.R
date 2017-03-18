x<-1
msg
x <- "hello"
x<-1:10
matrix(2,3)
m <-matrix (nrow = 2, ncol = 3)       
m
dim(m)
attributes(m)
m<-matrix(1:3,nrow = 5, ncol=5)


m <-1:10
m
dim(m) <-c(2,5)
m
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

x <- list(1,"a", TRUE, 1+4i, c(1:5))

x <- list(1,"a", c(1,TRUE), 1+4i, c(1:5))

<- list(1,"a", c("1",TRUE), 1+4i, c(1:5))

x<- factor(C("sim", "sim", "não"))


X <- c(1,2,NA,10,3)
is.na(x)
is.nan (x)

x<-data.frame(foo=1:4,bar= c(T,T,F,F))

x<-1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

x<-lista (a=1,b=2,c=3)
x

m <-matrix(1:4,nrow = 2,ncol = 2)
dimnames(m)<-list(c("a","b"), c("c","d"))
m

x <- as.Date("1970-01-01")
unclass(x)
unclass(as.Date("1970-01-01"))

unclass(as.Date("1970-01-02"))

unclass(as.Date("2017-03-18"))



x <-Sys.time()
p <- as.POSIXlt(x)
names(unclass(p))


x <-Sys.time()
unclass(x)

p <- as.POSIXlt(x)
p$sec

 datestring <- c("January, 10,2012 10:40","December 9,2011 9:10")
x <- strftime(datestring,"B% %d %Y %H:%M")






x<-1:4; y<-6:9
x+y
x >2
x>=2
x==8
x*y
x/y


x <-matrix(1:4,2,2)
y <- matrix(rep(10,4),2,2)
x*y
x/y
x %*% y


# Subseting
x <- c("a","b", "c", "c", "d","a")
x[2]
x[x=="c"]
x < "a"

u #FALTOU COPIAR

#matrix explicado como resgatar de colunas e linhas


#DROP criar um outro subset






x<- list(foo=1:4,bar=0,6)






