## Criar o Diretorio
if(!file.exists("data")){
  dir.create("data")
}


## Dowonlad de Arquivo
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="cameras.csv",method="curl")
list.files("./data")
dateDownloaded <- date()
dateDownloaded

file.info("cameras.csv")

cameraData <- read.table("cameras.csv", sep=",", header=TRUE)
cameraData

install.packages("xlsx")
install.packages("rJava")
install.packages("xlsxjars")
library("xlsx")

colindex <- 2:3
rowindex <- 1:4


## plyr like como Operações
install.packages("plyr")
library("plyr")

## MySQL
install.packages("RMySQL")
library("RMySQL")


source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")


