my_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
my_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
my_data$Speed
head(my_data)
max(my_data$Speed)
min(my_data$Speed)
max_speed <- max(my_data$Speed)
min_speed <- min(my_data$Speed)
speed_range <- max_speed - min_speed