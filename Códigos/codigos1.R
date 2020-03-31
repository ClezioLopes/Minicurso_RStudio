################################
###### INSTALANDO PACOTES ######
################################

require(ggplot2)

install.packages("ggplot2", dependencies = T)
library(ggplot2)

################################
###### DIGITANDO OS DADOS ######
################################

# Única variável
dados = scan()
#12; 13; 14; 2; 10; 6; 9; Read 7 items

# Várias variáveis
dados1  =  edit(data.frame())

#editando dados1
fix(dados1)

################################
###### IMPORTANDO OS DADOS #####
################################

exemplo = read.table('Nome do arquivo', 
                     header = TRUE, dec = ',', 
                     sep = '\t')


dados = read.table(file.choose(), header = T, 
                   dec =  ',', sep = '\t')

dados2 = read.csv(file.choose(), header = T, 
                  dec = ',')

dados3 = read.csv2(file.choose(), header = T, 
                   dec = ',', sep = '\t')

################################
###### R COMO CALCULADORA ######
################################

# Soma +
# Subtração -
# Multiplicação *
# Divisão /
# Parte inteira da divisão %/%
# Resto da divisão %%
# Potência ^
# Raiz quadrada sqrt(n)

# Objeto
valor1 = 2
valor2 <- 2

#Operações
a = 10
b = 5
a + b #(Soma, Subtração, Multiplicação, Divisão, ...)
a <= b #Comparações)

#Espressões
a + b * a / b


# Vetores
vetor1 = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
vetor2 = c(1.1, 2.1, 3, 4, 5, 6, 7.5, 9, 10.1)
vetor3 = c(1,2)

vetor3 >= vetor1 #Comparando vetores

x = c(1, 2, 3, 4, 5, 6)
y = c(3, 4, 5, 6, 7, 8)

length(x) # Tamanho de x
length(y)

x[1] #elemento do vetor

x - y # Diferença de vetores
x + y # Soma de vetores
x ^ y # Potenciação de vetores

# Matrizes
m = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = T)
n = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = F)
o = matrix(c(1,2,3,4,5,6,7,8,9), 3, 3)
p = matrix(c(1,2,3,4), 2, 2)

# Banco de dados como matriz
## Primeira Maneira
dimnames(m) = list(vertical = c('obs1', 'obs2', 'obs3'),
                   horizontal = c('var1', 'var2', 'var3'))

# Segunda Maneira
rownames(n) = c('obs1', 'obs2', 'obs3')
colnames(n) = c('var1', 'var2', 'var3')


matriz1 = as.data.frame(m) # Matriz 1 recebe os elementos da matriz m no formato de dados


# Operações com matrizes

dim(m) # Dimensões
nrow(m) # Número de linhas
ncol(m) # Número de colunas
m[3,] # Terceira linha
m[,3] # Quarta coluna
m[1,2] # Primeiro elemento da segunda coluna
t(m) # Transposta
m%*%n # Produto matricial
solve(p) # Inversa
diag(m) # Diagonal da matriz

# Valores Especiais

NA # Not Available
NaN # Not a Number
Inf # Infinito
NULL # Ausência de Observação

x = c(1,2,3, NA, NULL, NaN, 4, Inf)
b = NULL

is.na(x)
is.nan(x)
is.infinite(x)
is.null(b)


# Lista
x = list(1:5, 'z', TRUE, c('a', 'b'))
x[[5]] = list(c(1:10), c('PET', 'EJE', 'SEst'))


# Data Frame
d_mtcars = mtcars # Exemplo de data frame fornecido pelo próprio R

head(d_mtcars) # Seis primeiras observações
tail(d_mtcars) # Seis últimas observações
dim(d_mtcars) # Dimensões
names(d_mtcars) # Nome das colunas do data frame

cbind(d_mtcars,d_mtcars) # Acoplamento lado a lado de dois data frames por coluna
rbind(d_mtcars,d_mtcars) # Acoplamento um embaixo do outro de dois data frames por linha


# Criando funções
SomaUm = function(x) { # Função para somar um
  y = x+1
  return(y)
}


media = function(x) { # Função para calcular a media aritmetica
  soma = sum(x)
  n_obs = length(x)
  media = soma/n_obs
  return(media)
}


source('Lugar onde o arquivo foi salvo') # Colocar o nome de onde o arquivo foi salvo para que seja importado a função contida naquele arquivo

###### CONTROLE DE FLUXO #######

# If e else

x = 2
if (x == 1) {
  Sys.time() # Devolve a data/hora no momento da execução
}

if (x < 0) {
  sinal = 'negativo'
} else if (x == 0) {
  sinal = 'neutro'
} else if (x > 0) {
  sinal = 'positivo'
}
sinal

ifelse(x < 0, 'negativo', 'positivo')

# For

x = 1:10 # Cria um vetor com a sequencia de 1 a 10
soma = 0

for (i in 1:10) {
  soma = soma + x[i]
}
soma

vetor = 30:35
indices = seq_along(vetor) # Cria o vetor de índices segundo o tamanho do objeto valor

for (i in indices) {
  print(vetor[1:i] / 2)
}

# While
i = 1

while (i < 6) {
  print(i)
  i = i + 1
}