# mini-DSAI-project
Mini project on data science and machine learning for SC1015 at NTU.



**#Introduction**

We decided to explore a dataset of medical examinations of patients for the presence of cardiovascular disease. It consists of characteristics, health measurements, behavioural traits and the presence of cardiovascular disease. 

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



**#Exploratory data analysis**

Through our exploratory data analysis we were able to distinguish between the features which showed an observable relationship with the presence of cardiovascular disease.

Significant features: Age, Weight, BMI (engineered feature), Systolic blood pressure, Diastolic blood pressure, Cholesterol levels, Glucose levels and Physical activity



**#Machine Learning**

Models we tried: Random Forest, Logistic Regression, Support Vector Classifier and K-Nearest Neighbours Classifier
Models we focused on: Random Forest and K-Nearest Neighbours Classifier

Maximum accuracy with cross validation (GridSearchCV): 73.5%



**#Closing Insights**

Models not accurate enough as diagnosis tool (would require reliable accuracy above 90%).
Models are still useful as a preliminary tool for risk assessment.

Possible improvements: 
Larger dataset with more useful features (eg. Average heart rate, symptoms of cardiovascular disease and parents' history of cardiovascular disease)
Voting ensemble to include more relevant models and balance out individual weaknesses of models
