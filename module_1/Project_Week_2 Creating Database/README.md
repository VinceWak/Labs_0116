<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Creating Database in MYSQL! WOW

## Content
- [Project Description](#project-description)
- [Database](#Create Database)
- [Project Goals](#project-goals)
- [Requirements & Deliverables](#requirements-&-deliverables)
- [Schedule](#schedule)
- [Presentation](#presentation)
- [Example](#example)


## Project Goals
Dive deeper into the database creation and panel data.


## Project Description
The goal of this project is to create the database that reflects one of the important socio-economic subject, develop the composite indicator that allows to compare the countries/regions/cities/other objects and implement queries that return useful insights about your data.
Subjects:
- energy, 
- healthcare, 
- sustainable development, 
- poverty, 
- gender,
- business, 
- education, 
- science.

You can work using the following approach:
1. Disscuss the subject and check the available datasources
2. Make the project planning in Jira (creating a new project for your group)
3. Create ER Model
4. Get the data
5. Create the datasources description and metadata
6. Create the database
7. Develop the methodology of your indicator
8. Implement the queries
9. Disscuss the results
10. Prepare slides
11. Prepare your presentation

## Databases
At least one datasourse should be received via API or scrapping.
At least 4 different tables.
At least 5 queries, where 1 query should be done for the indicator calculations, 1 query - for presenting all the information about countries/cities/regions for different cities/countries/regions.

## Requirements & Deliverables
Each team member should upload all the project mateerials to Github
The link to GitHub should be shared on Slack on Monday.
You should deliver:
- Planning of your project in Jira, 
- Code in Python for API or Scrapping, 
- ER model,
- data sources and metadata, 
- composite indicator methodology
- sql script,
- slides.


## Presentation
The presentation time limit is **6 minutes**! You will have **3 minutes** to present your project to the class and then **2 minutes** for Q&A. 

The slides of your presentation must include the content listed below and a demo of your game:

* Title of the project + Team names
* Description of your Project  (Planning, ER, DataBase Schema, Queries, Methodoloy for the composite indicator)
* Challenges  
* Process  
* Highlights
* Main results  
* Demo (ONE MINUTE)

## Example
Goal: to develop a database "Innovations"
Proposed data: Number of teachers per student, Number of patents, Hi-tech import.
ER model: Countries description (Country, Code, Income, Classification), Teachers_per_students (Country_code, Indicator, Year), Patents (Country_code, Indicator, Year), Hi_tech import (Country_code, Indicator_category1, Indicator_category2, Year)

Composite indicator: 
1. standartization/ normalization of data
2. Assume that all the components have equal weights
3. Final indicator=sum of the components.




