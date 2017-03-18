x<-1:4; y<-6:9
x+y
x[x>2]
x>=2
y==8
x*y
x/y

x<-matrix(1:4,2,2); y<-matrix(rep(10,4),2,2)
x*y
x/y
x %*% y

#Substetting
x[1]

x<-c("a","b","c","c","d","a")
x[2];x[2:4]
x[x>"a"]

x<- matrix(1:6,2,3)
x
x[1,2,drop = F]
x[2,1]
x[,2]
x[2,]
x[3]
colnames(x)<-c("a","b","c")

x<-list(foo = 1:4,bar=0.6)
print("--")
x[1]
print("--")
x$foo
print("--")

x[[1]]
print("--")
x$bar
print("--")
x[["bar"]]
print("--")
x["bar"]
  