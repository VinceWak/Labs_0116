![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Dashboards in Google Sheets/Excel


## Introduction

As a data analyst you will need to present the results of your analysis, create automate data pipelines and deploy your products. We start to learn the business intelligence and dashboarding so let's use this lab for practice in Excel/Google Sheets by creating nice vizualisation and interactive dashboards.

## Getting Started

You will have 2 tasks that will require separate Google Sheet/ Excel files. All tasks are described below

## Deliverables
Forests_dashboard
Call_Center dashboard



## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Instructions
#### Forests dashboards
1. Create a Google Sheet file and name it Forests_dashboard
2. Please take data about Forest area (% of land area) from the https://data.worldbank.org/indicator/AG.LND.FRST.ZS?view=chart
3. Copy data to the tab DATA at your Google Spreadsheet
4. Clean the data deleting the years without any observations
5. Sort the countries based on the greates difference in observations between the start and end periods.
6. We will work with top 20 countries from that sorting
7. Create the separate tab called Dashboard
8. The dashboard should consist of the following elements:
 - World Bank logo, 
 - title of the dashboard 
 - Section 1:
 - - I want to have a droplist where I am able to choose the country
 - - I want to see the chart that reflects the trend for the particular country
 -- I want to see a separate indicator that shows the situation for the lasst year for that particular country
 - Section 2:
 - - I want to have a line chart that reflects the trends for all my 20 countries
 - - I want to have a possibility to choose the country using checkbox (see here: https://www.benlcollins.com/spreadsheets/google-sheets-checkbox/)
 - Section 3:
 - Would you add any KPI?
 - If yes, please add.
9. Non-functional requirements:
 - I do not want to see the grid
 - the colors should correspond with the World bank color sheme

#### Call Center Dashboard
This dashboard should consist of the useful information about each employee splitting to the individual info and summary by manager. Tips: it can be easier to work with data if first you join all 
the tables using MySQL or Python
1. Create the GoogleSheet/Excel file and name it Call_Center_Dashboard.
2. Create tab Data, tab  Employee and tab By Manager
3. Add data from the file Call_Data to the tab Data
4. Read the file Metrics.xlsx. This file describes the metrics that should be reflected on the dashboard:
- Calls Handled
- Avg Handle Time (or AHT)
- Transfer %
- Offer %
- Accept %
- Applied %
- Breakage
- Applied Per Call
- Callback within 2 Days
5. I want to be able to choose the Employee (not Agent Key by Agent Name) using drop list. 
6. I want to be able to choos the month
7. I want to see all the requered metrics  in dynamics (per day) choosing the concrete employee
8. I want to see the average scores for Agend grouped by each manager on the Tab By Manager:
 -- I choose the manager, and I see the success of his/her team (see file Hierarchy)
 -- I choose the Manager and I see the Benchmarking with the targets (file Targets)
