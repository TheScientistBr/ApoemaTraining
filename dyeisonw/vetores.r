x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y




x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4),2,2)

x * y
x / y
x %*% y



# Subsetting

x[1]

x <- c("a","b","c","c","d","a")
x[2]
x[2:4]
x[c(2:3,5)]
x>"a"
x[x>"a"]
x[x=="c"]


u <- x > "a"
u
x[u]





x <- matrix(1:6, 2, 3)
x
x[1,2]
x[2,1]
x[,3]

colnames(x) <- c("a", "b", "c")


x[1,"b"]
x[,"c"]




x <- matrix(1:6, 2, 3)
x[1,2]
x[1,2, drop=FALSE]

y <-x[1:2, 1:2, drop=FALSE]
y

z <-x[1:2, 1:2]
z




x <- matrix(1:6, 2, 3)
print("x[1,]")
x[1,]
print("imprimindo x", quote = TRUE)

print("Com drop")
x[1, , drop = FALSE]


x <- list(foo = 1:4, bar = 0.6)
print("----")
x[1]
x$foo

x[[2]]
x$bar
x[["bar"]]
x["bar"]
