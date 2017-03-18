x <- 1:4; y<- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y


x <- matrix(1:4, 2, 2)
y <- matrix(rep(10,4), 2, 2)  #rep vai repetir o numero 10 , 4 vezes
x * y
x / y
x %*% y


# Subsetting

x[1]

x <- c("a", "b", "c", "c", "d", "a")
x[2]
x[1:4]
x[2:3]
x[c(2:3,5)]
x>"a"
x>"A"
x[x>"a"]
x[x=="c"]



