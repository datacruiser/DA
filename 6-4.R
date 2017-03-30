#增加y边界的大小
par(mar = c(5,8,4,2))
#旋转条形的标签
par(las = 2)
counts <- table(Arthritis$Improved)
barplot(counts,
        main = "Treatment outcome",
        horiz = TRUE,
        #缩写字体大小，让标签显示更合理
        cex.names = 0.8,
        #修改标签文本
        names.arg = c("NO Improvement","some Improvement",
                      "Marked Improvement"))
