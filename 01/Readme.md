### 📘 Employee Management System – SQL Project

This project is a complete SQL-based Employee Management System built using MySQL.
It covers database creation, table design, data insertion, constraints, joins, CRUD operations, salary updates, analytical queries, and advanced SQL functions.

🔹 📂 Database Used

The database used in this project:

CREATE DATABASE employee_management_systems;
USE employee_management_systems;

🧱 1. Database Schema Overview

This system contains four main tables:

1️⃣ Departments

Stores department information.

DepartmentID (PK)
DepartmentName

2️⃣ Employees

### Stores employee details.

EmployeeID (PK)
FirstName
LastName
DepartmentID (FK)
HireDate
Salary

3️⃣ Projects

### Stores project information.

ProjectID (PK)
ProjectName
DepartmentID (FK)
StartDate
EndDate

4️⃣ EmployeeProjects (Junction Table)

Maps employees to projects (Many-to-Many relation).

EmployeeID (FK)
ProjectID (FK)
Primary Key: (EmployeeID, ProjectID)

🧪 2. Data Inserted
✔ Departments

You inserted 5 departments:

Human Resources
Finance
IT
Marketing
Operations

✔ Employees

Each department has multiple employees with:

EmployeeID

First & Last Name

DepartmentID

HireDate

Salary (after adding the Salary column)

✔ Projects

### Each project belongs to a department:

Sales System
Employee Tracker
Inventory App
Customer Report
Finance Tool

Then you renamed all projects to new names (using UPDATE).

✔ EmployeeProjects

You assigned employees to different projects using the junction table.

⚙️ 3. Schema Modifications

You added salary to employee table:

ALTER TABLE Employees 
ADD Salary DECIMAL(10,2);


Then you inserted base salary values for all employees.

💰 4. Salary Updates
Increase salary of HR department by 8%
UPDATE Employees
SET Salary = Salary * 1.08
WHERE DepartmentID = 1;

Increase salary of IT department by 10%
UPDATE Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
SET e.Salary = e.Salary * 1.10
WHERE d.DepartmentName = 'IT';

📊 5. Queries & Reports Included

Your SQL file includes a full analytics section, such as:

✔ Average salary of all employees
SELECT AVG(Salary) AS average_salary FROM Employees;

✔ Employees with their project names (using joins)
SELECT e.EmployeeID, e.FirstName, e.LastName, p.ProjectName
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID;

✔ Project with the longest duration

Using DATEDIFF().

✔ Count employees in each department
GROUP BY DepartmentID

✔ Employees working on more than one project

Using HAVING COUNT() > 1.

✔ Department with highest total salary
ORDER BY TotalSalary DESC LIMIT 1;

✔ Salary ranking inside each department

Using window function:

DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC)

✔ Employees not assigned to any project

Using LEFT JOIN and NULL filter.

✔ Department with highest average project duration
✔ Categorizing salary into Low / Medium / High

Using CASE statement.

✔ Top 5 highest salaries

Using ORDER BY + LIMIT.

✔ Delete employees hired before 2019

A cleanup operation.

🧠 6. Advanced SQL Concepts Used

project demonstrates:

 *  Primary Keys
 *  Foreign Keys
 *  Many-to-many relationships
 *  INNER JOIN
 *  LEFT JOIN
 *  GROUP BY
 *  HAVING
 *  ORDER BY
 *  LIMIT
 *  Window Functions
 *  Aggregates (SUM, AVG, MIN, MAX, COUNT)
 *  DATEDIFF
 *  CASE expression
 *  UPDATE + JOIN
 *  DELETE filtering

This makes the project industry standard for SQL portfolio practice.

🎯 7. Key Learning Outcomes

By completing this project, you have practiced:

Database design
Creating relational schema
Data population
CRUD operations
Writing efficient joins
Analytical SQL
Reporting-style SQL
Working with date functions
Salary management logic

🏁 8. Conclusion

This project is a complete SQL system managing:

Departments
Employees
Projects

Many-to-many employee–project mapping
