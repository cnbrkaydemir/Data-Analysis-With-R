cl <-95/100
a <- 1-cl


n <- 25

proper_mean <- 200
proper_sd <- 30
proper_ste <- proper_sd/ sqrt(n)
critical_z <- qnorm(1-0.975)
critical_value <- (critic_z * proper_ste)+ proper_mean


improper_mean <- 180
improper_sd <- 25
improper_ste <- improper_sd/ sqrt(n)


r_distance <- critical_value - improper_mean
improper_z <- r_distance / improper_ste
B <- 1- pnorm(improper_z)

power <- 1-B 

print(paste("Type 1 error: ",a))

print(paste("Type 2 error: ",B))


print(paste("Power : ",power))









