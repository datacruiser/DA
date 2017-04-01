x <- pretty(c(-3, 3), 30)
y <- dnorm(x)
z <- pnorm(x)
#图形组合
par(mfrow=c(2, 1))
#密度函数图形
plot(x, y, 
     type = "l",
     xlab = "Normal Deviate",
     ylab = "Density",
     yaxs = "i")
#分布函数图形
plot(x, z, 
     type = "l",
     xlab = "Normal Deviate",
     ylab = "Distribution",
     yaxs = "i")

pnorm(1.96)

qnorm(.9, mean = 500, sd = 10)

rnorm(50, mean = 50, sd = 10)


