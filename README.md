# MechaCar_Statistical_Analysis

## Project Overview
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

Deliverable 1: Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

Deliverable 2: Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

Deliverable 3: Run t-tests to determine if the manufacturing lots are statistically different from the mean population

Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Resources

-Data Source: MechaCar_MPG_Dataset, Suspension_Coil_Dataset

-Software: RStudio, and R

## Analysis of Data------

## Linear Regression to Predict MPG

The MechaCar dataset and RScript were used to design the following multiple linear regression model for predicting miles per gallon statistics.

![Deliverable_1](https://user-images.githubusercontent.com/108022219/194971826-8946a4ba-54bb-4071-9fa5-a07875c15567.png)

In the above picture, the variables/coefficents' p-values (Pr(>|t|)) are:

Vehicle Length (2.60e-08)
Vehicle Weight(0.0776)
Spoiler Angle(0.3069)
Ground Clearance(5.21e-08)
AWD(All Wheel Drive)(0.1852)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

The results from the dataset predict that the following variables/coefficients provided a non-random amount of variance to the mpg values:

vehicle weight(0.0776)
spoiler angle(0.3069)
AWD(All Wheel Drive)(0.1852)

**Is the slope of the linear model considered to be zero? Why or why not?**

The slope of the linear model is not considered to be zero because the p-value is less than 0.05.
The desired significance level is 0.05 - 1 = 0.95 or 95%). All 3 variable/coefficients are predicted to be outside the 95% minimum significance level based on the data used for the linear model. 

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The R-squared value is approximatley 0.7149 or 71%. Which means that 71% of all mpg predictions will be correct when using the linear model. The p-value of the linear model is 5.35e-11 (last line of the above picture in the F-statistic results), which is smaller (94.65%) than the desired significance level of 0.05 (95%).

## Summary Statistics on Suspension Coils


**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

![lot_Summary](https://user-images.githubusercontent.com/108022219/194976374-aa79e1b1-1709-442e-b842-bcd31ed616a0.png)

The results for the data on the 3 suspension coil lots predicts that Lot 1 and Lot 2 meet design specification because the standard deviation and variance are both under 100 pounds per square inch. While, Lot 3 does not predict to design specifications because standard deviation and variance are greater than 100 pounds per square inch.

![total_Summary](https://user-images.githubusercontent.com/108022219/194976375-41bc0354-c783-44c4-9e22-59f805a35c3a.png)

The total summary for all 3 lots show the mean is steady at 1498.78 in all 150 rows of the total_summary table. The variance of the PSI sample distribution and the standard deviation are well within the design specifications for all 3 lots and does not exceed 100 pounds per square inch. The variance is reported at 62.29356 for 150 rows of the total summary table. The standard deviation is reported at 7.892627 for all 150 rows of the total summary table. The median value of the table varies between 1452 and 1542. 

## T-Tests on Suspension Coils

![Deliverable_3 1](https://user-images.githubusercontent.com/108022219/194977884-d60b77d2-0688-427c-8555-1463d579e6dc.png)
![Deliverable_3 2](https://user-images.githubusercontent.com/108022219/194977885-ebd21d33-0344-45d9-b25b-341aaebedea8.png)

The results show that there is not sufficient evidence to reject the null hypothesis.  The results of the t-test analysis reveals that the p-value for all lots is 0.06028 which is outside the signifigance level of 0.05 resulting in a confidence interval of 93.972%. The dataset mean and the population mean are statistically similar. Also, the analysis predicts that the suspension coils dataset is statistically representative of the population mean.

## Study Design: MechaCar vs Competition

The results of the data show statistical study that can quantify how the MechaCar performs against the competition by improving fuel efficiency. Using the six variables from this analysis while also considering other variables such as weather conditions, distance of trips (long vs. short) and possibly narrowing the data down to a specific region or city. 
Using the following metrics the data sample would need to be as large as possible, and randomly selected. 
The alternative hypothesis would be the true mean of MechaCar's mpg is greater than the mean of the competitor's mpg. While the null hypothesis would be no statistical difference between the competition's mpg dataset and MechaCar's mpg dataset.

