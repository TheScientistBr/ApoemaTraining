x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

x <- matrix(1:4, 2,2);
y <- matrix(rep(10, 4), 2, 2)
x * y
x / y
x %*% y

# Substetting

x[1]

x <- c("a", "b", "c", "d", "a")
x[1:2]

x <- matrix(1:6, 2, 3)
x[1,2]
x[1,2,drop=FALSE]