library(dplyr)

#Deliverable 1 linear regression model
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

mechacar_mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_mpg)
summary(mechacar_mpg_model)

# Deliverable 2 group by dataframe
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 3 t-test
t.test(suspension_coil$PSI, mu=1500) #compare sample versus population means

lot1 <- subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot1')
t.test(lot1, mu=1500)

lot2 <- subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot2')
t.test(lot2, mu=1500)

lot3 <- subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot == 'Lot3')
t.test(lot3, mu=1500)
