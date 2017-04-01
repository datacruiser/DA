par(mfrow = c(1,1))
states <- data.frame(state.region, state.x77)
means <- aggregate(states$Illiteracy, by=list(state.region), FUN=mean)
means

means <- means[order(means$x),]
means
barplot(means$x, names.arg = means$Group.1)
title("Mean Illiteracy Rate")
