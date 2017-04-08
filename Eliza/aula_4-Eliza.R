install.packages("xlsx")
install.packages("XML")
install.packages("plyr")
install.packages("data.table")
install.packages("RmySQL")
library(data.table)
library(plyr)
library(RMySQL)


dt<- data.table(var1=sample(1:100,10),var2=sample(1:100,10));dt
dt[,teste:=var1>50];dt
dt[,media := mean(var1),by=teste];dt
dt[,.N,by=teste]

################

dt <- data.table(x=rep(c("a","b","c"),each=100),y=rnorm(300))
                 
system.time() # retorna o tempo de excussão da tarefa

install.packages("rhdf5")
sort()


########################

s1 <- seq(1,10,by=3);s1
s2 <- seq(1,10,length=3);s2
x<- c(1,3,8,25,100);seq(along=x)