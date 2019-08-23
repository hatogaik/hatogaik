fahrenheit_to_kelvin <- function(temp_F){
  
  temp_K <- ((temp_F - 32)* (5/9)) + 273.15
  return(temp_K)
}

boiling_K <- fahrenheit_to_kelvin(212)

fahrenkelvin_to_celsius <- function(temp_K){
  
  temp_C <- temp_K - 273.15
return(temp_C)}

fahrenheit_to_celsius <- function(temp_F){
  
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_C <- kelvin_to_celsius(temp_K)
  
  return(temp_C)
}

fahrenheit_to_celsius(32)

kelvin_to_celsius(fahrenheit_to_kelvin(32))

vec <- c(2,3,4)
vec

### write a functin that takes two vectors (a & b) as arguments, return 1 news vector that is 
### compsosed of a b a

highlight <- function(a, b){


dog <-  c(a, b, a) 
return(dog)
  
}

highlight(a=3, b=4) 
highlight(a = vec, b = 4)
highlight(vec, 4)

highlight <- function(a,b){
  
  vec <- c(a,b,a)
  return(vec)
  
}

vec_1 <- c(1,2,3)
vec_2 <- c("a","b","c")
vec_2[1]
vec_2[3]

highlight(vec_1, vec_2)

### write a function called edges, that returns a vector composed of
### the first and last element of the input vector

## eg  c(1,2,3,4,5) =>c(1,5)

vec_2
length(vec_2)
  
}

vec_2[length(vec_2)]

c(vec_2[1], vec_2[length(vec_2)])

edges <- function(input){
  cat <- input[1] 
  pig <- length(input)
  rabbit <- input[pig]
  wolf <- c(cat, rabbit)
  return(wolf)
}

## run edges function
edges(vec_2)

center <- function(data, midpoint=0){
  
  centered_data <- data - mean(data) + midpoint
  return(centered_data)

}

example_data <- c(8,8,8,8,8)
center(data = example_data)
center(data = example_data, midpoint = 2)

analyze <- function(filename){
### plots the average, maz, min of inflammation over time
  # input is a charactyer string of CSV file
   dat <- read.csv(file = filename, header = F)
   avg_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = mean)
   max_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = max)
   min_day_inflammation <- apply(X = dat, MARGIN = 2, FUN = min)
   
   plot(avg_day_inflammation)
   plot(max_day_inflammation)
   plot(min_day_inflammation)
   
}

test_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv"
analyze(filename = test_file)

best_practice <- c("let", "the", "conputer", "do", "the", "work")
print_words <- function(sentence){
  
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
  
}

print_words(sentence = best_practice)
print_words_for <- function(sentence){
for (word in sentence) {
 print(word) 
}
}

print_words_for (sentence = best_practice)

for (i in 1:10) {
  
  a <- 2^i
  print(a)

}

colors <- c ("red", "blue", "green")
for (col in colors) {
  print(paste("My_favorite_color_is", col))
  
}

2*2
# write a function using a for loop that computes exponentials
# exponent (x,n)

my_sum <- function(numbers){
  temp_sum <- 0
  
  for (summands in numbers) {
    temp_sum <- temp_sum + summands
    #print(temp_sum)
    
  }
    
  return(temp_sum)
}

 my_sum(c(1,2,3,4,5))

my_sum2 <- function(numbers){
  temp_sum2 <- 0
  
  for (summands in numbers){
    temp_sum2 <- temp_sum2 + summands
  }
  return(temp_sum2)
  
  
}

my_sum2(c(1,2,3))

exponent <- function(x, n){
  temp <-1
  for(i in 1:n){
    temp <- temp * x
    
  }
  return(temp)
}
