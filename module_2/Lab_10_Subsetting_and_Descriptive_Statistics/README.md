![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Subsetting and Descriptive Stats


## Introduction

As a data analyst you will have to work with a big amount of data. Extracting meaningful insights from your data can be done by dividing your data into subsets using Pandas library. It's a simple way to perform several types of analyses such as descriptive statistics.
In this lab, you will use Pandas library to extract insights from your data by dividing it into into several subsets. You might also need to use some Pandas descriptive statistics functions. 

## Getting Started

Open the `main.ipynb` file. There are 3 challenges and in each challenge you will work with 3 different datasets. 

The datasets 'orders.csv' is here: https://docs.google.com/spreadsheets/d/1nkTmFoyjosMCxjbSivPlaaTinZFC1QscwhKM9-SE_lE/edit#gid=938738177

# Tasks

Complete the following set of exercises to solidify your knowledge of Bayesian probability

import pandas as pd

import numpy as np

import matplotlib.pyplot as plt

Cookie Problem

Suppose we have two bowls of cookies. Bowl 1 contains 30 vanilla cookies and 10 chocolate cookies. Bowl 2 contains 20 of each. You randomly pick one cookie out of one of the bowls, and it is vanilla. Use Bayes Theorem to calculate the probability that the vanilla cookie you picked came from Bowl 1?

What is the probability that it came from Bowl 2?

What if the cookie you had picked was chocolate? What are the probabilities that the chocolate cookie came from Bowl 1 and Bowl 2 respectively?

2. Candy Problem
Suppose you have two bags of candies:
* In Bag 1, the mix of colors is:
  * Brown - 30%
  * Yellow - 20%
  * Red - 20%
  * Green - 10%
  * Orange - 10%
  * Tan - 10%
* In Bag 2, the mix of colors is:
  * Blue - 24%
  * Green - 20%
  * Orange - 16%
  * Yellow - 14%
  * Red - 13%
  * Brown - 13%

Not knowing which bag is which, you randomly draw one candy from each bag. One is yellow and one is green. What is the probability that the yellow one came from the Bag 1?
Hint: For the likelihoods, you will need to multiply the probabilities of drawing yellow from one bag and green from the other bag and vice versa.
What is the probability that the yellow candy came from Bag 2?
What are the probabilities that the green one came from Bag 1 and Bag 2 respectively?

Monty Hall Problem

Suppose you are a contestant on the popular game show Let's Make a Deal. The host of the show (Monty Hall) presents you with three doors - Door A, Door B, and Door C. He tells you that there is a sports car behind one of them and if you choose the correct one, you win the car!

You select Door A, but then Monty makes things a little more interesting. He opens Door B to reveal that there is no sports car behind it and asks you if you would like to stick with your choice of Door A or switch your choice to Door C. Given this new information, what are the probabilities of you winning the car if you stick with Door A versus if you switch to Door C?

## Deliverables

- `main.ipynb` with your responses.

## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Resources

[Pandas Documentation](https://pandas.pydata.org/pandas-docs/stable/index.html)

[10 Minutes to Pandas](https://pandas.pydata.org/pandas-docs/stable/10min.html)

[Google Search](https://www.google.com/search?q=pandas+python)
