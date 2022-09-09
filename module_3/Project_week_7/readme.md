
![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Project | Module 3


## Introduction

The goal of this project is to practise in supervised learning using provided data. We need to create the model for the prediction/classification. 
Each group will need to research and implement the defined supervised machine learning methods.
About data: 
 the data include customer demographic information (age, income, etc.), the customer's relationship with the bank (mortgage, securities account, etc.), and the customer response to the last personal loan campaign (Personal Loan). Among these 5000 customers, only 480 (= 9.6%) accepted the personal loan that was offered to them in the earlier campaign. 

Domain:Banking

Context:
This case is about a bank (Thera Bank) whose management wants to explore ways of converting its liability customers to personal loan customers (while retaining them as depositors). A campaign that the bank ran last year for liability customers showed a healthy conversion rate of over 9% success. This has encouraged the retail marketing department to devise campaigns with better target marketing to increase the success ratio with minimal budget.

## Getting Started

1. Please perform EDA and data cleaning.
Check this link https://stackoverflow.com/questions/29605352/pandas-how-to-convert-a-cell-with-multiple-values-to-multiple-rows for some helpful info.

2. Please conduct EDA and descriptive analytics

3. As soon as your dataset is ready, please start the research about your models. Please note, that each group member should research at least 1 model.

Group 1:
- RidgeClassifier
- SVC
- CategoricalNB
- ExtraTreesClassifier
- Gradient Tree Boosting
- Linear Discriminant Analysis
- LinearSVC
- KNeighborsClassifier

Group 2:
- Logistic regression
- NuSVC
- BernoulliNB 
- AdaBoostClassifier
- PassiveAggressiveClassifier
- SGDClassifier
- ComplementNB
- RandomForestClassifier

Group 3:
- GaussianProcessClassifier
- BaggingClassifier
- Quadratic Discriminant Analysis
- GaussianNB
- DecisionTreeClassifier
- VotingClassifier
- MultinomialNB
- HistGradientBoostingClassifier 

4. Feature selection (if needed)

5. Implement your models on your data

6. Do not forget about Hyperparameters tuning
7. Implement AutoML (TPOT)

8. Compare the results using metrics:
- accuracy
- recall
- precision
- ROC_AUC score
- plot ROC_AUC curve

## Expectations

- Clean, well-commented code
- Clean data with EDA
- Clear board in Trello with logged time for each task
- Clear descriprion of each model
- Models implementation and comparison

## Deliverables

- '1. Bank_loan.csv with clean and encoded data
- '2. Bank_loan.ipynb' with all code concerning data cleaning and modelling
- '3. Slides/dashboard/notebook with must-have EDA, each model description (how it works, what the parameters are, what exectly you used) and results (for each model and final table with models comparison).
- '4. Please state the conclusion about usability of each model.
- '5. Trello board with logged time.

## Time expectations
- Data cleaning 2 hours 
- Data preprocessing (features, scaling) 1 hours
- Models investigation 3 hours - this task can be splited
- Models implementation - 2 hours
- Slides/dashboard/notebook - 2 hours
- Finalization and "beautification" (github, etc)  - 2 hours
Average time per person 4-6 hours


## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Sources
https://scikit-learn.org/stable/index.html
