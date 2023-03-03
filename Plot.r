library(ggplot2)
library(dplyr)

# Histogram ---------------------------------------------------
data=data.frame(value=rnorm(300))

histogram <- ggplot(data, aes(x=value)) + 
  geom_histogram(color ="#E66952", fill= "#E66952")

histogram


# Line Plot ----------------------------------------------------
Velocity <- 1:100
Time <- 1:100
data <- data.frame(Time,Velocity)

ggplot(data, aes(x=Time, y=Velocity)) +
  geom_line(color="#1ABCDF")



# Density Chart ------------------------------------------------


movies <- read.csv("Movie-Ratings.csv")

ratings <- movies$Rotten.Tomatoes.Ratings..

  ggplot(movies, aes(x= ratings)) +
  geom_density(fill="#DF59AA", color="#DF59AA", alpha=0.8)



  
# Bar plot -------------------------------------------------------------

months_temperature <- data.frame(
  Months=c("Month A","Month B","Month C","Month D","Month E", "Month F") ,  
  Temperature=c(-10,-7,4,12,20, 27)
)


ggplot(months_temperature, aes(x=Months, y=Temperature)) + 
  geom_bar(stat = "identity", fill = "#45F530")

#-----------------------------------------------------------------
library(ggplot2)

data <- read.csv("Demographic-Data.csv")

data

birth <- data$Birth.rate
countries <- data$Country.Name
mean(birth)
birth_country <- data.frame(countries, birth)
birth_country

bar <-ggplot(birth_country, aes(x=countries, y=birth)) + 
  geom_bar(stat = "identity", fill = "#45F530")


bar


ggplot(birth_country, aes(x=birth)) +
  geom_density(fill="#DF59AA", color="#DF59AA", alpha=0.8)





births <- sample(birth, 150, replace = TRUE)
gr100 <- data.frame(births)

ggplot(gr100, aes(x=births)) +
  geom_density(fill="#DF59AA", color="#DF59AA", alpha=0.8)




