x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y


x <- matrix(1:4, 2, 2)
y <- matrix(rep(10,4), 2, 2)
x * y
x / y
x %*% y

# subsetting

x <- c("a", "b", "c", "c", "d", "a")
x[2]
x[1:4]
x[2:4]
x[c(2:3,5)]
x[x=="c"]
x>"a"

u <- x > "a"
u
x[u]


x <- matrix(1:6, 2, 3)
x
x[1,2]
x[2,1]
x[,2]
x[2,]
colnames(x) <- c("a", "b","c")
rownames(x) <- c("l1", "l2")
x

x[,"b"] # valores da coluna b, independente da linha
x[2,"b"] # valores da coluna b, linha de indice 2



x <- matrix(1:6, 2, 3)
x[1,2]
x[1, 2, drop = FALSE]




x <- matrix(1:6, 2, 3)
print("x[1,]")
x[1,]
print("imprimindo x", quote = TRUE)
x
print("Com drop")
x[1, , drop = FALSE]


x <- list(foo = 1:4, bar = 0.6)
x[1]
x$foo      # retorna o elemento completo da lista (nome e valor)
x[[2]]     # retorna somente os valores do segundo indice da lista
x$bar      # retorna o elemento nomeado bar
x[["bar"]] # retorna somente o valor atribuido ao indice bar 
x["bar"]   # retorna o elemento completo (nome e valor) do item bar

