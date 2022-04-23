# SC1015 Mini-Project

Using data from the [Cardiovascular Disease Dataset](https://www.kaggle.com/datasets/sulianova/cardiovascular-disease-dataset), our team aims to enhance the early detection process of cardiovascular diseases to help prevent deaths from these diseases.

![Project_Cover](https://user-images.githubusercontent.com/53988015/164910402-dd8a8ddc-cdb2-4a0b-8c19-c5f449c47b77.png)

Contents
========
 
 * [Introduction](#introduction)
 * [Problem Definition](#problem-definition)
 * [Project Structure](#project-structure)
    * [Data Preparation](#data-preparation)
    * [Exploratory data analysis](#exploratory-data-analysis)
    * [Feature Selection](#feature-selection)
    * [Machine Learning](#machine-learning)
  * [Insights & Conclusion](#insights-conclusion)
 * [References](#references)

## Introduction
Globally, the leading cause of death is cardiovascular diseases, amounting to 32% of all death and it is known that early detection can prevent cardiovascular disease (A. Barnes & W. Orme-Johnson, 2012).

Hence, we decided to explore [Cardiovascular Disease Dataset](https://www.kaggle.com/datasets/sulianova/cardiovascular-disease-dataset), a dataset of medical examinations of patients that could help us develop a machine learning model to help in early detection of cardiovascular disease.

Through our exploration, we realised we were able to: 
  - Analyse patterns and trends regarding the features and their relation to the presence of cardiovascular disease. 
  - Create machine learning models that can predict the presence of cardiovascular disease through easily obtainable medical examinations information.

This would help to:
  - Alert patients of the presence of cardiovascular disease without the need for a thorough medical examination. 
  - Provide medical professionals with a much more efficient way of screening patients for cardiovascular disease. 
  - Allow patients to receive timely treatment and help prevent instances late diagnosis which prevents full recovery

## Problem Definition

Can we predict whether an individual has cardiovascular disease or not based on his personal attributes?

## Project Structure

[1. Data Preparation](Data_Preparation.ipynb)

[2. Exploratory Data Analysis](EDA.ipynb)

[3. Feature Selection](https://github.com/wwaihoe/mini-DSAI-project/blob/main/Feature%20Selection.ipynb)

[4. Machine Learning](ML_Models.ipynb)


### Data Preparation

Removed all erroneous entries where systolic blood pressure is lower than diastolic blood pressure. 

Created BMI feature to remove impossible entries where BMI is lower than the lowest BMI ever recorded and higher than the highest BMI ever recorded.


### Exploratory data analysis

Variables:
| Type                | Variable |
| ------------------- | --------------------------- |
| Characteristics     | Age, Height, Weight, Gender |
| Health measurements | Systolic blood pressure, Diastolic blood pressure, Cholesterol levels, Glucose levels |
| Label               | Presence of cardiovascular disease |

Utilised various data visualisation techniques to study different variables relationship with cardio
<br/>

### Feature Selection

We employed different tests and coefficients for each type of variable to gain further insights:
| Variable Type | Type of Test |
| ------------- | ------------ |
| Continuous    | ANOVA F-test & point biserial correlation |
| Binary        | Chi-square test |
| Ordinal       | Polychoric correlation |

Through our exploratory data analysis we were able to distinguish between the features which showed an observable relationship with the presence of cardiovascular disease.

Significant features: 
- Age, Weight, BMI (engineered feature), Systolic blood pressure, Diastolic blood pressure, Cholesterol levels, Glucose levels and Physical activity


### Machine Learning

Models tried: Random Forest, Logistic Regression, Support Vector Classifier and K-Nearest Neighbours Classifier

Models focused on: Random Forest and K-Nearest Neighbours Classifier

We used GridSearchCV to implement 5 fold cross validation for hyperparameter tuning.

Maximum accuracy achieved: 73.5% (K-Nearest Neighbours Classifier) with true positive rate of 68.1%



## Insights &amp; Conclusion <a name="insights-conclusion"></a>

Models had relatively **high false negative rates above 30%**, which would provide too much false assurance.

Individuals might neglect the need for further screening and treatment. 

Models were also not accurate enough as diagnosis tool (would require reliable accuracy above 90%). However, the models are still useful as a preliminary tool for risk assessment.

Possible improvements: 
- Larger dataset with more useful features (eg. Average heart rate, symptoms of cardiovascular disease and parents' history of cardiovascular disease)
- Voting ensemble to include more relevant models and balance out individual weaknesses of models



## References

A. Barnes, V., & W. Orme-Johnson, D. (2012). Prevention and Treatment of Cardiovascular Disease in Adolescents and Adults through the Transcendental Meditation® Program: A Research Review Update. Current Hypertension Reviews, 8(3), 227–242. https://doi.org/10.2174/157340212803530411

Cardiovascular diseases. (2019, June 11). World Health Organization. https://www.who.int/health-topics/cardiovascular-diseases#tab=tab_1

Why do you need to scale data in KNN. (2017, June 26). Stack Exchange. https://stats.stackexchange.com/questions/287425/why-do-you-need-to-scale-data-in-knn/287439#287439
