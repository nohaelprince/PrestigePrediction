## Documentation

### Dataset

The Prestige dataset analysed in this report has been taken from the library ‘car’ in R. This dataset has 102 observations and 6 attributes. The observations are the Canadian occupations. 

Out of the 6 attributes, one attribute namely :
‘type’ representing the type of occupation.
‘education’ representing average education of occupational incumbents
‘income’ which represents average income of incumbents
‘prestige’ is the response variable which represents the prestige score for occupation.

### Objective

This project aims to create a linear model to predict **prestige** given the
type, education and income.

### Input/Output
- First the user should enter 3 values (education, income and type) from the left side panel and press the Predict! button.
- The main panel contains the inputs and the prediction output:
  (fit, lwr, upr): 
  
  predict.lm produces a vector of predictions or a matrix of predictions and bounds with column names fit, lwr, and upr if interval is set. Setting intervals specifies computation of confidence or prediction (tolerance) intervals at the specified level, sometimes referred to as narrow vs. wide intervals. 

### Interactivity
- If the user changes any of the inputs, the changes are reflected automatically at the output.
  

