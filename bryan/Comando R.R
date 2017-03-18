
install.packages(ggplot2)

x<-1

msg <- "Hello, world!"

x<- 1:10

x<- c(0,5,0,6)
x<-0:6
class(x)
as.numeric(x)
(x[3]<-1.7)
as.logical(x)
as.character(x)
m<- matrix(nrow=2,ncol=3)

m<-matrix(1:30,ncol=5,nrow=5,byrow = T)
m<-1:10
dim(m)<-c(2,5)

x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

x<-list(1,"a",T,1+4i,c(1:5))
x[[3]]<-c("1",T)
x<-factor(c("sim","sim","não","sim","não","talvez","talvez"))
levels(x)[2]<-"sim"

x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

x<- data.frame(foo=1:4,bar = c(T,T,F,F))
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)
x<-list(a=1,b=2,c=3)

m<-matrix(1:4,nrow = 2, ncol = 2)
dimnames(m)<- list(c("a","b"),c("c","d"))

x<-as.Date("1970-01-01")
str(x)
unclass(x)
unclass(as.Date("2030-12-31"))

x<- Sys.time()
p<- as.POSIXlt(x,origin="1970-01-01")
names(unclass(p))
p$year

datestring<-c("January 10, 2012 10:40","December 9, 2011 9:10")
strptime("January 10, 2012 10:40","%B %d, %Y %H:%M")
x<-strptime(datestring,"%B %d, %Y %H:%M")
x

x<-as.Date("2012-01-01")
y<-strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")
x<-POSIXlt(x)

x<-as.Date("2012-03-01")
y<-as.Date("2012-02-28")
x-y
