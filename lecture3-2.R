#按月对消费金额进行分组并计算相应总和
monthTrend <- tapply(excelData$actualMoney, format(excelData$time,"%Y-%m"),sum)
#测试monthtrend数据并进行类型转换
monthTrend
class(monthTrend)
monthTrend <- as.data.frame.table(monthTrend)
#修改monthTrend列名
names(monthTrend) <- c("time", "monthSum")
#转换time列数据类型并增加timeNumber列
class(monthTrend$time)
monthTrend$time <- as.character(monthTrend$time)
monthTrend$timeNumber <- c(1:nrow(monthTrend))
#绘制图形
plot(monthTrend$timeNumber,monthTrend$monthSum,
     xlab = "时间（年份-第几月）",
     ylab = "消费金额",
     xaxt = "n",
     main = "2016年朝阳医院消费曲线",
     col = "red",
     type = "b")
#为Plot函数绘制出来的图形添加坐标轴说明
axis(1,at = monthTrend$timeNumber,labels = monthTrend$time,cex.axis = 1.5)