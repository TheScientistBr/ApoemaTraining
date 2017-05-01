# Criacao
size <- 1000

musicas <- c('Tempo Perdido', 'Pais e Filhos', 'Será', 'Quase Sem Querer', 'Índios',
            'Faroeste Caboclo', 'Ainda É Cedo', 'Giz', 'Fábrica', 'A Carta', 
            'Vento No Litoral', 'Há Tempos')

instrumentos <-c('Apenas Letra', 'Teclado', 'Violão', 'Guitarra', 'Baixo', 'Ukulele', 'Cavaquinho')

dataProject <- data.frame(
  ID = 1:size,
  mes = sample(month.name, size, replace=TRUE),
  musica = sample(musicas, size, replace = TRUE),
  instrumento = sample(instrumentos, size, replace = TRUE),
  visualizacoes = rpois(size, 100000),
  versoes = rpois(size, 10),
  curtidas = rpois(size, 25000),
  propagandas = rnorm(size, 500, 3.5),
  conseguiram_tocar = rpois(size, 50000),
  nao_conseguiram_tocar = rpois(size, 10000)
)

head(dataProject)

# Leitura e Escrita
write.csv(dataProject, file = 'data_cifras.csv', row.names=FALSE)
read_data <- read.csv(file = 'data_cifras.csv')
head(read_data)

# Plots e calculos
hist(dataProject$versoes)
hist(dataProject$conseguiram_tocar)
hist(dataProject$nao_conseguiram_tocar)

# Plot
plot(dataProject$musica)
plot(dataProject$instrumento)
plot(dataProject$mes, dataProject$instrumento)

split(dataProject$musica, dataProject$instrumento)

lapply(split(dataProject$visualizacoes, dataProject$musica), sum)
lapply(split(dataProject$conseguiram_tocar, dataProject$instrumento), mean)
lapply(split(dataProject$nao_conseguiram_tocar, dataProject$instrumento), mean)

