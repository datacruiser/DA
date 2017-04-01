#分图框为一行两列
par(mfrow = c(1,2))
#绘制垂直条形图
barplot(counts,
        main = "Simple Bar plot",
        xlab = "Improvement",
        ylab = "Frequency")
#绘制水平条形图
barplot(counts,
        main = "Horizontal Bar Plot",
        xlab = "Frequency",
        ylab = "Improvement",
        horiz = TRUE)
