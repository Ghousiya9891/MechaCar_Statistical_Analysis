#Reading csv file into dataframe
mechcar_data <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#performing linear regression
coeff_data <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechcar_data)

#Determining Summary Stats of the liner regression
summary(coeff_data)


#load data
Suspension <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

#summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#lot_Summary stats
lot_summary <- Suspension %>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#t-test on Suspension Coils
t.test(Suspension$PSI, mu=1500)

#t-tests for each manufacturing lots
t.test(subset(Suspension, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

t.test(subset(Suspension, Manufacturing_Lot=="Lot3")$PSI, mu=1500)