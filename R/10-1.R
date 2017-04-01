library(pwr)
es <- seq(.1, .5, .01)
nes <- length(es)
samsize <- NULL
for(i in 1:nes){
  result <- pwr.anova.test(k = 5, f = es[i], sig.level = .05, power = .9)
  samsize[i] <- ceiling(result$n)
}

plot(samsize, es, type = "l", lwd = 2, col = "red",
     ylab = "Effect Size",
     xlab = "Sample Size (per cell)",
     main = "One Way ANOVA with Power = .90 and Alpha = .05")
