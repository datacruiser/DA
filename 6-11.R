#根据每加仑行驶里程数对数据进行排序
x <- mtcars[order(mtcars$mpg),]
#将cyl转换成一个因子
x$cyl <- factor(x$cyl)
#根据cly的值添加字符向量到x数据框
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"
#绘制点图，其中cex指定标签比例，groups参数选定因子，指定x中元素的分组方式
dotchart(x$mpg,
         labels = row.names(x),
         cex=.7,
         groups = x$cyl,
         #设置背景颜色
         gcolor = "black",
         #设置各组的不同颜色
         color = x$color,
         #设置参考线线性
         pch=19,
         #添加图名及x轴标签
         main = "Gas Mileage for Car Models\ngrouped by cylinder",
         xlab = "Miles Per Gallon")