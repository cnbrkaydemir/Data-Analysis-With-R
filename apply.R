# Apply ----------------------------------

data <- matrix(1:100,nrow = 10, ncol = 10)

sumRows <- apply(data, 1, sum)

sumCols <- apply(data, 2, sum)


# Lapply ---------------------------------

v <- c("SWEAT", "BLOOD", "TEARS")

lower <- lapply(v, tolower)

is.vector(lower)

# Sapply --------------------------------

numbers <- data.frame(Even = c(12,94,38,66),
                      Odd = c(11,95, 39, 65))

max = sapply(numbers, max)

is.vector(max)


# Tapply ---------------------------------

demo <- read.csv("Demographic-Data.csv") 
summary(demo)
print("Average birth rate of each country")
mode <- tapply(demo$Birth.rate, demo$Country.Name, mean)


