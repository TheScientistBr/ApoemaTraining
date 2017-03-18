x <- 1:4; y <- 6:9
x + y
x > 2
y == 8
x * y
x / y

x<- matrix(1:4, 2, 2) 
y <- matrix(rep(10,4), 2, 2)

x * y
x / y

x
y
x %*% y # multiplicação de matriz

# Subsetting
x[x > 2]

x <- c("a", "b", "c", "c", "d", "a")
x[2]
x[1:4]
x[c(1:2,5)]

u <- x > "a"
u

x[u]

x <- matrix(1:6, 2, 3)
x 
x[1,2]
x[2,1]
x[,2]
x[2,]

colnames(x) <- c("a", "b", "c")

rownames(x) <- c("d", "e")

x["d","b"]

x[1, "b"]

x <- matrix(1:6, 2, 3)
x[1,2]

x[1,2:3, drop=FALSE]

y <- x[,3]
y <- x
y[1] = 100
y
x


x <- matrix(1:6, 2, 3)
print("x[1,]")
x[1,]
print("imprimindo x", quote=TRUE)
x
print("Com drop")
x[1, , drop = FALSE]


x <- list(foo=1:4, bar = 0.6)
print("----")
x[1]
print('----')
x$foo

print('----')
x[[2]]

print('----')
x$bar

print('----')
x[["foo"]]

print('----')
x["bar"]
