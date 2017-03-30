#分图幅为2x2
par(mfrow = c(2,2))
#绘制简单直方图
hist(mtcars$mpg)
#break参数设置组的数量，并设置颜色x轴标签等
hist(mtcars$mpg,
     breaks = 12,
     col = "red",
     xlab = "Miles Per Gallon",
     main = "Colored histogram with 12 bins")
#break参数设置组的数量，freq设为FALSE参数根据概率密度而不是频数绘图
hist(mtcars$mpg,
     freq = FALSE,
     breaks = 12,
     col = "red",
     xlab = "Miles Per Gallon",
     main = "Histogram, rug plot, density curve")
#添加轴须图
rug(jitter(mtcars$mpg))
#添加蓝色双面默认线条宽度的密度曲线
lines(density(mtcars$mpg), col = "blue", lwd = 2)

x <- mtcars$mpg

h <- hist(x,
          breaks = 12,
          col = "red",
          xlab = "Miles Per Gallon",
          main = "Histogram with normal curve and box")
#生成正太曲线数据
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
#绘制正太曲线
lines(xfit, yfit, col = "blue",lwd = 2)
#添加盒型
box()
