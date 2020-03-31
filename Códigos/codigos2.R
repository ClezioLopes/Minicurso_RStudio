###### PROBABILIDADE ####

sample(1:30, 10, T) # Amostra aleatória simples

sample(c(10,20,30), 1, prob = c(0.25,0.25,0.5))

###### ESTATÍSTICA ######

# Tabela de contingência
fumante = c('sim', 'não', 'sim', 'sim', 'sim')
sexo = c('M', 'F', 'M', 'M', 'F')

table(fumante, sexo)
prop.table(table(fumante, sexo)) #proporção


# Média aritmetica
x = c(22, 32, 46, 57, 10, 12, 2)
mean(x) # Média

s = sort(x) # Ordenação
median(x) # Mediana
median(s)


# Variância e desvio padrão
x = 1:10
var(x) # Variância

y = rep(1,10) # Função para repetir o número 1 dez vezes
var(y)

sqrt(var(x))
sd(x) # Desvio Padrão


# Resumo de dados
x = c(4,10,3,0.1,19,55,6,4,21,12,23,39)
summary(x) # Resumo de medidas descritivas

quantile(x) # Quartis
max(x) # Máximo
min(x) # Mínimo

###############################
########  GRÁFICOS  ###########
###############################


###### GRÁFICO DE BARRAS ######
x = c(56, 44)
names(x) = c('Casado', 'Solteiro')
barplot(x,
        col = c('blue', 'red'),
        ylim = c(0, 60),
        space = 1,
        width = c(.4,.4),
        main = 'Número de filhos por estado civil',
        xlab = 'Estado civil',
        ylab = 'Número de filhos',
        )
text(locator(n - 2), c('56%', '44%'))


barplot(c(4500, 3000, 1200),
        col = c('blue', 'red', 'brown'),
        names.arg = c('Estatístico', 'Engenheiro', 'Matemático'),
        xlab = 'Profissão',
        ylab = 'Salário',
        ylim = c(0, 5000))
title(main = 'Salário da empresa Xport')


barplot(c(rep(c(4500, 3000, 1200),4)),
        col = rainbow(13, start = 0.4, end = 0.9),
        names.arg = rep(c('Est.', 'Eng.', 'Mat.'),4),
        xlab = 'Profissão',
        ylab = 'Salário',
        ylim = c(0, 5000),
        main = 'Salário da Empresa Xport')


###### GRÁFICO DE PIZZA ######
venda = c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(venda) = c('Morango', 'Holandesa', 
                 'Mousse Maracujá', 'Paulista', 
                 'Outras', 'Chocolate')
pie(venda,
    col = c('red', 'purple', 'green3',
            'cornsilk', 'cyan', 'brown4'))
title(main = 'Tortas mais vendidas')

educa = c(0.55, 0.26, 0.19)
pie(educa,
    labels = c('Ensino Médio', 
               'Ensino Fundamental', 
               'Ensino Suprior'),
    col = c('DeepSkyBlue', 'Maroon1', 'Plum1'),
    radius = 1.1,
    main = 'Grau de instrução')
text(locator(n = 3), c('55%','26%','19%'))


###### GRÁFICO HISTOGRAMA ######
x = rnorm(1000, 19.5, 1)
hist(x,
     main = 'Histograma da variável Idade',
     prob = T,
     xlab = 'Idade',
     ylab = 'Densidade',
     xlim = c(15,25),
     col = 'DeepSkyBlue',
     breaks = 25)

r = rnorm(5000, 20, 1)
hist(r, main = 'Histograma da variável Idade',
     prob = T,
     xlab = 'Idade',
     ylab = 'Densidade',
     xlim = c(15, 25),
     col = 'DeepPink2',
     breaks = 65)

w = rnorm(500, 4, 1)
hist(w,
     main = 'Histograma da variável W',
     prob = T,
     xlab = 'Valores de W',
     ylab = 'Densidade',
     xlim = c(0,8),
     col = 'Green3',
     breaks = 10)


###### GRÁFICO BOXPLOT ######
a = rexp(100, 1/2500)
boxplot(a,
        main = 'Boxplot da variável A',
        xlab = 'Valores de A')

boxplot(a,
        main = 'Boxplot da variável A',
        cex.main = 2,
        cex.lab = 1.5,
        xlab = 'Valores de A',
        pch = 16,
        col = "LightYellow4")

notas = sample(0:10, 30, T)
turma = c(rep('A', 10),
          rep('B', 10),
          rep('C', 10))

boxplot(notas~turma,
        main = 'Boxplot de notas por turma de Cálculo 1',
        xlab = 'Turmas',
        ylab = 'Notas',
        cex.main = 1.5,
        cex.lab = 1.1,
        col = c('SpringGreen1', 'IndianRed2', 'Purple2'))


###### GRÁFICO DE DISPERSÃO #######
s = sample(35:100, 20, T)
r = 1:20
plot(r, s)

x = 1:100
y = 5 + 2*x + rnorm(100, sd = 30)

plot(x, y, main = 'Gráfico de pontos',
     sub = 'Ordem dos pontos representados', type = 'b',
     xlab = 'Valores de r', ylab = 'Valores de s',
     pch = 16, col = 'Blue')

plot(x, y, main = 'Gráfico de pontos',
     sub = 'Ordem dos pontos representados',
     type = 'l', xlab = 'Valores de r',
     ylab = 'Valroes de s', col = 'red',
     lwd = 2)

plot(x, y, main = 'Gráfico de pontos',
     sub = 'Ordem dos pontos representados',
     type = 's', xlab = 'Valores de r',
     ylab = 'Valores de s', col = 'green',
     lwd = 2)
