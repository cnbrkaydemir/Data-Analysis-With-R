########### Hypothesis Testing
# H0:M = 5/100
# Ha M != 5/100
M <- 5/100
a <- 1-(99/100)
n <- 500
p <- 40/n
q <- 1-p
ste <- sqrt((p*q)/n)
z_val <- (p-M)/ste

p_val <- 2*(1-pnorm(z_val))

if(a > p_val ) print("Reject H0") else print("Failed to reject H0")



# H0: M = 50
# Ha: M >50
m <- 50
n <- 30
a<- 0.05
ste <- sqrt(80/n)
z_val <- 4 / ste
p_val <- 2*(1-pnorm(z_val))
if(a > p_val ) print("Reject H0") else print("Fail to reject H0")


a <- 0.01
qnorm(1-a)
M <- 162.9
n <- 39
x <- 160.1
sd <- 5.6
ste <- sd / sqrt(n)
z_val <- (M-x) / ste
p_val <- 2*(1-pnorm(z_val))

if(a > p_val) print("Reject H0") else print("Failed to reject H0")



s1 <- c(150, 180, 200, 160,120,160, 170, 230,180,150,130,170,190, 180, 150)
s2 <- c(140,160,180,120,140,150,150, 90, 180, 160, 140, 170, 120, 140,160)

# Diference in their mean is zero H0: m1-m2 = 0
# Difference in means is not zero Ha: m1-m2 != 0


t.test(s1, s2, conf.level=0.95, paired= TRUE)

# Failed to Reject H0


t.test(s1, s2, var.equal = TRUE, paired=FALSE, conf.level = 0.95)

# Reject H0

t.test(s1, s2, var.equal = FALSE, paired=FALSE, conf.level = 0.95)

# Reject H0


