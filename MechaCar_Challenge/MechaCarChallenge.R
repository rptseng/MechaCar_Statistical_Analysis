library(dplyr)

mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

mechacar_mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)
summary(mechacar_mpg_model)

suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)
total_summary <- suspension_coil %>% summarize(Mean_Mileage=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_Mileage=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
