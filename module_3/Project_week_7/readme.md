
![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Project | Module 3


## Introduction

The goal of this project is to practise in supervised learning using Netflix data. We need to create the model for the rating prediction. 
Each group will need to research and implement the defined supervised machine learning methods.

## Getting Started

The dataset represents the information about Netflix movies and their ratings. Please note, the newest movies were deleted to avoid non-complete information about users votes.
We suppose that the rating depends on the number of votes and the movie's characteristics.

1. Please perform EDA and data cleaning.
Check this link https://stackoverflow.com/questions/29605352/pandas-how-to-convert-a-cell-with-multiple-values-to-multiple-rows for some helpful info.

Must-have in EDA:
- Number of movies per year
- Movies per country
- The most popular genre per year
- The most popular genre per country

2. As soon as your dataset is ready, please start the research about your models. Please note, that each group member should research at least 1 model.

Group 1:
- RidgeClassifier
- SVC
- CategoricalNB
- ExtraTreesClassifier


Group 2:
- Logistic regression
- NuSVC
- BernoulliNB 
- AdaBoostClassifier

Group 3:
- PassiveAggressiveClassifier
- SGDClassifier
- ComplementNB
- RandomForestClassifier

Group 4;
- Linear Discriminant Analysis
- GaussianProcessClassifier
- BaggingClassifier
- Gradient Tree Boosting


Group 5:
- Quadratic Discriminant Analysis
- GaussianNB
- DecisionTreeClassifier
- VotingClassifier

Group 6:
- LinearSVC
- KNeighborsClassifier
- MultinomialNB
- HistGradientBoostingClassifier 

3. Implement your models on your data

4. Do not forget about Hyperparameters tuning, feature selection (if needed)

5. Compare the results using metrics:
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

- '1. Netflix.csv with clean and encoded data
- '2. Netflix.ipynb' with all code concerning data cleaning and modelling
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
