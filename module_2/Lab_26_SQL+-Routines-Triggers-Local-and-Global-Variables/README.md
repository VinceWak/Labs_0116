![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Advanced SQL

## Introduction

In this lab, we will practice in advanced SQL using routines, triggers and global/local variables

Here's the sql employees database link : https://drive.google.com/file/d/1C8x5qtenCb86j2UimUlqgqyOTwMEHVm5/view?usp=sharing


## Tasks
1. Upload the sql script to create the employees database.
2. Create a procedure that will provide the average salary of all employees.
3. Create a procedure called ‘emp_info’ that uses as parameters the first and the last name of an individual, and returns their employee number.
4. Call the procedures
5. Create a function called ‘emp_info’ that takes for parameters the first and last name of an employee, and returns the salary from the newest contract of that employee.
Hint: In the BEGIN-END block of this program, you need to declare and use two variables – v_max_from_date that will be of the DATE type, and v_salary, that will be of the DECIMAL (10,2) type.
6. Create a trigger that checks if the hire date of an employee is higher than the current date. If true, set this date to be the current date. Format the output appropriately (YY-MM-DD)
7. Create ‘i_hire_date’ and Drop the ‘i_hire_date’ index.
8. Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.
Then, create an index on the ‘salary’ column of that table, and check if it has sped up the search of the same SELECT statement.
9. Use Case statement and obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990. Create a fourth column in the query, indicating whether this employee is also a manager, according to the data provided in the dept_manager table, or a regular employee. 
10. Extract a dataset containing the following information about the managers: employee number, first name, and last name. Add two columns at the end – one showing the difference between the maximum and minimum salary of that employee, and another one saying whether this salary raise was higher than $30,000 or NOT.
11. Extract the employee number, first name, and last name of the first 100 employees, and add a fourth column, called “current_employee” saying “Is still employed” if the employee is still working in the company, or “Not an employee anymore” if they aren’t. Hint: You’ll need to use data from both the ‘employees’ and the ‘dept_emp’ table to solve this exercise. 

## Deliverables:
Please upload your sql script to your Github
