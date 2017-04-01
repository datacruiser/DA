#指定字符型向量
myvars <- c("mpg", "hp", "wt")
#计算Tukey's five-number summary
sapply(mtcars[myvars], quantile)
#自定义函数
mystats <- function(x, na.omit=FALSE){
  if (na.omit)
    x <- x[!is.na(x)]
  m <- mean(x)
  n <- length(x)
  s <- sd(x)
  skew <- sum((x-m)^3/s^3)/n
  kurt <- sum((x-m)^4/s^4)/n - 3
  return(c(n=n, mean=m, stdev=s, skew=skew, kurtosis=kurt))
}
#采用自定义函数分别计算数据数、平均数、标准差、偏度和峰值
sapply(mtcars[myvars], mystats)