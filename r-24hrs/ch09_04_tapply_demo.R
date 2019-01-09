tapply(airquality$Wind, 
       list(airquality$Month, cut(airquality$Temp,3)), 
       median, na.rm=T) -> t1

tapply(airquality$Wind, 
       list(airquality$Month, cut(airquality$Temp,3), cut(airquality$Solar.R, 3)),
       median, na.rm=T) -> t2

tapply(airquality$Wind,
       airquality$Month,
       quantile, na.rm=T) -> t3
