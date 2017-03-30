library(multcomp)
levels(cholesterol$trt)
fit.aov <- aov(response ~ trt, data = cholesterol)
summary(fit.aov)

fit.lm <- lm(response ~ trt, data = cholesterol)
summary(fit.lm)