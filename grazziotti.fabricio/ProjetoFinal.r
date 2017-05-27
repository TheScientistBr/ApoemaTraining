library("xlsx")
tempos <- na.omit(read.xlsx("Python_C.xlsx",sheetIndex=1))

summary(tempos[, 2:3])

boxplot(tempos[, 2:3], col = "green")
abline(h = mean(tempos$python))
abline(h = mean(tempos$c))

boxplot(python ~ c, data = tempos, col = "red")

par(mfrow = c(1, 2), mar = c(4, 4, 2, 1))
hist(tempos$python, col = "green", breaks = 50)
hist(tempos$c, col = "green", breaks = 50)

x <- data.frame(x = tempos$python, class = "Python")
y <- data.frame(x = tempos$c, class = "c")

xy <- rbind(x,y)

plot(xy$x)

src <- DirSource("C:\\Users\\aluno\\Desktop\\Fabricio Grazziotti\\ApoemaTraining\\grazziotti.fabricio")
corpus <- Corpus(src)

conteudo <- paste(readLines("01012004at2.txt"), collapse = " ")
conteudo <- gsub("<.*?>", "", conteudo)
documents <- Corpus(VectorSource(conteudo))
documents <- tm_map(documents, tolower)
matrix <-DocumentTermMatrix(documents) 

conteudo <- paste(readLines("01062005at2.txt"), collapse = " ")
conteudo <- gsub("<.*?>", "", conteudo)
documents <- Corpus(VectorSource(conteudo))
documents <- tm_map(documents, tolower)
documents <- tm_map(documents, removePunctuation)
documents <- tm_map(documents, stemDocument)
documents <- tm_map(documents, PlainTextDocument)
matrix <-DocumentTermMatrix(documents) 

conteudo <- paste(readLines("01062005at2.txt"), collapse = " ")
conteudo <- gsub("<.*?>", "", conteudo)
documents <- Corpus(VectorSource(conteudo))
documents <- tm_map(documents, tolower)
documents <- tm_map(documents, removePunctuation)
documents <- tm_map(documents, stemDocument)
documents <- tm_map(documents, PlainTextDocument)
matrix <-DocumentTermMatrix(documents) 

conteudo <- paste(readLines("03072006at2.txt"), collapse = " ")
conteudo <- gsub("<.*?>", "", conteudo)
documents <- Corpus(VectorSource(conteudo))
documents <- tm_map(documents, tolower)
documents <- tm_map(documents, removePunctuation)
documents <- tm_map(documents, stemDocument)
documents <- tm_map(documents, PlainTextDocument)
matrix <-DocumentTermMatrix(documents) 

conteudo <- paste(readLines("004062006at2.txt"), collapse = " ")
conteudo <- gsub("<.*?>", "", conteudo)
documents <- Corpus(VectorSource(conteudo))
documents <- tm_map(documents, tolower)
documents <- tm_map(documents, removePunctuation)
documents <- tm_map(documents, stemDocument)
documents <- tm_map(documents, PlainTextDocument)
matrix <-DocumentTermMatrix(documents) 


