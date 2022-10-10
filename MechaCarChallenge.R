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

#Deliverable 2
#Read the Suspension_Coil.csv file as a table
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)

#Create a total_summary dataframe using the summarize() function
#to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#Create a lot_summary dataframe using groupby() and summarize() functions 
#to group each lot by the mean, median, variance, and standard deviation of the PSI column
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
