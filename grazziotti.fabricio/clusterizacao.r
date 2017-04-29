anuncios <- read.csv(file = "anuncios-2017-04-06.csv", header = TRUE, sep=";",
                     colClasses = c("character", "character", "numeric", "factor", "character",
                                    "factor", "character", "character", "character", "numeric",
                                    "numeric", "numeric", "numeric", "numeric", "numeric", "character"));

head(anuncios);

group <- aggregate(anuncios$PRICE, by=list(anuncios$MODEL), FUN=mean)
group

anuncios <- merge(anuncios, group, by.x = c("MODEL"), by.y = c("Group.1", "X") )
diference <- anuncios$PRICE - anuncios$x
cbind(anuncios, diference) 

head(anuncios)
str(anuncios)

library(ggplot2)
qplot(COMPLETED, CANCELLED, data = anuncios)
qplot(COMPLETED, CANCELLED, data = anuncios, color = PRICE)
qplot(COMPLETED, CANCELLED, data = anuncios, geom = c("point", "smooth"))

library(lattice)
library(datasets)
xyplot(COMPLETED ~ CANCELLED, data = anuncios)
