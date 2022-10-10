## DELIVERABLE 1

#3. Use the library() function to load the dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#5. Perform linear regression using the lm() function
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(Mecha_lm)



## DELIVERABLE 2

#2. Read the Suspension_Coil.csv file as a table
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)

#3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#4. Create a lot_summary dataframe using groupby() and summarize() functions to group each lot by the mean, median, variance, and standard deviation of the PSI column
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))


## DELIVERABLE 3 

#1. Use t.test() function to determine if the PSI across all lots is statistically different from the population mean of 1500 pounds per sq inch.
t.test(Suspension$PSI,mu=1500)

#2. Write 3 more t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1500 pounds per sq inch.

#Test for Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

#Test for Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#Test for lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
