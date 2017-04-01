library(car)
scatterplot(mpg ~ wt | cyl, data = mtcars, lwd = 2, span = 0.75,
            main = "Scatter Plot of MPG vs. Weight by # Cylinders",
            xlab="Weight of Car (lbs/1000)",
            ylab="Miles Per Gallon",
            legend.plot=TRUE,
            id.method="identify",
            labels=row.names(mtcars),
            boxplots="xy"
            )
