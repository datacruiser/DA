#将因子转换为数值型
Orange$Tree <- as.numeric(Orange$Tree)
ntrees <- max(Orange$Tree)

#构建x，y数据
xrange <- range(Orange$age)
yrange <- range(Orange$circumference)

#绘制二维散点图
plot(xrange, yrange,
     type = "n",
     xlab = "Age (days)",
     ylab = "Circumference (mm)")

#构建颜色、线型、散点的形状的向量，在后续循环当中遍历
colors <- rainbow(ntrees)
linetype <- c(1:ntrees)
plotchar <- seq(18, 18+ntrees, 1)

#循环添加设置不同设置参数的线条
for (i in 1:ntrees) {
  tree <- subset(Orange, Tree==i)
  lines(tree$age, tree$circumference,
        type="b",
        lwd=2,
        lty=linetype[i],
        col=colors[i],
        pch=plotchar[i]
  )
}

#设置图名
title("Tree Growth", "example of line plot")

#添加图例
legend(xrange[1], yrange[2],
       1:ntrees,
       cex=0.8,
       col=colors,
       pch=plotchar,
       lty=linetype,
       title="Tree"
)


