data <- read.table("dataset.txt", sep = ",", header = TRUE)  
data

apply(data[,3:4],1, mean)
apply(data[,3:4],1, sum)

x <- data(c(rnorm(10), runif(10), rnorm(10,1)))
data
f <- data(gl(3,5))
data
split(data$nome, data$sexo)
plot(x,f)
hist(x)
