#载入sm包
library(sm)
#将图幅复原
par(mfrow = c(1,1))

attach(mtcars)
#创建分组因子
cyl.f <- factor(cyl, levels = c(4, 6, 8),
                labels = c("4 cylinder", "6 cylinder",
                           "8 cylinder"))
#绘制比较密度图
sm.density.compare(mpg,
                   cyl,
                   xlab = "Miles Per Gallon")
#添加标题
title(main = "MPG Distribution by Car Cylinders")

#通过鼠标单击添加图例
colfill <- c(2:(1 + length(levels(cyl.f))))

legend(locator(1), levels(cyl.f), fill = colfill)

detach(mtcars)