CREATE DATABASE employee_testing;              #Creating Database
USE employee_testing;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,               #Creating Table
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    status VARCHAR(20)
);

INSERT INTO employees VALUES
(101, 'Rahul', 'IT', 45000, 'Active'),
(102, 'Amit', 'HR', 40000, 'Active'),          #Adding Test Data
(103, 'Priya', 'Finance', 50000, 'Active'),
(104, 'Neha', 'IT', 48000, 'Inactive'),
(105, 'Rohit', 'Sales', 35000, 'Active');

#--------------------------Database Test-----------------------------------
SELECT * FROM employees;

SELECT employee_id, COUNT(*)
FROM employees
GROUP BY employee_id                         #Finding duplicate Employee IDs
HAVING COUNT(*) > 1;

SELECT *
FROM employees                               #Checking missing names
WHERE name IS NULL;

SELECT *
FROM employees                               #Checking Invalid Salary
WHERE salary <= 0;

SELECT *
FROM employees                               #checking Employee Status  
WHERE status NOT IN ('Active', 'Inactive');

SELECT *
FROM employees                               #Checking the IT employees
WHERE department = 'IT';

SELECT *
FROM employees                              #Check employees earning above 40,000 Ruppes
WHERE salary > 40000;