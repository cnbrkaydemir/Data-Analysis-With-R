# Water Potability Data ----------------------------------------------------

library(ggplot2)
water_potability <- read.csv("water_potability.csv")
water_potability
ph <- water_potability$ph
ph[is.na(ph)]<- 8


ph_data <- data.frame(ph)



CLT100 <- c()
for (i in 1:n){
  sample100 = sample(ph, 100, replace=TRUE)
  mean100 = mean(sample100)
  CLT100[i] = mean100
}

data100 <- data.frame(CLT100)

gr100 <- ggplot(data100,aes(x= CLT100))+
  geom_density(color ="#E66952", fill= "#E66952", alpha = 0.8)

gr100



CLT10000 <- c()
for (i in 1:n){
  sample10000 = sample(ph, 10000, replace=TRUE)
  mean10000 = mean(sample10000)
  CLT10000[i] = mean10000
}

data10000 <- data.frame(CLT10000)

gr10000 <- ggplot(data10000,aes(x= CLT10000))+
  geom_density(color ="#E66952", fill= "#E66952", alpha = 0.8)+
  labs(y = "Density", x = "Ph Levels")

gr10000

# Combined Plot --------------------------------------------------------
library(ggplot2)
library("cowplot")
plot_grid( gr100, gr10000,
          labels = c(("Sample size = 100"),
                    ("Sample size = 100000")),
          ncol=1, nrow=2
)
n =100
clo <- c()
sdt <- sd(ph)/ sqrt(n)
M <- mean(ph)
for (i in 1:n){
  s = sample(ph, n, replace=TRUE)
  m = mean(s)
  clo[i] = (m-M)/sdt
}

data <- data.frame(clo)

g <- data %>%
  filter(ph)
  ggplot(aes(x=clo))+
  geom_density(alpha=0.8, fill="#086B08", color ="#086B08")







# Stock Data --------------------------------------------------------------
library(ggplot2)
stock_data <- read.csv("ADP_DATA.csv")
mean_pop <- mean(stock_data$Volume)
nrow(stock_data)

samples <- c()
standart_dev <- sqrt(var(stock_data$Volume))

  n= 500
  
for( x in 1:10000){
  sample_stock = sample(stock_data$Volume, n, replace=TRUE)
  mean_sample <- mean(sample_stock)
  
  samples[x] <- ((mean_sample-mean_pop)/ standart_dev)/ sqrt(n)
}
frame_stock <-data.frame(samples)

stock_clt <- ggplot(frame_stock, aes(x = samples))+
  geom_density(color ="#60D431", fill= "#60D431", alpha = 0.8)+
  labs(x= "Stock Volume", y = " Density")

stock_clt

mean(samples)
sd(stock_data$Volume) / sqrt(n)

sd(samples)
