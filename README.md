# mini-DSAI-project - Predicting Cardiovascular Disease
Mini project on data science and machine learning for SC1015 at NTU.



## Introduction

We decided to explore a dataset of medical examinations of patients for the presence of cardiovascular disease. Cardiovascular diseases are the leading cause of death in the world, claiming the lives of over 17.9 million people annually (World Health Organisation, 2019), and we hoped to explore possible ways to use data analysis and machine learning to provide practical solutions to reduce the impact of cardiovascular diseases on the population. 

The dataset consists of characteristics, health measurements, behavioural traits and the presence of cardiovascular disease. 

Dataset: Cardiovascular Disease dataset | https://www.kaggle.com/datasets/sulianova/cardiovascular-disease-dataset

**Variables:**
Characteristics:
Age, Height, Weight, Gender 
Health measurements:
Systolic blood pressure, Diastolic blood pressure, Cholesterol levels, Glucose levels
Behavioural traits:
Smoking, Alcohol intake, Physical activity
Presence of cardiovascular disease

We realised that we could explore this dataset to analyse patterns and trends regarding the features and their relation to the presence of cardiovascular disease. Furthermore, being able to create machine learning models that can predict the presence of cardiovascular disease based on information that can be easily obtained through medical examinations could be extremely helpful to medical instituitions. This would not only help to alert patients of the presence of cardiovascular disease without the need for a thorough medical examination, but also provide medical professionals with a much more efficient way of screening patients for cardiovascular disease. This would allow patients to receive more timely treatment and help prevent instances where patients only find out about their condition when it is too late for treatment or full recovery.



## Notebooks
#### [1. Data Preparation](Data_Preparation.ipynb)

#### [2. Exploratory Data Analysis](EDA.ipynb)

#### [3. Feature Selection](https://github.com/wwaihoe/mini-DSAI-project/blob/main/Feature%20Selection.ipynb)

#### [4. Machine Learning](ML_Models.ipynb)



## Data Preparation

Found no NULL values in dataset to clean. Removed all erroneous entries where systolic blood pressure is lower than diastolic blood pressure. Created BMI feature to remove impossible entries where BMI is lower than the lowest BMI ever recorded and higher than the highest BMI ever recorded.



## Exploratory data analysis

Through our exploratory data analysis we were able to distinguish between the features which showed an observable relationship with the presence of cardiovascular disease.

Significant features: Age, Weight, BMI (engineered feature), Systolic blood pressure, Diastolic blood pressure, Cholesterol levels, Glucose levels and Physical activity



## Machine Learning

Models we tried: Random Forest, Logistic Regression, Support Vector Classifier and K-Nearest Neighbours Classifier

Models we focused on: Random Forest and K-Nearest Neighbours Classifier

We used GridSearchCV to implement 5 fold cross validation for hyperparameter tuning.

Maximum accuracy achieved: 73.5% (K-Nearest Neighbours Classifier) with true positive rate of 68.1%



## Closing Insights

Models had relatively high false negative rates above 30%, which would provide too much false assurance that would make individuals neglect the need for further screening and treatment. Models were also not accurate enough as diagnosis tool (would require reliable accuracy above 90%). However, the models are still useful as a preliminary tool for risk assessment.

Possible improvements: 
Larger dataset with more useful features (eg. Average heart rate, symptoms of cardiovascular disease and parents' history of cardiovascular disease)
Voting ensemble to include more relevant models and balance out individual weaknesses of models



## References

A. Barnes, V., & W. Orme-Johnson, D. (2012). Prevention and Treatment of Cardiovascular Disease in Adolescents and Adults through the Transcendental Meditation® Program: A Research Review Update. Current Hypertension Reviews, 8(3), 227–242. https://doi.org/10.2174/157340212803530411

Cardiovascular diseases. (2019, June 11). World Health Organization. https://www.who.int/health-topics/cardiovascular-diseases#tab=tab_1

Why do you need to scale data in KNN. (2017, June 26). Stack Exchange. https://stats.stackexchange.com/questions/287425/why-do-you-need-to-scale-data-in-knn/287439#287439
