kelvin_to_celsius <- function(temp_K){
  
  temp_C <- temp_K - 273.15
  return(temp_C)
}

kelvin_to_celsius(0)

fahrenheit_to_kelvin <- function(temp_F){
  
  temp_K <- ((temp_F - 32) * (5/9)) + 273.15
  return(temp_K)
}


fahrenheit_to_kelvin(32)


fahrenheit_to_celsius <- function(temp_F){
  
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_C <- kelvin_to_celsius(temp_K)
  
  return(temp_C)
  
}

fahrenheit_to_celsius(32)

temp_F <- 32
kelvin_to_celsius(fahrenheit_to_kelvin(temp_F))

vec <- c(4,5)
vec

vec2 <- c(vec, 6)
vec2

vec3 <- c(2,3,"a","b")
vec3

vec4 <- c("four", 4)
vec4

length(vec3)

# edges: c(4,3,2,1) => c(4,1)

# write a function call                          ed edges that takes an argument  called vec and returns a new vector
# composed of the first and last element

edges <- function(a){
  size <- length(a)
  first_last <- c(a[1], a[size])
  return(first_last)
}
edges(c(2,3,4,5))

# return 2nd last number
edges2 <- function(b){
  size <- length(b)
  second <- c(size-1)
  
  return(second)
}
edges2(c(1:10))


# answer
edges3 <- function(vec){
  
  first <- vec[1]
  last <- vec[length(vec)]
  
  return(c(first,last))
  
}

edges3 (c("a", "b", 3))

edges(vec)

my_exp <- function(base,exponent){
  return(base^exponent)
  
}
# a, b in the function is still alive
# function is flecible
my_exp(2,3)
my_exp(3,2)
my_exp(exponent = 2, base = 3)


my_exp2 <- function(base, exponent = 2){
  
  return(base^exponent)
  
}

my_exp2(3)
my_exp2(3, 3)

my_exp2(exponent = 3)
my_exp2(base = 3)

##
center <- function(data, midpoint = 0){
  
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

center(c(0,0,0))
center(c(1,2,3))
center(data = c(1,2,3), midpoint = 10)


inf_data_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv"

car_data_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv"

car_data <- read.csv(car_data_file, header = TRUE)

inf_data <- read.csv(inf_data_file, header = FALSE)

center(inf_data$V1)
day_7_centered <- center(inf_data$V7)

hist(day_7_centered)
mean((day_7_centered))
all.equal(mean((day_7_centered))

          
day_7_centered + mean(inf_data$7)

center <- function(data, midpoint = 0){
  
  # returns new bector containing the original re-centered around the midpoint
  # arguments are a avector of data and an optional midpoint (default to 0)
  # ex: center(c(1,2,3)) => c(-1, 0, 1)
  
  new_data <- (data - mean(data)) + midpoint
  return(new_data)

  }

# write a function called analyze that takes a dataflame and plots the minimum , maximum, and averate of the data over time

apply(X = data.frame(1,2,3), MARGIN = 1, FUN = mean)
apply(X = inf_data, MARGIN = 1, FUN = sd)

analyze <- function(data2){
  
  pt_minimum_day <- apply(X = data2, MARGIN = 2, FUN = min)
  plot(pt_minimum_day)
  
  pt_max_day <- apply(X = data2, MARGIN = 2, FUN = max)
  plot(pt_max_day)
  
  
}

analyze(inf_data)







