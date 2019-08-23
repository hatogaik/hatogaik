2+3
5+5
c(3,5)
x <- 2+3
y <- 1:100
inf_data_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv"

## name has to be one word -> use "_"
car_data_file <- "/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv"

car_data <- read.csv(car_data_file, header = TRUE)

inf_data <- read.csv(inf_data_file, header = FALSE)

## take a peek at the file
head(car_data)

car_color <- car_data$Color
car_speed <- car_data$Speed

max(car_speed)
min(car_speed)
mean(car_speed)
median(car_speed)

day_3 <- inf_data$V3
day_5 <- inf_data$V5

plot(day_3, day_5)
plot(day_3)
hist(day_3)

foo(x)


## median of day_7: the following two are same
day_7 <- inf_data$V7
median(day_7)

##day3,5,7  first 10 pts
median(inf_data$V7)
pts <- 1:10

days <- c(3,5,7)
inf_days <- inf_data[pts,days]

inf_days_all_pt <- inf_data[,pts]
inf_days_all_pt <- inf_data[,days]

max(car_data$Speed) - min(car_data$Speed)
max_speed <- max(car_data$Speed)
car_data[car_data$Speed == max_speed, ]








