
library(plotly)
set.seed(1)
n = 100
x1 = rnorm(n)
x2 = rnorm(n)
x3 = 3*x1 - 2*x2

x = data.frame (x1 = x1, x2 = x2, x3 = x3)
p <- plot_ly(data = x, x = ~x1, y = ~x2)
p


p <- plot_ly(x, x = ~x1, y = ~x2, z = ~x3)  %>% add_markers() %>%
  layout(scene = list(xaxis = list(title = 'x1'),
                      yaxis = list(title = 'x2'),
                      zaxis = list(title = 'x3')))
p
head(iris)



set.seed(1)
n = 100
x1 = x2 =  rnorm(n)
x3 = -x1

x = data.frame (x1 = x1, x2 = x2, x3 = x3)
p <- plot_ly(x, x = ~x1, y = ~x2, z = ~x3)  %>% add_markers() %>%
  layout(scene = list(xaxis = list(title = 'x1'),
                      yaxis = list(title = 'x2'),
                      zaxis = list(title = 'x3')))
p


# data transformation
x1 = rnorm(n)
x2 = rnorm(n)
x = data.frame (x1 = x1, x2 = x2)
z1 = 2*x1 + 3*x2
z2 = 0.5*x1 -sqrt(2)*x2
z3 = -1.2*x1 + 1.67*x2
Z = data.frame(z1 = z1, z2 = z2, z3 = z3)
p <- plot_ly(Z, x = ~z1, y = ~z2, z = ~z3)  %>% add_markers() %>%
  layout(scene = list(xaxis = list(title = 'z1'),
                      yaxis = list(title = 'z2'),
                      zaxis = list(title = 'z3')))
p

# 3d structure
x1 = rnorm(n)
x2 = rnorm(n)
x3 = rnorm(n)
z1 = 2*x1 + 3*x2
z2 = 0.5*x2 -sqrt(2)*x3
z3 = -1.2*x1 + 1.67*x3
Z = data.frame(z1 = z1, z2 = z2, z3 = z3)
p <- plot_ly(Z, x = ~z1, y = ~z2, z = ~z3)  %>% add_markers() %>%
  layout(scene = list(xaxis = list(title = 'z1'),
                      yaxis = list(title = 'z2'),
                      zaxis = list(title = 'z3')))
p

