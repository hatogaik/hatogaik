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
inf_days_all_days <- inf_data[,days]

max(car_data$Speed) - min(car_data$Speed)
max_speed <- max(car_data$Speed)
car_data[car_data$Speed == max_speed, ]

car_data[car_data$Speed == max_speed,]

## Let's review
days2 <- c(3,5,7)
days3 <- c(1:5)


## assigning values to variables
 x <- 2
# data <- read.csv(...)
# y <- 3
# x <- y
 
# subsetting data
day_3 <- inf_data$V3 
day_3[1:3]
day_3[1]
length(day_3)
num_pt <- length(day_3)
day_3[num_pt]

# last three?
day_3[58:60]
day_3[c(58,59,60)]
length(day_3)-2

begin <- length(day_3)-2
day_3[begin:num_pt] 
begin <- length(day_3)

## index by name
car_data[,c("Color", "Speed")]
car_color_speed <- car_data[,c("Color", "Speed")]
inf_data[, c("V1","V3")]

## logical indexing (boolean incexing, TRUE/FALSE indexing)
22 == 11*2 #TURE
day_3 == 1
day_3[day_3 == 1]
day_3_ones <- day_3[day_3 == 1]
length(day_3_ones)
day_3_no_ones <- day_3[day_3 !=1]
length(day_3_no_ones)
max(day_3_ones)
min(day_3_ones)
max(day_3_no_ones)
min(day_3_no_ones)

is_one <- day_3 == 1
day_5 <- inf_data$V5
day_5[is_one]
day_5_day_3_one <- day_5[is_one]
max(day_5_day_3_one)
inf_data[day_3 == 1, ]

inf_data$V5[inf_data$V5 > 0]
inf_data$V5[inf_data$V5 > 2]

pts <- 1:10
pts < 0
pts[pts < 0]

#red cars are faster thatn blue cars

color_speed <- car_data[,c("Color", "Speed")]
car_data$Color == "Blue"
color_blue <- car_data$Color == "Blue"
car_data$Speed[color_blue]
speed_blue <- car_data$Speed[color_blue]
mean(speed_blue)

car_data$Color == "Red"
color_red <- car_data$Color == "Red"
car_data$Speed[color_red]
speed_red <- car_data$Speed[color_red]
mean(speed_red)

mean(speed_blue) > mean(speed_red)


## answer
car_speed <- car_data$Speed
car_color <- car_data$Color
mean(car_speed[car_color == "Red"])
mean(car_speed[car_color == "Blue"])

write.csv(car_data, "./data/car_data.csv",
          row.names = FALSE
          )
## help menu: single ? and double ??
?read.csv
?write.csv
?plot
??plot
