library(ggplot2)
library(dplyr)
water_potability <- read.csv("water_potability.csv")

ph <- water_potability$ph


gr <- water_potability %>% 
  filter(!is.na(ph)) %>%
  ggplot( aes(x = ph))+
  geom_density(alpha=0.8,color = "#086B08", fill= "#086B08")




ph100 <- sample(ph, 100, replace=FALSE)

data100 <- data.frame(ph100)

gr100 <- data100 %>%
  filter(!is.na(ph100)) %>%
  ggplot( aes(x= ph100))+
  geom_density(alpha=0.8, color= "#086b08", fill="#086B08")


ph1000 <- sample(ph, 1000, replace = TRUE)

data1000 <- data.frame(ph1000)

gr1000 <- data1000 %>%
  filter(!is.na(ph1000)) %>%
  ggplot(aes(x=ph1000))+
  geom_density(fill="#086B80", color="#086B80", alpha=0.8)

gr1000



ph10000 <- sample(ph, 10000, replace = TRUE)

data10000 <- data.frame(ph10000)

gr10000 <- data10000 %>% 
  filter(!is.na(ph10000)) %>%
  ggplot(aes(x=ph10000))+
  geom_density(fill="#086B80", color="#086B80", alpha=0.8)

gr10000




library("cowplot")
plot_grid(gr, gr100, gr1000, gr10000,
          labels = c(paste("Population Mean = ", mean(ph)),
          paste("Sample 100 Mean = ", mean(ph100)),
          paste("Sample 1000 Mean = ", mean(ph1000)),
          paste("Sample 100000 Mean = ", mean(ph10000))),
          ncol=1, nrow=4
          )




