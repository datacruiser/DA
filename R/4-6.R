newdata <- leadership[1:3,]

newdata

newdata <- leadership[leadership$gender == "M" & leadership$age > 30,]

newdata

attach(leadership)

newdata <- leadership[gender == "M" & age > 30,]
detach(leadership)
