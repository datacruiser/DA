x <- c("ab", "cde", "fghij")

length(x)

nchar(x[3])

x <- "abcdef"

substr(x, 2, 4)
substr(x, 2, 4) <- "22222"
grep("A", c("b", "A", "c"), fixed = TRUE)
sub("\\s", ".", "Hello There")
y <- strsplit("abc", "")

unlist(y)[2]
sapply(y, "[", 2)

paste("x", 1:3, sep = "")
paste("x", 1:3, sep = "M")

toupper("abc")
tolower("ABCDEdtre")
