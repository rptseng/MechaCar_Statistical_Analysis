library(dplyr)

mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

mechacar_mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)
summary(mechacar_mpg_model)
