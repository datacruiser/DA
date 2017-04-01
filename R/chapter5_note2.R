#定义向量
x <- c(1,2,3,4)
#平均数
mean(x)
#中位数
median(x)
#标准差
sd(x)
#方差
var(x)
#绝对中位差
mad(x)
#分位数30%和84%分位
quantile(x, c(.3, .84))
#求值域
range(x)
#求和
sum(x)
#求滞后差分
diff(x, lag = 1)
#最小值
min(x)
#最大值
max(x)
#按列进行中心化或者标准化
scale(x,center = TRUE, scale = TRUE)