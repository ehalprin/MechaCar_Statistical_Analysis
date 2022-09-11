# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Performing a linear regression on the Mecha Car data revealed that vehicle length and ground clearance, as well as the intercept, provided a non-random amount of variance to the MPG values in the dataset. The slope of the linear model is not considered to be zero, because there is correlation between at least two of the independent variables (vehicle length and ground clearance) and the dependent variable (MPG). This linear model somewhat effectively predicts the mpg of MechaCar prototypes. The r-squared value is 0.72 with a significant p-value, which means that this model explains 72% of the variability of the dependent value (MPG). However, the significance of the intercept suggests that the independent variables may need to be scaled or transformed to better explain the variability of MPG, and the many non-significant variables (vehicle weight, spoiler angle, and AWD) may suggest overfitting. 

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

![Linear Regression Output](https://github.com/ehalprin/MechaCar_Statistical_Analysis/blob/main/Linear_Regression_to_Predict_MPG.png)
