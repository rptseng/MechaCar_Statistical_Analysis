# MechaCar_Statistical_Analysis
The objective of this project is to use statistical tests in R on production data of AutosRUs' MechaCar to reveal insights that may help the manufacturing team.

## Linear Regression to Predict MPG

These are the summary statistics of the multiple linear regression model for fuel efficiency (mpg) factoring in the variables of vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.

![mpg_lm_summary](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/mpg_lm_summary.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables that provided a non-random amount of variance based on a significance level of p=0.05 are vehicle length and ground clearance. We can also see that the intercept also has a p-value smaller than 0.05, meaning that it explains a significant amount of variability when all other variables are equal to zero. This may suggest that there are other variables that significantly explain mpg that are not included in the model.

Is the slope of the linear model considered to be zero? Why or why not?

The slope of the model is not zero because the p-value of the model is below the significance level of 0.05. This means we may reject the null hypothesis that the slope of the model is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The linear model is strongly predictive of the mpg of MechaCar prototypes because we have an R-squared value of 0.71, which means roughly 71% of the variability in mpg can be explained by the model.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Using an R script to calculate the Mean, Median, Variance, and Standard Deviation of PSI values in the Suspension_Coil data set, we will analyze whether the sample meets the variance specifications in total and by individual lots.

(R script here)

### PSI Variance - All Manufacturing Lots
At a total level, the variance of the suspension coils is less than 100, therefore the manufacturing data meets the design specifications.

![psi_summary.png](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/psi_summary.png)

### PSI Variance - Each Lot
Based on the lot_summary dataframe, we can see Lot1 and Lot2 meet the design specification of variance being lower than 100 PSI. Lot3 has a PSI variance of greater than 100 and does not meet the design specification.

![lot_summary.png](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

### T-Tests on Suspension Coils
We will now run t-tests on each manufacturing lot to determine whether they show a statistically significant difference (p=0.05) from the population mean of 1500 PSI.

### Lot 1
![lot1.png](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/lot1.png)

The p-value for Lot1 is 1 and equal to the population mean. There is no significant difference in Lot1.

### Lot 2
![lot2.png](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/lot2.png)

The p-value for Lot2 is 0.6 and is not significantly different from the population mean.

### Lot 3
![lot3.png](https://github.com/rptseng/MechaCar_Statistical_Analysis/blob/main/images/lot3.png)

The p-value for Lot3 is 0.04 and we can conclude the PSI is significantly different from the population mean.


## Study Design: MechaCar vs Competition
For a future direction, we would like to design a study that can demonstrate to a consumer that MechaCar products have a higher highway fuel efficiency rating in miles per gallon(mpg) than its closest competitor, RoboTruck. 

- Hypotheses
The null hypothesis is the in highway fuel efficiency (mpg) for MechaCars is the same or lower than the mpg for RoboTrucks.
The alternative hypothesis is the highway fuel efficiency (mpg) for MechaCars is greater than the mpg for RoboTrucks.

- Statistical Test
In this scenario we would like to run a paired or two-sample t-test with a one-tailed significance level so we can make the case to consumers that MechaCar is superior to RoboTruck by this metric.

- Data Requirements
We would need a data set that can be grouped by Manufacturer (MechaCar or RoboTruck) with values for highway fuel efficiency in miles per gallon (mpg). We would like to have a sample size of at least 20 vehicles in each category to run our test.
