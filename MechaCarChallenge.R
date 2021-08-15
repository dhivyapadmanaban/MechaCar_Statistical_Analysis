#Initializing libraries
library(tidyverse)
library(dplyr)

############### DELIVERABLE 1 STARTS #############################

# Load the file
mechacar <- read_csv("MechaCar_mpg.csv")

#Perform Linear regression
lm (mpg ~ vehicle_length  + vehicle_weight  + spoiler_angle  + ground_clearance  + AWD ,data=mechacar)

# Generate Summary Statistics
summary(lm(mpg ~ vehicle_length  + vehicle_weight  + spoiler_angle  + ground_clearance  + AWD ,data=mechacar)) 

############### DELIVERABLE 1 ENDS #############################


############### DELIVERABLE 2 STARTS #############################

# Load the file
suspensioncoil <- read_csv("Suspension_Coil.csv")


# summarize the dataframe
total_summary <- summarize(suspensioncoil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

# Group by lot and summarize the data
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary

############### DELIVERABLE 2 ENDS #############################

############### DELIVERABLE 3 STARTS ###########################

#use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(suspensioncoil$PSI,mu=1500)


#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suspensioncoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspensioncoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspensioncoil, Manufacturing_Lot=="Lot3")


t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


############### DELIVERABLE 3 ENDS ###########################

