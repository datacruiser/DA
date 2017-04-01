#生成相关系数和功效值系列
library(pwr)
r <- seq(.1, .5, .01)
nr <- length(r)

p <- seq(.4, .9, .1)
np <- length(p)

#获取样本大小
samsize <- array(numeric(nr*np), dim=c(nr,np))
for (i in 1:np){
  for (j in 1:nr){
    result <- pwr.r.test(n = NULL, r = r[j],
                         sig.level = .05, power = p[i],
                         alternative = "two.sided")
    samsize[j,i] <- ceiling(result$n)
  }
}

#创建图形
xrange <- range(r)
yrange <- round(range(samsize))
colors <- rainbow(length(p))
plot(xrange, yrange, type="n",
     xlab="Correlation Coefficient (r)",
     ylab="Sample Size (n)" )

#添加功效曲线
for (i in 1:np){
  lines(r, samsize[,i], type="l", lwd=2, col=colors[i])
}

#添加网格线
abline(v=0, h=seq(0,yrange[2],50), lty=2, col="grey89")
abline(h=0, v=seq(xrange[1],xrange[2],.02), lty=2, col="gray89")

#添加注释
title("Sample Size Estimation for Correlation Studies\n
Sig=0.05 (Two-tailed)")
legend("topright", title="Power", as.character(p),
       fill=colors)
