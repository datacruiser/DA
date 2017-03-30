#将图幅2x2等分
par(mfrow = c(2,2))
#指定向量数据
slices <- c(10,12,4,16,8)
#制定标签数据
lbls <- c("US", "UK", "Australia", "Germany", "France")
#画第一幅饼图
pie(slices, labels = lbls,
    main = "Simple Pie Chart",
    radius = 5)
#计算饼图比例
pct <- round(slices / sum(slices) * 100)
#添加饼图比例到标签
lbls2 <- paste(lbls, " ", pct, "%", sep = "")
#画第二幅饼图
pie(slices, labels = lbls2, col = rainbow(length(lbls2)),
    main = "Pie Chart with Percentages",
    radius = 5)
#安装plotrix包
#install.packages("plotrix")
#导入plotrix包
library(plotrix)
#绘制3D饼图
pie3D(slices, labels = lbls, explode = 0.1,
      main = "3D Pie Chart")
#直接从表格绘制饼图
mytable <- table(state.region)
lbls3 <- paste(names(mytable), "\n", mytable, sep = "")
pie(mytable,labels = lbls3,
    main = "Pie Chart from a Table\n (with sample sizes)",
    radius = 5)
