USE EmployeeManagementDB;

-- ==========================================
-- Question 1
-- Display all employees who belong to DepartmentID = 2
-- ==========================================

SELECT *
FROM Employees
WHERE DepartmentID = 2;


-- ==========================================
-- Question 2
-- Display all employees whose salary is greater than 70000
-- ==========================================

SELECT *
FROM Employees
WHERE Salary > 70000;

-- ==========================================
-- Question 3
-- Display all female employees
-- ==========================================

SELECT *
FROM Employees
WHERE Gender = 'Female';

-- ==========================================
-- Question 4
-- Display all employees who live in Delhi
-- ==========================================

SELECT *
FROM Employees
WHERE City = 'Delhi';

-- ==========================================
-- Question 5
-- Display all employees hired after 1 January 2022
-- ==========================================

SELECT *
FROM Employees
WHERE HireDate > '2022-01-01';

-- ==========================================
-- Question 6
-- Display all employees whose salary is between
-- 50000 and 80000 (inclusive)
-- ==========================================

SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 80000;

-- ==========================================
-- Question 7
-- Display all employees who belong to DepartmentID = 2
-- and live in Delhi
-- ==========================================

SELECT *
FROM Employees
WHERE DepartmentID = 2
  AND City = 'Delhi';