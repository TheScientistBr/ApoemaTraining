x <- 1:4 ; y<- 6:9
x + y
x > 2
x >= 2
y == 8
x*y
x/y


x <- matrix(1:4,2,2)
y <- matrix(rep(10,4),2,2)

x%*%y

x <- c("a","b","c","c","d","a")
x


u <- x>"a"
u
x[u]


x<-matrix(1:6,2) ;x
colnames(x)<- c("a","b","c") ;x
rownames(x) <- c("d","e") ;x


x[1,2]
x[1,2, drop = FALSE]
x[1:2,2:3, drop = FALSE]

print("x[1,]")
print("imprimindo x", quote = TRUE)
print("Com drop")


z <- list(1:4,0.6);z
z[2]
z[[2]]
z[1]
z[[1]]
z[[1]][2]