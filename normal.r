m <- 100
sdev <- 15 
normal <- rnorm(1000, mean = m, sd = sdev)

z1 <-  1.99
v1 = (z1 * sdev)+m
p1 <- pnorm(z1)
p1
v1

z2 <- -0.5
p2 <- pnorm(z2)


z3 <- 1.75
p3 <- pnorm(z3)

z4 <- -1.35
p4 <- pnorm(z4)


z5 <- 0
p5 <- pnorm(z5)

zvalues = c(z1,z2,z3,z4,z5)
pvalues <- c(p1,p2,p3,p4,p5) 

xdim <- c("Z Values", "Percentile")
ydim <- c("Example 1", "Example 2", "Example 3", "Example 4", "Example 5")
dims <- list(xdim,ydim)


mat = matrix(data = c(zvalues, pvalues), nrow = 2, ncol = 5, byrow = TRUE)
dimnames(mat) <- dims

