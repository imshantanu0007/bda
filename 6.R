data ()
data("airquality")
sapply(airquality,class)

dim(airquality)

is.na(airquality)

sum(is.na(airquality))
mean(is.na(airquality))

na.omit(airquality)


