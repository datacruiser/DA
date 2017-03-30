#分图幅为2x1
par(mfrow = c(2,1))
#绘制默认核密度图
d <- density(mtcars$mpg)

plot(d)

d <- density(mtcars$mpg)
#为核密度图添加标题及轴须图
plot(d, main = "Kernel Density of Miles Per Gallon")
polygon(d, col = "red", border = "blue")
rug(mtcars$mpg, col = "brown")



