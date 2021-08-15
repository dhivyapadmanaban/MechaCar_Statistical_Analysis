# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called the data analytics team to review the production data for the following insights that may help the manufacturing team.

## Deliverable 1

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drive train, and ground clearance, were collected for each vehicle. Design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

### Results 

![image](https://user-images.githubusercontent.com/83181834/128647689-6587b1ae-656d-45a6-a793-22da7a109f6c.png)

### Statistical Summary

1. The **vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance** to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

2. The **p-value of our linear regression analysis is 5.35 x 10-11**, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

3. This linear model has an **r-squared value of 0.7149**, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

## Deliverable 2

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, create a summary statistics table to show:

- The suspension coils PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### Results 

**Total_summary dataframe:**

![image](https://user-images.githubusercontent.com/83181834/128647841-08e0ff57-46fa-4886-8ff5-e6c80076f610.png)

**Lot Summary dataframe:**

![image](https://user-images.githubusercontent.com/83181834/128647852-ad33465a-2ad4-4ff8-82ad-ed0df27246cd.png)

#### Statistical  Summary

When looking at the entire population of the production lot, the variance of the coils is **62.29 PSI**, which is well within the 100 PSI variance requirement.

Similarly, but significantly more consistent, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; **with variances of 0.98 and 7.47 respectively**. However, it is **Lot 3 that is showing much larger variance** in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.

## Deliverable 3

## T-Tests on Suspension Coils

Using R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Results

![image](https://user-images.githubusercontent.com/83181834/128648271-ca5bf42c-9bcb-4702-8430-f2d521dcadec.png)


![image](https://user-images.githubusercontent.com/83181834/128648294-979f9ba4-4569-4b1f-a8a6-8535eba0dee1.png)

### Statistical Summary

From here we can see the **true mean of the sample is 1498.78**, which we also saw in the summary statistics above. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

Next looking at each individual lots:

- Lot 1 sample actually has the **true sample mean of 1500**, again as we saw in the summary statistics above. With a **p-Value of 1**, clearly we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).
- Lot 2 has essentially the same outcome with a **sample mean of 1500.02, a p-Value of 0.61**; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.
- However, Lot 3, not surprisingly is a different scenario. Here the s**ample mean is 1496.14 and the p-Value is 0.04,** which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are statistically different.

## Study Design: MechaCar vs Competition

In this study design, MechaCar data is statistically analyzed and compared against one or more competitor's comparable data. This involve variety of metrics such as cost, city or highway fuel efficiency, maintenance cost or safety rating which may be of interest to potential consumers as well as AutosRU's manufacturing.

### Metrics

Although there are multiple metrics to consider as explained above, we are going to focus on **"COST"** metric and compare it to the mean value of the competitors. Finding vehicles which are similar as much as possible to MechaCar and collect the metric data for our statistical testing.

### Hypothesis

After identifying the metric to be tested **(COST)**,  it is imperative to identify our null and alternative hypotheses.
  - Null Hypothesis : Null hypothesis would be there is no statistical difference between the cost of MechaCar and other competitors.
  - Alternative Hypothesis : Alternative hypothesis would be that there is a statistical difference between MechaCar and other competitors.

### Statistical Test

  Since this is large real-world numerical data where we are comparing the means across more than two group, the most straightforward way to do this is to use the **analysis of variance (ANOVA) test**, which is used to compare the means of a continuous numerical variable across a number of groups. ANOVA test would tell us to test the null hypothesis. 
  In this case, sample mean would include MechaCar's Cost value and mean Cost values from samples of similar competitor vehicles.
  
### Data - Statistical Test

  To perform this **ANOVA test**, we would need one continuous, numerical variable for the dependent variable and COST would satisfy that requirement. For the independent variable specification when using ANOVA, we could compare vehicles of the same class using multiple categorical variables which would be the different vehicles for comparison.
 
  We need to use R's aov() method to run the ANOVA test and R's summary() function to retrieve the summary statistics which has the p-value to determine the analysis.
  
  ![image](https://user-images.githubusercontent.com/83181834/128781900-e2eefaa6-05b1-4e6a-be39-798657e66230.png)
  
  If the p-value is below 0.05, we have sufficient statistical reasoning to reject null hypothesis and determine the means of all groups are same.  In any case, the ANOVA test can prove quite useful for comparing the means of a continuous numerical variable across multiple categorical variables and could aid AutosRU in understanding better how their prototype fares against the competition.




