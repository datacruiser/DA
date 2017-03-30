library(scatterplot3d)
attach(mtcars)
s3d <- scatterplot3d(wt, disp, mpg,
                     pch = 16,
                     highlight.3d = TRUE,
                     type = "h",
                     main = "3D Scatter Plot with Vertical Lines and Regression Plane")
fit <- lm(mpg ~ wt + disp)
s3d$plane3d(fit)