library(dplyr) # load dplyr package

mecha_mpg <- read.csv('MechaCar_mpg.csv') # read in CSV as dataframe
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg) # perform linear regression
summary(model) # get summary of linear regression to determine p-value and r-squared value

mecha_coil <- read.csv('Suspension_Coil.csv') # read in CSV as dataframe
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # create dataframe of summary statistics for all lots
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # create dataframe of summary statistics by lot

t.test(mecha_coil$PSI, mu=1500) # test if mean PSI of sample is statistically different than pop. mean
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(mecha_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500) # check statistical difference of mean PSI for each Lot compared to pop.