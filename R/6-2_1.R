library(vcd)
counts <- table(Arthritis$Improved, Arthritis$Treatment)
counts
par(mfrow=c(2,1))

barplot(counts,
        main = "Stacked Bar Plot",
        xlab = "Treatment",
        ylab = "Frequency",
        col = c("red","yellow","green"),
        legend = rownames(counts))
#legend("topright",rownames(counts),bty = "n",cex = 0.5)

barplot(counts,
        main = "Grouped Bar Plot",
        xlab = "Treatment",
        ylab = "Frequency",
        col = c("red","yellow","green"),
        legend = rownames(counts), 
        beside = TRUE)

