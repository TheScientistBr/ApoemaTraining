################################################
# Criar dataset com 5 numéricas e 3 categóricas
################################################

# Número de observações
n <- 10000
# Tamanho da população
p <- 100000


########################
# Variáveis categóricas
########################

# A) Variável SEXO, 1 = Masculino, 2 = Feminimo
pop.sexo <- rep(c("M", "F"), p)
sexo.temp <- sample(pop.sexo, n)
sexo.temp
sexo <- as.factor(sexo.temp)
str(sexo)
summary(sexo)

# B) Escolaridade
pop.escolaridade <- rep(c(0, 1, 2, 3, 4), p)
escolaridade.temp <- sample(pop.escolaridade, n)
escolaridade.temp
escolaridade <- factor(escolaridade.temp,
                       levels = c(0, 1, 2, 3, 4),
                       labels = c("Analfabeto", "!º Grau", "2º Grau", "3º Grau", "Pós"),
                       ordered = TRUE
                       )
str(escolaridade)
summary(escolaridade)

# C) Tipo de profissão
pop.profissao <- rep(0:2, p)
profissao.temp <- sample(pop.profissao, n)
profissao.temp
profissao <- factor(profissao.temp,
                    levels = c(0, 1, 2),
                    labels = c("Humanas", "Exatas", "Biológicas"),
                    ordered = FALSE
                    )
str(profissao)
summary(profissao)


########################
# Variáveis numéricas
########################

# A) IDADE em anos completos
idade <- abs(round(rnorm(n, 35, 7),0))
idade
summary(idade)

# B) SALÁRIO mensal
salario <- abs(round(rnorm(n, 3000, 400), 2))
salario
summary(salario)

# C) CARROS em casa
pop.carros <- rep(c(0,1,2,3), p)
carros <- sample(pop.carros, n)
carros
summary(carros)

# D) FILHOS
pop.filhos <- rep(c(0, 1, 2), p)
filhos <- sample(pop.filhos, n)
filhos
summary(filhos)

# E) ALTURA em m
altura <- abs(round(rnorm(n, 1.50, 0.1), 2))
altura
summary(altura)

# F) PESO em Kg
peso <- abs(round(rnorm(n, 70, 6), 2))
peso
summary(peso)


########################
# Cria o dataset
########################
df <- data.frame(id = 1:n,
                 sexo,
                 escolaridade,
                 profissao,
                 idade,
                 salario,
                 carros,
                 filhos,
                 altura,
                 peso
                 )
str(df)
df$imc <- (df$peso / (df$altura^2))
str(df)


########################
# Cálculos com colunas numéricas
########################
sapply(df[,c("idade", "salario", "carros", "filhos", "altura", "peso", "imc")],
       summary)
sapply(df[,c("idade", "salario", "carros", "filhos", "altura", "peso", "imc")],
       sum)



########################
# Gráficos
########################
hist(df$salario)
boxplot(df$salario ~ df$escolaridade)
plot(df$escolaridade)
boxplot(df$salario ~ df$sexo)
boxplot(df$salario ~ df$profissao)