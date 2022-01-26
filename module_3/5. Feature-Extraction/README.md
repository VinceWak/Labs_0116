![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Feature Extraction and Introduction to Supervised Learning

## Introduction

As data analysts or data scientists, we find that we don't always get the data we need, but the data that we deserve. Many times it is up to us to extract meaningful information from our data. It could be done by transforming the data using derived columns, grouping the data and using aggregated information, or cleaning and reformatting the data. We will explore these techniques in this lab.

## Getting Started

Before working on today's main lab, we'd like you to review some Pandas functions. Open the `Pandas-concat-merge-join.ipynb` file in the `your-code` directory, review the information there, and warm up yourself by doing some coding.

Then open the `main.ipynb` file in the `your-code` directory. Follow the instructions and add your code and explanations as necessary. By the end of this lab, you will have learned how to prepare a dataset for most scikit-learn algorithms.

Let's work with data about bank marketing.  You can find the dataset and description in the data folder
Please use RFE, RFECV and SelectFomModel  for selecting the features from your dataset.

Step 1. Check your data. Clean and encode them if necessary

Step 2. List your features

Step 3. Apply the RandomForestClassifier and LogisticRegression model with default parameters to your data 
What is the accuracy for your models?

Step 4. Select features using SelectFromModel method. Explain, how you define the optimal number of features

Step 5. Apply the RandomForestClassifier and LogisticRegression model with default parameters to your data (only selected features). What is the accuracy for your models?

Step 6. Select features using RFE and RFECV methods. Explain, how you define the optimal number of features for each of the cases.

Step 7. Apply the RandomForestClassifier and LogisticRegression model with default parameters to your data (you will have 4 models, taking into account two sets of features that you got). What is the accuracy for your models?

Step 8. Please make the conclusion about the utility of the feature selection

## Deliverables

- `Pandas-concat-merge-join.ipynb` with your responses.
- `main.ipynb` with your responses.

## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Resources

[Joining and Merging in Pandas](https://pandas.pydata.org/pandas-docs/stable/merging.html)

[pandas.concat](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.concat.html)

[pandas.DataFrame.merge](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.merge.html)

[pandas.DataFrame.join](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.join.html)

[SQL Joins](https://www.w3schools.com/sql/sql_join.asp)

[pandas.Series.unique](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.Series.unique.html)

[pandas.DataFrame.dropna](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.dropna.html)

[pandas.to_datetime](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.to_datetime.html)

[numpy.where](https://docs.scipy.org/doc/numpy-1.13.0/reference/generated/numpy.where.html)

[pandas.Series.value_counts](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.Series.value_counts.html)

[pandas.core.groupby.DataFrameGroupBy.agg](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.core.groupby.DataFrameGroupBy.agg.html)
