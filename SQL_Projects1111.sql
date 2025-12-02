CREATE DATABASE employee_management_systems;
use employee_management_systems;
 -- 1) Departments Table --
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- 2) Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DepartmentID INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 3) Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(150),
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 4) Junction Table: EmployeeProjects 
CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

USE employee_management_system;

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Operations');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate)
VALUES
-- Human Resources --
(101, 'Amit', 'Sharma', 1, '2021-05-10'),      
(102, 'Sneha', 'Patel', 2, '2020-03-18'),      
(103, 'Ravi', 'Kumar', 3, '2019-11-25'),       
(104, 'Priya', 'Sinha', 4, '2022-01-12'),      
(105, 'Arjun', 'Mehta', 5, '2023-07-04');      

select * from employees;

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate)
VALUES
-- Finance Department -- 

(106, 'Aatish', 'Naik', 1, '2021-05-10'),      
(107, 'Sneha', 'Kumari', 2, '2020-03-18'),      
(108, 'ggs', 'Kumar', 3, '2019-11-25'),       
(109, 'Priya', 'Darshini', 4, '2022-01-12'),      
(110, 'Arjun', 'Kapoor', 5, '2023-07-04');      

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate)
VALUES

-- IT Department --

(111, 'Aatish', 'Nayak', 1, '2021-05-10'),      
(112, 'neha', 'mari', 2, '2024-03-18'),      
(113, 'ggs', 'shetty', 3, '2018-11-25'),       
(114, 'Door', 'Darshini', 4, '2022-01-12'),      
(115, 'Arjun', 'Malik', 5, '2022-07-04');      

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate)
VALUES

-- Marketing Department -- 

(116, 'Aatish', 'Nayak', 1, '2023-05-10'),      
(117, 'Pooja', 'mari', 2, '2024-03-18'),      
(118, 'Jaya', 'shetty', 3, '2018-11-25'),       
(119, 'Door', 'DK', 4, '2024-01-12'),      
(120, 'Honey', 'Singh', 5, '2019-07-04');     

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate) VALUES

-- Operations --
(121, 'Yapper', 'Lele', 1, '2025-09-11'),
(122, 'Pooja', 'Gowda', 2, '2024-03-18'),      
(123, 'Maya', 'shetty', 3, '2018-11-25'),       
(124, 'Shiv', 'DK', 4, '2024-01-12'),      
(125, 'Bhagat', 'Singh', 5, '2019-07-04');  

select * from employees;

INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID) VALUES

(1101, 'Sales System', '2024-01-10', '2024-06-15', 1),
(1102, 'Employee Tracker', '2021-04-12', '2021-08-21',2),
(1103, 'Inventory App', '2020-04-12', '2020-08-21',3),
(1104, 'Customer Report', '2025-04-12', '2025-08-11',4),
(1105, 'Finance Tool', '2025-04-12', '2025-08-11',5);

UPDATE Projects
SET ProjectName = 'Employee Attendance Tracker'
where ProjectID = 1101;


UPDATE Projects
SET ProjectName = 'Monthly Budget Review'
where ProjectID = 1102;

UPDATE Projects
SET ProjectName = 'System Security Update'
where ProjectID = 1103;

UPDATE Projects
SET ProjectName = 'Social Media Promotion'
where ProjectID = 1104;

UPDATE Projects
SET ProjectName = 'Inventory Check System'
where ProjectID = 1105;

select * from Projects;

INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(101, 1101);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(102, 1101);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(108, 1101);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(106, 1102),
(109, 1102),

(105, 1103),
(110, 1103),

(119, 1104),
(121, 1104),

(123, 1105),
(124, 1105);

select * from EmployeeProjects;

select * from departments;

show columns from projects;

Alter table Employees 
Add salary Decimal(10,2);


UPDATE employees SET Salary = 45000 WHERE EmployeeID = 101;
UPDATE employees SET Salary = 47000 WHERE EmployeeID = 102;
UPDATE employees SET Salary = 50000 WHERE EmployeeID = 103;
UPDATE employees SET Salary = 52000 WHERE EmployeeID = 104;
UPDATE employees SET Salary = 48000 WHERE EmployeeID = 105;

UPDATE employees SET Salary = 45000 WHERE EmployeeID = 106;
UPDATE employees SET Salary = 47000 WHERE EmployeeID = 107;
UPDATE employees SET Salary = 50000 WHERE EmployeeID = 108;
UPDATE employees SET Salary = 52000 WHERE EmployeeID = 109;
UPDATE employees SET Salary = 48000 WHERE EmployeeID = 110;

UPDATE employees SET Salary = 45000 WHERE EmployeeID = 111;
UPDATE employees SET Salary = 47000 WHERE EmployeeID = 112;
UPDATE employees SET Salary = 50000 WHERE EmployeeID = 113;
UPDATE employees SET Salary = 52000 WHERE EmployeeID = 114;
UPDATE employees SET Salary = 48000 WHERE EmployeeID = 115;

UPDATE employees SET Salary = 45000 WHERE EmployeeID = 116;
UPDATE employees SET Salary = 47000 WHERE EmployeeID = 117;
UPDATE employees SET Salary = 50000 WHERE EmployeeID = 118;
UPDATE employees SET Salary = 52000 WHERE EmployeeID = 119;
UPDATE employees SET Salary = 48000 WHERE EmployeeID = 120;

UPDATE employees SET Salary = 45000 WHERE EmployeeID = 121;
UPDATE employees SET Salary = 47000 WHERE EmployeeID = 122;
UPDATE employees SET Salary = 50000 WHERE EmployeeID = 123;
UPDATE employees SET Salary = 52000 WHERE EmployeeID = 124;
UPDATE employees SET Salary = 48000 WHERE EmployeeID = 125;

select * from employees;

UPDATE Employees
SET Salary = Salary * 1.08
WHERE DepartmentID = 1;  

use employee_management_systems;

-- the average salary of all employees --

SELECT AVG(salary) AS average_salary
FROM employees;

-- List all employees along with the projects they are working on --

SELECT e.EmployeeID, e.FirstName, e.LastName,  p.ProjectName
FROM employees e
JOIN employeeprojects ep
		ON e.EmployeeID = ep.EmployeeID
JOIN projects p
		ON ep.ProjectID = p.ProjectID
ORDER BY EmployeeID;

-- the project with the longest duration --        
SELECT ProjectID, ProjectName,
       DATEDIFF(EndDate, StartDate) AS DurationDays
FROM Projects
ORDER BY DurationDays DESC
LIMIT 1

-- --
SELECT d.DepartmentID, d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(ep.ProjectID) AS ProjectCount
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING COUNT(ep.ProjectID) > 1;

SELECT d.DepartmentID, d.DepartmentName,
       SUM(e.Salary) AS TotalSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY TotalSalary DESC
LIMIT 1;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, e.Salary,
       DENSE_RANK() OVER (PARTITION BY e.DepartmentID ORDER BY e.Salary DESC) AS SalaryRank
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;


--  Update the end date of the project with the shortest duration to (2022-12-31) --
 
UPDATE Projects
SET EndDate = '2022-12-31'
WHERE ProjectID = (
    SELECT ProjectID
    FROM (
        SELECT ProjectID,
               DATEDIFF(EndDate, StartDate) AS DurationDays
        FROM Projects
        ORDER BY DurationDays ASC
        LIMIT 1
    ) AS t
);

SELECT * FROM PROJECTS;

--  the total salary expense for each department --
SELECT d.DepartmentID, d.DepartmentName,
       SUM(e.Salary) AS TotalSalaryExpense
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

-- Identify employees who have not been assigned to any project --
SELECT e.EmployeeID, e.FirstName, e.LastName
FROM Employees e
LEFT JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;

-- the department with the highest average project duration  --
SELECT d.DepartmentID, d.DepartmentName,
       AVG(DATEDIFF(p.EndDate, p.StartDate)) AS AvgProjectDuration
FROM Departments d
JOIN Projects p ON d.DepartmentID = p.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY AvgProjectDuration DESC
LIMIT 1;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary,
       CASE
           WHEN e.Salary < 60000 THEN 'Low'
           WHEN e.Salary BETWEEN 60000 AND 80000 THEN 'Medium'
           ELSE 'High'
       END AS SalaryRange
FROM Employees e;

SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 5;

SELECT d.DepartmentID, d.DepartmentName,
       MIN(e.Salary) AS MinSalary,
       MAX(e.Salary) AS MaxSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

-- TASK 2 --
SELECT * FROM EMPLOYEES;

-- Retrieve employees along with their department names --
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Retrieve employees hired after '2020-01-01' --
SELECT * FROM Employees
WHERE HireDate > '2020-01-01';

-- Calculate the average salary of employees -- 
SELECT AVG(Salary) AS Avgsalary
FROM EMPLOYEES;

SELECT d.DepartmentID, d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

SELECT * FROM Employees
ORDER BY HireDate DESC;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName IN ('Finance', 'HR');

SELECT *
FROM Employees
WHERE LastName LIKE 'S%';

-- Retrieve employees working on ProjectA -- 

SELECT * FROM PROJECTS;
SELECT * FROM EMPLOYEEPROJECTS;

SELECT e.EmployeeID, e.FirstName, e.LastName
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE p.ProjectName = 'EMPLOYEE ATTENDANCE TRACKER';

--  Retrieve employees and their project details --
 SELECT e.EmployeeID, e.FirstName, e.LastName, p.ProjectID, p.ProjectName, p.StartDate, p.EndDate
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID;


SELECT d.DepartmentID, d.DepartmentName, e.EmployeeID, e.FirstName, e.LastName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
ORDER BY d.DepartmentID;

use employee_management_systems;

--  Retrieve departments with average salary greater than 70000 --

SELECT d.DepartmentID, d.DepartmentName, AVG(e.Salary) AS AvgSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
HAVING AVG(e.Salary) > 70000;

select * from employees;

-- Increase the salary of all employees in the IT department by 10% --
UPDATE Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
SET e.Salary = e.Salary * 1.10
WHERE d.DepartmentName = 'IT';

select * from departments;

-- Remove employees hired before '2019-01-01' -- 
DELETE FROM Employees
WHERE HireDate < '2019-01-01';

SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary,
       CASE
           WHEN e.Salary < 60000 THEN 'Low'
           WHEN e.Salary BETWEEN 60000 AND 80000 THEN 'Medium'
           ELSE 'High'
       END AS SalaryRange
FROM Employees e;

SELECT e.EmployeeID, e.FirstName, e.LastName, p.ProjectName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE d.DepartmentName = 'IT';

-- the department with the highest average salary --
SELECT d.DepartmentID, d.DepartmentName,
       AVG(e.Salary) AS AvgSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY AvgSalary DESC
LIMIT 1;


SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, e.Salary,
       DENSE_RANK() OVER (PARTITION BY e.DepartmentID ORDER BY e.Salary DESC) AS SalaryRank
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;


SELECT d.DepartmentID, d.DepartmentName,
       AVG(DATEDIFF(p.EndDate, p.StartDate)) AS AvgProjectDuration
FROM Departments d
JOIN Projects p ON d.DepartmentID = p.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

-- Retrieve the earliest hire date among all employees --
SELECT MIN(HireDate) AS EarliestHireDate
FROM Employees;


SELECT DISTINCT p.ProjectID, p.ProjectName
FROM Projects p
JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID;

SELECT e1.EmployeeID, e1.FirstName, e1.LastName, e1.DepartmentID
FROM Employees e1
JOIN Employees e2
  ON e1.LastName = e2.LastName
 AND e1.DepartmentID = e2.DepartmentID
 AND e1.EmployeeID <> e2.EmployeeID
ORDER BY e1.LastName, e1.DepartmentID;


-- Calculate the total salary expense for the company --
SELECT SUM(Salary) AS TotalSalaryExpense
FROM Employees;

SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);


SELECT DISTINCT p.ProjectID, p.ProjectName
FROM Projects p
JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
WHERE CURDATE() BETWEEN p.StartDate AND p.EndDate;

-- Retrieve the employees who have not been assigned to any project --
SELECT e.EmployeeID, e.FirstName, e.LastName
FROM Employees e
LEFT JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;


SELECT d.DepartmentID, d.DepartmentName,
       SUM(DATEDIFF(p.EndDate, p.StartDate)) AS TotalProjectDuration
FROM Departments d
JOIN Projects p ON d.DepartmentID = p.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY TotalProjectDuration DESC
LIMIT 1;

-- Determine the employee with the lowest salary in the IT department -- 
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT'
ORDER BY e.Salary ASC
LIMIT 1;



