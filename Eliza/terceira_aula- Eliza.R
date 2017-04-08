install.packages("xlsx")

next
break()
args(lm)

f <- function(a=2,b=3) {
  b+a^2
}

f <- function(a,b){
  print(a)
  print(b)
}

m <- function(x){
  x*x
}

make.power <- function(n){
  pow <- function(x){
    x^n }
 pow   
}

# Chamando duas funções

y <- 10

f<- function(x){
  y <- 2
  z <- y^2 + g(x)
  y <<- 4
  print(z)

  }

g <- function(x){
  x*y
}

f(3)

######### Relembrando

teste <- function(x){
i = 1
  for(i in 1:x){
  x<-x+i
  }
print(x)
}


x <- data.frame( ind=1:12, mes = month.name,valor = rnorm(12,6,3),total=rnorm(12,15,50))
apply(x[,3:4],1,sum) #soma a coluna 3 e 4 . Se quisesse a linha o segundo argumento seria 2
lapply(x[,3:4],sum)
lapply(x[,3:4],mean) #list apply
sapply(x[,3:4],sum) #simplifica
set.seed(1)


############

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

noise <- function(n,mean,sd){
  rnorm(n,mean,sd)
}

noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise,1:5,1:5,2)

x <- mapply(rep,1:3,c(10,10,10));x

gl(3,10) #repete de 1 a 3 , 10 vezes

##

x <- c(rnorm(10),runif(10),rnorm(10,1));x
f<-gl(3,10)
tapply(x,f,sum,simplify=TRUE)
tapply(x,f,range,simplify = TRUE)

split(x,f)

set.seed(1)

p<-rpois(100,20)

hist(p)


####

set.seed(20)
x<-rnorm(100)
e<-rnorm(100,0,2)
y <- 0.5+2*x+e

summary(y)

plot(x,y)

##

set.seed(1)
sample(1:10,4)
sample(1:10,4)
