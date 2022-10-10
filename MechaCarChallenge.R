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





        
